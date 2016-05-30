#!/bin/bash
# File Name:salentoscc.sh
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
TEXTDOMAIN=salentoscc.sh
ED1=mousepad
TERM=lxterminal

 
export ControlCenter=$(cat <<End_of_Text
<window title="SalentOS Control Center" window-position="1" resizable="true" icon-name="preferences-desktop" decorated="true" allow-shrink="true">
<vbox vscrollbar-policy="1" hscrollbar-policy="2" scrollable="true" width="650" height="500">
 

    
          
     
                 <pixmap><height>68</height><width>68</width>
                 <input file>/usr/share/pixmaps/menu.png</input>
                 </pixmap>
                 <text use-markup="true" width-chars="50">
                 <label>"<b>`gettext $"SalentOS Control Center"`</b>"</label>
                 </text>

             
                         
            
     
<frame><text  xalign="0" use-markup="true" width-chars="12"><label>"<b>`gettext $"Appearance"`</b>"</label>
       </text>
	<hbox space-expand="true">
	  <vbox>
		<hbox>
		  <button tooltip-text="`gettext $"Choose Wallpaper"`" height-request="60" width-request="60" stock-icon-size="6" relief="2">
          <input file icon="wallpaper"></input><height>48</height><width>48</width>
          <action>nitrogen &</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"Wallpaper"`"</label>
		  </text>
		</hbox>
        <hbox>
		  <button tooltip-text="`gettext $"Choose Oblogout theme"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" > 
		  <input file icon="style"></input><height>48</height><width>48</width>
		  <action> gksu /usr/local/bin/oblogout_TM/oblogout_TM.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"Oblogout theme"`"</label>
		  </text>
	</hbox>
        <hbox>
		  <button tooltip-text="`gettext $"Grub Customizer"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" > 
		  <input file icon="tint2conf"></input><height>48</height><width>48</width>
		  <action> gksu /usr//bin/grub-customizer &</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"Grub Customizer"`"</label>
		  </text>
	</hbox>      
          </vbox>
          <vbox> 
		<hbox>
          <button tooltip-text="`gettext $"Change Gtk2 and Icon Themes"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" >
          <input file icon="style"></input><height>48</height><width>48</width>
		  <action>xfce4-appearance-settings &</action>
          </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"Appearance"`"</label>
		  </text>
		</hbox>
        <hbox>
		  <button tooltip-text="`gettext $"Edit Tint2 Panel"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" >
		  <input file icon="tint2conf"></input><height>48</height><width>48</width>
		  <action>/usr/local/bin/tint2-configuration-manager/tint2_conf_man.sh</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"Tint2 Panel"`"</label>
		  </text>
	</hbox>
        <hbox>
		  <button tooltip-text="`gettext $"Openbox Config"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" > 
		  <input file icon="preferences-system"></input><height>48</height><width>48</width>
		  <action> /usr/bin/obconf &</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"Obconf"`"</label>
		  </text>
		</hbox>
	  </vbox>
	</hbox>
      </frame>
<frame><text  xalign="0" use-markup="true" width-chars="12"><label>"<b>`gettext $"System"`</b>"</label>
       </text> 	 
	<hbox space-expand="true">
	  <vbox>
        <hbox>
		  <button tooltip-text="`gettext $"Configure System"`" height-request="60" width-request="60" stock-icon-size="6" relief="2">
		  <input file icon="preferences-system"></input><height>48</height><width>48</width>
		  <action>gksudo $ED1 /etc/fstab /etc/default/keyboard /etc/default/grub /etc/apt/sources.list &</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"System"`"</label>
		  </text>
		</hbox>
        
<hbox>
		  <button tooltip-text="`gettext $"Software Properties"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" > 
		  <input file icon="software-properties"></input><height>48</height><width>48</width>
		  <action>software-properties-gtk</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"Software Properties"`"</label>
		  </text>
		</hbox>
<hbox>
		  <button tooltip-text="`gettext $"Additional Driver"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" > 
		  <input file icon="applications-system"></input><height>48</height><width>48</width>
		  <action>software-properties-gtk --open-tab=4</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"Additional Driver"`"</label>
		  </text>
		</hbox>
	  </vbox>
          <vbox>
		        
        	     <hbox>
                  <button tooltip-text="`gettext $"Synaptic Package Manager"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" > 
                  <input file icon="synaptic"></input><height>48</height><width>48</width>
                  <action>gksudo synaptic</action>
                  </button>
                  <text use-markup="true" width-chars="12">
                  <label>"`gettext $"Synaptic Package Manager"`"</label>
                  </text>
                </hbox>
                <hbox>
                  <button tooltip-text="`gettext $"SalentOS Update Center"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" > 
                  <input file icon="update-manager"></input><height>48</height><width>48</width>
                  <action>/usr/local/bin/salentos-update-center/salentosupdate_run.sh</action>
                  </button>
                  <text use-markup="true" width-chars="12">
                  <label>"`gettext $"SalentOS Update Center"`"</label>
                  </text>
                </hbox> 
<hbox>
                  <button tooltip-text="`gettext $"Language Support"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" > 
                  <input file icon="preferences-desktop-locale"></input><height>48</height><width>48</width>
                  <action>gnome-language-selector</action>
                  </button>
                  <text use-markup="true" width-chars="12">
                  <label>"`gettext $"Language Support"`"</label>
                  </text>
                </hbox>

           </vbox>
	</hbox>
    </frame>

<frame><text  xalign="0" use-markup="true" width-chars="12"><label>"<b>`gettext $"Openbox"`</b>"</label>
       </text> 
        <hbox space-expand="true">
	  <vbox>
	    <hbox>
         <button tooltip-text="`gettext $"Edit Openbox files"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" >
		  <input file icon="accessories-text-editor"></input><height>48</height><width>48</width>
		  <action>$ED1 ~/.config/openbox/rc.xml ~/.config/openbox/menu.xml &</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"Openbox files"`"</label>
		  </text>
		</hbox>
		<hbox>
		  <button tooltip-text="`gettext $"Choose Startup Services"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" > 
		  <input file icon="gnome-settings"></input><height>48</height><width>48</width>
		  <action>$ED1 ~/.config/openbox/autostart.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"Startup Services"`"</label>
		  </text>
		</hbox>
             </vbox>
	  <vbox>
		<hbox>
		  <button tooltip-text="`gettext $"Set Keyboard shortcuts"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" > 
		  <input file icon="input-keyboard"></input><height>48</height><width>48</width>
		  <action> /usr/bin/obkey &</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"Obkey"`"</label>
		  </text>
		</hbox>
                <hbox>
		  <button tooltip-text="`gettext $"Edit file menu (schema.pl)"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" > 
		  <input file icon="applications-system"></input><height>48</height><width>48</width>
		  <action>$ED1 ~/.config/obmenu-generator/schema.pl  &</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"Menu (schema.pl)"`"</label>
		  </text>
		</hbox> 
	  </vbox>
	</hbox>
	</frame>
        <frame><text  xalign="0" use-markup="true" width-chars="12"><label>"<b>`gettext $"Session"`</b>"</label>
       </text> 	 
              <hbox space-expand="true"> 
              <vbox>
                <hbox>
		  <button tooltip-text="`gettext $"Edit Login Options"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" > 
		  <input file icon="lightdm-gtk-greeter-settings"></input><height>48</height><width>48</width>
		  <action>gksudo $ED1 /etc/lightdm/lightdm-gtk-greeter-ubuntu.conf</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"Login Options"`"</label>
		  </text>
 		</hbox>
                <hbox>
		  <button tooltip-text="`gettext $"LightDM Gtk+ greeter settings"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" > 
		  <input file icon="lightdm-gtk-greeter-settings"></input><height>48</height><width>48</width>
		  <action>gksudo /usr/bin/lightdm-gtk-greeter-settings-pkexec &</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"LightDM"`"</label>
		  </text>
                </hbox>
            </vbox>
	       <vbox>
                <hbox>
		  <button tooltip-text="`gettext $"Set auto-login"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" > 
		  <input file icon="user-info"></input><height>48</height><width>48</width>
		  <action>gksudo $ED1 /etc/lightdm/lightdm.conf &</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"auto-login"`"</label>
		  </text>
		</hbox>
        <hbox>
		  <button tooltip-text="`gettext $"Users and Groups Settings"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" > 
		  <input file icon="system-users"></input><height>48</height><width>48</width>
		  <action>users-admin</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"Users and Groups"`"</label>
		  </text>
		</hbox>
	  </vbox>
	</hbox>
    </frame>

<frame><text  xalign="0" use-markup="true" width-chars="12"><label>"<b>`gettext $"Personal"`</b>"</label>
       </text>

	  
		<hbox space-expand="true">
         <vbox>
      <hbox>
		  <button tooltip-text="`gettext $"Preferred Applications"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" >
		  <input file icon="preferences-desktop-default-applications"></input><height>48</height><width>48</width>
		  <action>exo-preferred-applications</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"Preferred Applications"`"</label>
		  </text>
		</hbox> 
       </vbox>
	  <vbox>
       <hbox>

		  <button tooltip-text="`gettext $"Qt 4 Settings"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" >
		  <input file icon="qtconfig-qt4"></input><height>48</height><width>48</width>
		  <action>qtconfig-qt4</action>
          </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"Qt 4"`"</label>
		  </text>
		</hbox>
            </vbox>
	</hbox>
 
</frame>  
<frame><text  xalign="0" use-markup="true" width-chars="12"><label>"<b>`gettext $"Hardware"`</b>"</label>
       </text>
	<hbox space-expand="true">
	  <vbox>
               <hbox>
		  <button tooltip-text="`gettext $"Configure Mouse and Touchpad"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" > 
		  <input file icon="input-mouse"></input><height>48</height><width>48</width>
		  <action>gpointing-device-settings &</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"Mouse and Touchpad"`"</label>
		  </text>
		</hbox>
             
                <hbox>
		  <button tooltip-text="`gettext $"Set Screen Resolution"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" > 
		  <input file icon="display"></input><height>48</height><width>48</width>
		  <action>gksu -k arandr &</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"Screen"`"</label>
		  </text>
		</hbox>
        <hbox>
		  <button tooltip-text="`gettext $"Printer"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" > 
		  <input file icon="printer"></input><height>48</height><width>48</width>
		  <action>system-config-printer</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"Printer"`"</label>
		  </text>
		</hbox>
          <hbox>
                  <button tooltip-text="`gettext $"PC Information"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" > 
                  <input file icon="utilities-system-monitor"></input><height>48</height><width>48</width>
                  <action>/usr/local/bin/salentoscc/inxi-gui &</action>
                  </button>
                  <text use-markup="true" width-chars="12">
                  <label>"`gettext $"PC Information"`"</label>
                  </text>
                </hbox>
<hbox>
		  <button tooltip-text="`gettext $"Adjust Mixer"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" > 
		  <input file icon="multimedia-volume-control"></input><height>48</height><width>48</width>
		  <action> xfce4-mixer &</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"Mixer"`"</label>
		  </text>
		</hbox>  

	  </vbox>
          <vbox>
		<hbox>
		  <button tooltip-text="`gettext $"Change Keyboard Layout"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" > 
		  <input file icon="input-keyboard"></input><height>48</height><width>48</width>
		  <action>lxkeymap &</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"Keyboard Layout"`"</label>
		  </text>
		</hbox>
		<hbox>
		  <button tooltip-text="`gettext $"Power Management"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" > 
		  <input file icon="ac-adapter"></input><height>48</height><width>48</width>
		  <action>xfce4-power-manager-settings</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"Power Management"`"</label>
		  </text>
        </hbox>
<hbox>
		  <button tooltip-text="`gettext $"Net tools"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" > 
		  <input file icon="gnome-nettool"></input><height>48</height><width>48</width>
		  <action>gnome-nettool</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"Net"`"</label>
		  </text>
		</hbox>
<hbox>
		  <button tooltip-text="`gettext $"Execute Test Sound"`" height-request="60" width-request="60" stock-icon-size="6" relief="2" > 
		  <input file icon="multimedia-volume-control"></input><height>48</height><width>48</width>
		  <action>/usr/local/bin/salentoscc/test_sound</action>
		  </button>
		  <text use-markup="true" width-chars="12">
		  <label>"`gettext $"Test Sound"`"</label>
		  </text>
		</hbox>
        
 
        
	      
           </vbox>
	</hbox>
    </frame>
  
<frame>
<hbox space-expand="true">
<vbox>
        <hbox>
          <button tooltip-text="`gettext $"License"`" height-request="30" width-request="75">
          <label>"`gettext $"About"`"</label>
          <input file stock="gtk-dialog-info"></input>
          <action>/usr/local/bin/salentoscc/license</action>
          </button>
          <text use-markup="true" width-chars="55">
		  <label>""</label>
</text>          
        </hbox>

</vbox>

<vbox>
       <hbox>
        
         <button>
          <input file stock="gtk-close"></input>
          <label>"`gettext $"Close"`"</label>
          <action>EXIT:cancel</action>
         </button>

       </hbox>
</vbox>
</hbox>
</frame>
</vbox>
</window>
End_of_Text
)
gtkdialog --program=ControlCenter
unset ControlCenter
