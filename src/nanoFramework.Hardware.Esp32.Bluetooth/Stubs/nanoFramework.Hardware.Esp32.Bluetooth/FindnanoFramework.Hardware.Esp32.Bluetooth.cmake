#
# Copyright(c) 2020 The nanoFramework project contributors
# See LICENSE file in the project root for full license information.
#

# native code directory
set(BASE_PATH_FOR_THIS_MODULE ${BASE_PATH_FOR_CLASS_LIBRARIES_MODULES}/nanoFramework.Hardware.Esp32.Bluetooth)


# set include directories
list(APPEND nanoFramework.Hardware.Esp32.Bluetooth_INCLUDE_DIRS ${PROJECT_SOURCE_DIR}/src/CLR/Core)
list(APPEND nanoFramework.Hardware.Esp32.Bluetooth_INCLUDE_DIRS ${PROJECT_SOURCE_DIR}/src/CLR/Include)
list(APPEND nanoFramework.Hardware.Esp32.Bluetooth_INCLUDE_DIRS ${PROJECT_SOURCE_DIR}/src/HAL/Include)
list(APPEND nanoFramework.Hardware.Esp32.Bluetooth_INCLUDE_DIRS ${PROJECT_SOURCE_DIR}/src/PAL/Include)
list(APPEND nanoFramework.Hardware.Esp32.Bluetooth_INCLUDE_DIRS ${BASE_PATH_FOR_THIS_MODULE})
list(APPEND nanoFramework.Hardware.Esp32.Bluetooth_INCLUDE_DIRS ${PROJECT_SOURCE_DIR}/src/nanoFramework.Hardware.Esp32.Bluetooth)

# source files
set(nanoFramework.Hardware.Esp32.Bluetooth_SRCS

    nanoFramework_Hardware_Esp32_Bluetooth.cpp


    nanoFramework_Hardware_Esp32_Bluetooth_nanoFramework_Hardware_Esp32_Bluetooth_BluetoothHost.cpp
    nanoFramework_Hardware_Esp32_Bluetooth_nanoFramework_Hardware_Esp32_Bluetooth_BluetoothHostConfiguration.cpp
    nanoFramework_Hardware_Esp32_Bluetooth_nanoFramework_Hardware_Esp32_Bluetooth_Gatt_AttributeRow.cpp
    nanoFramework_Hardware_Esp32_Bluetooth_nanoFramework_Hardware_Esp32_Bluetooth_Gatt_GattCharacteristic.cpp
    nanoFramework_Hardware_Esp32_Bluetooth_nanoFramework_Hardware_Esp32_Bluetooth_Gatt_GattID.cpp
    nanoFramework_Hardware_Esp32_Bluetooth_nanoFramework_Hardware_Esp32_Bluetooth_Gatt_GattService.cpp
    nanoFramework_Hardware_Esp32_Bluetooth_nanoFramework_Hardware_Esp32_Bluetooth_Gatt_GattTable.cpp
    nanoFramework_Hardware_Esp32_Bluetooth_nanoFramework_Hardware_Esp32_Bluetooth_Gatt_GattTable__Row.cpp
    nanoFramework_Hardware_Esp32_Bluetooth_nanoFramework_Hardware_Esp32_Bluetooth_Gatt_TextCharacteristic.cpp
    nanoFramework_Hardware_Esp32_Bluetooth_nanoFramework_Hardware_Esp32_Bluetooth_Gatt_TimeCharacteristic.cpp
    nanoFramework_Hardware_Esp32_Bluetooth_nanoFramework_Hardware_Esp32_Bluetooth_OS.cpp
    nanoFramework_Hardware_Esp32_Bluetooth_nanoFramework_Hardware_Esp32_Bluetooth_OS__Size.cpp

)

foreach(SRC_FILE ${nanoFramework.Hardware.Esp32.Bluetooth_SRCS})

    set(nanoFramework.Hardware.Esp32.Bluetooth_SRC_FILE SRC_FILE-NOTFOUND)
    find_file(nanoFramework.Hardware.Esp32.Bluetooth_SRC_FILE ${SRC_FILE}
        PATHS
	        "${BASE_PATH_FOR_THIS_MODULE}"
	        "${TARGET_BASE_LOCATION}"

	    CMAKE_FIND_ROOT_PATH_BOTH
    )
# message("${SRC_FILE} >> ${nanoFramework.Hardware.Esp32.Bluetooth_SRC_FILE}") # debug helper
list(APPEND nanoFramework.Hardware.Esp32.Bluetooth_SOURCES ${nanoFramework.Hardware.Esp32.Bluetooth_SRC_FILE})
endforeach()

include(FindPackageHandleStandardArgs)

FIND_PACKAGE_HANDLE_STANDARD_ARGS(nanoFramework.Hardware.Esp32.Bluetooth DEFAULT_MSG nanoFramework.Hardware.Esp32.Bluetooth_INCLUDE_DIRS nanoFramework.Hardware.Esp32.Bluetooth_SOURCES)
