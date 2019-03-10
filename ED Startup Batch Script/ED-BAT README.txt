-----------------------------------------------------------
AUSSIEDROID'S ENHANCED ED-BAT MULTI-LAUNCHER + BACKUP v0.3:
-----------------------------------------------------------

WHAT DOES IT DO?

Simplify & speed up loading of Elite Dangerous, and setting up your hardware & apps. Allows you to run many 3rd party apps plus the ED Launcher in a single shortcut. Full list of currently supported apps listed below (This can be customised to suit your own needs or even other games!).

Running the script also will allow you to automatically create a Backup of your bindings folder before starting the game. Backup will create a new folder with today's date & timestamp under your chosen backup folder location. (See note on different versions)



WHAT IS IT ALL ABOUT?

For those not familiar with a batch file (.bat), its a text file containing instructions that can be run from a Command Prompt in Windows. Double click a .bat file and it will run just like an .exe file.

Copy and paste the code below into a new text file via your fav notepad app. Save it, naming it something like 'EDLaunch' & rename extension to .bat. Double click to run...

- Before you start, ensure your 'empty' backup folder is created. If the backup folder path is not created then script will error.

- Open the .bat file & edit any folder paths for the apps you use under the Folder section. If the paths are correct then batch file should start it up for you & ignore any incorrect paths to complete startup run.

Note 1: Any incorrect path can be left as-is, script will bypass running and report the success rate at the end of the run. Same if you delete any path there.

Note 2: The PING command is not actually "pinging" anything on the internet. This is pinging localhost & is used in the script as a timer only. Allows time to check app is running & to allow user to realistically read the output in the command prompt window.

Note 3: Remove the ':' at the last PAUSE line to prevent the command window from closing after run. Good for testing / validation.

Note 4: Creating a shortcut of your .bat file will allow you to change its icon to ED or something else. eg Mimic EDLauncher look instead of an ugly Windows command icon.

Note 5: Will never delete a backup. Backups are small, but remember to delete old versions periodically as required.



WHAT APPS DOES THE SCRIPT SUPPORT?

EDLauncher
Thrustmaster Target GUI + Will Open/Run Script
TrackIR
VoiceAttack
EDDI
EDProfilier
EDMarketConnector
EDDiscovery
EDEngineer
Trade Computer Extension Mk.II
Your Elite Dangerous Web Browser

(This can be customised to suit your own needs)



WHAT ARE THE DIFFERENT VERSIONS?

1) "Launch ED-BAT Basic.bat" = Will open the essential apps only! Including EDLauncher, TM Target GUI & Script, TrackIR, VA & EDMC (NO BINDS BACKUP).

2) "Launch ED-BAT Full.bat" = Will open ALL supported apps (NO BINDS BACKUP).

3) "Launch ED-BAT Full + Backup.bat" = Will open ALL supported apps PLUS Create a Backup of your Bindings Folder before starting ED.


Enjoy,
AD