@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"c:\RailsInstaller\Ruby2.1.0\bin\ruby.exe" "c:/users/giraffe/desktop/tts/rsoontwitterhouse/vendor/bundle/bin/sdoc-merge" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"c:\RailsInstaller\Ruby2.1.0\bin\ruby.exe" "%~dpn0" %*
