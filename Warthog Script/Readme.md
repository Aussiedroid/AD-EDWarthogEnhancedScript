# TM TARGET Scripts #

The Thrustmaster TARGET Warthog Script is split into several files. Each houses different functionality. __AD_ED_v4._x_._x_.tmc__ calls on all the other included files. __Target.tmh__ will generate on script Run.

Scripting files are properly formatted & contain full comments to help understand what the code is doing. Best viewed in TARGET SCRIPT EDITOR & best run in TARGET GUI. Additional keys & content are present if you want to modify further, including additional Throttle presets, PIP presets, Next/Prev Subsystem presets & all the commands not currently mapping in the script (but mapped in ED).

DX Mapping & Conversion table also included in the Key Mapping file to help with changes.

### File List: ###

Filename | Function
------------ | -------------
AD_ED_v4.3.0.tmc | Main Script File, Maps Combined Device & Includes Files Below
AD_EDDefaults_v4.3.0.tmh | Global Variable Settings, States & Timings/Delays
AD_EDUserPrefs_v4.3.0.tmh | User Preferences & Script Customisation Options
AD_EDKeyMap_v4.3.0.ttm | Variable Key Mapping & Reference Tables
AD_EDHardware_v4.3.0.tmh | Joystick, Throttle & Rudder Axes/Curves Configuration
AD_EDMacros_v4.3.0.tmh | Macro Definitions _(Custom Sequences)_
AD_EDFunctions_v4.3.0.tmh | Function Definitions _(Custom Logic for Buttons, Toggles & Ship Controls)_

` `

