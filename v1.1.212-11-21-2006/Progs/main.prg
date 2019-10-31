*************************************************************************************
*	SmtpTester is used for testing communications with smtp servers.
*
*	Copyright (C) 2006 Deciacco.com
*
*	This program is free software; you can redistribute it and/or
*	modify it under the terms of the GNU General Public License as
*	published by the Free Software Foundation; either version 2 of
*	the License, or (at your option) any later version.
*
*	This program is distributed in the hope that it will be
*	useful, but WITHOUT ANY WARRANTY; without even the implied
*	warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
*	PURPOSE.  See the GNU General Public License for more details.
*
*	You should have received a copy of the GNU General Public
*	License along with this program; if not, write to the Free
*	Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
*	Boston, MA 02110-1301 USA.
*************************************************************************************

On Error Do errorhandler With Error( ), Message( ), Message(1), Program( ), Lineno(1)

Do setcommands
Do setupscreen
Do Form Main
Do settopmost With _Screen.ActiveForm.HWnd && Windows APIs to bring sdi to top

On Shutdown Clear Events

Read Events

Do propershutdown

* Generic error handler in case of something onforseen
*************************************************************************************
Procedure errorhandler
	Parameter tnerror, tcmessage, tcmessage1, tcprogram, tnlineno
	Local lcerrormessage
	lcerrormessage = "Error number: " + Transform(tnerror) + Chr(13) ;
		+ "Error message: " + tcmessage + Chr(13) ;
		+ "Line of code: " + tcmessage1 + Chr(13);
		+ "Program: " + tcprogram + Chr(13);
		+ "Line number: " + Transform(tnlineno)
	Messagebox(lcerrormessage, 16, "A Problem Has Been Encountered")
	Clear Events
Endproc

* Set the environment
*************************************************************************************
Procedure setcommands
	Local lcpath

	Set Bell Off		&& Turns the computer bell on or off and sets the bell attributes.
	Set Confirm On 		&& Specifies whether the user can exit a text box by typing past the last character in the text box.
	Set Escape Off		&& Determines whether pressing the ESC key interrupts program and command execution.
	Set Exclusive Off	&& Specifies whether Visual FoxPro opens table files for exclusive or shared use on a network.
	Set Talk Off		&& Determines whether Visual FoxPro displays command results.


	lcpath = Justpath(Sys(16,0))
	Set Default To (lcpath)
	Set Path To (lcpath + ";Data\;Images\")
Endproc

* Set some hidden screen properties (screen hidden because of config.fpw)
*************************************************************************************
Procedure setupscreen
	With _Screen
		* Add some custom properties
		.AddProperty("ClientPath", Addbs(Sys(5) + Sys(2003)))
		.AddProperty("DataPath", Addbs(Sys(5) + Sys(2003)) + "Data\")
		.AddProperty("ClientExe", _Screen.clientpath + Justfname(Sys(16)))
	Endwith
Endproc

* Clean up on shutdown
*************************************************************************************
Procedure propershutdown
	On Shutdown
	Clear Events
	Release All
	Clear All
	Quit
Endproc
