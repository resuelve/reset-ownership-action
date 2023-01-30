#!/bin/bash -l

USER_UID=$(id -u "$USER")

export USER_UID

echo "Updating ownership permissions on workspace directory to user $USER_UID"

echo "Looking for files/directories not owned by '$USER_UID'"

find . ! -user "$USER_UID" -exec chown -cvf "$USER_UID" "{}" \;
