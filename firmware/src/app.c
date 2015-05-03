/*******************************************************************************
  MPLAB Harmony Application Source File
  
  Company:
    Microchip Technology Inc.
  
  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It 
    implements the logic of the application's state machine and it may call 
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2014 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *******************************************************************************/
// DOM-IGNORE-END


// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************

#include "app.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************
#define APP_I2S_BUFFER_SIZE 192

DRV_HANDLE APP_I2S_Handle;
DRV_I2S_BUFFER_HANDLE APP_I2S_bHandle;
uint8_t APP_I2S_buffer[APP_I2S_BUFFER_SIZE];
// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.
    
    Application strings and buffers are be defined outside this structure.
*/


APP_DATA appData =
{
    /* Device Layer Handle  */
    .usbDevHandle = -1,

    /* USB Audio Instance index for this app object 0*/
    .audioInstance = 0,

     /* app state */
    .state = APP_STATE_INIT,

    /* device configured status */
    .isConfigured = false,

    /* Read Transfer Handle */
    .isReadComplete = false,

    /* Write Transfer Handle */
    .isWriteComplete = false,

    /* Read transfer handle */
    .readTransferHandle = USB_DEVICE_AUDIO_TRANSFER_HANDLE_INVALID,

    /* Read transfer handle */
    .writeTransferHandle = USB_DEVICE_AUDIO_TRANSFER_HANDLE_INVALID,

    /* Initialize active interface setting to 0. */
    .activeInterfaceAlternateSetting = APP_USB_SPEAKER_PLAYBACK_NONE,

    /* DAC is not muted initially */
    .dacMute = false,

    /* No Audio control in progress.*/
    .currentAudioControl = APP_USB_CONTROL_NONE

};

//AUDIO_PLAY_SAMPLE rxBuffer[APP_NO_OF_SAMPLES_IN_A_USB_FRAME] APP_MAKE_BUFFER_DMA_READY;
//AudioCodecState* pCodecHandle=NULL;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************
void APP_USBDeviceEventHandler( USB_DEVICE_EVENT event, void * pEventData, uintptr_t context )
{
    USB_DEVICE_EVENT_DATA_CONFIGURED* configuredEventData;
    switch( event )
    {
        case USB_DEVICE_EVENT_RESET:
            break;

        case USB_DEVICE_EVENT_DECONFIGURED:
            // USB device is reset or device is de-configured.
            // This means that USB device layer is about to de-initialize
            // all function drivers. So close handles to previously opened
            // function drivers.
            
            // Also turn ON LEDs to indicate reset/de-configured state.
            /* Switch on red and orange, switch off green */
            //BSP_LED*On  (APP_USB_LED_1);
            //BSP_LED*On (APP_USB_LED_2);
            //BSP_LED*Off (APP_USB_LED_3);
            break;

        case USB_DEVICE_EVENT_CONFIGURED:
            /* check the configuration */
            configuredEventData = (USB_DEVICE_EVENT_DATA_CONFIGURED *)pEventData;
            if(configuredEventData->configurationValue == 1)
            {
                /* the device is in configured state */
                /* Switch on green and switch off red and orange */
                //BSP_LED*Off  (APP_USB_LED_1);
                //BSP_LED*Off (APP_USB_LED_2);
                //BSP_LED*On (APP_USB_LED_3);

                USB_DEVICE_AUDIO_EventHandlerSet
                (
                    0,
                    APP_USBDeviceAudioEventHandler ,
                    (uintptr_t)NULL
                );
                /* mark that set configuration is complete */
                appData.isConfigured = true;
            }
            break;

        case USB_DEVICE_EVENT_SUSPENDED:
            /* Switch on green and orange, switch off red */
            //BSP_LED*Off  (APP_USB_LED_1);
            //BSP_LED*Off(APP_USB_LED_2);
            //BSP_LED*On (APP_USB_LED_3);
            break;

        case USB_DEVICE_EVENT_RESUMED:
            break;
        case USB_DEVICE_EVENT_POWER_DETECTED:
            /* VBUS was detected. Notify USB stack about the event */
            USB_DEVICE_Attach (appData.usbDevHandle);
            break;
        case USB_DEVICE_EVENT_POWER_REMOVED:
            /* VBUS was removed. Notify USB stack about the event*/
            appData.state = APP_STATE_WAIT_FOR_CONFIGURATION;
            USB_DEVICE_Detach (appData.usbDevHandle);
            //AudioCodecDacMute(pCodecHandle, true);


        case USB_DEVICE_EVENT_ERROR:
        default:
            break;
    }
}


