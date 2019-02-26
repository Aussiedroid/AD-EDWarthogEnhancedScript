# Aussiedroid's Enhanced Warthog Script for Elite Dangerous

>> _"Welcome Commander, let me introduce myself, I am Engineer Aussiedroid, & I offer only the best Grade 5 Controller mods in the bubble! No lower level enhancements, no no .. only the best, for the Elite of the Pilot's Federation. Not all of my mods are, shall we say 'approved' in all duristictions throughout the galaxy, but I see in your eyes that's why you are here, is it not? No questions asked, I understand, please browse the shop & remember for Pilot's Federation Members upgrades are free of charge."_



` ` | Supported
------------ | -------------
![Logo](https://github.com/Aussiedroid/AD-ED-EnhancedWarthogScript/blob/beta/Maps/folder-small.jpg) | ![Specs](https://github.com/Aussiedroid/AD-ED-EnhancedWarthogScript/blob/beta/Untitled2.png)


### LATEST BUILD | v4.0.0 | Updated for Elite Dangerous Beyond 3.3 "Chapter 4" Patch ###

## Table of Contents ##

[Latest Release]() | [Enhanced Feature List](https://github.com/Aussiedroid/AD-ED-EnhancedWarthogScript/blob/beta/Readme.md#enhanced-features) | [Layout Maps]() | [Installation]() | [Acknowledgements]()

[Script Files]() | [Binding Files]() | [TrackIR Profile]() | [ED-BAT Launcher]() | [User Preferences]()

[Steam Guide](https://steamcommunity.com/sharedfiles/filedetails/?id=769637037) | [Frontier Forums]() | [ModDB]() | [Imgur]()


## Enhanced Features: ##

Some of the highlighted advanced features available that are not found in the default ED binding configurations:

- __Three Tier PIP Management Hat Switch__ offering different presets depending how long you hold down the button. _(Optional configurations also available for a Two Tier PIP system & also default One Tier PIP system configurable in the preferences)_
    
- __Auto-Docking Request procedure__.
    
- __Full LED Lighting__ implemented for core Ship Systems, plus full LED Backlight manual control for the Throttle.
    
- __Three Joystick Curve & Throttle Mode Presets__ that can be configured on-the-fly.
    
- __Complete Integration of 3rd Party Tools/Keys__, inc. TrackIR, Steam, Video Capture, Voice Comms & Voice Attack.
    
- Proper implementation of the __dual stage trigger__ on the Joystick.
    
- __Repeater Fire (Auto-fire)__ on Primary & Secondary Fire Buttons.
    
- __Automatically fire a Heat Sink__ when entering Silent Running _(Can also be fired separately)_.
    
- __Comms Panel Auto-Response System__. An upgrade offering up to 12 pre-configured text chat responses mapped to Joystick to assist with quick responses for general day-to-day interactions.
    
- __Auto-Dim your Throttle Backlights__ when you enable your Ship/SRV Lights.
    
- __Frame Shift Drive & Super Cruise engage on Throttle @ 100%__. Millennium Falcon style! _(Enabled only with Modifier to ensure full control)_
    
- FA OFF like a boss!, with __automatic sensitivity adjustment__ mod in toggle mode.
    
- __Safety Rating A++__, Improved Safety Features, including limiting access to Ship Boost based on presets or __IDLE lock__, additional combination required for Jettison All Cargo to prevent mishaps & disabling Throttle when IDLE is enabled. Nothing critical to the ship can be accidentally pressed.
    
- __Defensive Pattern Delta__: An advanced withdraw tactic from combat that will retract your hardpoints, set PIPs to defensive & attempt to Supercruise/High Wake out.
    
- __Everything is mapped!__ Practically everything you can set in Elite Dangerous Controls has been added to the Warthog, plus the hidden shortcuts to control your __FPS & Bandwidth displays__ and to __Hide Your Ship's GUI__.
    
- __Fast Game Mode Switching!__
    
- __Fully Integrated Voice Comm support__, offer both toggles & push-to-talk functionality for Internal ED Channel PLUS two External Voice Comm Channels _(Discord, Ventrillo, Skype, OBS, Twitch etc)_.
    
- __Fast Jump Next/Prev Sub-Systems__ to help find the Module you need.
    
- __Efficient mapping design__ originally based off my 3301 generation X55 profile, that ensures frequent use keys are quick and intuitive to use while also enabling the complete key mapping offerings through layered modifiers & specific placement to ensure no conflicts.
    
- __21st Century Comforts__: Dim your Throttle Backlights automatically when you enable your Ship/SRV Lights.
    
- __Signal Light Sequence__: Flash your Ship/SRV lights on & off. Short & Long sequence options available for a bit of fun! __:)__
    
- __Take-Off Launch Sequence__: Will set PIPs to 4xSYS, 2xENG, engage Vertical Thrusters for 4secs & retract Landing Gear. Works in both stations & planetary locations.
    
- Scripting files are __properly formatted & contain full comments__ to help understand what the code is doing.
    
- __DX Mapping & Conversion table__ also included in the Key Mapping file to help with changes.
    
- __User Configurable Settings__ for easy script customisation.
    
- __Start Software & 3rd Party Apps__ with Script Run or Batch Run.

- More...


## Reference Maps: ##

![Joystick](https://steamuserimages-a.akamaihd.net/ugc/940587658405000389/78F8D80F0E8182768C52CB526FF419EC5682AA97/)



    

## Installation: ##

    1. Extract the zip file pack. The Warthog Script can be run from any location. 
       All files need to be in the same folder though.
    2. Open TARGET Script Editor, Compile & then Edit AD_EDUserPrefs_v4.x.x.tmh. (Can also be Run from TARGET GUI)
    3. Edit User Preferences file, primarily the 'Core Hardware' variables (rest can be reconfigured on later runs)
       Save & Close TARGET Script Editor when done editing.
         Note: Most commands can be tested prior to starting the game using the Event Tester & Device Analyzer.
    4. Copy the Elite Dangerous Profile to:
         C:\Users\USERNAME\AppData\Local\Frontier Developments\Elite Dangerous\Options\Bindings
    5. Copy the TrackIR Profile to:
         C:\Users\USERNAME\AppData\Roaming\NaturalPoint\TrackIR 5\Profiles
    6. Set the Hotkeys in TrackIR; Pause Key to PAUSE, and Center to END. (Tick 'Exclusive' in TrackIR to autoload) 
    7. Set NVidia/AMD Capture Last 20mins hotkey to ALT+F11 (as required). (Default causes conflict)
    8. Map any other 3rd Party Keys such as Voice Comms (as required). (Setup Microphone Behaviour User Prefs)
    9. Edit ED-BAT Batch File and update path/locations (if using auto-start batch sequence, else skip).
    10.Open TARGET GUI & Run, and then Start ED Launcher or ED-BAT file.
    11.*If you are not running MFG Crosswind Pedals, map the missing axis/buttons under 'Other Mappings/Pedals' in
       the Legend in ED Config Menu, once loaded.*
    
       Always make sure the script is running as-well-as any other 3rd party tools prior to starting Elite Dangerous.


    "I am a leaf on the wind!"



