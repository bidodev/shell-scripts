# Script Porpouse
> This script will create the bones structure for your Website.
 
## How to Use
> chmod +x create.sh
./create.sh
The script will ask for the name of the directory that you want.

>> The script will generate the beyhond structure and open VISUAL CODE STUDIO if you have it on your machine.

### Created Folders
> The follow structure will be created when you execute the script

```
index.html #A basic HTML file with the base HTML structure will be created.
|
|
html/  #Empty folder for HTML files
|
|
css/   #Empty folder CSS files
|
|
img/   #Empty folder for img
|
|
js     #Empty folder for our JS files.
|
|
sass/  #The follow SASS pattern folders and respectives files will be created.
|
|– base/
|   |– _reset.scss       # Reset/normalize
|   |– _typography.scss  # Typography rules
|   ...                  # Etc…
|
|– components/
|   |– _buttons.scss     # Buttons
|   |– _carousel.scss    # Carousel
|   |– _cover.scss       # Cover
|   |– _dropdown.scss    # Dropdown
|   ...                  # Etc…
|
|– layout/
|   |– _navigation.scss  # Navigation
|   |– _grid.scss        # Grid system
|   |– _header.scss      # Header
|   |– _footer.scss      # Footer
|   |– _sidebar.scss     # Sidebar
|   |– _forms.scss       # Forms
|   ...                  # Etc…
|
|– pages/
|   |– _home.scss        # Home specific styles
|   |– _contact.scss     # Contact specific styles
|   ...                  # Etc…
|
|– themes/
|   |– _theme.scss       # Default theme
|   |– _admin.scss       # Admin theme
|   ...                  # Etc…
|
|– utils/
|   |– _variables.scss   # Sass Variables
|   |– _functions.scss   # Sass Functions
|   |– _mixins.scss      # Sass Mixins
|   |– _helpers.scss     # Class & placeholders helpers
|
|– vendors/
|   |– _bootstrap.scss   # Bootstrap
|   |– _jquery-ui.scss   # jQuery UI
|   ...                  # Etc…
|
|
`– main.scss             # Main Sass file


```
