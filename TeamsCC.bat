@echo off
echo ###############################################
echo #        Release 0.6, made by BennoMP.        #
echo ###############################################
timeout 1 > NUL
echo ###############################################
echo #     Killing Microsoft Teams processes...    #
echo ###############################################
taskkill /IM Teams.exe /T /F
timeout 1 > NUL
echo ###############################################
echo #            Now clearing caches...           #
echo ###############################################
cd %localappdata%\Microsoft\Teams\packages
del /Q /S *.nupkg
cd %appdata%\Microsoft\teams
del /Q /S blob_storage
del /Q /S Cache
del /Q /S "Code Cache"
del /Q /S databases
del /Q /S GPUCache
del /Q /S meeting-addin
del /Q /S "Service Worker\CacheStorage"
del /Q /S "Service Worker\ScriptCache"
del /Q /S "Session Storage"
del /Q /S skylib
del /Q /S tmp
del /Q /S Cookies
del /Q /S Cookies-journal
del /Q /S logs.txt
del /Q /S old_logs_*.txt
del /Q /S SquirrelTelemetry.log
timeout 1 > NUL
echo ###############################################
echo # Now proceeding to launch Microsoft Teams... #
echo ###############################################
%USERPROFILE%\AppData\Local\Microsoft\Teams\Update.exe --processStart "Teams.exe"
