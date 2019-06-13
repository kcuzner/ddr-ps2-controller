# DDR PS2 Controller Firmware

This firmware is for the ATTiny20 and uses avr-gcc. It creates two personalities which are separate and distinct
functions of the single PCB:

 - The Controller: This is the PSX Bus controller which handles input from 6 switches and communicates over the PSX bus.
 - The Switch: Each foot switch has 4 separate physical switches. This collates the 4 switches into a single control
   line and also operates some LEDs.

## Build Prerequisites

 - make
 - avr-gcc
 - avr-binutils
 - avrdude

## How to build

This uses a recursive makefile system to build the two personality components. To begin the build process, the `make`
command is invoked from this directory. It will pass along the target to the component makefiles. Here are some example
invocations:

```
$ make
```

This invocation will build the default target for both components.

```
$ make all switch
```

This invocation will build the `all` target for the switch component.

```
$ make clean
```

This invocation will build the `clean` target for both components.

```
$ make install controller
```

This invocation will build the `install` target for the controller component

To describe the format for the commands more generally, invoking `make` in this folder has the following syntax:

```
make [TARGET] [[COMPONENT] [[COMPONENT]..]]
```

Where each `[TARGET]` is something that can be built in the subdirectory and each `[COMPONENT]` is a subdirectory in
this folder which has been designated in the `Makefile` as a component subdirectory.

