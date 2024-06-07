#!/usr/bin/fish

# Directory containing markdown files
set VAULT_DIR ~/Documents/Obsidian/Notes
set SOURCE_DIR Inbox
set DEST_DIR 

# Iterate through all markdown files in the source directory
find $VAULT_DIR/$SOURCE_DIR -type f -name "*.md" | while read -l file
  echo "Processing $file"

  # Extract the tag from the file. This assumes the tag is on the line immediately following "tags:"
  set tag (awk '/tags:/{getline; print; exit}' "$file" | sed -e 's/^ *- *//' -e 's/^ *//;s/ *$//')

  echo "Found tag $tag"

  # If a tag is found, proceed with moving the file
  if test -n "$tag"
    # Create the target directory if it doesn't exist
    set TARGET_DIR "$VAULT_DIR/$DEST_DIR/$tag"
    mkdir -p "$TARGET_DIR"

    # Move the file to the target directory
    mv "$file" "$TARGET_DIR/"
    echo "Moved $file to $TARGET_DIR"
  else
    echo "No tag found for $file"
  end
end

echo "Done 🪷"

