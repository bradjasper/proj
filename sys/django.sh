#!/bin/bash

SETTINGS_FILE=$PROJECT_DIR/settings.py

if [ -e $SETTINGS_FILE ]; then
    export DJANGO_SETTINGS_MODULE="$ACTIVE_PROJECT.settings"
    echo "Enabling Django settings for $ACTIVE_PROJECT"
fi
