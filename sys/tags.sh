# Generate tags for this project

find -X $PROJECT_DIR -name \*.py -print 2> /dev/null \
    | xargs ptags > $PROJECT_DIR/.tags
