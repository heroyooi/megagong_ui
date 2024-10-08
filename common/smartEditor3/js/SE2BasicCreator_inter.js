function createSEditor2(elIRField, htParams, elSeAppContainer){
	if(!window.$Jindo){
		parent.document.body.innerHTML="μ§λ ?? ???΄ ???©??€.<br>\n<a href='http://dev.naver.com/projects/jindo/download'>http://dev.naver.com/projects/jindo/download</a>?? Jindo 1.5.3 λ²μ ? jindo.min.jsλ₯? ?€?΄λ‘λ λ°μ /js ?΄?? λ³΅μ¬ ?΄ μ£ΌμΈ?.\n(?μ§? Jindo 2 ? μ§???μ§? ??΅??€.)";
		return;
	}

	var elAppContainer = (elSeAppContainer || jindo.$("smart_editor2"));	
	var elEditingArea = jindo.$$.getSingle("DIV.husky_seditor_editing_area_container", elAppContainer);
	var oWYSIWYGIFrame = jindo.$$.getSingle("IFRAME.se2_input_wysiwyg", elEditingArea);
	var oIRTextarea = elIRField?elIRField:jindo.$$.getSingle("TEXTAREA.blind", elEditingArea);
	var oHTMLSrc = jindo.$$.getSingle("TEXTAREA.se2_input_htmlsrc", elEditingArea);
	var oTextArea = jindo.$$.getSingle("TEXTAREA.se2_input_text", elEditingArea);
	var sEditorMode = "open";
	
	if(!htParams){ 
		htParams = {}; 
		htParams.fOnBeforeUnload = null;
	}
	htParams.elAppContainer = elAppContainer;												// ???° UI μ΅μ? element ?? 
	htParams.oNavigator = jindo.$Agent().navigator();										// navigator κ°μ²΄ ??
	
	var oEditor = new nhn.husky.HuskyCore(htParams);
	oEditor.registerPlugin(new nhn.husky.CorePlugin(htParams?htParams.fOnAppLoad:null));	
	oEditor.registerPlugin(new nhn.husky.StringConverterManager());

	var htDimension = {
		nMinHeight:205,
		nMinWidth:parseInt(elIRField.style.minWidth, 10)||570,
		nHeight:elIRField.style.height||elIRField.offsetHeight,
		nWidth:elIRField.style.width||elIRField.offsetWidth
	};
	
	var htConversionMode = {
		bUseVerticalResizer : htParams.bUseVerticalResizer,
		bUseModeChanger : htParams.bUseModeChanger
	};
	
	var aAdditionalFontList = htParams.aAdditionalFontList;
	
	oEditor.registerPlugin(new nhn.husky.SE_EditingAreaManager("WYSIWYG", oIRTextarea, htDimension,  htParams.fOnBeforeUnload, elAppContainer));
	oEditor.registerPlugin(new nhn.husky.SE_EditingArea_WYSIWYG(oWYSIWYGIFrame));			// Tab Editor λͺ¨λ
	oEditor.registerPlugin(new nhn.husky.SE_EditingArea_HTMLSrc(oHTMLSrc));					// Tab HTML λͺ¨λ
	oEditor.registerPlugin(new nhn.husky.SE_EditingArea_TEXT(oTextArea));					// Tab Text λͺ¨λ
	oEditor.registerPlugin(new nhn.husky.SE2M_EditingModeChanger(elAppContainer, htConversionMode));	// λͺ¨λκ°? λ³?κ²?(Editor, HTML, Text)
	oEditor.registerPlugin(new nhn.husky.SE_PasteHandler()); 								// WYSIWYG Paste Handler
	
	oEditor.registerPlugin(new nhn.husky.HuskyRangeManager(oWYSIWYGIFrame));
	oEditor.registerPlugin(new nhn.husky.Utils());
	oEditor.registerPlugin(new nhn.husky.SE2M_UtilPlugin());
	oEditor.registerPlugin(new nhn.husky.SE_WYSIWYGStyler());
	oEditor.registerPlugin(new nhn.husky.SE2M_Toolbar(elAppContainer));
	
	oEditor.registerPlugin(new nhn.husky.Hotkey());											// ?¨μΆν€
	oEditor.registerPlugin(new nhn.husky.SE_EditingAreaVerticalResizer(elAppContainer, htConversionMode));	// ?Έμ§μ?­ λ¦¬μ¬?΄μ¦?
	oEditor.registerPlugin(new nhn.husky.DialogLayerManager());
	oEditor.registerPlugin(new nhn.husky.ActiveLayerManager());
	oEditor.registerPlugin(new nhn.husky.SE_WYSIWYGStyleGetter());							// μ»€μ ?μΉ? ?€????Ό ? λ³? κ°?? Έ?€κΈ?

	oEditor.registerPlugin(new nhn.husky.SE2B_Customize_ToolBar(elAppContainer));			// ??¨ ?΄λ°? (Basic)
	oEditor.registerPlugin(new nhn.husky.SE_WYSIWYGEnterKey("P"));							// ??° ? μ²λ¦¬, ??¬? Pλ‘? μ²λ¦¬
	
	oEditor.registerPlugin(new nhn.husky.SE2M_ColorPalette(elAppContainer));				// ?? ?? ?Έ
	oEditor.registerPlugin(new nhn.husky.SE2M_FontColor(elAppContainer));					// κΈ???
	oEditor.registerPlugin(new nhn.husky.SE2M_BGColor(elAppContainer));						// κΈ??λ°°κ²½?
	oEditor.registerPlugin(new nhn.husky.SE2M_FontNameWithLayerUI(elAppContainer, aAdditionalFontList));	// κΈ?κΌ΄μ’λ₯?
	oEditor.registerPlugin(new nhn.husky.SE2M_FontSizeWithLayerUI(elAppContainer));			// κΈ?κΌ΄ν¬κΈ?
	
	oEditor.registerPlugin(new nhn.husky.SE2M_LineStyler());								 
	oEditor.registerPlugin(new nhn.husky.SE2M_ExecCommand(oWYSIWYGIFrame));
	oEditor.registerPlugin(new nhn.husky.SE2M_LineHeightWithLayerUI(elAppContainer));		// μ€κ°κ²?	

	/*
	oEditor.registerPlugin(new nhn.husky.SE2M_Quote(elAppContainer));						// ?Έ?©κ΅?
	oEditor.registerPlugin(new nhn.husky.SE2M_Hyperlink(elAppContainer));					// λ§ν¬
	oEditor.registerPlugin(new nhn.husky.SE2M_SCharacter(elAppContainer));					// ?Ή?λ¬Έμ
	oEditor.registerPlugin(new nhn.husky.SE2M_FindReplacePlugin(elAppContainer));			// μ°ΎκΈ°/λ°κΎΈκΈ?
	oEditor.registerPlugin(new nhn.husky.SE2M_TableCreator(elAppContainer));				// ??΄λΈ? ??±
	oEditor.registerPlugin(new nhn.husky.SE2M_TableEditor(elAppContainer));					// ??΄λΈ? ?Έμ§?
	oEditor.registerPlugin(new nhn.husky.SE2M_TableBlockStyler(elAppContainer));			// ??΄λΈ? ?€????Ό
	oEditor.registerPlugin(new nhn.husky.SE2M_AttachQuickPhoto(elAppContainer));			// ?¬μ§?			
	*/

	oEditor.registerPlugin(new nhn.husky.MessageManager(oMessageMap));
	oEditor.registerPlugin(new nhn.husky.SE2M_QuickEditor_Common(elAppContainer));			// ??΅μ??° κ³΅ν΅(?, ?΄λ―Έμ??)
	
	oEditor.registerPlugin(new nhn.husky.SE2B_CSSLoader());									// CSS lazy load
	oEditor.registerPlugin(new nhn.husky.SE_OuterIFrameControl(elAppContainer, 100));
	
	oEditor.registerPlugin(new nhn.husky.SE_ToolbarToggler(elAppContainer, htParams.bUseToolbar));
	oEditor.registerPlugin(new nhn.husky.SE2M_Accessibility(elAppContainer));				// ???°?΄? ?Ή? κ·Όμ± κ΄?? ¨ κΈ°λ₯λͺ¨μ ??¬κ·ΈμΈ 
	
	return oEditor;
}