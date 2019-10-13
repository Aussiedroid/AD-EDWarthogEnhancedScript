@ECHO OFF

: ED-BAT: FULL APP SUITE VERSION
: ==============================
: README:
: =======
: Batch Script will load up EDLauncher PLUS 10 3rd Party Applications for ED in a single shortcut!
: - It will perform basic checks to see if each App has loaded successfully & report back.
: - Failed/Missing App loads will be ignored instead of failing the batch script.
: - Update 'Folder Paths' below for the Apps you personally use before launching the bat. Ensure they are found.
: - No need to delete unused apps below. Simply clear the folder path, or leave incorrect path and it will 'bypass'.
: - Can also automatically open the Warthog Reference Map Pictures to view on batch run, by setting the correct path below.
: - Run as Administrator, else some programs may not start.
:
: Known Issues:
: =============
: Trade Computer Extension Mk.II, although will run fine, it will report as failed to run on app check. Not sure how to fix this yet :/

: FOLDER PATHS:   <- Update these paths for the Apps you use. "Take note where quotations " " are/aren't used"
: =============
: Steam User Instructions (Swapping ED-LAUNCHER to STEAM Version):   
: - If you use Steam version of ED, you will need to REMOVE the comments ':' for STEAM-PATH below.
: - If you do not update path comments, the Screenshot & other Steam features may not work when launching via the BAT.
: - REMOVE the comments for app launch section towards the end of the BAT for STEAM (Steam.exe). 
: - Then, ADD the comments to EDLAUNCHER-PATH section, and EDLaunch.exe in the app launch section towards the end of the BAT. Save.

SET EDLAUNCHER-PATH="%PROGRAMFILES(X86)%\Steam\steamapps\common\Elite Dangerous"
:SET STEAM-PATH="%PROGRAMFILES(X86)%\Steam"
SET TARGET-GUI-PATH="%PROGRAMFILES(X86)%\Thrustmaster\TARGET\x64"
SET TARGET-SCRIPT-FILE="C:\GAME TOOLS\Elite Dangerous\Aussiedroid-ED-Warthog-Script-4.0.0\Warthog Script\AD_ED_v4.0.0.tmc"
SET REFERENCE-MAP-PATH=C:\GAME TOOLS\Elite Dangerous\Aussiedroid-ED-Warthog-Script-4.0.0\Maps\Advanced-Map.jpg
SET TRACKIR-PATH="%PROGRAMFILES(X86)%\NaturalPoint\TrackIR5"
SET VOICEATTACK-PATH="%PROGRAMFILES(X86)%\VoiceAttack"
SET EDP-PATH="%LOCALAPPDATA%\Apps\2.0\XNL477CX.MQX\5V68MEY7.N22\edpr..tion_8fee7e9965259bee_0003.0002_4c8d6a102e806080"
SET EDDI-PATH="%PROGRAMFILES(X86)%\VoiceAttack\Apps\EDDI"
SET EDMC-PATH="%PROGRAMFILES(X86)%\EDMarketConnector"
SET EDDISCOVERY-PATH="C:\GAME TOOLS\Elite Dangerous\EDDiscovery Portable"
SET EDENGINEER-PATH="%LOCALAPPDATA%\Apps\2.0\XNL477CX.MQX\5V88MEY7.N22\eden..tion_b9c6e2d0baf2eae5_0001.0001_63002251ea744c22"
SET TCE-MKII-PATH="C:\GAME TOOLS\Elite Dangerous\TCE"
SET TCE-EXE="Trade Computer Extension MK.II.exe"
SET BROWSER-PATH="%LOCALAPPDATA%\Programs\Opera\58.0.3135.79"
SET BROWSER-EXE=Opera.exe

: VARIABLES:
: ==========
SET /A AppSuccessCount=0
SET /A AppCount=11

ECHO.
ECHO -------------------------------------------------------
ECHO AUSSIEDROID'S ENHANCED ED-BAT MULTI-LAUNCHER FULL v0.4:
ECHO -------------------------------------------------------
ECHO.
ECHO Creating Immersion Platform... Please wait..
ECHO.
ECHO STATUS UPDATE: (%AppCount% of %AppCount% Apps Remaining)
ECHO.
PING -n 4 localhost>nul
ECHO.
ECHO.
ECHO.
ECHO -----------------------------------------------------------
ECHO AUTO APP LAUNCH SEQUENCE... Charging.. Please Be Patient..
ECHO -----------------------------------------------------------

