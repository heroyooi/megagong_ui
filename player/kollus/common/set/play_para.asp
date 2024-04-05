<%
    uid     = Trim(COOK_ID)		'회원아이디
    mem_type= Trim(fncRequestCookie("mem_type"))
    
    BrowserType = fncRequest("BrowserType")
    
    PlayerKbn = fncRequest("PlayerKbn")
    PlayerApp = fncRequest("PlayerApp")
    PlayerLoc = fncRequest("PlayerLoc")
    PlayerUse = fncRequest("PlayerUse")


    if uid = "" Then
        if PlayerApp = "Y" Then '유료일 때
            if PlayerKbn = "T" Then uid = MemId
        Else
            mcd = fncRequest("mcd")
        End if
    End if
    if uid <> "" Then uid = Trim(uid)

    VOD_KBN = Trim(fncRequest("VOD_KBN"))

    userBrowser = fncRequest("userBrowser")
    BrowserVersion = fncRequest("BrowserVersion")
    
    DNG_NO  = Trim(fncRequest("DNG_NO"))
    if DNG_NO = "" Then
        DNG_NO = Trim(fncRequest("no"))
    End if
    DNG_IDX = Trim(fncRequest("DNG_IDX"))
    if DNG_IDX = "" Then
        DNG_IDX = Trim(fncRequest("idx"))
    End if
    if DNG_IDX = "" Then
        DNG_IDX = Trim(fncRequest("no"))
    End if

    SEQ = Trim(fncRequest("SEQ"))
    ST_FILENAME = Trim(fncRequest("ST_FILENAME"))

    intStartSec = Trim(fncRequest("START_SEC"))		        '동영상 시작점 (초 단위값)
    if intStartSec = "" Then intStartSec = 0

    TEC_CD  = fncRequest("TEC_CD")
    TEC_NM  = fncRequest("TEC_NM")

    if CHR_CD = "" Then CHR_CD  = fncRequest("CHR_CD")
    if LEC_CD = "" Then LEC_CD  = fncRequest("LEC_CD")

    CHR_NM  = Unescape(fncRequest("CHR_NM"))

    IMG_URL = fncRequest("IMG_URL") '최초 노출 스킨

    P_WIDTH  = fncRequest("P_WIDTH")
    P_HEIGHT  = fncRequest("P_HEIGHT")

    APP_NO  = fncRequest("APP_NO")
    APP_SEQ  = fncRequest("APP_SEQ")

	UseWidth = fncRequest("UseWidth")
	UseHeight = fncRequest("UseHeight")

    PlayerTabCtrl = fncRequest("PlayerTabCtrl")
    PlayerTabNo = fncRequest("PlayerTabNo")

    if PlayerTabNo = "" Then PlayerTabNo = 1
    
    'AutoPlay = fncRequest("AutoPlay")
    AutoPlay = "Y"

    if PlayerLoc = "L" And PlayerTabCtrl = "" Then PlayerTabCtrl = "OFF" 
    if PlayerKbn = "T" Then PlayerTabCtrl = "OFF" '결제정보가 없음
    if PlayerKbn = "L" Then PlayerTabCtrl = "OFF" '무료강의
    if PlayerKbn = "M" Then PlayerTabCtrl = "OFF" '무료강의

    SeverNm = LCASE(fncRequestVariables("SERVER_NAME"))

    '변수값 가지고 있기
    playPara = fncRequestVariables("QUERY_STRING")

    if PlayerKbn = "M" Or PlayerKbn = "T" Then MegaHelp = "Y"

    p_val = PlayerKbn & PlayerApp & PlayerLoc
    if DNG_NO <> "" Then p_val = p_val & DNG_NO
    if CHR_CD <> "" Then p_val = p_val & CHR_CD
    if LEC_CD <> "" Then p_val = p_val & LEC_CD
    if DNG_IDX <> "" Then p_val = p_val & DNG_IDX

    pcd = "play_" & p_val
    acd = "area_" & p_val

    'dtype = fncMobileType()
%>
