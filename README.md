# SOLAR POWER SPECIFICATION SYSTEM

## INSTALL INSTRUCTIONS
1. `git clone https://github.com/ariolajohncarlo/spss.git`
2. Navigate to the directory created
3. Run `rake db:migrate` to prepare all the tables
4. Run `rake db:seed` to populate database

## USERNAME:PASSWORD
1. `cena_j:cantseeme`
2. `trump_d:iheartwalls`

## VERSION HISTORY
### Version 1.0.0
* Fixed bug on login when username is not found
* Fixed the aesthetics of all the forms
* Added kilowatthour_consumption column to packages
* Added functionality for the deletion of components in a package
* Added validators for all columns when neccessary
* Added index of the project (suggest page)
* Users with type employee cannot access user table via navbar
* Redirects user to login page when not logged in

### Version 0.5.0
* Added Login and Logout functionalities

### Version 0.4.1
* Added ComponentType
* Modified Component's component_type to component_type_id to accomodate foreign key
* Added links to navbar
* Fixed show.html.erb for Components

### Version 0.4.0
* Improved interface for Create Component
* Updated links on indexes into buttons
* Disabled routes for PackageComponent
* Added functionality for Adding Components to package
* Added user types on navbar

### Version 0.3.1
* Improved Interface for New and Edit for Suppliers
* Added instructions in seed file.

### Version 0.3.0
* Improved User Interface

### Version 0.2.1
* Added navbar
* Added gems in project:
  * better_errors
  * binding_of_caller

### Version 0.2.0
* Added Packages Scaffold, and package_component model
* Modified associations of the following models:
  * Packages
  * package_component
  * Component
  * Supplier

### Version 0.1.2
* Changed column type of user_type in users model.
* Modified views of user in lieu of the changes stated above.

### Version 0.1.1
* Added Bootstrap.
* Modified the tables' class attribute.

### Version 0.1.0
* Translated existing Ruby on Rails Project to a Linux environment.

### SPSS
