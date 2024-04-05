function createSEditor2(elIRField, htParams, elSeAppContainer){
	if(!window.$Jindo){
		parent.document.body.innerHTML="ì§„ë„ ?”„? ˆ?„?›?´ ?•„?š”?•©?‹ˆ?‹¤.<br>\n<a href='http://dev.naver.com/projects/jindo/download'>http://dev.naver.com/projects/jindo/download</a>?—?„œ Jindo 1.5.3 ë²„ì „?˜ jindo.min.jsë¥? ?‹¤?š´ë¡œë“œ ë°›ì•„ /js ?´?”?— ë³µì‚¬ ?•´ ì£¼ì„¸?š”.\n(?•„ì§? Jindo 2 ?Š” ì§??›?•˜ì§? ?•Š?Šµ?‹ˆ?‹¤.)";
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
	htParams.elAppContainer = elAppContainer;												// ?—?””?„° UI ìµœìƒ?œ„ element ?…‹?Œ… 
	htParams.oNavigator = jindo.$Agent().navigator();										// navigator ê°ì²´ ?…‹?Œ…
	
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
	oEditor.registerPlugin(new nhn.husky.SE_EditingArea_WYSIWYG(oWYSIWYGIFrame));			// Tab Editor ëª¨ë“œ
	oEditor.registerPlugin(new nhn.husky.SE_EditingArea_HTMLSrc(oHTMLSrc));					// Tab HTML ëª¨ë“œ
	oEditor.registerPlugin(new nhn.husky.SE_EditingArea_TEXT(oTextArea));					// Tab Text ëª¨ë“œ
	oEditor.registerPlugin(new nhn.husky.SE2M_EditingModeChanger(elAppContainer, htConversionMode));	// ëª¨ë“œê°? ë³?ê²?(Editor, HTML, Text)
	oEditor.registerPlugin(new nhn.husky.SE_PasteHandler()); 								// WYSIWYG Paste Handler
	
	oEditor.registerPlugin(new nhn.husky.HuskyRangeManager(oWYSIWYGIFrame));
	oEditor.registerPlugin(new nhn.husky.Utils());
	oEditor.registerPlugin(new nhn.husky.SE2M_UtilPlugin());
	oEditor.registerPlugin(new nhn.husky.SE_WYSIWYGStyler());
	oEditor.registerPlugin(new nhn.husky.SE2M_Toolbar(elAppContainer));
	
	oEditor.registerPlugin(new nhn.husky.Hotkey());											// ?‹¨ì¶•í‚¤
	oEditor.registerPlugin(new nhn.husky.SE_EditingAreaVerticalResizer(elAppContainer, htConversionMode));	// ?¸ì§‘ì˜?—­ ë¦¬ì‚¬?´ì¦?
	oEditor.registerPlugin(new nhn.husky.DialogLayerManager());
	oEditor.registerPlugin(new nhn.husky.ActiveLayerManager());
	oEditor.registerPlugin(new nhn.husky.SE_WYSIWYGStyleGetter());							// ì»¤ì„œ ?œ„ì¹? ?Š¤????¼ ? •ë³? ê°?? ¸?˜¤ê¸?

	oEditor.registerPlugin(new nhn.husky.SE2B_Customize_ToolBar(elAppContainer));			// ?ƒ?‹¨ ?ˆ´ë°? (Basic)
	oEditor.registerPlugin(new nhn.husky.SE_WYSIWYGEnterKey("P"));							// ?—”?„° ?‹œ ì²˜ë¦¬, ?˜„?¬?Š” Pë¡? ì²˜ë¦¬
	
	oEditor.registerPlugin(new nhn.husky.SE2M_ColorPalette(elAppContainer));				// ?ƒ‰?ƒ ?Œ”? ˆ?Š¸
	oEditor.registerPlugin(new nhn.husky.SE2M_FontColor(elAppContainer));					// ê¸???ƒ‰
	oEditor.registerPlugin(new nhn.husky.SE2M_BGColor(elAppContainer));						// ê¸??ë°°ê²½?ƒ‰
	oEditor.registerPlugin(new nhn.husky.SE2M_FontNameWithLayerUI(elAppContainer, aAdditionalFontList));	// ê¸?ê¼´ì¢…ë¥?
	oEditor.registerPlugin(new nhn.husky.SE2M_FontSizeWithLayerUI(elAppContainer));			// ê¸?ê¼´í¬ê¸?
	
	oEditor.registerPlugin(new nhn.husky.SE2M_LineStyler());								 
	oEditor.registerPlugin(new nhn.husky.SE2M_ExecCommand(oWYSIWYGIFrame));
	oEditor.registerPlugin(new nhn.husky.SE2M_LineHeightWithLayerUI(elAppContainer));		// ì¤„ê°„ê²?	

	oEditor.registerPlugin(new nhn.husky.SE2M_Quote(elAppContainer));						// ?¸?š©êµ?
	oEditor.registerPlugin(new nhn.husky.SE2M_Hyperlink(elAppContainer));					// ë§í¬
	oEditor.registerPlugin(new nhn.husky.SE2M_SCharacter(elAppContainer));					// ?Š¹?ˆ˜ë¬¸ì
	oEditor.registerPlugin(new nhn.husky.SE2M_FindReplacePlugin(elAppContainer));			// ì°¾ê¸°/ë°”ê¾¸ê¸?
	oEditor.registerPlugin(new nhn.husky.SE2M_TableCreator(elAppContainer));				// ?…Œ?´ë¸? ?ƒ?„±
	oEditor.registerPlugin(new nhn.husky.SE2M_TableEditor(elAppContainer));					// ?…Œ?´ë¸? ?¸ì§?
	oEditor.registerPlugin(new nhn.husky.SE2M_TableBlockStyler(elAppContainer));			// ?…Œ?´ë¸? ?Š¤????¼
	oEditor.registerPlugin(new nhn.husky.SE2M_AttachQuickPhoto(elAppContainer));			// ?‚¬ì§?			

	oEditor.registerPlugin(new nhn.husky.MessageManager(oMessageMap));
	oEditor.registerPlugin(new nhn.husky.SE2M_QuickEditor_Common(elAppContainer));			// ??µì—?””?„° ê³µí†µ(?‘œ, ?´ë¯¸ì??)
	
	oEditor.registerPlugin(new nhn.husky.SE2B_CSSLoader());									// CSS lazy load
	oEditor.registerPlugin(new nhn.husky.SE_OuterIFrameControl(elAppContainer, 100));
	
	oEditor.registerPlugin(new nhn.husky.SE_ToolbarToggler(elAppContainer, htParams.bUseToolbar));
	oEditor.registerPlugin(new nhn.husky.SE2M_Accessibility(elAppContainer));				// ?—?””?„°?‚´?˜ ?›¹? ‘ê·¼ì„± ê´?? ¨ ê¸°ëŠ¥ëª¨ìŒ ?”Œ?Ÿ¬ê·¸ì¸ 
	
	return oEditor;
}