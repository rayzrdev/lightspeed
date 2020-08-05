#!/bin/bash

JARFILE=tuinity-paperclip.jar
MAX_MEM=3G
INIT_MEM=2G

cd "$(dirname "$0")" || exit 1

java -Xms"$INIT_MEM" -Xmx"$MAX_MEM" -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=100 -XX:+DisableExplicitGC -XX:TargetSurvivorRatio=90 -XX:G1NewSizePercent=50 -XX:G1MaxNewSizePercent=80 -XX:G1MixedGCLiveThresholdPercent=35 -XX:+AlwaysPreTouch -XX:+ParallelRefProcEnabled -Dusing.aikars.flags=mcflags.emc.gs -jar "$JARFILE" -W worlds
