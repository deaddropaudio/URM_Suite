#SingleInstance force
#IfWinactive, ahk_class CabinetWClass ;Makes the script active only when explorer (window) is active...
 
 IniRead, config, config.ini, Folders
 settings := StrSplit(config,"`n") 
 	
	Gui, Add, Button, x27 y424 w0 h0 , Exit
	Gui, Add, Button, x22 y49 w190 h40 gbuildbase, Build base folder
	Gui, Add, Button, x22 y559 w190 h40 gaddstemfolder , Add stem folder
	For i, setting in settings{
	y := 399
	pos_y := A_Index*30+260
	Gui, Add, Checkbox, x32 y%pos_y% w160 h30 v%setting% checked , %setting%
	}
	Gui, Add, GroupBox, x12 y269 w200 h%pos_y% , Subfolders
	Gui, Add, Checkbox, x22 y529 w190 h20 vreadme checked, Generate Readme.txt
	Gui, Add, Edit, x22 y219 w190 h30 vsong , Songname
	Gui, Add, Text, x22 y9 w190 h30 , STEMS
	Gui, Add, Button, x22 y159 w190 h40 gaddband, Add band folder
	Gui, Add, Edit, x22 y109 w190 h30 vband , Bandname
	Gui, Show, x1277 y476 h626 w238, Folderize v0.1
	Return

	
	ButtonExit:
    ExitApp
    GuiClose:
    ExitApp
	
	buildbase:
    winactivate, ahk_class CabinetWClass
    ControlGetText,address, ToolbarWindow323, A
	address:=RegExReplace(address,".+: ") ;Format it...*/

	
	if !FileExist(address "\Masters"){
    FileCreateDir, %address%\Masters
    FileCreateDir, %address%\Stems
	}
	else{
	MsgBox Folders already in place!
	}
	return
	
    addstemfolder:
	winactivate, ahk_class CabinetWClass
    ControlGetText,address, ToolbarWindow323, A
	address:=RegExReplace(address,".+: ") ;Format it...*/
	Gui, Submit, NoHide
	if FileExist(address "\" song){
	MsgBox Song "%song%" already exists!
	}
	
	else{
    FileCreateDir, %address%\%song%
	For i, setting in settings
	FileCreateDir, %address%\%song%\%setting%
	
	if(readme =1){
    FileAppend,
    (
Artist: %band%
Song: %song%
Tempo:
Key:
_______
    
Notes:
    
    ),%address%\%song%\readme.txt

}
    }
	
	return

	addband:
	winactivate, ahk_class CabinetWClass
    ControlGetText,address, ToolbarWindow323, A
	address:=RegExReplace(address,".+: ") ;Format it...*/
	Gui, Submit, NoHide
	FileCreateDir, %address%\%band%
	return

