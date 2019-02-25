//--------------------------------------------------------------------------------------------------------------------------------------------------------------//
// AUSSIEDROID'S ACKNOWLEDGEMENTS //																//
//--------------------------------------------------------------------------------------------------------------------------------------------------------------//
// Standing on the Shoulders of Giants! Creation of this TARGET Script would not have been possible without amazing ED Scripts I found online created by:	//
// Alexandr Zhevedenko, Michael Lehman (WraithMG11235), DarKcyde & Thomas Duployez (CMDR Touille). The script continues to evolve with the fantastic community  //
// feedback, ideas, bug reports & sharing of code... the help & support shown on the forums/guide has been been amazing!	 !! You ALL Rock! Thank you !!	//
//--------------------------------------------------------------------------------------------------------------------------------------------------------------//
// GENERAL INFO & LINKS //																	//
//--------------------------------------------------------------------------------------------------------------------------------------------------------------//
// Created by Aussiedroid:		(http://steamcommunity.com/id/aussiedroid | https://forums.frontier.co.uk/member.php/21601-Aussiedroid)			//
// Full Guide:				(http://steamcommunity.com/sharedfiles/filedetails/?id=769637037)							//
// Frontier Forums Discussion Thread:	(https://forums.frontier.co.uk/showthread.php/293027-Aussiedroid-s-Enhanced-Thrustmaster-Warthog-Script)		//
// Some Previous Ver. Reference Maps:	(https://aussiedroid.imgur.com/)											//
//--------------------------------------------------------------------------------------------------------------------------------------------------------------//
// MINIMUM REQUIREMENTS: THRUSTMASTER TARGET SOFTWARE v3.0.18.328+ \ DRIVERS+FIRMWARE 2018+  ->(https://support.thrustmaster.com/en/product/hotaswarthog-en/)<- //
//--------------------------------------------------------------------------------------------------------------------------------------------------------------//
//																				//
//							  ** RECOMMENDED RUNNING SCRIPT IN TARGET GUI **							//
//						** REMINDER: CUSTOMISE/SET YOUR USER PREFERENCES IN AD_EDUSERPREFS FILE **					//
//--------------------------------------------------------------------------------------------------------------------------------------------------------------//
// VERSION HISTORY //	Version 4.0.0			\\ Released Sept 2016	|	Updated ??? 2019 //		\\		Public Release #21	//
// =============================================================================================================================================================//
// v4.0 - NEW: Customisable Chat Presets! FIX: LEDs on Launch Sequence. //
// v3.3.3-IMPROVED: ED-BAT now opens picture files. FIX: FAOff Printout (UseRudderAxisCurves), VA: 4 Conflict+3 Missing binds. Conflict Discord keymap resolved.//
// v3.3 - BEYOND CH.4: ALL New Keys mapped! NEW: ED-BAT App Launcher, TM TPR Rudder Support, Swap PIP Hat, Report Crimes Macro & LED 'Blinking' Controller.	//
// v3.3 - NEW: User Override on Sec. Fire Pinky. IMPROVED: initPrintState formatting & Merged Ship/SRV Cam. FIX: Autodock Macro, C.Scoop LED & ECM duration. 	//
// v3.2 - IMPROVED: PIP MGT now works first press & FAOFF HOLD Toggle now returns to Previously Active Joystick Curve. FIXED: Multiple Minor Keybind Conflicts.	//
// v3.1 - FIXED: Galnet Audio & Escape Vector Sequence conflict. IMPROVED: Combined Fire Trigger behaviour, & Dual Tier PIPs 4xWEP now (2xSYS->2xENG).  	//
// v3.0.2-BEYOND CH.1: Added User def. Double Tap to Pinky Trigger, NEW Inverted Dual PIP scheme (short=full PIPs), Fighter Follow replaced with Attack.	//
// v3.0.1-BEYOND BETA UPDATE: Added the new Galnet Audio keybindings mapped in ED .binds file which are now updated to (v3.0).					//
// v3.0 - NEW: Ship Take Off Sequence! UPDATED: Mic Switch Function, Def. VA Toggle Mapping ADD: EDFX/EDDI to SW List FIX: Throttle Prec. Mode preventing Boost.//
// v2.4.3-NEW: Precision C.Scoop Override FIXED: Throttle Toggle @Start, 100% Working TFRP Rudder code! REMOVED: Old Target.tmh (New Ver. Create @ Run/Compile) //
// v2.4.2-NEW: Start Software on Run, LG/CS Toggle Overrides, Jump to Subsystem. IMPROVED: PIP Mapping Code, TFRP Rudder Code & Script Print. FIX: HP Override. //
// v2.4.1-NEW: Clear Chatbox Macro, Precision Cargo Scoop Deploy. IMPROVED: Toggle mechanics FIXED: Mappings HoloMe Rotate, Camera Roll & Digital Ship/SRV Roll.//
// v2.4 - NEW: Auto Timer for Repeater Fire, Fast Menu Switch Macro, VR/TIR Headlook Swap U.Pref SWAP: S.Running/R.Correction Toggles. IMPROVED: Error Handling.//
// v2.3.3-COMBINED FAOFF+ALT FLT (SpeedBrake w/ Pinky Mod) NEW: Escape Macro now has Gear/Scoop Check + new timings. FIX: Chat Macros when Comms Panel is Open.	//
// v2.3.2-SWAPPED: Repeater Fire & Combo Fire Modifier buttons. ADD: CruiseOnThrottle check for China Hat, removes FSD as req. FIX: IDLEMaster Function error.  //
// v2.3.1-FIXED: 75% Trim T.Preset, + General Comments Cleanup NEW: Macros 2-Tier PIPs (Hold), Swap Joy/Throt Preset Toggles ADD: Chat Macro print layout map.	//
// v2.3 - COMMANDERS UPDATE: ADD New Multicrew, HoloME & Camera Suite Keybinds. NEW: Text Chat Macros (PIP Hatswitch+Pinky Trigger). NEW: ShowGameStats Macro.	//
// v2.3 - NEW: SC 100% Throttle/Repeater Fire/Signal Light Macros. ADD: 1&2-Tier PIP Alts,User Prefs,MFDs. MOVED: Hardpoints to T.Arm. FIXED: SRV Boost on Slew.//
// v2.2.7-NEW: Heatsink+SilentRunning Mod! FIXED: Dead Throttle on Run/Looping running in Script Editor/Improved FPS/Bandwidth Toggle/Galaxy Map chat conflict. //
// v2.2.6-Changed SRV Digital Steering Hat Switch, Swapped Weapon Fire Group. ADD: Auto-Dock Short/Long press+Pinky. No Shadowplay ref. ADD Fighter Orders.	//
// v2.2.5-ADD: Charge ECM button & Fixed Incorrect ED Bindings file in download.										//
// v2.2.4-FIXED: Changed Combo Fire Modifier from Pinky to CMS Hat Switch (avoid conflict). Improved PIP timings/refined layout. Removed SRV Handbrake conflict.//
// v2.2 - GUARDIANS UPDATE: ADD Fighters Hotkeys to Trim Hat, Mapped Weapon/Engine Color change. Improved IDLE saftey features. NEW Macros. Public Release! 	//
// v2.1 - ADD External Keymappings for TrackIR, VoiceAttack & ShadowPlay. SWAP Landing Gear & Silent Running. Changed some delay times.				//
// v2.0 - Full script cleanup & formatting update. ADD alt. Macros 4 PIPs & Curves. ADD Reference table for DX Mappings & USB Key Defs. Update .binds to (v2.0).//
// v1.8 - ADD SetThrottle function & Handbrake to Throttle IDLE lock. Ship Lights now dim Throttle LED backlight :) Steam added & Hidden FPS/Ping keys mapped.	//
// v1.6 - Improved Toggle switch usage. ADD LED output & expanded script print output in Script Editor.								//
// v1.3 - ADD Auto-dock, PIPs Macros & also Joystick & Throttle Curve presets. Plus Subsystem Prev Jump to Powerplant shortcut when holding Prev Subsystem.	//
// v1.0 - ADD All Standard KeyMaps, Default Axis settings & Core script structure/defaults. ADD Trigger Combo code. Debug testing.				//
// =============================================================================================================================================================//