ECHO.
ECHO LAUNCHING: THRUSTMASTER TARGET GUI [Run Script]
CD %TARGET-GUI-PATH%
If NOT ERRORLEVEL 1 START /d %TARGET-GUI-PATH% TARGETGUI.exe -r %TARGET-SCRIPT-FILE%
PING -n 2 localhost>nul
TASKLIST | FIND /I "TARGETGUI.exe"
If NOT ERRORLEVEL 1 ECHO ...SUCCESS!
If NOT ERRORLEVEL 1 SET /A AppSuccessCount+=1
If ERRORLEVEL 1 ECHO ...ERROR!!!  ~Check TARGETGUI.exe path/installed/already running~
ECHO.

ECHO LAUNCHING: NATURALPOINT TRACKIR
CD %TRACKIR-PATH%
If NOT ERRORLEVEL 1 START /d %TRACKIR-PATH% TrackIR5.exe
PING -n 2 localhost>nul
TASKLIST | FIND /I "TrackIR5.exe"
If NOT ERRORLEVEL 1 ECHO ...SUCCESS!
If NOT ERRORLEVEL 1 SET /A AppSuccessCount+=1
If ERRORLEVEL 1 ECHO ...ERROR!!!  ~Check TrackIR5.exe path/installed/already running~
ECHO.

ECHO LAUNCHING: VOICEATTACK
CD %VOICEATTACK-PATH%
If NOT ERRORLEVEL 1 START /d %VOICEATTACK-PATH% VoiceAttack.exe
PING -n 2 localhost>nul
TASKLIST | FIND /I "VoiceAttack.exe"
If NOT ERRORLEVEL 1 ECHO ...SUCCESS!
If NOT ERRORLEVEL 1 SET /A AppSuccessCount+=1
If ERRORLEVEL 1 ECHO ...ERROR!!!  ~Check VoiceAttack.exe path/installed/already running~
ECHO.

ECHO LAUNCHING: EDDI [ELITE DANGEROUS DATA INTERFACE]
CD %EDDI-PATH%
If NOT ERRORLEVEL 1 START /MIN /d %EDDI-PATH% EDDI.exe
PING -n 2 localhost>nul
TASKLIST | FIND /I "EDDI.exe"
If NOT ERRORLEVEL 1 ECHO ...SUCCESS!
If NOT ERRORLEVEL 1 SET /A AppSuccessCount+=1
If ERRORLEVEL 1 ECHO ...ERROR!!!  ~Check EDDI.exe path/installed/already running~
ECHO.

ECHO LAUNCHING: EDPROFILER [BY DR. KAII]
CD %EDP-PATH%
If NOT ERRORLEVEL 1 START /MIN /d %EDP-PATH% EDProfiler.exe
PING -n 2 localhost>nul
TASKLIST | FIND /I "EDProfiler.exe"
If NOT ERRORLEVEL 1 ECHO ...SUCCESS!
If NOT ERRORLEVEL 1 SET /A AppSuccessCount+=1
If ERRORLEVEL 1 ECHO ...ERROR!!!  ~Check EDProfiler.exe path/installed/already running~
ECHO.

ECHO LAUNCHING: EDDISCOVERY
CD %EDDISCOVERY-PATH%
If NOT ERRORLEVEL 1 START /d %EDDISCOVERY-PATH% EDDiscovery.exe
PING -n 2 localhost>nul
TASKLIST | FIND /I "EDDiscovery.exe"
If NOT ERRORLEVEL 1 ECHO ...SUCCESS!
If NOT ERRORLEVEL 1 SET /A AppSuccessCount+=1
If ERRORLEVEL 1 ECHO ...ERROR!!!  ~Check EDDiscovery.exe path/installed/already running~
ECHO.

