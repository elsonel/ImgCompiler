# Img Compiler

Overlays image frames to create a "Muybridge" styled composite.

## Example

Turn this:

![Alt Text](https://i.imgur.com/5HmCc1k.gif)

Into...

![Alt Text](https://i.imgur.com/aEXImaf.gif)

Another Example:

![Alt Text](https://i.imgur.com/IYfubZ6.gif)

## Getting Started

#### Setup

* Put image frames into /input
* Ensure image frames have transparent backgrounds and are named following the format 0001.png, 0002.png...
* Adjust the following constants:
```
int STARTFRAME = 1;        //Frame stats at 0001.png
int ENDFRAME = 87;         //Frame ends at 0020.png
int DENSITY = 4;           //Trail density
float TRANSPARENCY = 0.3;  //Trail transparency
```

#### Executing program

* Run application in Processing IDE.
* Collect processed frames in /output dictionary.

## Help

If the program crashes due to limited memory, process input frames in chunks by adjusting the STARTFRAME and ENDFRAME variables.
