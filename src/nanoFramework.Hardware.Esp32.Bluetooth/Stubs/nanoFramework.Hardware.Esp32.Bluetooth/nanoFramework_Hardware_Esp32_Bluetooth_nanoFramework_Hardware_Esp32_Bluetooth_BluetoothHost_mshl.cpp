//-----------------------------------------------------------------------------
//
//    ** DO NOT EDIT THIS FILE! **
//    This file was generated by a tool
//    re-running the tool will overwrite this file.
//
//-----------------------------------------------------------------------------

#include "nanoFramework_Hardware_Esp32_Bluetooth.h"
#include "nanoFramework_Hardware_Esp32_Bluetooth_nanoFramework_Hardware_Esp32_Bluetooth_BluetoothHost.h"

using namespace nanoFramework_Hardware_Esp32_Bluetooth::nanoFramework_Hardware_Esp32_Bluetooth;

typedef struct _esp_some_struct
{
    int number;
    bool flag;
} esp_some_struct;

HRESULT Library_nanoFramework_Hardware_Esp32_Bluetooth_nanoFramework_Hardware_Esp32_Bluetooth_BluetoothHost::NativeCheckInterop___STATIC__VOID__STRING( CLR_RT_StackFrame& stack )
{
    NANOCLR_HEADER(); hr = S_OK;
    {

        const char* param0;
        NANOCLR_CHECK_HRESULT( Interop_Marshal_LPCSTR( stack, 0, param0 ) );

        BluetoothHost::NativeCheckInterop( param0, hr );
        NANOCLR_CHECK_HRESULT( hr );

    }
    NANOCLR_NOCLEANUP();
}
