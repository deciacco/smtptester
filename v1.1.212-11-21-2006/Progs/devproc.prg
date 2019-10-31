#Define DeveloperName  "deciacco.com"
Function DocumentationHeader()
	Keyboard ''Clear
	Keyboard '*============================================================================='+Chr(10)
	Keyboard '*| Purpose......'+ Chr(10)
	Keyboard '*@ Author.......'+ DeveloperName +Chr(10)
	Keyboard '*| Created......'+ Mdy(Date())+Chr(10)
	Keyboard '*| About........'+ Chr(10)
	Keyboard '*| Mod List.....'+ Chr(10)
	Keyboard '*============================================================================='+Chr(10)
	Keyboard '{UPARROW}{UPARROW}{UPARROW}{UPARROW}{UPARROW}{END}'
	Keyboard '{UPARROW}'
Endfunc

Function DocumentModification()
	Keyboard ''Clear
	Keyboard '*// Modified ' + Mdy(Date())+' By '+ DeveloperName +Chr(10)
Endfunc

Function DocumentProgramStep()
	Keyboard '' Clear
	Keyboard '*========================================='+Chr(10)
	Keyboard '*->'+Chr(10)
	Keyboard '*========================================='
	Keyboard '{UPARROW}'
Endfunc

Function ExtendLine()
	Keyboard ''Clear
	Keyboard '{ENTER}'
	Keyboard '*)  '
Endfunc

Function AddDisplayClasses
	Local lcTableName, lnFields, lnI, lcFieldName, lcDataType
	Local lcClassName, lcClassLib

	lcTableName = Alias()
	If Empty(lcTableName)
		=Messagebox("A table must be selected in the current work area.",16,"Error: Adding display Classes")
		Return .F.
	Endif

	lnFields = Afields(laFields)
	For lnI = 1 To lnFields
		lcFieldName    = laFields[lnI,1]
		lcDataType     = laFields[lnI,2]

		lcClassName     = _Screen.goAppVars.GetAppVar( "DISPLAYCLASS_"+lcDataType )
		lcClassLib      = _Screen.goAppVars.GetAppVar( "DISPLAYCLASSLIB_"+lcDataType )


		If !Isnull(lcClassName) And ! Isnull(lcClassLib)
			DBSetProp( lcTableName+'.' + lcFieldName,  'Field', 'DisplayClass', lcClassName )
			DBSetProp( lcTableName+'.' + lcFieldName, 'Field', 'DisplayClassLibrary', lcClassLib )
		Endif

	Endfor

Endfunc
