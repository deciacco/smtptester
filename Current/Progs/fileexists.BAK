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

* The Foxpro File() function will return a true if the
* file exists in the path. This encludes in the exe itself.
* Sometimes this is not wanted so this is the custom function.

lparameters tcFile
local laFiles[1]
return (adir(laFiles, tcFile) > 0)