Need help understanding this script?

	Click the HELP (?) button in top right corner of Target Script Editor OR ask a question in the Forum/Guide.

Upgrading from a previous version?	

	Simply copy the new files to the appropriate locations below. Each major version update is numbered to ensure you don't override older settings.
	Minor updates may be overridden. If you have made any custom modifications, always make a backup copy of your existing profile just to be safe. :)


Installation:
=============
Extract the zip file pack.

The Warthog Script can be run from any location. All files need to be in the same folder though. Profile files are found in the '/Warthog Script' folder. Run/Compile via AD_ED_vx.x.x.tmc. 

First Run: Open in TARGET Script Editor, Compile & Navigate to AD_EDSettings_x.x.x.tmh.
Under User Preferences, check your preferred configurations. 

Note: Here you can choose to enable/disable Rudders, MFDs, PIP Tier Preferences, Cruise On Throttle, Escape Vector Extras & Repeater Fire Config among others.
(If you are not sure what you prefer at this stage, keep the default settings & review later.)

Run the script & Test Warthog commands prior to starting the game using the Event Tester & Device Analyzer. Ensure everything is working and calibrated.

Note: Some commands are mapped directly in ED. These will not register anything on test. Don't worry we can test those in game later. Test commands such as PIPs/Autodock can confirm if mapping is loaded successfully.

Close TARGET Script Editor (if still running).

Open TARGET GUI & Run (Can also be run from TARGET Script Editor - if editing).

Copy the Elite Dangerous Profile to: (Profile is found in the '/ED Profile' folder.)
C:\Users\<User>\AppData\Local\Frontier Developments\Elite Dangerous\Options\Bindings

Copy the TrackIR Profile to: (Profile is found in the '/TrackIR' folder.)
C:\Users\<User>\AppData\Roaming\NaturalPoint\TrackIR 5\Profiles

Note: If the profile does not show up in TrackIR after copying to the above location (and restart TrackIR software didnt help), try copying the profile to:

(64bit). C:\Program Files (x86)\NaturalPoint\TrackIR5\Profiles
(32bit). C:\Program Files\NaturalPoint\TrackIR5\Profiles

Set the hotkeys in TrackIR; Pause Key to PAUSE, and Center to END.

Also set NVidia Shadowplay Capture Last 20mins hotkey to ALT+F11 (as required).

Map any other 3rd Party Keys such as Voice Comms (as required).

Always make sure the script is running as well as any other 3rd party tools prior to starting Elite Dangerous.

*Remember to select the AD Enhanced Warthog x.x.x profile in Elite Dangerous & Apply.

First Run: If you are not using MFG Crosswind Pedals, at this point, you will need to map the 'Other Mappings' outlined in the Legend Section. This will configure Roll & some Galaxy Map axes (along with some optional custom configurations highlighed you may like).

Once you are done mapping, scroll to bottom and press Apply to save.

*Test & Have fun!


"I am a leaf on the wind!"