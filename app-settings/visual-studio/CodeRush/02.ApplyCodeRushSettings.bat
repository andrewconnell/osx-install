set target="%HOMEPATH%\AppData\Roaming\CodeRush for VS .NET\1.1\"
set source="E:\Live Mesh Folders\My Sync'd Documents\App Customizations\Visual Studio\CodeRush\"

xcopy %source%\Settings %target%\Settings /E /I /F /Y
xcopy %source%\Settings.xml %target%\Settings.xml /E /I /F /Y