[HOME] [Thrustmaster Warthog HOTAS](https://support.thrustmaster.com/en/product/hotaswarthog-en/ "Official TM Warthog HOTAS Support Website")

## ##

## User Preferences : Table of Contents ##

[How To Use](https://github.com/Aussiedroid/AD-EDWarthogEnhancedScript/tree/master/Warthog%20Script#user-preferences--ad_eduserprefs_v4xxtmh "Getting Started") | [Start-Up](https://github.com/Aussiedroid/AD-EDWarthogEnhancedScript/tree/master/Warthog%20Script#--start-up "Start-Up Customisation") | [Core Hardware](https://github.com/Aussiedroid/AD-EDWarthogEnhancedScript/tree/master/Warthog%20Script#--core-hardware "Core Hardware User Preferences") | [Axis Deadzones](https://github.com/Aussiedroid/AD-EDWarthogEnhancedScript/tree/master/Warthog%20Script#--axis-deadzones "Axis Deadzones") | [Throttle Axis](https://github.com/Aussiedroid/AD-EDWarthogEnhancedScript/tree/master/Warthog%20Script#--throttle-axis "Throttle Axis Customisation") | [Joy Axis](https://github.com/Aussiedroid/AD-EDWarthogEnhancedScript/tree/master/Warthog%20Script#--joystick-axis "Joystick Axis Customisation") | [Ship/SRV PIP Config](https://github.com/Aussiedroid/AD-EDWarthogEnhancedScript/tree/master/Warthog%20Script#--shipsrv-pip-config "Ship & SRV PIP Config User Preferences") | [Ship Radar/Vision](https://github.com/Aussiedroid/AD-EDWarthogEnhancedScript/tree/master/Warthog%20Script#--ship-radarvision "Ship's Radar & Night Vision Customisation")


[Pri-Sec Fire Control](https://github.com/Aussiedroid/AD-EDWarthogEnhancedScript/tree/master/Warthog%20Script#--primarysecondary-fire-control "Primary & Secondary Fire Control Customisation") | [Utility Slot Control](https://github.com/Aussiedroid/AD-EDWarthogEnhancedScript/tree/master/Warthog%20Script#--utility-slot-control "Utility Slot Control Customisation") | [Microphone Behaviour](https://github.com/Aussiedroid/AD-EDWarthogEnhancedScript/tree/master/Warthog%20Script#--microphone-behaviour "Microphone Behaviour") | [Cargo Scoop Tweaks](https://github.com/Aussiedroid/AD-EDWarthogEnhancedScript/tree/master/Warthog%20Script#--cargo-scoop-tweaks "Cargo Scoop Tweaks") | [Escape Vector Macro](https://github.com/Aussiedroid/AD-EDWarthogEnhancedScript/tree/master/Warthog%20Script#--escape-vector-macro "Escape Vector Macro Options")

[Pinky 'Double Tap' Override](https://github.com/Aussiedroid/AD-EDWarthogEnhancedScript/tree/master/Warthog%20Script#--pinky-double-tap-override "Pinky 'Double Tap' Override Customisation") | [Autopilot Button Override](https://github.com/Aussiedroid/AD-EDWarthogEnhancedScript/tree/master/Warthog%20Script#--autopilot-button-overrides "Autopilot Button Override Customisation") | [Auto-Text Chat Presets](https://github.com/Aussiedroid/AD-EDWarthogEnhancedScript/tree/master/Warthog%20Script#--auto-text-chat-presets "Auto-Text Chat Presets Customisation") | [Acknowledgements](https://github.com/Aussiedroid/AD-EDWarthogEnhancedScript/tree/master/Warthog%20Script#script-acknowledgements "Acknowledgements")
## ##

## User Preferences : AD_EDUserPrefs_v.4.3.0.tmh ##

Although it is not practical to have everything as a user preference, for key features & play styles I have tried to cover as many as possible in a simple to use User Preference section with the goal to make the script accessible to as many players as possible. This will help those who do not know the scripting programming language make quick changes to suite their needs.

In the following sections below, I will explain what each setting does & what options there are to configure plus cover off a few other setting you may wish to change to integrate your external software/hardware & localise for your keyboard layout.

___How to Use:__ Loading the script into Target Script Editor, you can access the User Preference section in the AD_EDUserPrefs_v4.x.x.tmh file. Once open you will see a screen similar to the example below. The area highlighed in Red is where you make changes:_

![User Prefs](https://github.com/Aussiedroid/AD-EDWarthogEnhancedScript/blob/master/Maps/User-Prefs.png "Example of User Preferences")

On the right, the text in _green_ offers further comments/instruction on how these work.

If you are a new user, please ensure you have set the User Preferences under __'Core Hardware'__ to match your hardware setup. The other User Preferences can be left as default values and changed later as you learn the game & layout.

___Remember:__ After making any changes to these values to press the Save icon in the top left of the Target Script Editor window. Press the Compile button to ensure there are no errors._

## ##

## User Preferences : Detailed ##

A detailed explanation of each of the 'define' values that can be configured in the script to suit your personal preferences.

As a general rule, a value of 1 is Yes, and a value of 0 is No, but many of the define values do offer custom values to be configured (as explained further below):


## -> START-UP ##
### StartSoftware [Values: 1 or 0] ###
- Allows the script to load other programs when it runs. This can include the Game Launcher for those not running through Steam, Voice Attack, TrackIR etc. Also, Elite Dangerous Community offers some great 3rd Party Tools to enhance your experience such as Elite Dangerous Market Connector, EDDI, EDFX & EDDiscovery. 

- Application paths & your own software selection can be configured in the AD_ED_v4.x.x.tmc file under START-UP: SOFTWARE section. By default these are commented out '//'. Remove the '//' at the start of the line to enable. Ensure the path written matches your install location.

- Will not work on Windows 10 _(See [ED-BAT File](https://github.com/Aussiedroid/AD-EDWarthogEnhancedScript/tree/master/ED%20Startup%20Batch%20Script "ED-BAT Batch File"))_ :(

### VerboseOutput [Values: 1 or 0] ###
- Changes the script messaging behaviour on keypress actions to determine if it will Print Output to the TARGET Window.

- Enabled by default 1, disable by changing value to 0. (Disabling will stop all 'printf' statements from firing)

### SetLED [Values: 0-255] ###
- Sets the initial LED Backlight brightness on the Throttle. (default = 172)

### BlingLEDBling [Value 1 or 0] ###
- Adds a short Flashing LED Sequence when you flip a Toggle & will also enable a short start-up sequence pattern _(just to be a lil' flashy ... pun intended lol)_.

- Enabled by default 1, disable by changing value to 0.

` `
## -> CORE HARDWARE ##
### KBLayout [Values: KB_ENG, KB_GER or KB_FR] ###
- Sets your keyboard button layout based off international standards. _(Wrong selection can break some commands)_

- English (KB_ENG), German (KB_GER) or French (KB_FR) available.

### UseMFD [Values: 2, 1 or 0] ###
- [Thrustmaster MFD Cougar Panels](http://www.thrustmaster.com/en_US/products/mfd-cougar-pack "Official MFD Cougar Control Panels Website") are multifunctional, customisable panels for use in Cockpits. The script supports up to 2 devices being connected. Select value 2 for both Right & Left panels or 1 for only the Right panel. If you do not use these panels leave the value as 0.

- The base code for these panels has been added to the AD_ED_v4.x.x.tmc file, but remain UNMAPPED by default (unfortunately I do not own these to test out). To enable, copy the KeyMap code you wish to use to the Right or Left button mapping & remove the '//' at the start of line.

### UseRuddersT16000 + UseRuddersTPR [Value 1 or 0] ###
- This value should not require modification from 1 in most use cases. Even if you do not use [TM TFRP/T16000 Rudder Pedals](http://www.thrustmaster.com/en_US/products/tflight-rudder-pedals "Official T.Flight TFRP Rudder Website") or [TM Pendular Rudder Pedals](http://www.thrustmaster.com/en_US/products/tpr-thrustmaster-pendular-rudder "Official Pendular Rudder Website"), the code will not fire unless they are plugged in. 

- FILTERED (Value 1) applies differential toe brake configuration, combining the toe brakes into a single axis for correct mapping in ED.

- EXCLUDED (Value 0) performs no axis manipulation and keeps toe brakes separate which is not ideal for ED.

### UseRudderAxisCurves [Value 1 or 0] ###
- If enabled 1, this will set the custom axis curve on your Rudder axis based on Joystick curve toggle position. It will also apply a Precision Axis Curve setting to the FAOff Hold toggle. Good for fast ships, CQC/fighters & FAOff Junkies.

- If disabled 0, the Rudder axis will follow linear acceleration.

- Works for both TM TFRP/T16000 and TM Pendular Rudder pedals.

- Please ensure both UseRuddersT16000 & UseRuddersTPR values are NOT set to 1. Only enable your device plugged in or function will likely error.

### HeadtrackPref [Value 2, 1 or 0] ###
- Elite Dangerous offers built in headtracking via a Mouse, but via this script you can also include correct integration for TrackIR or VR (HMD) headsets. Changing this value will change the mapping for the Engine Operate Ign/Norm LEFT UP toggle.

- Note: You may need to align the external mapping keys via AD_EDKeyMap_v4.x.x under External Bindings.

` `
## -> AXIS DEADZONES ##
### TR_DEADZONE [Value 0-100] ###
- Set the Thrustmaster Rudder Main Z-Axis Deadzone percentage. This is applicable to both TFRP & TPR devices.
- Default is 5%.
### TOE_DEADZONE [Value 0-100] ###
- Set the Thrustmaster Rudder Toe Brake Axis Deadzone percentage. This is applicable to both TFRP & TPR devices.
- Default is 20%.
### JS_DEADZONE [Value 0-100] ###
- Set the Warthog Joystick Axes Deadzone percentage.
- Default is 1%.
### TFULL_DEADZONE [Value 0-100] ###
- Set the Warthog Throttle 'Full Range' Deadzone percentage. 
- _Note:_ Do not set this too high! [Max ~15%] as it will intefer with the FSS tuning.
- Default is 5%.
### SLEW_DEADZONE [Value 0-100] ###
- Set the Warthog Throttle Slew Axes Deadzone percentage.
- Default is 20%.

` `
## -> THROTTLE AXIS ##
### CruiseOnThrottle [Value 1 or 0] ###
- When value 1 is set, it allows you to enter Supercruise/Hypercruise by holding down the Pinky Trigger Modifier & moving the Throttle forward to 100%. Repeat the same action to disengage. Hold the CMS Hatswitch Modifier instead of Pinky Trigger if you target destination is blocked.

- When value 0 is set, entering Supercruise/Hypercruise is done via the China Hat Switch. In this configuration, please see the reference maps above as it will remap some other functions on the China Hat Switch.

### ThrottlePresetUP/ThrottlePresetMID/ThrottlePresetDOWN [Values See Below] ###
- This maps the Throttle 3-Way Toggle Switch for UP, MIDDLE & DOWN so you can change on-the-fly your main Throttle axis. For example, you could use Forward Only for SRV, but Full Range for Ships or set to Precision for movement around structures in space!

- Each can be set to one of seven preset axis values including: mThrottleFwdOnly, mThrottlePrecision, mThrottleFullScale, mThrottleFullScaleCustom, mThrottleTrimmed, mThrottleFullNonLinear, mThrottleFwdNonLinear.

- mThrottleFwdOnly [0 -> 100] enabled Forward Only Axis. This will use the full range of the Throttle in the Forward direction. (Press digital reverse thrust to move backwards)
- mThrottlePrecision [-50 -> 50] reduces sensitivity of the Throttle by 50%. This means at 100% you will be flying in the 'blue zone' on your speed dial where this would normally be at 50%. 
- mThrottleFullScale [-100 -> 100] allows full range movement, with Throttle centered as 0 thrust. Move to bottom half you go in reverse, move to the top half you go forward. There is small deadzone in center.
- mThrottleFullScaleCustom [-100 -> 80] is same as above but trims the range to 80% for less movement in the forward direction.
- mThrottleTrimmed [-75 -> 75] reduces the movement range required to hit 100% by 25% in both directions.
- mThrottleFullNonLinear [-100 ~> 100] allows full range movement, with a custom axis curve. Fast->Slow curve.
- mThrottleFwdNonLinear [0 ~> 100] enabled Forward Only Axis, with a custom axis curve. Fast->Slow curve.

### ThrottleOverride [Value 1 or 0] ###
- Allows replacement of the Throttle Axis Preset Toggle to custom mappings, set in the user preferences.
- If you find you do use the Throttle presets very often, then you can replace them with your own custom commands. Both Up and Down directions can be mapped to any 'Pulse' command, with Middle considered Off.
- If you enable this option, you will not be able to change your Throttle Axis Curve during gameplay.
- Default is 0.

### ThrottlePresetDEF [Values See Above] ###
- When ThrottleOverride is enabled, this will determine what Default Throttle Behaviour will be applied on script startup.
- Example: mThrottleFullScale

### ThrottlePresetUPALT/ThrottlePresetDWNALT [Value Variable] ###
- When ThrottleOverride is enabled, this value will determine what custom 'Pulse' mapping is applied to the UP/DOWN directions of the Throttle Preset Toggle.
- These variables have no pre-defined defaults.
- Note: To avoid potential 3-way mapping conflicts, the MIDDLE position on the Toggle will remain NULL/Empty.

### DisableLEFTTHRAxis [Value 1 or 0] ###
- This setting will disable the Left Throttle Axis, leaving only the Right Throttle Axis enabled for ED.
- By Default, whenever a Throttle Preset is applied, it is applied to both the Left & Right Throttle Axes.
- ED only requires one axis to be mapped.
- Freeing Up the Left Throttle Axis potential could allow another axis from another device to be included in the virtual device.

### SyncLEFTTHRAxis [Value 1 or 0] ###
- This setting will decouple the Left Throttle Axis from the Right Throttle Axis.
- If Sync is Disabled, Throttle Presets will no longer be applyed to Left Throttle Axis (will alway remain Full Range).
- If Sync is Disabled, Left Throttle can be mapped to another function (such as FSS Tuning which is useful if you use Forward Only main Throttle).
- DisableLEFTTHRAxis will override this setting.
- Default is 1 (Enable Left Axis Sync).

` `
## -> JOYSTICK AXIS ##
### JoystickOverride [Value 1 or 0] ###
- Allows replacement of the Joystick Axis Preset Toggle to custom mappings, set in the user preferences.
- If you find you do use the Joystick presets very often, then you can replace them with your own custom commands. Both Up and Down directions can be mapped to any 'Pulse' command, with Middle considered Off.
- If you enable this option, you will not be able to change your Joystick Axis Curves during gameplay.
- Default is 0.

### JoystickPresetDEF [Value 2, 1 or 0] ###
- When JoystickOverride is enabled, this will determine what Default Joystick Behaviour will be applied on script startup.
- Joystick Curve Presets are ->		Fast = 0		Standard = 1 (default)	 		Slow = 2

### JoystickPresetUPALT/JoystickPresetDWNALT [Value Variable] ###
- When JoystickOverride is enabled, this value will determine what custom 'Pulse' mapping is applied to the UP/DOWN directions of the Joystick Preset Toggle.
- These variables have no pre-defined defaults.
- Note: To avoid potential 3-way mapping conflicts, the MIDDLE position on the Toggle will remain NULL/Empty.

` `
## -> SHIP/SRV PIP CONFIG ##
### UsePIPPref [Value 3, 2, 1 or 0] ###
- Set how you would like the PIP Hat Switch to behave. You can set standard ED PIP control or try out the Double & Triple Tier variants that allow different presets based on how long you hold the hat direction down.

- Choose value 1 [Single Tier] ED Standard Configuration (Tap = One PIP)
- Choose value 2 [Double Tier] (default) Two presets depending if you short hold or tap direction. (Hold = Full PIPs, Tap = One PIP)
- Choose value 3 [Triple Tier] Three presets depending if you long hold, short hold or tap direction.
- Choose value 0 [Double Tier] (Inverted) Opposite Two preset option for combat pilots. (Tap = Full PIPs, Hold = One PIP.)

` `
## -> SHIP RADAR/VISION ##
### CustomDXSliderCurve [Value 1 or 0] ###
- This attempts to smooth out the movement of your Sensor Range Zoom (Radar) in your 
cockpit by changing the axis curve.

- Set value to 0 to disable, or keep as 1 to enable. Recommend Linear Acceleration in the ED settings.

### NightVisionHUD [Value 1 or 0] ###
- Gives a truly dark experience by automatically disabling the Ship/SRV HUD when enabling Night Vision.

- Set to 1 to enable, 0 to disable.

- Standard Hide Ship GUI toggle on Throttle will still work as a override (if needed).

` `
## -> PRIMARY/SECONDARY FIRE CONTROL ##
### combinePriSecFire [Value 1 or 0] ###
- This will set the behaviour for the Dual-Stage Trigger and how full depression of trigger will work.

- Set value to 1, to combine Primary+Secondary Fire on Trigger 2. (Primary on first stage, Secondary on dual stage)

- Set value to 0, to disable Secondary Fire on Trigger 2. (Dual stage will do nothing)

- Using Modifier 2 (CMS Hatswitch) and the Trigger to toggle in game.

### SecFirePinkyPref [Value 1 or 0] ###
- Depending on your playstyle, not everyone needs independant mapping of the Secondary Fire button (S3) on the Joystick. Sometimes the Dual-Stage Primary Trigger is sufficient. WIth this enabled 1, you can customise the Secondary Fire button with your own commands.

- Both a long and short press mapping are available.

- Set value to 0, to keep independant Secondary Fire button (S3) mapping (default).

- Remember to set the PinkyBtnDefaultShort & PinkyBtnDefaultLong values in User Preferences. These will replace the Secondary Fire mapping

### PinkyBtnDefaultShort/PinkyBtnDefaultLong [Value Variable] ###
- These set the Short and Long press on the Secondary Fire button (S3) when SecFirePinkyPref is enabled.

- Some examples are provided in the comments of the AD_ED_Settings file, but almost any of the commands defined in the AD_EDKeyMap file are also viable options.

` `
## -> UTILITY SLOT CONTROL ##
### ShipUtilityPref [Value 1 or 0] ###
- There are two buttons on the Joystick, S1 & S2, that use a short & long press combo to fire. They are used to engage your Chaff/ECM/Shield Cell Boost/Heat Sinks. Depending on your playstyle sometimes it is better to have short press (quicker) access to some utilities.

- If you are mainly EXPLORER/TRADER type, set value to 0. This will give short press priority to Chaff & ECM.

- If you are mainly COMBAT type, set value to 1. This will give short press priority to Heat Sinks & Shield Cell Banks.

` `
## -> MICROPHONE BEHAVIOUR ##
### ExternalMicCombined [Value 1 or 0] ###
- When you enable the Open Mic toggle on the Throttle, this value will determine if one or both External Voice Channels are opened. Set value to 1 to combine, and value to 0 to keep them independant.

- In some use case scenarios such with players who stream their game, it can be handy to disable/enable both channels at once. Another example of use could also be to map Voice Attack to your secondary External Streaming Channel to ensure VA doesn't fire when speaking to your audience, or to disable when using your primary external voice channel.

### ExternalMicInverse [Value 1 or 0] ###
- When value is set to 1, the Push-To-Talk Mic toggle on the Throttle Arm, will change the behavior to inverse the external channels between VoiceAttack & Discord (or your preferred external comms). VoiceAttack will mute and Discord channel will open, ensuring no voice commands are sent while conversing with friends. When button is released, VoiceAttack is activated again & Discord/Comms channel is muted.

- When value is set to 0, the two external channels will operate independantly as per default action.

- Note 1: If enable, VoiceAttack listening mode needs to be enabled prior to using the Push-To-Talk button. (This will ensure the correct alignment of the channels.)
- Note 2: Set 'MicExternalAction' to 0 and enable PTT in Discord/Comms (map to '~')
- Note 3: Enabling this option will also inverse the Internal Comms Channel with VoiceAttack.

### MicExternalAction/MicExternalActionALT [Value 1 or 0] ###
- Different External Voice Communication Software can often provide different way to enable or disable your voice channel. Some use a Push-To-Talk, others only provide a Toggle (some may provide both options). These two variables for your main external voice comms & your alternative external voice comms allows you to choose how the script will handle your external communication software and align it so works correctly with the Push-To-Talk button and also the Open Mic Toggle. 
Rings of Haze

- Set the value to 1 if your software uses a toggle (On/Off) type setup.

- Set the value to 0 if your software uses a hold down (Push-To-Talk) setup.

` `
## -> CARGO SCOOP TWEAKS ##
### CargoPrecisionMode [Value 1 or 0] ###
- To assist with reducing your speed when attempting to scoop up cargo & provide a greater level of control, you can enable this value to 1 to automatically change your Throttle axis preset to Precision mode.

- If you prefer to keep your Throttle axis on your current Throttle Toggle Preset when scooping, then set the value to 0.

### CargoReturnMode [Value 3, 2, 1 or 0] ###
- This is used in conjunction with the CargoPrecisionMode variable above. If you enable CargoPrecisionMode, when you close your cargo scoop this setting will return your Throttle axis preset to your preferred configuration. 

- If your main Throttle axis mode is Forward Only, set this value to 0.
- If your main Throttle axis mode is Full Range, set this value to 1.
- If your main Throttle axis mode is Full Range Custom, set this value to 2.
- If your main Throttle axis mode is Trimmed, set this value to 3.

` `
## -> ESCAPE VECTOR MACRO ##
### AutoChaffOnEscape/AutoBoostOnEscape [Value 1 or 0] ###
- Both of these actions are optional parts of the Escape Vector macro, which will retract your hardpoints & engage Supercruise if you encounter trouble. By changing either of these values to 1, it will additionally fire a Chaff to mask your escape &/or perform an Engine Boost to get you clear of danger when Escape Vector is triggered.

- Setting either value to 0 will keep these as a manual event for the player to action as required.

` `
## -> PINKY 'DOUBLE TAP' OVERRIDE ##
### UserDTPinkyKeyBind [Value Variable] ###
- Define what you want to map to the "Double Tap" feature on the Joystick Pinky Trigger. Squeeze trigger twice quickly to activate. Single press remains the Pinky Modifier key. Choose something you would frequently use or would like easy access to.

- **From 3.3.0, the default action for the Double Tap is 'SwitchHUDMode'. If you choose to change this to something else, then 'SwitchHUDMode' will need to be mapped elsewhere to use Analysis Mode.**

- You can choose any standard key to map to the Double Tap. Some suggestions below (or your own choice from the EDKeyMap file!):

- -> COMBAT | FlightAssist, mJumpPrevSubSys, InternalVoiceCommsPTT, WingmanTarget, DeployHardpoints, UseShieldCell, mReportCrimesToggle
- -> SHIP | ShipLights, SetSpeed75, CargoScoop, SilentRunning, QuickCommsPanel, mRequestDock, BalancePower
- -> OTHER | mTextBasicHello, SelectNextSystemInRoute, FighterOrders, UIEscape, TakeSteamScreenshot, GalNetAudioPlayPause, LookToggle

` `
## -> AUTOPILOT BUTTON OVERRIDES ##
### APEngageShort/APEngageLong [Value Variable] ###
### APEngagePinkyShort/APEngagePinkyLong [Value Variable] ###
### APEngageCMSShort/APEngageCMSLong [Value Variable] ###
- User definable overrides for the Autopilot Engage (APENG) button on the Throttle base. Use your own custom macros or preferred 'easy access' commands you frequently use.

- There are total of Six customisable commands. A Short and Long press for standard, plus a Modifier 1 (Pinky Trigger) or Modifer 2 (CMS Hat Button). 

- By default, Signal Light Sequences & Autodock Procedure are mapped, along with basic hello/farewell chat text commands.

- Some examples are provided in the comments of the AD_ED_UserPrefs file, but almost any of the commands defined in the AD_EDKeyMap file are also viable options.

` `
## -> AUTO-TEXT CHAT PRESETS ## 
### chat_Basic_UP/chat_Basic_DOWN [Value Character] ###
### chat_Basic_LEFT/chat_Basic_RIGHT [Value Character] ###
### chat_Modifier_UP/chat_Modifier_DOWN [Value Character] ###
### chat_Modifier_LEFT/chat_Modifier_RIGHT [Value Character] ###
Chat Preset feature offers a way for VR users or those without easy access to a keyboard a way to communicate via the comms panel in game. These pre-defined responses can be edited in the script in the AD_EDFunctions_v4.x.x.tmh file to suit your personality/playstyle.

Setting value to 1 will give access to 3 tiers of responses (12 in total) depending on the position of the Pinky Throttle Switch (as seen in the reference maps).

Setting value to 0 will simplify this to a single tier of responses (4 in total). This will also add Game FPS/Ping & Hide Ship HUD to UP & DOWN directions for the Pinky Throttle Switch in its place. (Else, these are still accessible via Toggle Switch & Modifiers if value set to 1.)





## ##

## Script: Acknowledgements ##

>>__Standing on the Shoulders of Giants!__ Creation of this TARGET Script would not have been possible without amazing ED Scripts I found online created by: Alexandr Zhevedenko, Michael Lehman (WraithMG11235), DarKcyde & Thomas Duployez (CMDR Touille). 
>>
>>I was supremely strugging to get my head around the coding, and seeing practical script examples really helped unravel it all. Sections of all their scripts have been incorporated into my design along with some other odds and ends I learned searching online _(so if I missed calling out your name, sorry!)_.
>>
>>Special mentions to CMDR Clicker for all his help squashing those bugs & code improvements in general across on the Frontier Forums. Also a special mention to Tekadept for his Exceptional [Custom Warthog Plates](https://www.tekcreations.space/product/custom-elite-dangerous-plates-warthog/?currency=USD "www.tekcreations.space") he created for this script!
>>
>>The script continues to evolve with the fantastic community feedback, ideas, bug reports & sharing of code... the help & support shown on the forums/guide has been been amazing!
>>
>>I would also like to recognise __jgm__ whose site was super helpful to export a base line reference map which I used as a basis to create my custom reference maps above, as well as the keyboard button mappings list. As of Aug 17, __jgm__ has stepped down on maintaining the website, which is now maintained by __VerticalBlank__.
>>
>>Their fantastic tool can be found [here](https://edrefcard.info/ "EDRefCard.info").

` `

__!! You ALL Rock! Thank you !!__
