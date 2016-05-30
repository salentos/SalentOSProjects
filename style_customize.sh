#!/bin/bash

# File Name:Style_customize.sh
# Purpose: Style_customize.sh
# Authors:ken SalentOS Community, Lanto
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

#################################################################################

export Style_customize=$(cat <<End_of_Text

<window title="SalentOS Style Customize" window-position="1" icon-name="menu" decorated="true" height-request="250" width-request="450" resizable="true">
<vbox>
          
              <pixmap><height>48</height><width>48</width>
              <input file>/usr/share/pixmaps/menu.png</input>
              </pixmap>


<text use-markup="true">
                 <label>"<b>`gettext $"SalentOS Style Customize"`</b>"</label></text>
                 

              <hseparator></hseparator>
<text use-markup="true">
                 <label>"<b>`gettext $"Choose"`</b>"</label></text>
                 
<hbox>
<frame Wallpaper>
<vbox>
    <button tooltip-text="`gettext $"yANIMA"`"> 
<input file>/usr/share/pixmaps/sunflower.png</input><height>16</height><width>16</width>
      <label>yANIMA</label>
      <action>/usr/local/bin/anima/anima.sh</action>
    </button>   

</vbox>
</frame>


<frame Theme>
<vbox>
<button tooltip-text="`gettext $"Obconf"`">
<input file>/usr/share/pixmaps/obconf.png</input><height>16</height><width>16</width>
      <label>Obconf</label>
     <action>obconf</action>
     </button>   

</vbox>
</frame>

<frame Icons & GTK Theme>
<vbox>
<button tooltip-text="`gettext $"Icons & GTK Theme"`">
<input file icon="style"></input><height>16</height><width>16</width>
      <label>Appearance</label>
      <action>xfce4-appearance-settings &</action>
      </button>   

</vbox>
</frame>


</hbox>
<hbox>
<button cancel></button>
</hbox>
</vbox>
</window>

End_of_Text
)
gtkdialog --program=Style_customize
unset Style