prompt --application/pages/page_00062
begin
--   Manifest
--     PAGE: 00062
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
 p_id=>62
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Add Tooltip on Side Navigation Menu Oracle APEX'
,p_alias=>'ADD-TOOLTIP-ON-SIDE-NAVIGATION-MENU-ORACLE-APEX'
,p_step_title=>'Add Tooltip on Side Navigation Menu Oracle APEX'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14317178552305638645)
,p_plug_name=>'Add Tooltip on Side Navigation Menu Oracle APEX'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'<head>',
'<meta name="viewport" content="width=device-width, initial-scale=1">',
'<script src="https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js?lang=css&amp;skin=sunburst"></script>',
'<style>',
'body {',
'  font-family: Arial, Helvetica, sans-serif;',
'  margin: 0;',
'}',
'html {',
'  box-sizing: border-box;',
'}',
'  ',
'.about-section {',
'  color: black;',
'  padding: 7px 30px 7px 15px;',
'}',
'pre, code {',
'    position: relative;',
'    background: #13052e;		',
'  	border-radius: 15px 15px 15px 15px;',
'    display: block;',
'    margin-top: 0;',
'    margin-bottom: 1rem;',
'    overflow: auto;',
'    font-size: 1em;',
'    font-family: var(--bs-font-monospace);',
'    direction: ltr;',
'    unicode-bidi: bidi-override;  ',
'}',
'',
'.post-img {',
'    width: 100%;',
'    height: 370px;',
'  }',
'  ',
'</style>',
'</head>',
'',
'<body>',
'    <div class="about-section"> ',
'        <h1>Add Tooltip on Side Navigation Menu Oracle APEX</h1><br>',
'      ',
'       ',
'        <img class="post-img" alt="Tooltip on Side Navigation Menu Oracle APEX" border="2" color="black"',
'        src="https://blogger.googleusercontent.com/img/a/AVvXsEhO8VcFXPZZmMIx1Jv6s-PiPVkRnbMXquRjqvPdwhFuKStABX0PlRGQns3aLsb2Ut4rEbUOzT2-PDMe65GFkQbbTlvygeaEfzqjrzelW1sd2s5PokGgH2sUw8YM6VhFd_6KB1e8SpoC0CCtP9IFAY5bpdoUt84Yhvfhqz6OXO4Bsc_jgCzwPDlAzgE8"'
||' ',
'             title="Tooltip on Side Navigation Menu Oracle APEX" />',
'      ',
'      ',
'      ',
'            <h2>How Add Tooltip on Side Navigation Menu Oracle APEX.</h2>',
'            <p>In Apex, If You create an application with Side navigation menu and navigation menu name is too long in this case apex will not show full navigation name in this case tool tip will help you alot.</p>',
'            <p>There are simple steps to achieve this tool-tip functionality. <br>',
'                1. In Global Page, Create a Dynamic Action on Page Load. <br>',
unistr('                2. Select Action as \201CExecute JavaScript Code\201D and paste the below code</p>'),
'',
'        <pre class="prettyprint lang-scm">',
'                $("#t_TreeNav").treeView("option", "tooltip", {',
'                    content: function(cb, node) {',
'                        return node.label;',
'                    }',
'                });',
'                $("#t_TreeNav").tooltip("option", "items", ".a-TreeView-content");',
'',
'',
'',
'                DECLARE',
'    l_app            NUMBER := v (''APP_ID'');',
'    l_session        NUMBER := v (''APP_SESSION'');',
'',
'    CURSOR c_check_open IS',
'        SELECT 1',
'          FROM DUAL arh',
'         WHERE :P58_STATUS_VALUE IN (1,',
'                                     2,',
'                                     3,',
'                                     4,',
'                                     5,',
'                                     6);                      --Order Received',
'',
'    l_open_check     VARCHAR (10);',
'',
'    CURSOR c_check_assign IS',
'        SELECT 1',
'          FROM DUAL drh',
'         WHERE :P58_STATUS_VALUE IN (2,',
'                                     3,',
'                                     4,',
'                                     5,',
'                                     6);                             --Shipped',
'',
'    l_assign_check   VARCHAR (10);',
'',
'    CURSOR c_check_fwd IS',
'        SELECT 1',
'          FROM DUAL ph',
'         WHERE :P58_STATUS_VALUE IN (3,',
'                                     4,',
'                                     5,',
'                                     6);                      --Carrier Pickup',
'',
'    l_fwd_check      VARCHAR (10);',
'',
'    CURSOR c_check_cls IS',
'        SELECT 1',
'          FROM DUAL cih',
'         WHERE :P58_STATUS_VALUE IN (4, 5, 6);                   --Appointment',
'',
'    l_cls_check      VARCHAR (10);',
'',
'    CURSOR c_check_arr IS',
'        SELECT 1',
'          FROM DUAL sss',
'         WHERE :P58_STATUS_VALUE IN (5, 6);              --Arrived at Customer',
'',
'    l_cls_arr        VARCHAR (10);',
'',
'    CURSOR c_check_del IS',
'        SELECT 1',
'          FROM DUAL ccc',
'         WHERE :P58_STATUS_VALUE = 6;                              --Delivered',
'',
'    l_cls_del        VARCHAR (10);',
'BEGIN',
'    HTP.p (''<ol class="progtrckr" data-progtrckr-steps="5">'');',
'',
'    --htp.p(''<ol >'');',
'    OPEN c_check_open;',
'',
'    FETCH c_check_open INTO l_open_check;',
'',
'    IF c_check_open%FOUND',
'    THEN',
'        HTP.p (',
'               ''<div class="arrow-steps clearfix">',
'          <div class="step current"> <span><a href="''',
'            || APEX_UTIL.prepare_url (',
'                   p_url      =>',
'                          ''f?p=''',
'                       || l_app',
'                       || '':186:''',
'                       || l_session',
'                       || ''::::P186_REQ_NO:''',
'                       || :p185_incident,',
'                   p_dialog   => ''null'')',
'            || ''"><b>Order Received</b></a></span> </div>'');',
'    ELSE',
'        HTP.p (''<div class="arrow-steps clearfix">',
'          <div class="step"> <span><b>Order Received</b></span> </div>'');',
'    END IF;',
'',
'    CLOSE c_check_open;',
'',
'    OPEN c_check_assign;',
'',
'    FETCH c_check_assign INTO l_assign_check;',
'',
'    IF c_check_assign%FOUND',
'    THEN',
'        HTP.p (',
'               ''<div class="arrow-steps clearfix">',
'          <div class="step current"> <span><a href="''',
'            || APEX_UTIL.prepare_url (',
'                   p_url      =>',
'                          ''f?p=''',
'                       || l_app',
'                       || '':186:''',
'                       || l_session',
'                       || ''::::P186_REQ_NO:''',
'                       || :p185_incident,',
'                   p_dialog   => ''null'')',
'            || ''"><b>Shipped</b></a></span> </div>'');',
'    ELSE',
'        HTP.p (''<div class="arrow-steps clearfix">',
'          <div class="step"> <span><b>Shipped</b></span> </div>'');',
'    END IF;',
'',
'    CLOSE c_check_assign;',
'',
'',
'    OPEN c_check_fwd;',
'',
'    FETCH c_check_fwd INTO l_fwd_check;',
'',
'    IF c_check_fwd%FOUND',
'    THEN',
'        --for i in l_fwd_check.first..l_fwd_check.last loop',
'        HTP.p (',
'               ''<div class="arrow-steps clearfix">',
'          <div class="step current"> <span><a href="''',
'            || APEX_UTIL.prepare_url (',
'                   p_url      =>',
'                          ''f?p=''',
'                       || l_app',
'                       || '':186:''',
'                       || l_session',
'                       || ''::::P186_REQ_NO:''',
'                       || :p185_incident,',
'                   p_dialog   => ''null'')',
'            || ''"><b>Carrier Pickup</b></a></span> </div>'');',
'    -- end loop;',
'    ELSE',
'        HTP.p (''<div class="arrow-steps clearfix">',
'          <div class="step"> <span><b>Carrier Pickup</b></span> </div>'');',
'    END IF;',
'',
'    CLOSE c_check_fwd;',
'',
'    OPEN c_check_cls;',
'',
'    FETCH c_check_cls INTO l_cls_check;',
'',
'    IF c_check_cls%FOUND',
'    THEN',
'        HTP.p (',
'               ''<div class="arrow-steps clearfix">',
'          <div class="step current"> <span><a href="''',
'            || APEX_UTIL.prepare_url (',
'                   p_url      =>',
'                          ''f?p=''',
'                       || l_app',
'                       || '':186:''',
'                       || l_session',
'                       || ''::::P186_REQ_NO:''',
'                       || :p185_incident,',
'                   p_dialog   => ''null'')',
'            || ''"><b>Appointment</b></a></span> </div>'');',
'    ELSE',
'        HTP.p (''<div class="arrow-steps clearfix">',
'          <div class="step"> <span><b>Appointment</b></span> </div>'');',
'    END IF;',
'',
'    CLOSE c_check_cls;',
'',
'    OPEN c_check_arr;',
'',
'    FETCH c_check_arr INTO l_cls_arr;',
'',
'    IF c_check_arr%FOUND',
'    THEN',
'        HTP.p (',
'               ''<div class="arrow-steps clearfix">',
'          <div class="step current"> <span><a href="''',
'            || APEX_UTIL.prepare_url (',
'                   p_url      =>',
'                          ''f?p=''',
'                       || l_app',
'                       || '':186:''',
'                       || l_session',
'                       || ''::::P186_REQ_NO:''',
'                       || :p185_incident,',
'                   p_dialog   => ''null'')',
'            || ''"><b>Arrived at Customer</b></a></span> </div>'');',
'    ELSE',
'        HTP.p (''<div class="arrow-steps clearfix">',
'          <div class="step"> <span><b>Arrived at Customer</b></span> </div>'');',
'    END IF;',
'',
'    CLOSE c_check_arr;',
'',
'',
'    OPEN c_check_del;',
'',
'    FETCH c_check_del INTO l_cls_del;',
'',
'    IF c_check_del%FOUND',
'    THEN',
'        HTP.p (',
'               ''<div class="arrow-steps clearfix">',
'          <div class="step current"> <span><a href="''',
'            || APEX_UTIL.prepare_url (',
'                   p_url      =>',
'                          ''f?p=''',
'                       || l_app',
'                       || '':186:''',
'                       || l_session',
'                       || ''::::P186_REQ_NO:''',
'                       || :p185_incident,',
'                   p_dialog   => ''null'')',
'            || ''"><b>Delivered</b></a></span> </div>'');',
'    ELSE',
'        HTP.p (''<div class="arrow-steps clearfix">',
'          <div class="step"> <span><b>Delivered</b></span> </div>'');',
'    END IF;',
'',
'    CLOSE c_check_del;',
'',
'    HTP.p (''</ol>'');',
'END;',
'        </pre>',
'     </div>',
'</body>',
'</html>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(34811899746452690102)
,p_name=>'Tooltip on Side Navigation Menu'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     SELECT TRUNC(SYSDATE, ''MONTH'') - 1 + LEVEL AS curent_month_days,',
'            TO_CHAR(TRUNC(TO_DATE(sysdate, ''DD-Mon-YYYY HH24:MI:SS'' )),''DD-Mon-YYYY HH24:MI:SS'') result,',
'            SYSTIMESTAMP as CURRENT_TIME,',
'            SESSIONTIMEZONE, CURRENT_TIMESTAMP as SESSION_CURRENT_TIME',
'       FROM dual',
'    CONNECT BY TRUNC(SYSDATE, ''MONTH'') - 1 + LEVEL <= LAST_DAY(SYSDATE)'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(34812500350632690108)
,p_query_column_id=>1
,p_column_alias=>'CURENT_MONTH_DAYS'
,p_column_display_sequence=>10
,p_column_heading=>'Curent Month Days'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34812500405823690109)
,p_query_column_id=>2
,p_column_alias=>'RESULT'
,p_column_display_sequence=>20
,p_column_heading=>'Result'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34812500555753690110)
,p_query_column_id=>3
,p_column_alias=>'CURRENT_TIME'
,p_column_display_sequence=>30
,p_column_heading=>'Current Time'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34812500682434690111)
,p_query_column_id=>4
,p_column_alias=>'SESSIONTIMEZONE'
,p_column_display_sequence=>40
,p_column_heading=>'Sessiontimezone'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34812500704805690112)
,p_query_column_id=>5
,p_column_alias=>'SESSION_CURRENT_TIME'
,p_column_display_sequence=>50
,p_column_heading=>'Session Current Time'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34812500215589690107)
,p_plug_name=>'Add Tooltip on Side Navigation Menu Oracle APEX'
,p_parent_plug_id=>wwv_flow_imp.id(34811899746452690102)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'<head>',
'<meta name="viewport" content="width=device-width, initial-scale=1">',
'<style>',
'body {',
'  font-family: Arial, Helvetica, sans-serif;',
'  margin: 0;',
'}',
'html {',
'  box-sizing: border-box;',
'}',
'.about-section {',
'  padding: 7px 30px 7px 35px;',
'  background-color: #474e5d;',
'  color: white;',
'}',
'pre {',
'    position: relative;',
'    background: #13052e;',
'    color: var(--hbs-on-background);',
'    padding: 1rem;',
'    border-radius: 0.25rem;',
'    width: 100%;',
'    border-radius: 26px;',
'    display: block;',
'    margin-top: 0;',
'    margin-bottom: 1rem;',
'    overflow: auto;',
'    font-size: .875em;',
'}',
'pre, code, kbd, samp {',
'    font-family: var(--bs-font-monospace);',
'    font-size: 1em;',
'    direction: ltr;',
'    unicode-bidi: bidi-override;',
'}',
'</style>',
'</head>',
'',
'<body>',
'    <div class="about-section"> ',
'        <h1>Add Tooltip on Side Navigation Menu Oracle APEX</h1><br>',
'            <h2>How Add Tooltip on Side Navigation Menu Oracle APEX.</h2>',
'            <p>In Apex, If You create an application with Side navigation menu and navigation menu name is too long in this case apex will not show full navigation name in this case tool tip will help you alot.</p>',
'            <p>There are simple steps to achieve this tool-tip functionality. <br>',
'                1. In Global Page, Create a Dynamic Action on Page Load. <br>',
unistr('                2. Select Action as \201CExecute JavaScript Code\201D and paste the below code</p>'),
'',
'        <pre style="color:#f8f8f2;background-color:#272822;-moz-tab-size:2;-o-tab-size:2;tab-size:2;">',
'            <code class="language-javascript" data-lang="javascript">',
'                $("#t_TreeNav").treeView("option", "tooltip", {',
'                    content: function(cb, node) {',
'                        return node.label;',
'                    }',
'                });',
'                $("#t_TreeNav").tooltip("option", "items", ".a-TreeView-content");',
'            </code>',
'        </pre>',
'     </div>',
'</body>',
'</html>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34811899821139690103)
,p_name=>'Tooltip on Side Navigation Menu'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34811899990409690104)
,p_event_id=>wwv_flow_imp.id(34811899821139690103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'$("#t_TreeNav").treeView("option", "tooltip", {',
'    content: function(cb, node) {',
'        return node.label;',
'    }',
'} );',
'$("#t_TreeNav").tooltip("option", "items", ".a-TreeView-content");',
''))
);
wwv_flow_imp.component_end;
end;
/
