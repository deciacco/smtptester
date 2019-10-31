*************************************************************************************
* Purpose......Main entry point of application
* Author.......Deciacco.com
* Created......November 22, 2006
* About........
* Mod List.....
*************************************************************************************

on error do errorhandler with error( ), message( ), message(1), program( ), lineno(1)

do setcommands
do setupscreen
do form main
do settopmost with _screen.activeform.hwnd && Windows APIs to bring sdi to top

on shutdown clear events

read events

do propershutdown

* Generic error handler in case of something onforseen
*************************************************************************************
procedure errorhandler
parameter tnerror, tcmessage, tcmessage1, tcprogram, tnlineno
local lcerrormessage
lcerrormessage = "Error number: " + transform(tnerror) + chr(13) ;
    + "Error message: " + tcmessage + chr(13) ;
    + "Line of code: " + tcmessage1 + chr(13);
    + "Program: " + tcprogram + chr(13);
    + "Line number: " + transform(tnlineno)
messagebox(lcerrormessage, 16, "A Problem Has Been Encountered")
clear events
endproc

* Set the environment
*************************************************************************************
procedure setcommands
local lcpath

set bell off		&& Turns the computer bell on or off and sets the bell attributes.
set confirm on 		&& Specifies whether the user can exit a text box by typing past the last character in the text box.
set escape off		&& Determines whether pressing the ESC key interrupts program and command execution.
set exclusive off	&& Specifies whether Visual FoxPro opens table files for exclusive or shared use on a network.
set talk off		&& Determines whether Visual FoxPro displays command results.


lcpath = justpath(sys(16,0))
set default to (lcpath)
set path to (lcpath + ";Data\;Images\")
endproc

* Set some hidden screen properties (screen hidden because of config.fpw)
*************************************************************************************
procedure setupscreen
with _screen
* Add some custom properties
    .addproperty("ClientPath", addbs(sys(5) + sys(2003)))
    .addproperty("DataPath", addbs(sys(5) + sys(2003)) + "Data\")
    .addproperty("ClientExe", _screen.clientpath + justfname(sys(16)))
endwith
endproc

* Clean up on shutdown
*************************************************************************************
procedure propershutdown
on shutdown
clear events
release all
clear all
quit
endproc
