# URMS_Suite
AHK Script/ Toolsuite for optimized mixing

## Installation

1. Install Autohotkey 2.0 via https://www.autohotkey.com/
2. Download script and config.ini
3. Save both files in a folder
4. Run "Folderize.ahk"

## Quick start
Note:

- Folderize works via the windows explorer.
- the script gets the path of the active explorer window and uses it as a reference for each operation

1. Open the location you want to add your folders to in Windows Explorer
2. Click on "Build base folder" to create 2 folders (stems/ masters)
3. Open the new Stems folder
4. Enter a bandname in Folderize and click "Add band folder" to create a new band 
5. Open the new band folder
6. Enter a songname in the "songname" field and uncheck all folders underneath, that should not be created
7. Press "Add stem folder" to generate a song folder with a stem folder structure inside.

## Configuration
- config.ini lets you customize the folder names to suit your personal needs
- each new line underneath [Folders] generates a new folder, that can be selected in the GUI


### Interface
![Interface overview](https://github.com/deaddropaudio/URM_Suite/blob/master/folderize.jpg)
