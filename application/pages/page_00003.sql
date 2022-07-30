prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Classic report print '
,p_alias=>'CLASSIC-REPORT-PRINT'
,p_step_title=>'Classic report print '
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'var cookieName = "page_scroll";',
'var expdays = 365;',
'function setCookie(name, value, expires, path, domain, secure) {',
'    if (!expires) expires = new Date();',
'    document.cookie = name + "=" + escape(value) + ',
'        ((expires == null) ? "" : "; expires=" + expires.toGMTString()) +',
'        ((path    == null) ? "" : "; path=" + path) +',
'        ((domain  == null) ? "" : "; domain=" + domain) +',
'        ((secure  == null) ? "" : "; secure");',
'}',
'function getCookie(name) {',
'    var arg = name + "=";',
'    var alen = arg.length;',
'    var clen = document.cookie.length;',
'    var i = 0;',
'    while (i < clen) {',
'        var j = i + alen;',
'        if (document.cookie.substring(i, j) == arg) {',
'            return getCookieVal(j);',
'        }',
'        i = document.cookie.indexOf(" ", i) + 1;',
'        if (i == 0) break;',
'    }',
'    return null;',
'}',
'function getCookieVal(offset) {',
'    var endstr = document.cookie.indexOf(";", offset);',
'    if (endstr == -1) endstr = document.cookie.length;',
'    return unescape(document.cookie.substring(offset, endstr));',
'}',
'/*',
'function deleteCookie(name, path, domain) {',
'    document.cookie = name + "=" +',
'        ((path   == null) ? "" : "; path=" + path) +',
'        ((domain == null) ? "" : "; domain=" + domain) +',
'        "; expires=Thu, 01-Jan-00 00:00:01 GMT";',
'}',
'*/',
'function saveScroll() {',
'    var expdate = new Date();',
'    expdate.setTime(expdate.getTime() + (expdays*24*60*60*1000)); // expiry date',
'',
'    var x = document.pageXOffset || document.body.scrollLeft;',
'    var y = document.pageYOffset || document.body.scrollTop;',
'    var data = x + "_" + y;',
'    setCookie(cookieName, data, expdate);',
'}',
'function loadScroll() {',
'    var inf = getCookie(cookieName);',
'    if (!inf) { return; }',
'    var ar = inf.split("_");',
'    if (ar.length == 2) {',
'        window.scrollTo(parseInt(ar[0]), parseInt(ar[1]));',
'    }',
'}',
'/*',
'function autoRefresh() {',
'        window.location = window.location.href;',
'    }',
'    setInterval(''autoRefresh()'', 120000);',
' */   ',
'</script>'))
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function load_save_scroll() {',
'    // get scrolltop value',
'    var doc = document.documentElement;',
'    var top = (window.pageYOffset || doc.scrollTop)  - (doc.clientTop || 0);',
'    // make http get request',
'    var xhr = new XMLHttpRequest();',
'    xhr.open(''GET'', ''/my_reload_div'', true);',
'    xhr.send();',
'    xhr.onreadystatechange = function() { // (3)',
'        if (xhr.readyState != 4) return;',
'        // push xhr.responseText to ''my_div'' element',
'        // restore scrolltop',
'        window.scrollTo(0,top);',
'    }',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*onload="loadScroll()" onunload="saveScroll()" */',
'',
'onload="load_save_scroll()"',
'',
'$(''#searchid'').keyup(function() {var searchVal = document.getElementById("searchid").value ;',
'',
'$s("P3_MYINPUT", searchVal);});',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3867659684895821920)
,p_plug_name=>'Report Print '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'<p id="demo"></p>',
'<script>',
' var x=document.getElementById("demo");',
'        function getLocation()',
'         {',
'        if (navigator.geolocation)',
'        {',
'        navigator.geolocation.getCurrentPosition(showPosition);',
'        }',
'        else{x.innerHTML="Geolocation is not supported by this browser.";}',
'        }',
'        function showPosition(position)',
'        {',
'        x.innerHTML="Latitude: " + position.coords.latitude + ',
'        "<br>Longitude: " + position.coords.longitude;  ',
'        }',
'        getLocation()',
'</script>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5261949455024368608)
,p_plug_name=>'Documentation'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'<!DOCTYPE html>',
'<html>',
'<body >',
'    <div style="margin-left: 88px;">',
'        <h3>',
'            <b>Other Video Tutorial:</b> <a href="https://www.youtube.com/apexlessons">Click Here for Video Tutorial</a> <br>',
'            <b>Documentation: </b> <a href="http://www.apexlessons.com/tabular-form-insert-data-using-loop">Click Here for Documentation</a><br>',
'            <b>Facebook: </b> <a href="https://www.facebook.com/apexlessons/">Like Facebook Page</a><br>',
'        </h3>',
'        <h1>Do not forget to Subscribe</h1>',
'    </div>',
'</body>',
'</html>',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(14676122230430593401)
,p_name=>'Report Print '
,p_region_name=>'p14_emps'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.OID,',
'       c.COURT_ID,',
'       c.COURT_NM,',
'       (select s.STATUS from IS_ACTIVATE s where s.oid = c.IS_ACTIVE) IS_ACTIVE,',
'       (select d.DIVI_NM from DIVISION d where d.oid = c.DIVI_OID) as DIVI_OID,',
'       (select u.USER_TYPE from MY_USERS u where UPPER(u.USERNAME) = UPPER(:APP_USER)) as USER_TYPE,',
'',
'       CASE',
'      WHEN (select u.USER_TYPE from MY_USERS u where UPPER(u.USERNAME) = UPPER(:APP_USER))  = 1 THEN',
'        ''Edit''',
'      ELSE ''''',
'    END Edit',
'        from COURT c',
'        where c.COURT_ID=nvl(:P3_MYINPUT, c.COURT_ID)',
'',
' --     where   upper(substr(c.COURT_ID,1, nvl(length(:P3_MYINPUT), length(c.COURT_ID)))) = upper(nvl(:P3_MYINPUT, c.COURT_ID))',
'   --  and upper(substr(c.COURT_NM,1, nvl(length(:P3_MYINPUT), length(c.COURT_NM)))) = upper(nvl(:P3_MYINPUT, c.COURT_NM))'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P3_MYINPUT'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14551694827812634439)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27489893605456502335)
,p_query_column_id=>1
,p_column_alias=>'OID'
,p_column_display_sequence=>10
,p_column_heading=>'Oid'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27489893730287502336)
,p_query_column_id=>2
,p_column_alias=>'COURT_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Court Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27489893855898502337)
,p_query_column_id=>3
,p_column_alias=>'COURT_NM'
,p_column_display_sequence=>30
,p_column_heading=>'Court Nm'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27489893989774502338)
,p_query_column_id=>4
,p_column_alias=>'IS_ACTIVE'
,p_column_display_sequence=>40
,p_column_heading=>'Is Active'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27489894053492502339)
,p_query_column_id=>5
,p_column_alias=>'DIVI_OID'
,p_column_display_sequence=>50
,p_column_heading=>'Divi Oid'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27489894157992502340)
,p_query_column_id=>6
,p_column_alias=>'USER_TYPE'
,p_column_display_sequence=>60
,p_column_heading=>'User Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27489894209308502341)
,p_query_column_id=>7
,p_column_alias=>'EDIT'
,p_column_display_sequence=>70
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14676122987789593408)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14676122230430593401)
,p_button_name=>'Print'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(14551729993831634454)
,p_button_image_alt=>'Print'
,p_button_position=>'ABOVE_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27489894380445502342)
,p_name=>'P3_MYINPUT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14676122230430593401)
,p_prompt=>'Myinput'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14676123042495593409)
,p_name=>'Print'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14676122987789593408)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14676123199924593410)
,p_event_id=>wwv_flow_imp.id(14676123042495593409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//// Collapse Left Navigation Bar If It Was Expanded ////',
'var navCollapsed = 0;',
'if ($("body").hasClass("js-navExpanded")) {',
'    $("#t_Button_navControl").click();',
'    navCollapsed = 1;',
'};',
'setTimeout(3000);',
'',
'//////// Hide ////////',
'//Hide Navigation Bar List',
'$("#t_Header").hide();',
'//Hide Navigation Menu',
'$("#t_Body_nav").hide();',
'//Hide Breadcrumb',
'$("#t_Body_title").hide();',
'//Hide Content Offset',
'$("#t_Body_content_offset").hide();',
'//Hide Report Column Edit Link',
'$(".apex-edit-page").hide();',
'//Hide Report Download Links',
'$(".t-Report-links").hide();',
'//Hide Buttons',
'$(".t-Button").hide();',
'//Hide Footer',
'$(".t-Footer").hide();',
'',
'//////// Browser Print ////////',
'window.print();',
'//////// Show ////////',
'',
'//Show Navigation Bar List',
'$("#t_Header").show();',
'//Show Navigation Menu',
'$("#t_Body_nav").show();',
'//Show Breadcrumb',
'$("#t_Body_title").show();',
'//Show Content Offset',
'$("#t_Body_content_offset").show();',
'//Show Report Column Edit Link',
'$(".apex-edit-page").show();',
'//Show Report Download Links',
'$(".t-Report-links").show();',
'//Show Buttons',
'$(".t-Button").show();',
'//Show Footer',
'$(".t-Footer").show();',
'',
'//// Expand Left Navigation Bar If It Was Colapsed ////',
'if ( navCollapsed == 1 ) {',
'    $("#t_Button_navControl").click();',
'}'))
);
wwv_flow_imp.component_end;
end;
/
