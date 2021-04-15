; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Koalageddon"
#define MyAppVersion "1.5.1"
#define MyAppPublisher "acidicoala"
#define MyAppURL "https://github.com/acidicoala/Koalageddon"
#define MyAppExeName "IntegrationWizard32.exe"
#define MyOutputFileName "KoalageddonInstaller"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{42B0E81F-EF53-474B-B4A3-262EDC67D93A}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
VersionInfoVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=LICENSE.txt
; Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=_Build
OutputBaseFilename={#MyOutputFileName}
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";

[Files]
Source: "_Build\Release\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "_Build\Release\Injector32.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "_Build\Release\Injector64.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "_Build\Release\Integration32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "_Build\Release\Integration64.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "_Build\Release\Unlocker32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "_Build\Release\Unlocker64.dll"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
; Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

