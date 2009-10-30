# Generate tags for this project

TAGS_FILE=$PROJECT_DIR/.tags

# Amount of time (in minutes) to wait before update the tags file again
UPDATE_INTERVAL=5

# Check if the file hasn't been updated for at least $UPDATE_INTERVAL
if test `find "$TAGS_FILE" -mmin +$UPDATE_INTERVAL`; then
    find -X $PROJECT_DIR -name \*.py -print 2> /dev/null | xargs ptags > $TAGS_FILE
fi
