#!/usr/bin/env osascript

IP="$1"
tell application "Finder"
    open location "smb://$IP"
end tell
