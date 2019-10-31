[Setup]
SourceDir=Z:\Projects\SmtpTester\Current
AppName=SmtpTester
AppVerName=SmtpTester v1.2.264 Beta 1
DefaultDirName={pf}\SmtpTester
DefaultGroupName=SmtpTester
OutputDir=Z:\Projects\SmtpTester\Current\Setup
OutputBaseFilename=smtptestersetup
AppCopyright=Copyright (C) 2006 Deciacco.com
PrivilegesRequired=admin
DisableProgramGroupPage=false
ShowLanguageDialog=no
MinVersion=4.1.1998,5.0.2195
DisableReadyPage=true
AlwaysUsePersonalGroup=true
LicenseFile=license.txt
InfoAfterFile=readme.txt

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[Files]
Source: smtptester.exe; DestDir: {app}; Flags: replacesameversion
Source: Setup\smtptester.ini; DestDir: {app}; Flags: confirmoverwrite; Tasks: 
Source: readme.txt; DestDir: {app}
Source: license.txt; DestDir: {app}
Source: lorem.txt; DestDir: {app}

; Microsoft Graphics Device Interface Plus (GDI+) DLL
Source: Z:\Projects\VFP9Distrib\gdiplus.dll; DestDir: {cf}\Microsoft Shared\VFP; Flags: sharedfile uninsneveruninstall restartreplace

; Microsoft Visual C++ 7.1 Runtime DLL
Source: Z:\Projects\VFP9Distrib\msvcr71.dll; DestDir: {cf}\Microsoft Shared\VFP; Flags: onlyifdoesntexist deleteafterinstall
Source: Z:\Projects\VFP9Distrib\msvcr71.dll; DestDir: {app}; Flags: onlyifdoesntexist

; Microsoft Visual FoxPro 9.0 Runtime Support Libraries
Source: Z:\Projects\VFP9Distrib\vfp9r.dll; DestDir: {cf}\Microsoft Shared\VFP; Flags: regserver sharedfile uninsneveruninstall onlyifdoesntexist
Source: Z:\Projects\VFP9Distrib\vfp9t.dll; DestDir: {cf}\Microsoft Shared\VFP; Flags: sharedfile uninsneveruninstall onlyifdoesntexist
Source: Z:\Projects\VFP9Distrib\vfp9renu.dll; DestDir: {cf}\Microsoft Shared\VFP; Flags: sharedfile uninsneveruninstall onlyifdoesntexist
Source: C:\WINDOWS\system32\mswinsck.ocx; DestDir: {sys}; Flags: restartreplace sharedfile regserver
Source: C:\WINDOWS\system32\richtx32.ocx; DestDir: {sys}; Flags: restartreplace sharedfile regserver

[Icons]
Name: {group}\SmtpTester; Filename: {app}\smtptester.exe; WorkingDir: {app}
Name: {group}\Ini Edit; Filename: {app}\smtptester.ini
Name: {group}\{cm:UninstallProgram,SmtpTester}; Filename: {uninstallexe}
Name: {userdesktop}\SmtpTester; Filename: {app}\smtptester.exe; WorkingDir: {app}; Comment: SmtpTester; Flags: createonlyiffileexists; IconIndex: 0; Tasks: desktopicon
