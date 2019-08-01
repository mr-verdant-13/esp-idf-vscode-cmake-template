# **ESP-IDF project template for VSCode (CMake)**

[Versión en español](https://github.com/mr-verdant-13/esp-idf-vscode-cmake-template/blob/v1.0.0/LEAME.md)

## **Windows**

### **Features**

- Allows the execution of `idf.py` commands within the VSC integrated terminal.

- Allows the use of the following `idf.py` commands by the execution of VSC tasks:

    - `Menuconfig` task:\
        The `idf.py menuconfig` command is executed and the configuration menu is shown in a new window.

    - `Build test` task:\
        1.- The user is prompted to choose the test to be compiled.\
        2.- The `idf.py build` command is executed.
    
    - `Flash` task:\
        1.- The user is prompted to select the COM port to be used for flashing.\
        2.- The `idf.py -p PORT flash` command is executed considering the specified COM port (`-p` option).

    - `Monitor` task:\
        1.- The user is prompted to select the COM port to be used for monitoring.\
        2.- The `idf.py -p PORT monitor` command is executed considering the specified COM port (`-p` option).

    - `Flash & Monitor` task:\
        1.- The user is prompted to select the COM port to be used for flashing and monitoring.\
        2.- The `idf.py -p PORT flash monitor` command is executed considering the specified COM port (`-p` option).

    - `Clean` task:\
        The `idf.py clean` command is executed.

- Defines additional useful tasks:

    - `Create new component` task:\
        A new component directory is created. This new directory might be used as a container for source code, header, and other component files.

    - `Remove auto-generated files` task:\
        All auto-generated files (`sdkconfig`, `sdkconfig.old`, `main/main.cpp`) and directories (`build`) are removed.

    - `Generate test list` task:\
        All C/C++ files inside the `main/test` directory are added as input options for the `Build test` task to use.

    - `Generate COM list` task:\
        All the available COM ports are added as input option for the flashing and monitoring tasks.

- Specifies the include directories that might be used by the IntelliSense engine.

- Facilitates the testing process by using the `Build test` task.

- Provides an `sdkconfig.defaults` file that defines the following default configuration values:
    1. Sets the FreeRTOS tick period to 1ms (1000 ticks/second).
    2. Enables C++ exceptions.

    However, the values defined in the `sdkconfig.defaults` file can not be applied at the moment since there is no command such `defconfig` (as there exist for `make` commands).

### **Considerations**

- To use this template, the ESP-IDF must be installed as described in [this tutorial](https://github.com/mr-verdant-13/esp-idf-instructions/blob/master/README.md).

- To start using this template, it is necessary to execute the `VscSetup4Win.bat` file.

## **Simple example (test0000)**

0. Execute the `VscSetup4Win.bat` file to initialize VSC for the use of this template.

1. Execute the `Menuconfig` task just to generate the necessary files for building.

2. In this example, the `test0000.cpp` source code will be used.\
   Execute the `Build test` task and choose the `test0000.cpp` test to be compiled.

3. Once the test has been built, execute the `Flash & Monitor` task and select the COM port to be used for flashing and monitoring.

    As a result, the terminal should show the `TEST_0000: Loop` message periodically.
