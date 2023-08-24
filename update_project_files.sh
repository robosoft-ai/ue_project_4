#!/bin/sh

if [ -z "${UE5_DIR}" ]; then
        printf "Please set UE5_DIR to path of UE5 UnrealEngine's folder\n"
        exit 1
fi

GENERATOR_COMMAND="${UE5_DIR}/Engine/Build/BatchFiles/Linux/GenerateProjectFiles.sh"


(exec "$GENERATOR_COMMAND" -project="${PWD}/ue_project_4.uproject" -game)
