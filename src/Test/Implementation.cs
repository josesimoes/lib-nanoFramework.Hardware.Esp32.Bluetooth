﻿using nanoFramework.Hardware.Esp32.Bluetooth;
using nanoFramework.Hardware.Esp32.Bluetooth.Gatt;

namespace Test
{

    partial class SimulatedDevice
    {
        OS.GattEntry[] attributes;

        byte[] memory;

        #region Natives declared
        
        internal void NativeInitializeDevice(string deviceName, BluetoothMode mode, int maxTransferUnit)
        {
            DeviceName = deviceName;
            Mode = mode;
            MaxTransferUnit = maxTransferUnit;
        }

        internal void NativePrepareGatt(int numEntries, int totalBytes)
        {
            attributes = new OS.GattEntry[numEntries];
            memory = new byte[totalBytes];
        }

        #endregion

    }
}