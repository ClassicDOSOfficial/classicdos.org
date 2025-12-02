; ClassicDOS Installer Script
; Author: Jan

[Setup]
AppName=ClassicDOS
AppVersion=1.0.0
DefaultDirName={pf}\ClassicDOS
DefaultGroupName=ClassicDOS
OutputDir=output
OutputBaseFilename=ClassicDOS_Setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "Create a &desktop icon"; GroupDescription: "Additional icons:"; Flags: unchecked

[Files]
; Root files (step up one folder with ..\)
Source: "..\BOOT.BAT"; DestDir: "{app}"
Source: "..\SHELL.BAT"; DestDir: "{app}"

; System files
Source: "..\SYSTEM\VALIDATE.BAT"; DestDir: "{app}\SYSTEM"
Source: "..\SYSTEM\KEY.TXT"; DestDir: "{app}\SYSTEM"; Flags: onlyifdoesntexist

; Commands
Source: "..\SYSTEM\COMMANDS\*.BAT"; DestDir: "{app}\SYSTEM\COMMANDS"

[Icons]
Name: "{group}\ClassicDOS Shell"; Filename: "{app}\SHELL.BAT"
Name: "{group}\ClassicDOS ReadMe"; Filename: "{app}\SYSTEM\COMMANDS\README.BAT"
Name: "{commondesktop}\ClassicDOS Shell"; Filename: "{app}\SHELL.BAT"; Tasks: desktopicon

[Run]
Filename: "{app}\SHELL.BAT"; Description: "Launch ClassicDOS Shell"; Flags: postinstall

[License]
LicenseFile=license.txt