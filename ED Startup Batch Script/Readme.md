# ED-BAT: Elite Dangerous Startup Batch File #

## VERSION 0.2 ##

Simplify & speed up loading of Elite Dangerous, and setting up your hardware & apps. Allows you to run many 3rd party apps plus the ED Launcher in a single shortcut.

Full list of currently supported apps listed below _(This can be customised to suit your own needs or even other games!)_.

Running the script also will allow you to automatically create a Backup of your bindings folder before starting the game. Backup will create a new folder with today's date & timestamp under your chosen backup folder location. (See note on different versions)

![Command Prompt](https://github.com/Aussiedroid/AD-ED-EnhancedWarthogScript/blob/master/ED%20Startup%20Batch%20Script%20File/folder.jpg)

## ED-BAT, WHAT IS IT ALL ABOUT? ##

For those not familiar with a batch file (.bat), its a text file containing instructions that can be run from a Command Prompt in Windows. Double click a .bat file and it will run just like an .exe file.

To create a batch file, copy and paste the code into a new text file via your fav notepad app. Save it, naming it something like 'EDLaunch' & rename extension to .bat. Double click to run...

__Open the .bat file & edit any folder paths for the apps you use under the Folder section. If the paths are correct then batch file should start it up for you & ignore any incorrect paths to complete startup run.__


## ED-BAT USAGE TIPS: ##

Before you start, ensure your 'empty' backup folder is created. If the backup folder path is not created then script will error.

_[Note 1]_ Any incorrect path can be left as-is, script will bypass running and report the success rate at the end of the run. Same if you delete any path there.

_[Note 2]_ The PING command is not actually "pinging" anything on the internet. This is pinging localhost & is used in the script as a timer only. Allows time to check app is running & to allow user to realistically read the output in the command prompt window.

_[Note 3]_ Remove the ':' at the last PAUSE line to prevent the command window from closing after run. Good for testing / validation.

_[Note 4]_ Creating a shortcut of your .bat file will allow you to change its icon to ED or something else. eg Mimic EDLauncher look instead of an ugly Windows command icon.

_[Note 5]_ Will never delete a backup. Backups are small, but remember to delete old versions periodically as required.



## WHAT APPS DOES ED-BAT SUPPORT? ##

- EDLauncher
- Thrustmaster Target GUI + Will Open/Run Script
- TrackIR
- VoiceAttack
- EDDI
- EDProfilier
- EDMarketConnector
- EDDiscovery
- EDEngineer
- Trade Computer Extension Mk.II
- Your Elite Dangerous Web Browser

_(This can be customised to suit your own needs)_



## WHAT ARE THE DIFFERENT VERSIONS OF ED-BAT? ##

Filename | Features
------------ | -------------
Launch ED-BAT Basic.bat | Will open the essential apps only! (Including EDLauncher/Target GUI/TrackIR/VA/EDMC) (NO BINDS BACKUP).
Launch ED-BAT Full.bat | Will open ALL supported apps listed above (NO BINDS BACKUP).
Launch ED-BAT Full + Backup.bat | Will open ALL supported apps PLUS Create a Backup of your Bindings.
