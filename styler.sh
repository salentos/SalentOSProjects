#!/bin/bash

# File Name:styler.sh
# Purpose: styler.sh
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

Desktop=$"Desktop" Tint2=$"Tint2" Dock=$"Dock" Oblogout=$"Oblogout"
export Styler=$(cat <<End_of_Text

<window title="SalentOS Styler" window-position="1" icon-name="menu" decorated="true" height-request="550" width-request="800" resizable="false">
<vbox>
          
              <pixmap><height>48</height><width>48</width>
              <input file>/usr/share/pixmaps/menu.png</input>
              </pixmap>


<text use-markup="true">
                 <label>"<b>`gettext $"SalentOS Styler"`</b>"</label></text>
                 

        <hbox>
          <button tooltip-text="`gettext $"About"`" height-request="28" width-request="28">
          
          <input file stock="gtk-dialog-info"></input>
          <action>/usr/local/bin/SalentOS_Styler/license</action>
          </button>
          
        </hbox>

<notebook tab-pos="2" labels="$Desktop|$Tint2|$Dock|$Oblogout">
<hbox>
          
<frame Style>

    <vbox>
                   <pixmap><height>270</height><width>500</width>
                   <variable>IMAGE</variable> 
                   <input file>/usr/local/bin/SalentOS_Styler/images/preview/background.png</input>
                   </pixmap>
  </vbox>

<vbox>
<hbox>
   <radiobutton>
     <label> Sea </label>
     <variable> theme1 </variable>
     <action> theme="theme1"; echo $theme1;cp /usr/local/bin/SalentOS_Styler/images/temi/sea.png /usr/local/bin/SalentOS_Styler/images/preview/background.png; sed -i '5s/.*/TEMA="sea"/' ~/.styler_themes/selecter.sh; </action> 
     <action type="refresh">IMAGE</action>
   </radiobutton>

   <radiobutton>
     <label> Fos </label>
     <variable> theme2 </variable>
     <action>  theme="theme2"; echo $theme2;cp /usr/local/bin/SalentOS_Styler/images/temi/fos.png /usr/local/bin/SalentOS_Styler/images/preview/background.png; sed -i '5s/.*/TEMA="fos"/' ~/.styler_themes/selecter.sh; </action> 
     <action type="refresh">IMAGE</action>
   </radiobutton>

   <radiobutton>
     <label> Serenity (Default) </label>
     <variable> theme3 </variable>
     <action>  theme="theme3"; echo $theme3;cp /usr/local/bin/SalentOS_Styler/images/temi/serenity.png /usr/local/bin/SalentOS_Styler/images/preview/background.png; sed -i '5s/.*/TEMA="serenity"/' ~/.styler_themes/selecter.sh; </action> 
     <action type="refresh">IMAGE</action>  
   </radiobutton>
</hbox>

</vbox>

<hbox>

        <button>
           <input file stock="gtk-apply"></input>
           <label>"`gettext $"Apply"`"</label>
           <action> ~/.styler_themes/selecter.sh</action> 
        </button>

</hbox>

</frame>

<frame>
<text xalign="0"><label>"`gettext $"Customize"`"</label>
       </text>
<hbox>		
<button tooltip-text="`gettext $"Style"`" height-request="32" width-request="72" stock-icon-size="4" ><input file icon="style"></input><height>16</height><width>16</width>
<label>Style</label>
<action>/usr/local/bin/SalentOS_Styler/style_customize.sh</action>
     </button>
</hbox>

 



<text use-markup="true" width-chars="30">
		  <label>""</label>
</text>                 
<hseparator></hseparator>
<text xalign="0"><label>"`gettext $"Compositing"`"</label>
       </text>
<vbox>
          

	<hbox>
                  <checkbox>
                  <label>On/Off</label>
                   <variable>checkbox1</variable> 
		  <action>if true /usr/local/bin/SalentOS_Styler/tint2/time_on.sh</action> 
		 </checkbox>
               
                 <checkbox>
                <label>Autostart</label> 
                   <variable>checkbox2</variable> 
		 <action>if true /usr/local/bin/SalentOS_Styler/tint2/time_on.sh</action> 
		 </checkbox>

             <checkbox>
           <label>"`gettext $"Edit Config"`"</label>
           <action>mousepad $HOME/.config/compton.conf</action> 
        </checkbox>
              
           </hbox>
</vbox>
<text use-markup="true" width-chars="40">
		  <label>""</label>
</text>          
<hseparator></hseparator>
           <text xalign="0"><label>"`gettext $"Conky"`"</label>
       </text>

 <hbox>
               <checkbox>
                 <label>On/Off</label>
                 <variable>checkbox3</variable> 
	          <action>if true /usr/local/bin/SalentOS_Styler/tint2/time_on.sh</action>
                  </checkbox>

                <checkbox>
                <label>Autostart</label> 
                   <variable>checkbox2</variable> 
		 <action>if true /usr/local/bin/SalentOS_Styler/tint2/time_on.sh</action> 
		 </checkbox>

             <button tooltip-text="`gettext $"Theme"`" height-request="32" width-request="72" stock-icon-size="4" ><input file icon="style"></input><height>16</height><width>16</width>
             <label>Theme</label>
               <variable>checkbox4</variable>
                <action>$HOME/conkysel.sh</action>
              </button>


		
    </hbox>
<text use-markup="true" width-chars="40">
		  <label>""</label>
</text>          
<hseparator></hseparator>
<text xalign="0"><label>"`gettext $"Wallpaper Changer"`"</label>
       </text>

<hbox>
<button tooltip-text="`gettext $"Autostart"`" height-request="32" width-request="72" stock-icon-size="4" ><input file>/usr/share/pixmaps/sunflower.png</input><height>16</height><width>16</width>
              <label>"`gettext $"yANIMA"`"</label> 
                  <action>/usr/local/bin/anima/anima.sh</action>
               </button>

</hbox>

<text height-request="15"><label>""</label></text>
<hseparator></hseparator>
<vbox>
       <hbox>
<button>
           <input file stock="gtk-close"></input>
           <label>"`gettext $"Exit"`"</label>
            <action>EXIT:cancel</action>
        </button>

 </hbox>

</vbox>	
              
</frame>

</hbox>
<vbox>

<frame>      

                   <pixmap><width>770</width>
                   <variable>IMAGE2</variable> 
                   <input file>/usr/local/bin/SalentOS_Styler/images/preview/tint2.png</input>
                   </pixmap>


</frame>

<hbox> 	 
<frame>
<vbox spacing="0">
<combobox>
      <variable>COMBOBOX1</variable>
      <item>Default</item>
      <item>icon_and_text_3</item>
      <item>icon_and_text_4</item>
      <item>icon_only_1</item>
      <item>icon_only_2</item>
      <item>icon_only_3</item>
      <item>icon_only_4</item>
      <item>icon_only_6</item>
      <item>icon_only_7</item>
      <item>Numix</item>
      <item>Win10</item>
      <item>BB</item>
      <item>BO</item>
      <item>BW</item>
      <item>BP</item>
</combobox>

<hbox>
     <button>
           <input file stock="gtk-apply"></input>
           <label>"`gettext $"Apply"`"</label>
           <action>EXIT:ok</action>
   </button>

<button>
           <input file stock="gtk-close"></input>
           <label>"`gettext $"Exit"`"</label>
            <action>EXIT:cancel</action>
        </button>
</hbox>


<vbox>
<frame>
<hbox>

<vbox>

<text use-markup="true" xalign="0">
    <label>"<b>Position</b>"</label>
  </text>
</vbox>


<vbox>

              <radiobutton>            
                  <label>Up</label>
                  <variable>RADIOBUTTON4</variable>
                  <action>if true /usr/local/bin/launcher_manager/position_top.sh</action>
               </radiobutton>
               <radiobutton>
                  <label>Down</label>
                  <variable>RADIOBUTTON5</variable>
                  <action>if true /usr/local/bin/launcher_manager/position_bottom.sh</action>
	   </radiobutton>
               <radiobutton>
                   <label>Left</label>
		<variable>RADIOBUTTON6</variable>
	    <action>if true /usr/local/bin/launcher_manager/position_left.sh</action>
	</radiobutton>   
		<radiobutton>
			<label>Right</label>
			<variable>RADIOBUTTON7</variable>
			<action>if true /usr/local/bin/launcher_manager/position_right.sh</action>
		</radiobutton>
				

</vbox>

<vbox>
<text use-markup="true" xalign="0">
    <label>"<b>Launchers</b>"</label>
  </text>
</vbox>


<vbox>
	     <checkbox>            
                  <label>Add</label>
                  <variable>CHECKBOX8</variable>
		    <action>if true /usr/local/bin/launcher_manager/partedue.sh</action> 
		 </checkbox>
                
                  <checkbox>
                  <label>Order</label>
                  <variable>CHECKBOX9</variable> 
			<action>if true /usr/local/bin/launcher_manager/partetre.sh</action> 
		 </checkbox>
               <checkbox>
                  <label>Remove</label>
                  <variable>CHECKBOX10</variable>
			<action>if true /usr/local/bin/launcher_manager/parteuno.sh</action> 
		 </checkbox>
</vbox>


<vbox>
<text use-markup="true" xalign="0">
    <label>"<b>Time</b>"</label>
  </text>
</vbox>


<vbox>
	       <button>            
                  <label>AM/PM</label>
                  <variable>RADIOBUTTON16</variable>
		    <action>/usr/local/bin/SalentOS_Styler/tint2/time_format.sh</action>
                 </button>
                
                  <checkbox>
                  <label>Time On/Off</label>
                  <variable>RADIOBUTTON17</variable> 
			<action>if true /usr/local/bin/SalentOS_Styler/tint2/time_on.sh</action>
                        <action>if false /usr/local/bin/SalentOS_Styler/tint2/time_off.sh</action> 
		 </checkbox>

                 <checkbox>
                  <label>Seconds</label>
                  <variable>RADIOBUTTON19</variable> 
			<action>if true /usr/local/bin/SalentOS_Styler/tint2/second_on.sh</action>
			<action>if false /usr/local/bin/SalentOS_Styler/tint2/second_off.sh</action>
		 </checkbox>

</vbox>

<vbox>
<text use-markup="true" xalign="0">
    <label>"<b>Date</b>"</label>
  </text>
</vbox>


<vbox>
	    
                
                  <radiobutton>
                  <label>Date On</label>
                  <variable>RADIOBUTTON21</variable> 
			<action>if true /usr/local/bin/SalentOS_Styler/tint2/date_on.sh</action> 
		 </radiobutton>
               <radiobutton>
                  <label>Date Off</label>
                  <variable>RADIOBUTTON22</variable>
			<action>if true /usr/local/bin/SalentOS_Styler/tint2/date_off.sh</action> 
		 </radiobutton> 

</vbox>

<vbox>
<text use-markup="true" xalign="0">
    <label>"<b>Options</b>"</label>
  </text>
</vbox>
<vbox>

                                <checkbox>
                                    <variable>checkbox10</variable>
					<label>autoHide</label>
					<variable>B</variable>
					 <action>if true /usr/local/bin/launcher_manager/autohide_on.sh</action>
                                         <action>if false /usr/local/bin/launcher_manager/autohide_off.sh</action>
                                    </checkbox>


    <checkbox>
      <label>tintwizard</label>
      <variable>checkbox11</variable>
      <action>if true /usr/local/bin/SalentOS_Styler/tint2/tintwizard.py</action>
    </checkbox>

   <checkbox>
      <label>Edit tint2rc</label>
      <variable>checkbox12</variable>
      <action>if true mousepad $HOME/.config/tint2/tint2rc</action>
    </checkbox>

</vbox>

</hbox>

</frame>
</vbox>


</vbox>
</frame>
</hbox>

</vbox>

<vbox>
<hbox> 	 
<frame>
<hbox>
                 <checkbox>
                  <label>Enable</label>
                  <variable>checkbox13</variable> 
			<action>if true /usr/local/bin/SalentOS_Styler/tint2/time_on.sh</action> 
		 </checkbox>
               <checkbox>
                  <label>Disable</label>
                  <variable>checkbox14</variable>
			<action>if true /usr/local/bin/SalentOS_Styler/tint2/time_off.sh</action> 
		 </checkbox>
<checkbox>
                  <label>Autostart</label>
                  <variable>checkbox15</variable> 
			<action>if true /usr/local/bin/SalentOS_Styler/tint2/time_on.sh</action> 
		 </checkbox>
</hbox> 
<vbox>
                   <pixmap><width>700</width>
                   <variable>IMAGE2</variable> 
                   <input file>/usr/local/bin/SalentOS_Styler/Dockbar/dock.png</input>
                   </pixmap>
</vbox>
<vbox spacing="0">
<vbox>
<frame>
<hbox>
<vbox>

<text use-markup="true" xalign="0">
    <label>"<b>Position</b>"</label>
  </text>
</vbox>


<vbox>

              <radiobutton>            
                  <label>Up</label>
                  <variable>RADIOBUTTON4</variable>
                  <action>if true /usr/local/bin/launcher_manager/position_top.sh</action>
               </radiobutton>
               <radiobutton>
                  <label>Down</label>
                  <variable>RADIOBUTTON5</variable>
                  <action>if true /usr/local/bin/launcher_manager/position_bottom.sh</action>
			   </radiobutton>
               <radiobutton>
                   <label>Left</label>
				   <variable>RADIOBUTTON6</variable>
				   <action>if true /usr/local/bin/launcher_manager/position_left.sh</action>
				</radiobutton>
				<radiobutton>
					<label>Right</label>
					<variable>RADIOBUTTON7</variable>
					<action>if true /usr/local/bin/launcher_manager/position_right.sh</action>
				</radiobutton>
				

</vbox>

<vbox>
<text use-markup="true" xalign="0">
    <label>"<b>Launchers</b>"</label>
  </text>
</vbox>


<vbox>
	     <checkbox>            
                  <label>Add</label>
                  <variable>CHECKBOX11</variable>
		    <action>if true /usr/local/bin/launcher_manager/partedue.sh</action> 
		 </checkbox>
                
                  <checkbox>
                  <label>Order</label>
                  <variable>CHECKBOX12</variable> 
			<action>if true /usr/local/bin/launcher_manager/partetre.sh</action> 
		 </checkbox>
               <checkbox>
                  <label>Remove</label>
                  <variable>CHECKBOX13</variable>
			<action>if true /usr/local/bin/launcher_manager/parteuno.sh</action> 
		 </checkbox>
</vbox>
<vbox>
<text use-markup="true" xalign="0">
    <label>"<b>Options</b>"</label>
  </text>
</vbox>
<vbox>

                                <checkbox>
					<label>autoHide</label>
                                        <variable>checkbox16</variable>
					<variable>B</variable>
					 <action>if true /usr/local/bin/launcher_manager/autohide_on.sh</action>
                                         <action>if false /usr/local/bin/launcher_manager/autohide_off.sh</action>

                                </checkbox>
               
                                  <checkbox>
                                  <label>Edit dock</label>
                                   <variable>checkbox17</variable>
                                    <action>if true mousepad $HOME/.config/tint2/tint2rc1</action>
                                   </checkbox>

</vbox>

</hbox>

</frame>
</vbox>

</vbox>
</frame>
</hbox>
<hbox>
<button>
           <input file stock="gtk-close"></input>
           <label>"`gettext $"Exit"`"</label>
            <action>EXIT:cancel</action>
        </button>
</hbox>
</vbox>


<vbox>
<hbox>
       <frame>

       
                   <pixmap><height>270</height><width>500</width>
                   <variable>IMAGE4</variable> 
                   <input file>/usr/local/bin/oblogout_TM/preview/preview</input>
                   </pixmap>
  
           
       </frame>


       <frame Themes>
        <vbox scrollable="true" width="20">

                    <button>
                    <variable>CHECKBOX</variable>
                    <label>fantasia</label>
                    <action> echo $CHECKBOX;cp /usr/local/bin/oblogout_TM/images/fantasia.png /usr/local/bin/oblogout_TM/preview/preview;if $CHECKBOX "true"; then sudo rm -f /usr/local/bin/oblogout_TM/oblogout/img; cp -R /usr/local/bin/oblogout_TM/fantasia/img /usr/local/bin/oblogout_TM/oblogout/imgtemp;fi &</action>
                    <action type="refresh">IMAGE4</action>
                    </button>                   


                    <button>
                    <variable>CHECKBOX2</variable>
                    <label>foom</label>
                    <action> echo $CHECKBOX2;cp /usr/local/bin/oblogout_TM/images/foom.png /usr/local/bin/oblogout_TM/preview/preview;if echo $CHECKBOX2 "true";then sudo rm -f /usr/local/bin/oblogout_TM/oblogout/img;cp -R /usr/local/bin/oblogout_TM/foom/img /usr/local/bin/oblogout_TM/oblogout/imgtemp;fi &</action>
                    <action type="refresh">IMAGE4</action>
                    </button>

                    <button>
                    <variable>CHECKBOX3</variable>
                    <label>gartoon</label>
                    <action> echo $CHECKBOX3;cp /usr/local/bin/oblogout_TM/images/gartoon.png /usr/local/bin/oblogout_TM/preview/preview;if echo $CHECKBOX3 "true";then sudo rm -f /usr/local/bin/oblogout_TM/oblogout/img;cp -R /usr/local/bin/oblogout_TM/gartoon/img /usr/local/bin/oblogout_TM/oblogout/imgtemp;fi &</action>
                    <action type="refresh">IMAGE4</action>
                    </button>

                    <button>
                    <variable>CHECKBOX4</variable>
                    <label>gnomecolors</label>
                    <action> echo $CHECKBOX4;cp /usr/local/bin/oblogout_TM/images/gnomecolors.png /usr/local/bin/oblogout_TM/preview/preview;if echo $CHECKBOX4 "true";then sudo rm -f /usr/local/bin/oblogout_TM/oblogout/img;cp -R /usr/local/bin/oblogout_TM/gnomecolors/img /usr/local/bin/oblogout_TM/oblogout/imgtemp;fi &</action>
                    <action type="refresh">IMAGE4</action>
                    </button>

                    <button>
                    <variable>CHECKBOX5</variable>
                    <label>greysquare</label>
                    <action> echo $CHECKBOX5;cp /usr/local/bin/oblogout_TM/images/greysquare.png /usr/local/bin/oblogout_TM/preview/preview;if echo $CHECKBOX5 "true";then sudo rm -f /usr/local/bin/oblogout_TM/oblogout/img;cp -R /usr/local/bin/oblogout_TM/greysquare/img /usr/local/bin/oblogout_TM/oblogout/imgtemp;fi &</action>
                    <action type="refresh">IMAGE4</action>
                    </button>

                    <button>
                    <variable>CHECKBOX6</variable>
                    <label>human</label>
                    <action> echo $CHECKBOX6;cp /usr/local/bin/oblogout_TM/images/human.png /usr/local/bin/oblogout_TM/preview/preview;if echo $CHECKBOX6 "true";then sudo rm -f /usr/local/bin/oblogout_TM/oblogout/img;cp -R /usr/local/bin/oblogout_TM/human/img /usr/local/bin/oblogout_TM/oblogout/imgtemp;fi &</action>
                    <action type="refresh">IMAGE4</action>
                    </button>

                    <button>
                    <variable>CHECKBOX7</variable>
                    <label>iLinux</label>
                    <action> echo $CHECKBOX7;cp /usr/local/bin/oblogout_TM/images/iLinux.png /usr/local/bin/oblogout_TM/preview/preview;if echo $CHECKBOX7 "true";then sudo rm -f /usr/local/bin/oblogout_TM/oblogout/img;cp -R /usr/local/bin/oblogout_TM/iLinux/img /usr/local/bin/oblogout_TM/oblogout/imgtemp;fi &</action>
                    <action type="refresh">IMAGE4</action>
                    </button>

                    <button>
                    <variable>CHECKBOX8</variable>
                    <label>manjaro</label>
                    <action> echo $CHECKBOX8;cp /usr/local/bin/oblogout_TM/images/manjaro.png /usr/local/bin/oblogout_TM/preview/preview;if echo $CHECKBOX8 "true";then sudo rm -f /usr/local/bin/oblogout_TM/oblogout/img;cp -R /usr/local/bin/oblogout_TM/manjaro/img /usr/local/bin/oblogout_TM/oblogout/imgtemp;fi &</action>
                    <action type="refresh">IMAGE4</action>
                    </button>

                    <button>
                    <variable>CHECKBOX9</variable>
                    <label>nitrux</label>
                    <action> echo $CHECKBOX9;cp /usr/local/bin/oblogout_TM/images/nitrux.png /usr/local/bin/oblogout_TM/preview/preview;if echo $CHECKBOX9 "true";then sudo rm -f /usr/local/bin/oblogout_TM/oblogout/img;cp -R /usr/local/bin/oblogout_TM/nitrux/img /usr/local/bin/oblogout_TM/oblogout/imgtemp;fi &</action>
                    <action type="refresh">IMAGE4</action>
                    </button>

                    <button>
                    <variable>CHECKBOX10</variable>
                    <label>onym</label>
                    <action> echo $CHECKBOX10;cp /usr/local/bin/oblogout_TM/images/onym.png /usr/local/bin/oblogout_TM/preview/preview;if echo $CHECKBOX10 "true";then sudo rm -f /usr/local/bin/oblogout_TM/oblogout/img;cp -R /usr/local/bin/oblogout_TM/onym/img /usr/local/bin/oblogout_TM/oblogout/imgtemp;fi &</action>
                    <action type="refresh">IMAGE4</action>
                    </button>

                    <button>
                    <variable>CHECKBOX11</variable>
                    <label>outmok</label>
                    <action> echo $CHECKBOX11;cp /usr/local/bin/oblogout_TM/images/outmok.png /usr/local/bin/oblogout_TM/preview/preview;if echo $CHECKBOX11 "true";then sudo rm -f /usr/local/bin/oblogout_TM/oblogout/img;cp -R /usr/local/bin/oblogout_TM/outmok/img /usr/local/bin/oblogout_TM/oblogout/imgtemp;fi &</action>
                    <action type="refresh">IMAGE</action>
                    </button>

                    <button>
                    <variable>CHECKBOX12</variable>
                    <label>oxygen</label>
                    <action> echo $CHECKBOX12;cp /usr/local/bin/oblogout_TM/images/oxygen.png /usr/local/bin/oblogout_TM/preview/preview;if echo $CHECKBOX12 "true";then sudo rm -f /usr/local/bin/oblogout_TM/oblogout/img;cp -R /usr/local/bin/oblogout_TM/oxygen/img /usr/local/bin/oblogout_TM/oblogout/imgtemp;fi &</action>
                    <action type="refresh">IMAGE</action>
                    </button>

                    <button>
                    <variable>CHECKBOX13</variable>
                    <label>steel</label>
                    <action> echo $CHECKBOX13;cp /usr/local/bin/oblogout_TM/images/steel.png /usr/local/bin/oblogout_TM/preview/preview;if echo $CHECKBOX13 "true";then sudo rm -f /usr/local/bin/oblogout_TM/oblogout/img;cp -R /usr/local/bin/oblogout_TM/steel/img /usr/local/bin/oblogout_TM/oblogout/imgtemp;fi &</action>
                    <action type="refresh">IMAGE</action>
                    </button>
                    
                    <button>
                    <variable>CHECKBOX14</variable>
                    <label>cards</label>
                    <action> echo $CHECKBOX14;cp /usr/local/bin/oblogout_TM/images/cards.png /usr/local/bin/oblogout_TM/preview/preview;if echo $CHECKBOX14 "true";then sudo rm -f /usr/local/bin/oblogout_TM/oblogout/img;cp -R /usr/local/bin/oblogout_TM/cards/img /usr/local/bin/oblogout_TM/oblogout/imgtemp;fi &</action>
                    <action type="refresh">IMAGE</action>
                    </button>

                    <button>
                    <variable>CHECKBOX15</variable>
                    <label>weather</label>
                    <action> echo $CHECKBOX15;cp /usr/local/bin/oblogout_TM/images/weather.png /usr/local/bin/oblogout_TM/preview/preview;if echo $CHECKBOX15 "true";then sudo rm -f /usr/local/bin/oblogout_TM/oblogout/img;cp -R /usr/local/bin/oblogout_TM/weather/img /usr/local/bin/oblogout_TM/oblogout/imgtemp;fi &</action>
                    <action type="refresh">IMAGE</action>
                    </button>

                    <button>
                    <variable>CHECKBOX16</variable>
                    <label>circles flat</label>
                    <action> echo $CHECKBOX16;cp /usr/local/bin/oblogout_TM/images/circlesflat.png /usr/local/bin/oblogout_TM/preview/preview;if echo $CHECKBOX16 "true";then sudo rm -f /usr/local/bin/oblogout_TM/oblogout/img;cp -R /usr/local/bin/oblogout_TM/circlesflat/img /usr/local/bin/oblogout_TM/oblogout/imgtemp;fi &</action>
                    <action type="refresh">IMAGE</action>
                    </button>

                    <button>
                    <variable>CHECKBOX17</variable>
                    <label>salento</label>
                    <action> echo $CHECKBOX17;cp /usr/local/bin/oblogout_TM/images/salento.png /usr/local/bin/oblogout_TM/preview/preview;if echo $CHECKBOX17 "true";then sudo rm -f /usr/local/bin/oblogout_TM/oblogout/img;cp -R /usr/local/bin/oblogout_TM/salento/img /usr/local/bin/oblogout_TM/oblogout/imgtemp;fi &</action>
                    <action type="refresh">IMAGE</action>
                    </button>
                    
                    <button>
                    <variable>CHECKBOX18</variable>
                    <label>4elements</label>
                    <action> echo $CHECKBOX18;cp /usr/local/bin/oblogout_TM/images/4elements.png /usr/local/bin/oblogout_TM/preview/preview;if echo $CHECKBOX18 "true";then sudo rm -f /usr/local/bin/oblogout_TM/oblogout/img;cp -R /usr/local/bin/oblogout_TM/4elements/img /usr/local/bin/oblogout_TM/oblogout/imgtemp;fi &</action>
                    <action type="refresh">IMAGE</action>
                    </button>
       </vbox>
       </frame>
   
  </hbox>
        
      <hbox>
        <button>
           <input file stock="gtk-apply"></input>
           <label>"`gettext $"Apply"`"</label>
           <action>gksudo -S /usr/local/bin/oblogout_TM/apply.sh</action>
        </button>
     
<button>
           <input file stock="gtk-close"></input>
           <label>"`gettext $"Exit"`"</label>
            <action>EXIT:cancel</action>
        </button>
 </hbox>


</vbox>
</notebook>
</vbox>
</window>

End_of_Text
)
gtkdialog --program=Styler
unset Styler