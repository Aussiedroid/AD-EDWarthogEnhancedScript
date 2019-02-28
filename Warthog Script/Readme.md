# TM TARGET Scripts #

The Thrustmaster TARGET Warthog Script is split into several files. Each houses different functionality. __AD_ED_v4._x_._x_.tmc__ calls on all the other included files. __Target.tmh__ will generate on script Run.

### File List: ###

Filename | Function
------------ | -------------
AD_ED_v4.0.0.tmc | Main Script File, Maps Combined Device & Includes Files Below
AD_EDDefaults_v4.0.0.tmh | Global Variable Settings, States & Timings/Delays
AD_EDUserPrefs_v4.0.0.tmh | User Preferences & Script Customisation Options
AD_EDKeyMap_v4.0.0.ttm | Variable Key Mapping & Reference Tables
AD_EDHardware_v4.0.0.tmh | Joystick, Throttle & Rudder Axes/Curves Configuration
AD_EDMacros_v4.0.0.tmh | Macro Definitions _(Custom Sequences)_
AD_EDFunctions_v4.0.0.tmh | Function Definitions _(Custom Logic for Buttons, Toggles & Ship Controls)_

` `

[HOME] [Thrustmaster Warthog HOTAS](https://support.thrustmaster.com/en/product/hotaswarthog-en/ "TM Warthog HOTAS")

## ##

## User Preferences : Table of Contents ##
[How To Use]() | [Start-Up]() | [Core Hardware]() | [Throttle Axis]() | [Ship/SRV PIP Config]() | [Ship Radar/Vision]() | [Pri-Sec Fire Control]()

[Utility Slot Control]() | [Microphone Behaviour]() | [Cargo Scoop Tweaks]() | [Escape Vector Macro]() | [Pinky 'Double Tap' Override]()

[Autopilot Button Override]() | [Auto-Text Chat Presets]() | [Acknowledgements]()
## ##

## User Preferences : AD_EDUserPrefs_v.4._x_._x_.tmh ##

Although it is not practical to have everything as a user preference, for key features & play styles I have tried to cover as many as possible in a simple to use User Preference section with the goal to make the script accessible to as many players as possible. This will help those who do not know the scripting programming language make quick changes to suite their needs.

In the following sections below, I will explain what each setting does & what options there are to configure plus cover off a few other setting you may wish to change to integrate your external software/hardware & localise for your keyboard layout.

___How to Use:__ Loading the script into Target Script Editor, you can access the User Preference section in the AD_EDUserPrefs_v4.x.x.tmh file. Once open you will see a screen similar to the example below. The area highlighed in Red is where you make changes:_

![User Prefs](https://github.com/Aussiedroid/AD-ED-EnhancedWarthogScript/blob/beta/Maps/User-Prefs.png)

On the right, the text in _green_ offers further comments/instruction on how these work.

___Remember:__ After making any changes to these values to press the Save icon in the top left of the Target Script Editor window. Press the Compile button to ensure there are no errors._

## ##

## User Preferences : Detailed ##

A detailed explanation of each of the 'define' values that can be configured in the script to suit your personal preferences.

As a general rule, a value of 1 is Yes, and a value of 0 is No, but many of the define values do offer custom values to be configured (as explained further below):


## -> START-UP ##
### StartSoftware [Values: 1 or 0] ###
- Allows the script to load other programs when it runs. This can include the Game Launcher for those not running through Steam, Voice Attack, TrackIR etc. Also, Elite Dangerous Community offers some great 3rd Party Tools to enhance your experience such as Elite Dangerous Market Connector, EDDI, EDFX & EDDiscovery. 

- Application paths & your own software selection can be configured in the AD_ED_v4.x.x.tmc file under START-UP: SOFTWARE section. By default these are commented out '//'. Remove the '//' at the start of the line to enable. Ensure the path written matches your install location.

- Will not work on Windows 10 _(See ED-BAT File)_ :(

### SetLED [Values: 0-255] ###
- Sets the initial LED Backlight brightness on the Throttle. (default = 172)

### BlingLEDBling [Value 1 or 0] ###
- Adds a short Flashing LED Sequence when you flip a Toggle & will also enable a short start-up sequence pattern _(just to be a lil' flashy ... pun intended lol)_.

- Enabled by default 1, disable by changing value to 0.

` `
## -> CORE HARDWARE ##
### KBLayout [Values: KB_ENG, KB_GER & KB_FR] ###
- Sets your keyboard button layout based off international standards. _(Wrong selection can break some commands)_

- English (KB_ENG), German (KB_GER) & French (KB_FR) available.

### UseMFD [Values: 2, 1 or 0] ###
- [Thrustmaster MFD Cougar Panels](www.thrustmaster.com) are multifunctional, customisable panels for use in Cockpits. The script supports up to 2 devices being connected. Select value 2 for both Right & Left panels or 1 for only the Right panel. If you do not use these panels leave the value as 0.

- The base code for these panels has been added to the AD_ED_v3.x.x.tmc file, but remain UNMAPPED by default (unfortunately I do not own these to test out). To enable, copy the KeyMap code you wish to use to the Right or Left button mapping & remove the '//' at the start of line.

### UseRuddersT16000 + UseRuddersTPR [Value 1 or 0] ###
- This value should not require modification from 1 in most use cases. Even if you do not use TM TFRP/T16000 Rudder Pedals[www.thrustmaster.com] or TM Pendular Rudder[www.thrustmaster.com], the code will not fire unless they are plugged in. 

- FILTERED (Value 1) applies differential toe brake configuration, combining the toe brakes into a single axis for correct mapping in ED.

- EXCLUDED (Value 0) performs no axis manipulation and keeps toe brakes separate which is not ideal for ED.

### UseRudderAxisCurves [Value 1 or 0] ###
- If enabled 1, this will set the custom axis curve on your Rudder axis based on Joystick curve toggle position. It will also apply a Precision Axis Curve setting to the FAOff Hold toggle. Good for fast ships, CQC/fighters & FAOff Junkies.

- If disabled 0, the Rudder axis will follow linear acceleration.

- Works for both TM TFRP/T16000 and TM Pendular Rudder pedals.

- Please ensure both UseRuddersT16000 & UseRuddersTPR values are NOT set to 1. Only enable your device plugged in or function will likely error.

### HeadtrackPref [Value 2, 1 or 0] ###
- Elite Dangerous offers built in headtracking via a Mouse, but via this script you can also include correct integration for TrackIR or VR (HMD) headsets. Changing this value will change the mapping for the Engine Operate Ign/Norm LEFT UP toggle.

- Note: You may need to align the external mapping keys via AD_EDKeyMap_v3.x.x under External Bindings.

` `
## -> THROTTLE AXIS ##
### CruiseOnThrottle [Value 1 or 0] ###
- When value 1 is set, it allows you to enter Supercruise/Hypercruise by holding down the Pinky Trigger Modifier & moving the Throttle forward to 100%. Repeat the same action to disengage. Hold the CMS Hatswitch Modifier instead of Pinky Trigger if you target destination is blocked.

- When value 0 is set, entering Supercruise/Hypercruise is done via the China Hat Switch. In this configuration, please see the reference maps above as it will remap some other functions on the China Hat Switch.

### ThrottlePresetUP/ThrottlePresetMID/ThrottlePresetDOWN [Values See Below] ###
- This maps the Throttle 3-Way Toggle Switch for UP, MIDDLE & DOWN so you can change on-the-fly your main Throttle axis. For example, you could use Forward Only for SRV, but Full Range for Ships or set to Precision for movement around structures in space!

- Each can be set to one of five preset axis values including: mThrottleFwdOnly, mThrottlePrecision, mThrottleFullScale, mThrottleFullScaleCustom, mThrottleTrimmed.

- mThrottleFwdOnly [0 -> 100] enabled Forward Only Axis. This will use the full range of the Throttle in the Forward direction. (Press digital reverse thrust to move backwards)
- mThrottlePrecision [-50 -> 50] reduces sensitivity of the Throttle by 50%. This means at 100% you will be flying in the 'blue zone' on your speed dial where this would normally be at 50%. 
- mThrottleFullScale [-100 -> 100] allows full range movement, with Throttle centered as 0 thrust. Move to bottom half you go in reverse, move to the top half you go forward. There is small deadzone in center.
- mThrottleFullScaleCustom [-100 -> 80] is same as above but trims the range to 80% for less movement in the forward direction.
- mThrottleTrimmed [-75 -> 75] reduces the movement range required to hit 100% by 25% in both directions.

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

### RepeaterAutoRelease [Value 1 or 0] ###
- One of the advanced features of the Primary/Secondary Fire is the ability to hold down the trigger for you & rest your finger. To enable, hold down the Pinky Trigger Modifier when engaging the Primary/Secondary Fire. There are two modes available depending on your playstyle:

- For EXPLORER CMDRs, set value to 1. This will engage the Fire button for 6 seconds, giving you the perfect duration to complete your planetary body scan. After this time, it will automatically release. The 6 second timing can be changed if you have engineered scanners by changing the RepeaterTimer define value in the AD_ED_Settings file.

- For COMBAT CMDRs, set value to 0. You can keep the Fire button repeating indefinitely until you choose to release it by pressing the button again. This means you can keep firing on your target as long as you wish!

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

- **From 3.3.0, the default action for the Double Tap is SwitchHUDMode. If you choose to change this to something else, then SwitchHUDMode will need to be mapped elsewhere to use Analysis Mode.**

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
Chat Preset feature offers a way for VR users or those without easy access to a keyboard a way to communicate via the comms panel in game. These pre-defined responses can be edited in the script in the AD_EDFunctions_v3.x.x.tmh file to suit your personality/playstyle.

Setting value to 1 will give access to 3 tiers of responses (12 in total) depending on the position of the Pinky Throttle Switch (as seen in the reference maps).

Setting value to 0 will simplify this to a single tier of responses (4 in total). This will also add Game FPS/Ping & Hide Ship HUD to UP & DOWN directions for the Pinky Throttle Switch in its place. (Else, these are still accessible via Toggle Switch & Modifiers if value set to 1.)





## ##

## Script: Acknowledgements ##

>>__Standing on the Shoulders of Giants!__ Creation of this TARGET Script would not have been possible without amazing ED Scripts I found online created by: Alexandr Zhevedenko, Michael Lehman (WraithMG11235), DarKcyde & Thomas Duployez (CMDR Touille). 
>>
>>I was supremely strugging to get my head around the coding, and seeing practical script examples really helped unravel it all. Sections of all their scripts have been incorporated into my design along with some other odds and ends I learned searching online _(so if I missed calling out your name, sorry!)_. Special mention to CMDR Clicker for all his help squashing those bugs & code improvements in general across on the Frontier Forums.
>>
>>The script continues to evolve with the fantastic community feedback, ideas, bug reports & sharing of code... the help & support shown on the forums/guide has been been amazing!
>>
>>I would also like to recognise __jgm__ whose site was super helpful to export a base line reference map which I used as a basis to create my custom reference maps above, as well as the keyboard button mappings list. As of Aug 17, __jgm__ has stepped down on maintaining the website, which is now maintained by __VerticalBlank__.
>>
>>Their fantastic tool can be found [here](https://edrefcard.info/).

` `

__!! You ALL Rock! Thank you !!__
