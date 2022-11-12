## A List of Countries Application built with Flutter:

## HNGi9 Task 3
## Description:
The Application loads a list of all the countries and important details from a REST API.
## Description of the App and Features
The Application calls data from the given endpoint, it calls a list of countries and their details. 
Important details such as official name, native name, first language, religion, capital, etc


## Description of Codebase:

The main app directories are data, logic and presentation layer

## Data:
The data layer persists data for the application. The data layer doesn't interact directly with the application.
The constants folder houses the api. The models directory helps structure our data.
The repository handles the complex data layer with the endpoint, it returns the data response from the api.
## Logic:
Created the Logic directory to leave complexities out of the ui.
The view_model provider is used to listen /watch the app for state changes, it allows us to fetch and refetch our data values.
The dark mode notifier file changes our app theme, combined with Shared Preferences persist the current theme.
## Presentation:
The helper widgets are displayed underneath the child widgets. I created the helper widget as it serves an important purpose of helping our child components.
The screen folder keeps the main screen and its details screen.


## Description of the features I would like to add if I had more time
If i had more time, id implement the search, filter and app localization functionality.
## Packages
google_fonts: To change default font
riverpod: To listen for changes
shared_preferences: To persist application's current theme
http: To make http requests
hooks_riverpod: Replace the default Stateful widget
page_transition: 

## APK Link

## Description of challenges and how I solved them
Felt like the most complicated json ever. 
Using riverpod for the first time made the process more tasking.
The json again.
Tried to write test.
The change in deadline put some tension on me.

## Appetize.io link

## Github Link
https://github.com/Ladeomor/hngi9_stage3_task
