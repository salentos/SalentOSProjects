#!/bin/bash
# File Name:salentosexit.sh
# Version: 1.0.12
# Purpose: all-in-one control center for Salentos
# Authors: by ken Salentos Community
# Acknowledgements: Original script by KDulcimer of TinyMe. http://tinyme.mypclinuxos.com
# This file is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
###################################################################################################################################

TEXTDOMAINDIR=/usr/share/locale
TEXTDOMAIN=salentosexit.sh
ED1=mousepad
TERM=lxterminal

 
export SalentosExit=$(cat <<End_of_Text
<window title="SalentOS Exit" window-position="1" icon-name="menu" resizable="true" decorated="true" allow-shrink="false">

<vbox>
 

<frame>
  <hbox space-expand="true">
	
	  
     <hbox>

        <button image-position="2" tooltip-text="`gettext $"Cancel"`" stock-icon-size="6">
          <input file>/usr/local/bin/salentosexit/iconsexit/cancel.svg</input><height>48</height><width>48</width>
          <action>EXIT:cancel</action>
          <label>"`gettext $"Cancel"`"</label>
        </button>
		  

        <button image-position="2" tooltip-text="`gettext $"Logout"`" stock-icon-size="6">
          <input file>/usr/local/bin/salentosexit/iconsexit/logout.svg</input><height>48</height><width>48</width>
          <action>openbox --exit</action>
          <label>"`gettext $"Logout"`"</label>	  
        </button>
		  
		  
	<button image-position="2" tooltip-text="`gettext $"Reboot"`" stock-icon-size="6">
          <input file>/usr/local/bin/salentosexit/iconsexit/reboot.svg</input><height>48</height><width>48</width>
          <action>dbus-send --system --print-reply --dest=org.freedesktop.ConsoleKit /org/freedesktop/ConsoleKit/Manager org.freedesktop.ConsoleKit.Manager.Restart</action>
          <label>"`gettext $"Reboot"`"</label>
        </button>
		  
		  
        <button image-position="2" tooltip-text="`gettext $"Shutdown"`" stock-icon-size="6">
          <input file>/usr/local/bin/salentosexit/iconsexit/shutdown.svg</input><height>48</height><width>48</width>
          <action>dbus-send --system --print-reply --dest=org.freedesktop.ConsoleKit /org/freedesktop/ConsoleKit/Manager org.freedesktop.ConsoleKit.Manager.Stop</action>
          <label>"`gettext $"Shutdown"`"</label>
        </button>
		 
     </hbox>
       
 </hbox>
</frame>
</vbox>
</window>
End_of_Text
)
gtkdialog --program=SalentosExit
unset SalentosExit
