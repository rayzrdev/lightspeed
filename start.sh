#!/bin/bash

JARFILE=server.jar
MAX_MEM=3G
INIT_MEM=2G

fail() {
    echo "$*" >&1
    exit 1
}

cd "$(dirname "$(realpath "$0")")" || exit 1

if [[ ! -f "$JARFILE" ]]; then
    fail "Make sure to copy tuinity-paperclip.jar into this folder before running the server."
fi

../jdk-16.0.1+9/bin/java -Xms"$INIT_MEM" -Xmx"$MAX_MEM" -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=100 -XX:+DisableExplicitGC -XX:TargetSurvivorRatio=90 -XX:G1NewSizePercent=50 -XX:G1MaxNewSizePercent=80 -XX:G1MixedGCLiveThresholdPercent=35 -XX:+AlwaysPreTouch -XX:+ParallelRefProcEnabled -Dusing.aikars.flags=mcflags.emc.gs -jar "$JARFILE" -W worlds nogui