void APP_USBDeviceAudioEventHandler
(
    USB_DEVICE_AUDIO_INDEX iAudio ,
    USB_DEVICE_AUDIO_EVENT event ,
    void * pData,
    uintptr_t context
)
{
    USB_DEVICE_AUDIO_EVENT_DATA_INTERFACE_SETTING_CHANGED *interfaceInfo;
    USB_DEVICE_AUDIO_EVENT_DATA_READ_COMPLETE *readEventData;
    uint8_t entityID;
    uint8_t controlSelector;
    if ( iAudio == 0 )
    {
        switch (event)
        {
            case USB_DEVICE_AUDIO_EVENT_INTERFACE_SETTING_CHANGED:
                /* We have received a request from USB host to change the Interface-
                   Alternate setting.*/
                interfaceInfo = (USB_DEVICE_AUDIO_EVENT_DATA_INTERFACE_SETTING_CHANGED *)pData;
                appData.activeInterfaceAlternateSetting = interfaceInfo->interfaceAlternateSetting;
                appData.state = APP_USB_INTERFACE_ALTERNATE_SETTING_RCVD;
            break;

            case USB_DEVICE_AUDIO_EVENT_READ_COMPLETE:
                readEventData = (USB_DEVICE_AUDIO_EVENT_DATA_READ_COMPLETE *)pData;
                //We have received an audio frame from the Host.
                //Now send this audio frame to Audio Codec for Playback.
                if (readEventData->handle == appData.readTransferHandle)
                {
                    if (appData.state == APP_IDLE){
                        appData.state = APP_SEND_DATA_TO_CODEC;
                    }
                    else
                        appData.state = APP_STATE_ERROR;
                }
            break;

            case USB_DEVICE_AUDIO_EVENT_WRITE_COMPLETE:
            break;


            case USB_DEVICE_AUDIO_EVENT_CONTROL_SET_CUR:
                entityID = ((USB_AUDIO_CONTROL_INTERFACE_REQUEST*)pData)->entityID;
                if (entityID == APP_ID_FEATURE_UNIT)
                {
                   controlSelector = ((USB_AUDIO_FEATURE_UNIT_CONTROL_REQUEST*)pData)->controlSelector;
                   if (controlSelector == USB_AUDIO_MUTE_CONTROL)
                   {
                       //A control write transfer received from Host. Now receive data from Host.
                       USB_DEVICE_ControlReceive(appData.usbDevHandle, (void *) &(appData.dacMute), 1 );
                       appData.currentAudioControl = APP_USB_AUDIO_MUTE_CONTROL;
                   }
                }
                break;
            case USB_DEVICE_AUDIO_EVENT_CONTROL_GET_CUR:
                entityID = ((USB_AUDIO_CONTROL_INTERFACE_REQUEST*)pData)->entityID;
                if (entityID == APP_ID_FEATURE_UNIT)
                {
                   controlSelector = ((USB_AUDIO_FEATURE_UNIT_CONTROL_REQUEST*)pData)->controlSelector;
                   if (controlSelector == USB_AUDIO_MUTE_CONTROL)
                   {
                       /*Handle Get request*/
                       USB_DEVICE_ControlSend(appData.usbDevHandle, (void *)&(appData.dacMute), 1 );
                   }
                }
                break;
            case USB_DEVICE_AUDIO_EVENT_CONTROL_SET_MIN:
            case USB_DEVICE_AUDIO_EVENT_CONTROL_GET_MIN:
            case USB_DEVICE_AUDIO_EVENT_CONTROL_SET_MAX:
            case USB_DEVICE_AUDIO_EVENT_CONTROL_GET_MAX:
            case USB_DEVICE_AUDIO_EVENT_CONTROL_SET_RES:
            case USB_DEVICE_AUDIO_EVENT_CONTROL_GET_RES:
            case USB_DEVICE_AUDIO_EVENT_ENTITY_GET_MEM:
                /* Stall request */
                USB_DEVICE_ControlStatus (appData.usbDevHandle, USB_DEVICE_CONTROL_STATUS_ERROR);
            break;
            case USB_DEVICE_AUDIO_EVENT_CONTROL_TRANSFER_DATA_RECEIVED:
                USB_DEVICE_ControlStatus(appData.usbDevHandle, USB_DEVICE_CONTROL_STATUS_OK );
                if (appData.currentAudioControl == APP_USB_AUDIO_MUTE_CONTROL)
                {
                    SYS_PORTS_PinClear(PORTS_ID_0, PORT_CHANNEL_A, 0);
                    appData.state = APP_MUTE_AUDIO_PLAYBACK;
                    appData.currentAudioControl = APP_USB_CONTROL_NONE;
                    //Handle Mute Control Here.
                }
            break;
            case  USB_DEVICE_AUDIO_EVENT_CONTROL_TRANSFER_DATA_SENT:
            break;
            default:
                SYS_ASSERT ( false , "Invalid callback" );
            break;
        } //end of switch ( callback )
    }//end of if  if ( iAudio == 0 )
}//end of function APP_AudioEventCallback


// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************

