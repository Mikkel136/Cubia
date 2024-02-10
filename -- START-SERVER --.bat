@echo off
cls


rem If a known plugin is missing, it should pause>nul and wait for user to press X to continiue
rem If user continiues, generte placeholder file the installer will accept and ignore in the future


rem -----------------------------------------------------------
rem  To change memory allocation, change "-Xms4G" and "Xmx6G"
rem  to the amount of gigabytes in RAM you'd like to allocate
rem -----------------------------------------------------------
rem  Example: For 12 GB ram, change them to "-Xms12G" -Xmx12G"
rem -----------------------------------------------------------


java -Xms4G -Xmx6G -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true --add-modules=jdk.incubator.vector -jar purpur.jar --nogui

exit