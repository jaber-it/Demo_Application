prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_page.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5261953053395368644)
,p_plug_name=>'Report_on_report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551633705629634415)
,p_plug_display_sequence=>30
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'',
'function myfunc() {',
'//$(.t-Region--accent5).addClass(''bd-police'');',
'$(''.t-Region'').addClass(''t-Region--accent5'');',
'$(''.t_Header'').addClass(''acc5'');',
'}',
'',
'function PRINTPAGE(){',
'',
'/*var headstr = "<html><head><title></title></head><body>";',
'var footstr = "</body>";',
'var newstr = document.all.item(R4126530382445374628).innerHTML;',
'var oldstr = document.body.innerHTML;',
'document.body.innerHTML = headstr+newstr+footstr;*/',
'',
'           $(''#R6639725547831712'').hide();',
'           $(''#report_header_comon'').hide();',
'           $(''#uBreadcrumbsBG'').hide();',
'           $(''#uBreadcrumbs'').hide();',
'           $(''#apexir_TOOLBAR'').hide();',
'           $(''#header'').hide();',
'           $(''#tabs'').hide();',
'           $(''#topbar'').hide();',
'           $(''.tSC'').hide();',
'           $(''.tSF'').hide();',
'           $(''.t-Body-nav'').hide();',
'           $(''.fg-toolbar'').hide();',
'           $(''#report_header_comon'').show();         ',
'           $(''#print_search'').hide();',
'           $(''.t-Header-nav'').hide();',
'           $(''.t-Header-branding'').hide();',
'           $(''.t-Footer-body'').hide();',
'           $(''.t-Breadcrumb'').hide();',
'           $(''#t_Body_content_offset'').hide();',
'           ',
'           $(''#R352269189618892818'').hide();',
'           $(''#R1573026290025380097'').hide();',
'           ',
'           $(''#AWHDRTBVFEKNKGW'').hide();',
'           $(''#CIB725'').hide();',
'           $(''#thanamor'').hide();',
'           $(''#Reg'').hide();',
'           $(''#Rmor'').hide();',
'           $(''#Rmamla'').hide();',
'           $(''#downpdf'').hide();',
'           $(''#print'').hide();',
'           $(''.a-DevToolbar-list'').hide();',
'           ',
'            window.print();',
'',
'',
'           $(''#report_header_comon'').hide();',
'           $(''#apexir_TOOLBAR'').show();',
'           $(''#header'').show();',
'           $(''#tabs'').show();',
'           $(''#topbar'').show();',
'',
'           $(''.tSC'').show();',
'           $(''.tSF'').show();',
'           $(''.fg-toolbar'').show();',
'           $(''#R6639725547831712'').show();',
'          $(''#uBreadcrumbsBG'').show();',
'          $(''#uHeader'').show();',
'          $(''#uBreadcrumbs'').show();',
'          $(''.common-hide-region'').show();',
'           $(''#common-hide-region'').show();',
'           ',
'           $(''#R352269189618892818'').show();',
'           $(''#R1573026290025380097'').show();',
'           $(''#downpdf'').show();    ',
'         //apex.submit(''REFRESH'');',
'         //apex.submit({request:"REFRESH", showWait:true, validate:false});',
'         ',
'         /*document.body.innerHTML = oldstr;',
'         return false;*/',
'         ',
'       };',
'  </script>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11647933739357987401)
,p_plug_name=>'Internet Check'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551633705629634415)
,p_plug_display_sequence=>20
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html>',
'<head>',
'<title>Page Title</title>',
'<link href="https://cdnjs.cloudflare.com/ajax/libs/offline-js/0.7.19/themes/offline-theme-slide.min.css" rel="stylesheet" type="text/css"></link>',
'<link href="https://cdnjs.cloudflare.com/ajax/libs/offline-js/0.7.19/themes/offline-language-english.min.css" rel="stylesheet"></link>',
'</head>',
'<script src="https://cdnjs.cloudflare.com/ajax/libs/offline-js/0.7.19/offline.min.js"></script>',
'<script>',
'Offline.options = {checks: {xhr: {url: ''#APP_IMAGES#check-internet-connection-javascript.gif''}}};',
'</script>',
'<body>',
'</body>',
'</html>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function addScript(url) {',
'     var script = document.createElement(''script'');',
'     script.type = ''application/javascript'';',
'     script.src = url;',
'     document.head.appendChild(script);',
' }',
'addScript(''https://unpkg.com/html2pdf.js@0.9.3/dist/html2pdf.js'');',
'//addScript(''https://raw.githack.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js'');',
'</script>',
'',
'<script type="text/javascript">',
'function getbangla(obj)',
'{',
'	var eng = obj.value;',
'	var tmp = "";',
'	var bng = "";',
'  	for (var i = 0; i < eng.length; i++) ',
'        {',
'	    tmp = eng.substr(i,1);',
'		',
'	    switch(tmp)',
'	    {',
'	    case "0":',
unistr('	      bng += "\09E6";'),
'	      break;',
'	    case "1":',
unistr('	      bng += "\09E7";'),
'	      break;',
'	    case "2":',
unistr('	      bng += "\09E8";'),
'	      break;',
'	    case "3":',
unistr('	      bng += "\09E9";'),
'	      break;',
'	    case "4":',
unistr('	      bng += "\09EA";'),
'	      break;',
'	    case "5":',
unistr('	      bng += "\09EB";'),
'	      break;',
'	    case "6":',
unistr('	      bng += "\09EC";'),
'	      break;',
'	    case "7":',
unistr('	      bng += "\09ED";'),
'	      break;',
'	    case "8":',
unistr('	      bng += "\09EE";'),
'	      break;',
'	    case "9":',
unistr('	      bng += "\09EF";'),
'	      break;',
'	    case "/":',
'	      bng += "/";',
'	      break;',
'	    case "-":',
'	      bng += "/";',
'	      break;',
'	    case "(":',
'	      bng += "(";',
'	      break;',
'	    case ")":',
'	      bng += ")";',
'	      break;',
'	    default:',
'	      bng += tmp;',
'	    }',
'	}',
'',
'	obj.value = bng;',
'}',
'',
'',
'function getbanglatoenglish(obj)',
'{',
'	var eng = obj.value;',
'	var tmp = "";',
'	var bng = "";',
'  	for (var i = 0; i < eng.length; i++) ',
'        {',
'	    tmp = eng.substr(i,1);',
'		',
'	    switch(tmp)',
'	    {',
unistr('	    case "\09E6":'),
'	      bng += "0";',
'	      break;',
unistr('	    case "\09E7":'),
'	      bng += "1";',
'	      break;',
unistr('	    case "\09E8":'),
'	      bng += "2";',
'	      break;',
unistr('	    case "\09E9":'),
'	      bng += "3";',
'	      break;',
unistr('	    case "\09EA":'),
'	      bng += "4";',
'	      break;',
unistr('	    case "\09EB":'),
'	      bng += "5";',
'	      break;',
unistr('	    case "\09EC":'),
'	      bng += "6";',
'	      break;',
unistr('	    case "\09ED":'),
'	      bng += "7";',
'	      break;',
unistr('	    case "\09EE":'),
'	      bng += "8";',
'	      break;',
unistr('	    case "\09EF":'),
'	      bng += "9";',
'	      break;',
'	    case "/":',
'	      bng += "/";',
'	      break;',
'	    case "-":',
'	      bng += "-";',
'	      break;',
'	    case "(":',
'	      bng += "(";',
'	      break;',
'	    case ")":',
'	      bng += ")";',
'	      break;',
'	    default:',
'	      bng += tmp;',
'	    }',
'	}',
'',
'	obj.value = bng;',
'}',
'</script>',
'',
'<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>',
'<script type="text/javascript" src="https://html2canvas.hertzen.com/dist/html2canvas.js"></script>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18376597887388789705)
,p_plug_name=>'police'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551633705629634415)
,p_plug_display_sequence=>10
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'',
'.t-Footer {',
'    display: none;',
'}',
'.ui-dialog--apex.t-Dialog-page--standard, .ui-dialog--apex.t-Dialog-page--wizard {',
'    border-radius: 19px 0px;',
'}',
'.t-Body-mainContent {',
'    background-color: #2c3e48;',
'}',
'.t-Form--stretchInputs {',
'    border-radius: 19px 0px;',
'}',
'.t-Form--slimPadding, .t-Form-fieldContainer--slimPadding {',
'    border-radius: 19px 0px;',
'}',
'.t-Region-header {',
'    height: 41px;',
'    background-color: #001825;',
'    border-radius: 19px 0px;',
'    color: white;',
'}',
'.ui-dialog-titlebar {',
'    height: 38px;',
'	background-color: darkcyan;',
'    border-radius: 19px 0px;',
'    color: white;',
'}',
'.t-Button--small {',
'    --a-button-line-height: .9rem;',
'}',
'.t-Report-cell {',
'    font-size: 17px;',
'}',
'.t-Form-fieldContainer--floatingLabel .apex-item-textarea {',
'    font-size: large;',
'}',
'.a-IRR-table {',
'    font-size: 16px;',
'}',
'.t-Form-itemWrapper input {',
'    font-weight: 500;',
'    font-size: 18px;',
'}',
'.button1 {',
'    background-color: #1472aa;',
'    color: #f0ecec;',
'    border: 1px solid #325930;',
'    font-size: 15px;',
'    font-weight: 500;',
'    padding: 3px 4px 3px 4px;',
'    border-radius: 8px;',
'}',
'.button1:hover {',
'    background-color: #325930;',
'    color: white;',
'}',
'.button6 {',
'    background-color: white;',
'    color: black;',
'    border: 3px solid #21760c;',
'    border-radius: 50px;',
'    font-size: 17px;',
'    font-weight: 500;',
'}',
'',
'.button6:hover {',
'    background-color: rgb(1,126,140);',
'    background: linear-gradient(90deg, rgba(1,126,140,1) 0%, rgba(255,0,102,1) 100%); ',
'    color: white;',
'}',
'',
'',
'',
'',
'',
'',
'',
'',
'</style>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function addScript(url) {',
'     var script = document.createElement(''script'');',
'     script.type = ''application/javascript'';',
'     script.src = url;',
'     document.head.appendChild(script);',
' }',
'addScript(''https://unpkg.com/html2pdf.js@0.9.3/dist/html2pdf.js'');',
'//addScript(''https://raw.githack.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js'');',
'</script>',
'',
'<script type="text/javascript">',
'function getbangla(obj)',
'{',
'	var eng = obj.value;',
'	var tmp = "";',
'	var bng = "";',
'  	for (var i = 0; i < eng.length; i++) ',
'        {',
'	    tmp = eng.substr(i,1);',
'		',
'	    switch(tmp)',
'	    {',
'	    case "0":',
unistr('	      bng += "\09E6";'),
'	      break;',
'	    case "1":',
unistr('	      bng += "\09E7";'),
'	      break;',
'	    case "2":',
unistr('	      bng += "\09E8";'),
'	      break;',
'	    case "3":',
unistr('	      bng += "\09E9";'),
'	      break;',
'	    case "4":',
unistr('	      bng += "\09EA";'),
'	      break;',
'	    case "5":',
unistr('	      bng += "\09EB";'),
'	      break;',
'	    case "6":',
unistr('	      bng += "\09EC";'),
'	      break;',
'	    case "7":',
unistr('	      bng += "\09ED";'),
'	      break;',
'	    case "8":',
unistr('	      bng += "\09EE";'),
'	      break;',
'	    case "9":',
unistr('	      bng += "\09EF";'),
'	      break;',
'	    case "/":',
'	      bng += "/";',
'	      break;',
'	    case "-":',
'	      bng += "/";',
'	      break;',
'	    case "(":',
'	      bng += "(";',
'	      break;',
'	    case ")":',
'	      bng += ")";',
'	      break;',
'	    default:',
'	      bng += tmp;',
'	    }',
'	}',
'',
'	obj.value = bng;',
'}',
'',
'',
'function getbanglatoenglish(obj)',
'{',
'	var eng = obj.value;',
'	var tmp = "";',
'	var bng = "";',
'  	for (var i = 0; i < eng.length; i++) ',
'        {',
'	    tmp = eng.substr(i,1);',
'		',
'	    switch(tmp)',
'	    {',
unistr('	    case "\09E6":'),
'	      bng += "0";',
'	      break;',
unistr('	    case "\09E7":'),
'	      bng += "1";',
'	      break;',
unistr('	    case "\09E8":'),
'	      bng += "2";',
'	      break;',
unistr('	    case "\09E9":'),
'	      bng += "3";',
'	      break;',
unistr('	    case "\09EA":'),
'	      bng += "4";',
'	      break;',
unistr('	    case "\09EB":'),
'	      bng += "5";',
'	      break;',
unistr('	    case "\09EC":'),
'	      bng += "6";',
'	      break;',
unistr('	    case "\09ED":'),
'	      bng += "7";',
'	      break;',
unistr('	    case "\09EE":'),
'	      bng += "8";',
'	      break;',
unistr('	    case "\09EF":'),
'	      bng += "9";',
'	      break;',
'	    case "/":',
'	      bng += "/";',
'	      break;',
'	    case "-":',
'	      bng += "-";',
'	      break;',
'	    case "(":',
'	      bng += "(";',
'	      break;',
'	    case ")":',
'	      bng += ")";',
'	      break;',
'	    default:',
'	      bng += tmp;',
'	    }',
'	}',
'',
'	obj.value = bng;',
'}',
'</script>',
'',
'<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>',
'<script type="text/javascript" src="https://html2canvas.hertzen.com/dist/html2canvas.js"></script>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27489894765841502346)
,p_plug_name=>'Fotar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551633705629634415)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'',
'#nav_id {',
'    height: 33px;',
'    width: 377px;',
'    border-radius: 10px;',
'    color: black;',
'    font-size: 17px;',
'}',
'',
'#navbtnid {',
'    margin-right: 34px;',
'    margin-left: 5px;',
'    height: 34px;',
'    /* height: 29px; */',
'    padding-top: 7px;',
'    padding-left: 8px;',
'    background: chocolate;',
'    border-radius: 15px;',
'}',
'',
'',
'</style>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30269632850303952706)
,p_plug_name=>'Search Box'
,p_region_name=>'navigation_bar_custom_items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551633705629634415)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_return BOOLEAN;',
'   v_rowcount INTEGER;',
'   BEGIN',
'   v_return := apex_authentication.is_authenticated;',
'',
'   IF v_return THEN',
'       SELECT COUNT(*)',
'       INTO v_rowcount',
'       FROM apex_application_pages',
'       WHERE',
'           application_id = :APP_ID',
'           AND page_id = :APP_PAGE_ID',
'           AND page_mode = ''Normal''',
'           ;',
'     ',
'       v_return := (v_rowcount > 0);',
'   END IF;',
' ',
'   RETURN v_return;END;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13978783251179134335)
,p_name=>'P0_ORDER_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18376597887388789705)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20206488542440032340)
,p_name=>'P0_USER_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18376597887388789705)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27465725089081512414)
,p_name=>'P0_USERNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18376597887388789705)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30269632937612952707)
,p_name=>'P0_UNIVERSAL_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30269632850303952706)
,p_placeholder=>'Search......'
,p_post_element_text=>'<button id=''navbtnid''type="submit"><i class="fa fa-search"></i></button> '
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'SELECT entry_text from v_universal_search_app'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_05=>'10'
,p_attribute_09=>'2'
,p_attribute_10=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30269633095406952708)
,p_name=>'P0_FILLER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(30269632850303952706)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30269633151867952709)
,p_name=>'P0_URL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(30269632850303952706)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34893076218890641850)
,p_name=>'P0_ORDER_PRODUCT_OID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18376597887388789705)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27489894905157502348)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.fa-search'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27489895036566502349)
,p_event_id=>wwv_flow_imp.id(27489894905157502348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''f?p=&APP_ID.:23:&APP_SESSION.:::::'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30269633220052952710)
,p_name=>'Build Custom Navigation Bar'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30269633371614952711)
,p_event_id=>wwv_flow_imp.id(30269633220052952710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#navigation_bar_custom_items'').insertBefore($(''.t-Header-navBar''));'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30269633415104952712)
,p_name=>'Go'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_UNIVERSAL_SEARCH'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'ojupdate'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30269633521162952713)
,p_event_id=>wwv_flow_imp.id(30269633415104952712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_url VARCHAR2(4000);',
'   BEGIN',
'',
'   SELECT entry_target',
'   INTO v_url',
'   FROM v_universal_search_app',
'   WHERE entry_text=:P0_UNIVERSAL_SEARCH',
'   ;',
'',
'   v_url := REPLACE(v_url, ''&''||''SESSION.'', ''&SESSION.'');',
'   v_url := REPLACE(v_url, ''&''||''APP_SESSION.'', ''&APP_SESSION.'');',
'   v_url := REPLACE(v_url, ''&''||''DEBUG.'', ''&DEBUG.'');',
'   v_url := REPLACE(v_url, ''&''||''APP_ID.'', ''&APP_ID.'');',
'',
'   :P0_URL := APEX_UTIL.PREPARE_URL(',
'       p_url => v_url',
'   );',
'   :P0_UNIVERSAL_SEARCH := NULL;END;'))
,p_attribute_02=>'P0_UNIVERSAL_SEARCH'
,p_attribute_03=>'P0_URL,P0_UNIVERSAL_SEARCH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30269633614530952714)
,p_event_id=>wwv_flow_imp.id(30269633415104952712)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.page.cancelWarnOnUnsavedChanges();',
'apex.navigation.redirect($v(''P0_URL''));'))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14317178333766638643)
,p_name=>'Tooltip on Side Navigation Menu'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14317178400200638644)
,p_event_id=>wwv_flow_imp.id(14317178333766638643)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                $("#t_TreeNav").treeView("option", "tooltip", {',
'                    content: function(cb, node) {',
'                        return node.label;',
'                    }',
'                });',
'                $("#t_TreeNav").tooltip("option", "items", ".a-TreeView-content");'))
);
wwv_flow_imp.component_end;
end;
/