void APP_InitCodec(void)
{


    APP_I2S_Handle = DRV_I2S_Open(DRV_I2S_INDEX_0,DRV_IO_INTENT_WRITE);
  /*
      DRV_I2S_BufferAddWrite(APP_I2S_Handle,
            APP_I2S_bHandle,
            APP_I2S_buffer,
            APP_I2S_BUFFER_SIZE);
*/
   /*
    AudioCodecInit();
    pCodecHandle=AudioCodecOpen(O_WR);

    if(pCodecHandle==NULL)
    {
        SYS_ASSERT ( false , "Unable to open the codec" );
    }

    if(AudioCodecSetSampleRate(pCodecHandle, SAMPLERATE_48000HZ)!=1)
    {
        SYS_ASSERT ( false , "Unable to set sampling rate to 48kHz" );
    }

    if(AudioCodecSetAdcDacOptions(pCodecHandle, true)!=1)
    {
       SYS_ASSERT ( false , "Unable to Setup ADC and DAC" );
    }

    AudioCodecStartAudio(pCodecHandle, true);

    if(AudioCodecSetDacVolume(pCodecHandle, 90)!=1)
    {
        SYS_ASSERT ( false , "Unable to set DAC volume" );
    }
    */
}


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_INIT;

    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}

/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Tasks ( void )
{
    USB_DEVICE_AUDIO_RESULT audioErr =0;
    /* Check the application's current state. */
    switch ( appData.state )
    {
        /* Application's initial state. */
        case APP_STATE_INIT:
        /* Open the device layer */
            appData.usbDevHandle = USB_DEVICE_Open( USB_DEVICE_INDEX_0,
                    DRV_IO_INTENT_READWRITE );

            if(appData.usbDevHandle != USB_DEVICE_HANDLE_INVALID)
            {
                /* Register a callback with device layer to get event notification (for end point 0) */
                USB_DEVICE_EventHandlerSet(appData.usbDevHandle, APP_USBDeviceEventHandler, 0);

                appData.state = APP_STATE_WAIT_FOR_CONFIGURATION;
            }
            else
            {
                /* The Device Layer is not ready to be opened. We should try
                 * again later. */
            }

       case APP_STATE_WAIT_FOR_CONFIGURATION:
            //Check if Host has configured the Device.
            if (appData.isConfigured == true)
            {
                APP_InitCodec ();
                appData.state = APP_SUBMIT_READ_REQUEST;
            }
            break;

        case APP_SUBMIT_READ_REQUEST:
            if (appData.activeInterfaceAlternateSetting == APP_USB_SPEAKER_PLAYBACK_STEREO_48KHZ)
            {
                audioErr = USB_DEVICE_AUDIO_Read ( USB_DEVICE_INDEX_0 , &appData.readTransferHandle, 1 , APP_I2S_buffer, APP_I2S_BUFFER_SIZE);

                appData.state = APP_IDLE;
            }
        break;

        case APP_PROCESS_DATA:
            appData.state = APP_IDLE;
        break;

        case APP_SEND_DATA_TO_CODEC:
          // AudioCodecWrite ( pCodecHandle ,( AudioStereo* ) rxBuffer,
          //          pCodecHandle->frameSize );
          //  AudioCodecAdjustSampleRateTx ( pCodecHandle );
          SYS_PORTS_PinToggle(PORTS_ID_0, PORT_CHANNEL_A, 0);
          DRV_I2S_BufferAddWrite(APP_I2S_Handle,
            APP_I2S_bHandle,
            APP_I2S_buffer,
            APP_I2S_BUFFER_SIZE);
                        
            appData.state = APP_SUBMIT_READ_REQUEST;
        break;
        case APP_MUTE_AUDIO_PLAYBACK:
            if (appData.activeInterfaceAlternateSetting == 0)
            {
            //   AudioCodecDacMute(pCodecHandle, true);
                appData.state = APP_IDLE;
            }
            else if (appData.activeInterfaceAlternateSetting == 1)
            {
           //     AudioCodecDacMute(pCodecHandle, appData.dacMute);
           //     AudioCodecBufferClear(pCodecHandle);
                appData.state = APP_SUBMIT_READ_REQUEST;
            }
        break;

        case APP_USB_INTERFACE_ALTERNATE_SETTING_RCVD:
            if (appData.activeInterfaceAlternateSetting == APP_USB_SPEAKER_PLAYBACK_NONE)
            {
            //    AudioCodecDacMute(pCodecHandle, true);
            //    AudioCodecBufferClear(pCodecHandle);
                appData.state = APP_IDLE;
            }
            else if(appData.activeInterfaceAlternateSetting == APP_USB_SPEAKER_PLAYBACK_STEREO_48KHZ)
            {
            //    AudioCodecDacMute(pCodecHandle, appData.dacMute );
                appData.state =  APP_SUBMIT_READ_REQUEST;
            }
        break;

        case APP_IDLE:
            if (appData.activeInterfaceAlternateSetting == APP_USB_SPEAKER_PLAYBACK_NONE)
            {
            //    AudioCodecDacMute(pCodecHandle, true);
            //    AudioCodecBufferClear(pCodecHandle);
            }

        break;
        case APP_STATE_ERROR:
        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}


/*******************************************************************************
 End of File
 */