ECHO LAUNCHING: EDMARKETCONNECTOR
CD %EDMC-PATH%
If NOT ERRORLEVEL 1 START /d %EDMC-PATH% EDMarketConnector.exe
PING -n 2 localhost>nul
TASKLIST | FIND /I "EDMarketConnector.exe"
If NOT ERRORLEVEL 1 ECHO ...SUCCESS!
If NOT ERRORLEVEL 1 SET /A AppSuccessCount+=1
If ERRORLEVEL 1 ECHO ...ERROR!!!  ~Check EDMC.exe path/installed/already running~
ECHO.

ECHO LAUNCHING: EDENGINEER
CD %EDENGINEER-PATH%
If NOT ERRORLEVEL 1 START /d %EDENGINEER-PATH% EDEngineer.exe
PING -n 2 localhost>nul
TASKLIST | FIND /I "EDEngineer.exe"
If NOT ERRORLEVEL 1 ECHO ...SUCCESS!
If NOT ERRORLEVEL 1 SET /A AppSuccessCount+=1
If ERRORLEVEL 1 ECHO ...ERROR!!!  ~Check EDEngineer.exe path/installed/already running~
ECHO.

ECHO LAUNCHING: TRADE COMPUTER EXTENSION MK.II
CD %TCE-MKII-PATH%
If NOT ERRORLEVEL 1 START /d %TCE-MKII-PATH% Tradec~1.exe
PING -n 2 localhost>nul
TASKLIST | FIND /I %TCE-EXE%
If NOT ERRORLEVEL 1 ECHO ...SUCCESS!
If NOT ERRORLEVEL 1 SET /A AppSuccessCount+=1
If ERRORLEVEL 1 ECHO ...ERROR!!!  ~Check TCE MK.II.exe path/installed/already running~
ECHO.

ECHO LAUNCHING: BROWSER .. ELITE DANGEROUS WEB PAGE ACCESS
CD %BROWSER-PATH%
If NOT ERRORLEVEL 1 START /d %BROWSER-PATH% %BROWSER-EXE%
PING -n 2 localhost>nul
TASKLIST | FIND /I "%BROWSER-EXE%"
If NOT ERRORLEVEL 1 ECHO ...SUCCESS!
If NOT ERRORLEVEL 1 SET /A AppSuccessCount+=1
If ERRORLEVEL 1 ECHO ...ERROR!!!  ~Check %BROWSER-EXE% path/installed/already running~
:PING -n 2 localhost>nul
ECHO.

ECHO LAUNCHING: ELITE DANGEROUS [EDLAUNCHER]
CD %EDLAUNCHER-PATH%
If NOT ERRORLEVEL 1 START /d %EDLAUNCHER-PATH% EDLaunch.exe
PING -n 2 localhost>nul
TASKLIST | FIND /I "EDLaunch.exe"
If NOT ERRORLEVEL 1 ECHO ...SUCCESS!
If NOT ERRORLEVEL 1 SET /A AppSuccessCount+=1
If ERRORLEVEL 1 ECHO ...ERROR!!!  ~Check EDLaunch.exe path/installed/already running~
PING -n 2 localhost>nul
ECHO.

:ECHO LAUNCHING: STEAM
:CD %STEAM-PATH%
:If NOT ERRORLEVEL 1 START /d %STEAM-PATH% Steam.exe steam://rungameid/359320
:PING -n 2 localhost>nul
:TASKLIST | FIND /I "Steam.exe"
:If NOT ERRORLEVEL 1 ECHO ...SUCCESS!
:If NOT ERRORLEVEL 1 SET /A AppSuccessCount+=1
:If ERRORLEVEL 1 ECHO ...ERROR!!!  ~Check Steam.exe path/installed/already running~
:PING -n 2 localhost>nul
:ECHO.

ECHO.
ECHO STATUS UPDATE: (%AppSuccessCount% of %AppCount% Apps Loaded Successfully)
ECHO.
ECHO.
ECHO DISPLAYING: THRUSTMASTER WARTHOG REFERENCE MAP   (If Path Set)
START %SYSTEMROOT%\System32\rundll32.exe "%PROGRAMFILES%\Windows Photo Viewer\PhotoViewer.dll", ImageView_Fullscreen %REFERENCE-MAP-PATH%
ECHO.
ECHO.
PING -n 3 localhost>nul
ECHO Fly Safe CMDR!
PING -n 7 localhost>nul
ECHO.
ECHO.


: Remove the ':' before the pause below to prevent window from closing.
:PAUSE