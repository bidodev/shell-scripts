#basic website structure folders
site_folders=("css" "html" "img" "js" "sass")

#sass pattern folders
sass_pattern=("base" "components" "layout" "pages" "themes" "abstracts" "vendors")

#pattern files
base=("_reset.scss" "_typography.scss" "_utilities.scss" "_animations.scss" "_base.scss")
components=("_buttons.scss" "_carousel.scss" "_cover.scss" "_dropdown.scss")
layout=("_navigation.scss" "_grid.scss" "_header.scss" "_footer.scss" "_sidebar.scss" "_forms.scss")
pages=("_home.scss" "_contact.scss")
themes=("_theme.scss" "_admin.scss")
vendors=("_bootstrap.scss" "_jquery-ui.scss" "_normalize.scss")
abstracts=("_function.scss" "_mixins.scss" "_variables.scss" "_placeholders.scss")

echo "Enter directory name"
read dirname

if [ ! -d "$dirname" ]; then

    echo "Directory $dirname doesn't exist. Creating now..."
    mkdir ./$dirname
    sleep 1

    echo "Directory $dirname created"
    cd $dirname

    echo "Creating Index HTML..."
    {
        echo '<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="./css/main.css" />
  </head>
  <body></body>
</html>'
    } >> index.html
    sleep 1
    echo "Index HTML created"

    echo "Creating basic structure folders..."
    for i in "${site_folders[@]}"; do
        mkdir "$i"
        echo "Creating directory $i..."
        sleep 1
        echo "Directory $i created"
    done

    cd sass
    echo "Creating SASS pattern folders and files..."

    for folder in "${sass_pattern[@]}"; do
        echo "Creating directory $folder..."
        mkdir "$folder"

        sleep 0.2
        echo "Directory $folder created"

        cd $folder
        files=$folder[@]
        for file in "${!files}"; do
            echo "Creating file $file..."
            touch "$file"
            sleep 0.2
            echo "File $file created"
        done
        cd ..
    done

    #create shame file
    touch _shame.scss

    sleep 2
    echo "SASS pattern folders and files created"

    ##Obs we have to create a loop for this.
    echo "Populating main.scss with all the necessaries imports..."
    #let's import ours scss files into main.scss
    {
        echo '@import "./base/animations";'
        echo '@import "./base/base";'
        echo '@import "./base/reset";'
        echo '@import "./base/typography";'
        echo '@import "./base/utilities";'
        echo ''
        echo '@import "./components/buttons";'
        echo '@import "./components/carousel";'
        echo '@import "./components/cover";'
        echo '@import "./components/dropdown";'
        echo ''
        echo '@import "./layout/footer";'
        echo '@import "./layout/forms";'
        echo '@import "./layout/grid";'
        echo '@import "./layout/header";'
        echo '@import "./layout/navigation";'
        echo '@import "./layout/sidebar";'
        echo ''
        echo '@import "./pages/contact";'
        echo '@import "./pages/home";'
        echo ''
        echo '@import "./themes/admin";'
        echo '@import "./themes/theme";'
        echo ''
        echo '@import "./vendors/bootstrap";'
        echo '@import "./vendors/jquery-ui";'
        echo '@import "./vendors/normalize";'
        echo ''
        echo '@import "./shame";'
    } >> main.scss
    sleep 2
    echo "Base Website structure built with sucess..."
    cd ..
    echo "Opening Visual Studio..."
    code .

else
    echo "Directory $dirname already exists"
fi
