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

* Takes the window handle of a form and bring it to the top of all
* other forms using Window's API functions.

#Define hwnd_topmost -1
#define hwnd_top 0
#Define hwnd_notopmost -2
#Define swp_nosize 1
#Define swp_nomove 2
#Define swp_noactivate 16
#Define swp_showwindow 64

Lparameters phwnd

Declare Integer SetWindowPos In user32;
	INTEGER HWnd,;
	INTEGER hWndInsertAfter,;
	INTEGER x,;
	INTEGER Y,;
	INTEGER cx,;
	INTEGER cy,;
	INTEGER wFlags

Declare Integer SetForegroundWindow In user32;
	INTEGER HWnd

setwindowpos(phwnd, hwnd_top, 0, 0, 0, 0, swp_nomove + swp_nosize)
setforegroundwindow(phwnd)

Clear Dlls "setwindowpos", "setforegroundwindow"

Return
