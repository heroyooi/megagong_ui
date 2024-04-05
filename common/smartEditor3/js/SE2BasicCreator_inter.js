function createSEditor2(elIRField, htParams, elSeAppContainer){
	if(!window.$Jindo){
		parent.document.body.innerHTML="진도 ?��?��?��?��?�� ?��?��?��?��?��.<br>\n<a href='http://dev.naver.com/projects/jindo/download'>http://dev.naver.com/projects/jindo/download</a>?��?�� Jindo 1.5.3 버전?�� jindo.min.js�? ?��?��로드 받아 /js ?��?��?�� 복사 ?�� 주세?��.\n(?���? Jindo 2 ?�� �??��?���? ?��?��?��?��.)";
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
	htParams.elAppContainer = elAppContainer;												// ?��?��?�� UI 최상?�� element ?��?�� 
	htParams.oNavigator = jindo.$Agent().navigator();										// navigator 객체 ?��?��
	
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
	oEditor.registerPlugin(new nhn.husky.SE_EditingArea_WYSIWYG(oWYSIWYGIFrame));			// Tab Editor 모드
	oEditor.registerPlugin(new nhn.husky.SE_EditingArea_HTMLSrc(oHTMLSrc));					// Tab HTML 모드
	oEditor.registerPlugin(new nhn.husky.SE_EditingArea_TEXT(oTextArea));					// Tab Text 모드
	oEditor.registerPlugin(new nhn.husky.SE2M_EditingModeChanger(elAppContainer, htConversionMode));	// 모드�? �?�?(Editor, HTML, Text)
	oEditor.registerPlugin(new nhn.husky.SE_PasteHandler()); 								// WYSIWYG Paste Handler
	
	oEditor.registerPlugin(new nhn.husky.HuskyRangeManager(oWYSIWYGIFrame));
	oEditor.registerPlugin(new nhn.husky.Utils());
	oEditor.registerPlugin(new nhn.husky.SE2M_UtilPlugin());
	oEditor.registerPlugin(new nhn.husky.SE_WYSIWYGStyler());
	oEditor.registerPlugin(new nhn.husky.SE2M_Toolbar(elAppContainer));
	
	oEditor.registerPlugin(new nhn.husky.Hotkey());											// ?��축키
	oEditor.registerPlugin(new nhn.husky.SE_EditingAreaVerticalResizer(elAppContainer, htConversionMode));	// ?��집영?�� 리사?���?
	oEditor.registerPlugin(new nhn.husky.DialogLayerManager());
	oEditor.registerPlugin(new nhn.husky.ActiveLayerManager());
	oEditor.registerPlugin(new nhn.husky.SE_WYSIWYGStyleGetter());							// 커서 ?���? ?��????�� ?���? �??��?���?

	oEditor.registerPlugin(new nhn.husky.SE2B_Customize_ToolBar(elAppContainer));			// ?��?�� ?���? (Basic)
	oEditor.registerPlugin(new nhn.husky.SE_WYSIWYGEnterKey("P"));							// ?��?�� ?�� 처리, ?��?��?�� P�? 처리
	
	oEditor.registerPlugin(new nhn.husky.SE2M_ColorPalette(elAppContainer));				// ?��?�� ?��?��?��
	oEditor.registerPlugin(new nhn.husky.SE2M_FontColor(elAppContainer));					// �??��?��
	oEditor.registerPlugin(new nhn.husky.SE2M_BGColor(elAppContainer));						// �??��배경?��
	oEditor.registerPlugin(new nhn.husky.SE2M_FontNameWithLayerUI(elAppContainer, aAdditionalFontList));	// �?꼴종�?
	oEditor.registerPlugin(new nhn.husky.SE2M_FontSizeWithLayerUI(elAppContainer));			// �?꼴크�?
	
	oEditor.registerPlugin(new nhn.husky.SE2M_LineStyler());								 
	oEditor.registerPlugin(new nhn.husky.SE2M_ExecCommand(oWYSIWYGIFrame));
	oEditor.registerPlugin(new nhn.husky.SE2M_LineHeightWithLayerUI(elAppContainer));		// 줄간�?	

	/*
	oEditor.registerPlugin(new nhn.husky.SE2M_Quote(elAppContainer));						// ?��?���?
	oEditor.registerPlugin(new nhn.husky.SE2M_Hyperlink(elAppContainer));					// 링크
	oEditor.registerPlugin(new nhn.husky.SE2M_SCharacter(elAppContainer));					// ?��?��문자
	oEditor.registerPlugin(new nhn.husky.SE2M_FindReplacePlugin(elAppContainer));			// 찾기/바꾸�?
	oEditor.registerPlugin(new nhn.husky.SE2M_TableCreator(elAppContainer));				// ?��?���? ?��?��
	oEditor.registerPlugin(new nhn.husky.SE2M_TableEditor(elAppContainer));					// ?��?���? ?���?
	oEditor.registerPlugin(new nhn.husky.SE2M_TableBlockStyler(elAppContainer));			// ?��?���? ?��????��
	oEditor.registerPlugin(new nhn.husky.SE2M_AttachQuickPhoto(elAppContainer));			// ?���?			
	*/

	oEditor.registerPlugin(new nhn.husky.MessageManager(oMessageMap));
	oEditor.registerPlugin(new nhn.husky.SE2M_QuickEditor_Common(elAppContainer));			// ??�에?��?�� 공통(?��, ?��미�??)
	
	oEditor.registerPlugin(new nhn.husky.SE2B_CSSLoader());									// CSS lazy load
	oEditor.registerPlugin(new nhn.husky.SE_OuterIFrameControl(elAppContainer, 100));
	
	oEditor.registerPlugin(new nhn.husky.SE_ToolbarToggler(elAppContainer, htParams.bUseToolbar));
	oEditor.registerPlugin(new nhn.husky.SE2M_Accessibility(elAppContainer));				// ?��?��?��?��?�� ?��?��근성 �??�� 기능모음 ?��?��그인 
	
	return oEditor;
}