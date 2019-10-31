*************************************************************************************
* Purpose......Set a form infrom of all other forms on the desktop
* Author.......Deciacco.com
* Created......November 22, 2006
* About........
* Mod List.....
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
