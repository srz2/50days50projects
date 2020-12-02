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

project_name=$1
custom_path=$2

# Check that a project name is provided
if [ "$project_name" == "" ]; then
    echo Define a new project name
    exit 1
else
    echo Creating $project_name
fi

# Copy template to desired location
if [ "$custom_path" == "" ]; then
    mkdir -p web

    # If no argument, default to web
    cp -r $template_path web/$project_name
else
    if [ -d $custom_path ]; then
        echo [Error]: $custom_path Does not exist
        exit 2
    fi

    # otherwise copy to defined path
    cp -r $template_path $custom_path/$project_name
fi
