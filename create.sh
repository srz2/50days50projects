# 2020/12/01
# Steven Zilberberg
# ##################
# Create a new day project from the template
# 
# Usage:
#   ./create.sh [name] <location>
#       name: the name of the new directory
#       location: the relative path where the new directory will be copied
# #############################################################################

template_path=./template

# Check that a project name is provided
if [ "$1" == "" ]; then
    echo Define a new project name
    exit 1
else
    echo Creating $1
fi

# Copy template to desired location
if [ "$2" == "" ]; then
    # If no argument, default to web
    cp -r $template_path web/$1
else
    # otherwise copy to defined path
    cp -r $template_path $2/$1
fi