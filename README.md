# Smart Relay Controller KC868-H8B ON/OFF Actions with Sensors - Delphi Demonstration
This is a demonstration of ON/OFF actions of a Smart Relay Controller KC868-H8B, with and without sensors, developed in Delphi.

## Application of this demo program
You can find a video demonstration of the software application for billiard clubs [here](https://www.youtube.com/watch?v=uo0OWrl__sA&t=1s) ,
which uses this demo program. The project from the video is developed by [Nemanja Grubor](https://github.com/nemanjang) .

## Configuration
To run this demo program, you need to follow these steps:

1. <p>The IP address of the LAN is assigned using the DHCP server. Server installation instructions are within this project.<br> 
Setting up the `KC868-H8B` is also within the project. When setting up the `KC868-H8B`, the device must be configured as a `TCP/IP` server.
</p>

These configurations, with additional instructions, are in the folder named `DHCP server`.

2. Connect a relay device with a computer in `LAN` mode.

3. Configure the `config.txt` file where the `.exe` file is.<br>
Note that in my case, we have the following parameters:
```
10.10.10.2 (Address)
10.10.10.2 (Host)
4196       (Port)
```

For your case, these parameters will be different. There are additional explanations in this file.

4. Run the demo program:
	- `Open Port`
	- Initialize the device (`Initialization` Button)
	- Work with ON/OFF actions with buttons, or
	- Work with ON/OFF actions with sensors, through `Edit` fields and a `Memo` field

