prompt --application/pages/page_00052
begin
--   Manifest
--     PAGE: 00052
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
 p_id=>52
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Excel File From Classic Report'
,p_alias=>'EXCEL-FILE-FROM-CLASSIC-REPORT'
,p_step_title=>'Excel File From Classic Report'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'https://drive.google.com/uc?export=view&amp;id=1DlmoT_Qtqpaeyo2198gkEGZdIMZPh7ye'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.responsive-table {',
'  margin: 0 0;',
'  min-width: 300px;',
'}',
'.responsive-table th {',
'  display: none;',
'}',
'.responsive-table td {',
'  display: block;',
'}',
'.responsive-table td:first-child {',
'  padding-top: .5em;',
'}',
'.responsive-table td:last-child {',
'  padding-bottom: .5em;',
'}',
'.responsive-table td:before {',
'  content: attr(data-th) ": ";',
'  font-weight: bold;',
'  width: 6.5em;',
'  display: inline-block;',
'}',
'@media (min-width: 480px) {',
'  .responsive-table td:before {',
'    display: none;',
'  }',
'}',
'.responsive-table th, .responsive-table td {',
'  text-align: left;',
'}',
'@media (min-width: 480px) {',
'  .responsive-table th, .responsive-table td {',
'    display: table-cell;',
'    padding: .25em .5em;',
'  }',
'  .responsive-table th:first-child, .responsive-table td:first-child {',
'    padding-left: 0;',
'  }',
'  .responsive-table th:last-child, .responsive-table td:last-child {',
'    padding-right: 0;',
'  }',
'}',
'.responsive-table {',
'  /*background: #34495E;',
'  color: #fff;*/',
'  border-radius: .4em;',
'  overflow: hidden;',
'}',
'.responsive-table tr {',
'  border-color: #46637f;',
'}',
'@media (min-width: 480px) {',
'  .responsive-table th, .responsive-table td {',
'    padding: 1em !important;',
'  }',
'}',
'.responsive-table th, .responsive-table td:before {',
'  color: #d55;',
'}',
'.responsive-table th, .responsive-table td {',
'  margin: .5em 1em;',
'}',
'',
'',
'',
'',
'/*',
'#testid {',
'        background: url(#APP_FILES#06.jpg);',
'    }',
'*/',
'',
'.t-TreeNav--styleA .a-TreeView-node--topLevel ul, .t-TreeNav--styleB .a-TreeView-node--topLevel ul {',
'    background-color: rgb(104 12 21)!important;',
'    --a-treeview-node-padding-y: 0.75rem;',
'}',
'',
'.t-Header-branding{',
'background: rgb(200,86,98)!important;',
'background: radial-gradient(circle, rgba(200,86,98,1) 0%, rgba(130,20,32,1) 45%, rgba(102,9,19,1) 61%, rgba(84,7,16,1) 77%, rgba(51,2,7,1) 90%) !important;',
'    }',
'',
'.t-TreeNav {',
'background: rgb(200,86,98)!important;',
'background: radial-gradient(circle, rgba(200,86,98,1) 0%, rgba(130,20,32,1) 45%, rgba(102,9,19,1) 61%, rgba(84,7,16,1) 77%, rgba(51,2,7,1) 90%) !important;',
'    }',
'',
'.t-TreeNav .a-TreeView-node--topLevel .a-TreeView-row.is-current, .t-TreeNav .a-TreeView-node--topLevel .a-TreeView-row.is-current--top.is-selected, .t-TreeNav .a-TreeView-node--topLevel .a-TreeView-row.is-selected {',
'    background-color: #2e0308 !important;',
'}',
'',
'.t-TreeNav .a-TreeView-node--topLevel .a-TreeView-row.is-hover{',
'       background-color: #2e0308 !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_comment=>'#APP_FILES#xlsx.full.min.js.download'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729155104'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9005379876329881201)
,p_plug_name=>'Create Excel File From Classic Report in Oracle Apex Using Java Script'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'	<head>',
'		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">',
'			<title>SheetJS JS-XLSX In-Browser HTML Table Export Demo</title>',
'			<style>',
'.xport, .btn {',
' display: inline;',
' text-align:center;',
'}',
'a { text-decoration: none }',
'#data-table, #data-table th, #data-table td { border: 1px solid black }',
'</style>',
'			<style type="text/css"></style>',
'		</head>',
'		<body>',
'			<!--[if gt IE 9]-->',
'			<script type="text/javascript" src="#APP_IMAGES#download/xlsx.full.min.js.download"></script>',
'			<![endif]-->',
'			<!--[if lte IE 9]>',
'			<script type="text/javascript" src="shim.min.js"></script>',
'			<script type="text/javascript" src="xlsx.full.min.js"></script>',
'			<script type="text/javascript" src="Blob.js"></script>',
'			<script type="text/javascript" src="FileSaver.js"></script>',
'			<![endif]-->',
'			<script>',
'function doit(type, fn, dl) {',
' var elt = document.getElementById(''testid'');',
' var wb = XLSX.utils.table_to_book(elt, {sheet:"Sheet JS"});',
' return dl ?',
'  XLSX.write(wb, {bookType:type, bookSST:true, type: ''base64''}) :',
'  XLSX.writeFile(wb, fn || (''Downloaded File.'' + (type || ''xlsx'')));',
'}',
'</script>',
'    <pre>',
'    	<b>Export it!</b>',
'    </pre>',
'    <table id="xport">',
'    	<tbody>',
'    		<tr>',
'    			<td>',
'    				<pre>XLSX Excel 2007+ XML</pre>',
'    			</td>',
'    			<td>',
'    				<p id="xportxlsx" class="xport">',
'    					<input type="submit" value="Export to XLSX!" onclick="doit(&#39;xlsx&#39;);">',
'    					</p>',
'    					<p id="xlsxbtn" class="btn"></p>',
'    			</td>',
'    		</tr>',
'    		<tr>',
'    			<td>',
'    				<pre>XLSB Excel 2007+ Binary</pre>',
'    			</td>',
'    			<td>',
'    				<p id="xportxlsb" class="xport">',
'    					<input type="submit" value="Export to XLSB!" onclick="doit(&#39;xlsb&#39;);">',
'    					</p>',
'    					<p id="xlsbbtn" class="btn"></p>',
'    				</td>',
'    			</tr>',
'    		<tr>',
'    			<td>',
'    				<pre>Comma Separated Values</pre>',
'    			</td>',
'    			<td>',
'    					<p id="xportcsv" class="xport">',
'    						<input type="submit" value="Export to CSV!" onclick="doit(&#39;csv&#39;);">',
'    						</p>',
'    						<p id="csvbtn" class="btn"></p>',
'    			</td>',
'    		</tr>',
'    	</tbody>',
'    </table>',
'</body>',
'</html>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9005379972866881202)
,p_name=>'Export Excel File From Classic Report'
,p_region_name=>'testid'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * ',
'  from BLOG_POST'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P50_TABLE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(41042067740577631109)
,p_query_num_rows=>15000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31358695997384666140)
,p_query_column_id=>1
,p_column_alias=>'POST_OID'
,p_column_display_sequence=>10
,p_column_heading=>'Post Oid'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31358696055033666141)
,p_query_column_id=>2
,p_column_alias=>'SL_NO'
,p_column_display_sequence=>20
,p_column_heading=>'Sl No'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31358696137203666142)
,p_query_column_id=>3
,p_column_alias=>'POST_DESCRIPTION'
,p_column_display_sequence=>30
,p_column_heading=>'Post Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31358696244873666143)
,p_query_column_id=>4
,p_column_alias=>'POST_NAME'
,p_column_display_sequence=>40
,p_column_heading=>'Post Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31358696349104666144)
,p_query_column_id=>5
,p_column_alias=>'D'
,p_column_display_sequence=>50
,p_column_heading=>'D'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9005381830256881221)
,p_plug_name=>'Add Music Into Oracle Apex'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'<body>',
'',
'<h1>The audio autoplay attribute</h1>',
'',
'<p>Click on the play button to play a sound: autoplay </p>',
'',
'<audio controls  >',
'  <source src="#APP_FILES#bensound-adventure.mp3" type="audio/ogg">',
'  <source src="#APP_FILES#bensound-adventure.mp3" type="audio/mpeg">',
'  Your browser does not support the audio element.',
'</audio>',
'',
'</body>',
'</html>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9005381922840881222)
,p_name=>'How to find user session details in Oracle Apex'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM',
'APEX_WORKSPACE_SESSIONS',
'WHERE',
'APEX_WORKSPACE_SESSIONS.SESSION_CREATED >= SysDate - 1'))
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
 p_id=>wwv_flow_imp.id(9005382020450881223)
,p_query_column_id=>1
,p_column_alias=>'WORKSPACE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Workspace Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9005382142513881224)
,p_query_column_id=>2
,p_column_alias=>'WORKSPACE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Workspace Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9005382238012881225)
,p_query_column_id=>3
,p_column_alias=>'WORKSPACE_DISPLAY_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Workspace Display Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9005382351145881226)
,p_query_column_id=>4
,p_column_alias=>'APEX_SESSION_ID'
,p_column_display_sequence=>40
,p_column_heading=>'Apex Session Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9005382456132881227)
,p_query_column_id=>5
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>50
,p_column_heading=>'User Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9005382526554881228)
,p_query_column_id=>6
,p_column_alias=>'REMOTE_ADDR'
,p_column_display_sequence=>60
,p_column_heading=>'Remote Addr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9005382645429881229)
,p_query_column_id=>7
,p_column_alias=>'SESSION_CREATED'
,p_column_display_sequence=>70
,p_column_heading=>'Session Created'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9005382714167881230)
,p_query_column_id=>8
,p_column_alias=>'SESSION_IDLE_TIMEOUT_ON'
,p_column_display_sequence=>80
,p_column_heading=>'Session Idle Timeout On'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9005382827984881231)
,p_query_column_id=>9
,p_column_alias=>'SESSION_LIFE_TIMEOUT_ON'
,p_column_display_sequence=>90
,p_column_heading=>'Session Life Timeout On'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9005382961947881232)
,p_query_column_id=>10
,p_column_alias=>'SESSION_MAX_IDLE_SEC'
,p_column_display_sequence=>100
,p_column_heading=>'Session Max Idle Sec'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9005383081329881233)
,p_query_column_id=>11
,p_column_alias=>'SESSION_TIME_ZONE'
,p_column_display_sequence=>110
,p_column_heading=>'Session Time Zone'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9005383150568881234)
,p_query_column_id=>12
,p_column_alias=>'SESSION_LANG'
,p_column_display_sequence=>120
,p_column_heading=>'Session Lang'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9005383288120881235)
,p_query_column_id=>13
,p_column_alias=>'SESSION_TERRITORY'
,p_column_display_sequence=>130
,p_column_heading=>'Session Territory'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9005383373982881236)
,p_query_column_id=>14
,p_column_alias=>'SESSION_DEBUG_LEVEL'
,p_column_display_sequence=>140
,p_column_heading=>'Session Debug Level'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9005383414798881237)
,p_query_column_id=>15
,p_column_alias=>'SESSION_TRACE_MODE'
,p_column_display_sequence=>150
,p_column_heading=>'Session Trace Mode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9005383511427881238)
,p_query_column_id=>16
,p_column_alias=>'SESSION_AUTHENTICATION_ID'
,p_column_display_sequence=>160
,p_column_heading=>'Session Authentication Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9005383638846881239)
,p_query_column_id=>17
,p_column_alias=>'SESSION_TENANT_ID'
,p_column_display_sequence=>170
,p_column_heading=>'Session Tenant Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9005383706210881240)
,p_query_column_id=>18
,p_column_alias=>'SESSION_AUTHENTICATION_NAME'
,p_column_display_sequence=>180
,p_column_heading=>'Session Authentication Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(40801682649169353542)
,p_name=>'Tables from connected schema.'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'SELECT * FROM USER_TABLES'
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
 p_id=>wwv_flow_imp.id(41035796733363336711)
,p_query_column_id=>1
,p_column_alias=>'TABLE_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Table Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035796866489336712)
,p_query_column_id=>2
,p_column_alias=>'TABLESPACE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Tablespace Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035796966982336713)
,p_query_column_id=>3
,p_column_alias=>'CLUSTER_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Cluster Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035797067571336714)
,p_query_column_id=>4
,p_column_alias=>'IOT_NAME'
,p_column_display_sequence=>40
,p_column_heading=>'Iot Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035797160451336715)
,p_query_column_id=>5
,p_column_alias=>'STATUS'
,p_column_display_sequence=>50
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035797210463336716)
,p_query_column_id=>6
,p_column_alias=>'PCT_FREE'
,p_column_display_sequence=>60
,p_column_heading=>'Pct Free'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035797310295336717)
,p_query_column_id=>7
,p_column_alias=>'PCT_USED'
,p_column_display_sequence=>70
,p_column_heading=>'Pct Used'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035797415422336718)
,p_query_column_id=>8
,p_column_alias=>'INI_TRANS'
,p_column_display_sequence=>80
,p_column_heading=>'Ini Trans'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035797512784336719)
,p_query_column_id=>9
,p_column_alias=>'MAX_TRANS'
,p_column_display_sequence=>90
,p_column_heading=>'Max Trans'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035797671895336720)
,p_query_column_id=>10
,p_column_alias=>'INITIAL_EXTENT'
,p_column_display_sequence=>100
,p_column_heading=>'Initial Extent'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035797763883336721)
,p_query_column_id=>11
,p_column_alias=>'NEXT_EXTENT'
,p_column_display_sequence=>110
,p_column_heading=>'Next Extent'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035797874754336722)
,p_query_column_id=>12
,p_column_alias=>'MIN_EXTENTS'
,p_column_display_sequence=>120
,p_column_heading=>'Min Extents'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035797941156336723)
,p_query_column_id=>13
,p_column_alias=>'MAX_EXTENTS'
,p_column_display_sequence=>130
,p_column_heading=>'Max Extents'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035798017902336724)
,p_query_column_id=>14
,p_column_alias=>'PCT_INCREASE'
,p_column_display_sequence=>140
,p_column_heading=>'Pct Increase'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035798126191336725)
,p_query_column_id=>15
,p_column_alias=>'FREELISTS'
,p_column_display_sequence=>150
,p_column_heading=>'Freelists'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035798219684336726)
,p_query_column_id=>16
,p_column_alias=>'FREELIST_GROUPS'
,p_column_display_sequence=>160
,p_column_heading=>'Freelist Groups'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035798352313336727)
,p_query_column_id=>17
,p_column_alias=>'LOGGING'
,p_column_display_sequence=>170
,p_column_heading=>'Logging'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035798470558336728)
,p_query_column_id=>18
,p_column_alias=>'BACKED_UP'
,p_column_display_sequence=>180
,p_column_heading=>'Backed Up'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035798535235336729)
,p_query_column_id=>19
,p_column_alias=>'NUM_ROWS'
,p_column_display_sequence=>190
,p_column_heading=>'Num Rows'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035798686211336730)
,p_query_column_id=>20
,p_column_alias=>'BLOCKS'
,p_column_display_sequence=>200
,p_column_heading=>'Blocks'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035798749366336731)
,p_query_column_id=>21
,p_column_alias=>'EMPTY_BLOCKS'
,p_column_display_sequence=>210
,p_column_heading=>'Empty Blocks'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035798810133336732)
,p_query_column_id=>22
,p_column_alias=>'AVG_SPACE'
,p_column_display_sequence=>220
,p_column_heading=>'Avg Space'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035798952212336733)
,p_query_column_id=>23
,p_column_alias=>'CHAIN_CNT'
,p_column_display_sequence=>230
,p_column_heading=>'Chain Cnt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035799045439336734)
,p_query_column_id=>24
,p_column_alias=>'AVG_ROW_LEN'
,p_column_display_sequence=>240
,p_column_heading=>'Avg Row Len'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035799163625336735)
,p_query_column_id=>25
,p_column_alias=>'AVG_SPACE_FREELIST_BLOCKS'
,p_column_display_sequence=>250
,p_column_heading=>'Avg Space Freelist Blocks'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035799238103336736)
,p_query_column_id=>26
,p_column_alias=>'NUM_FREELIST_BLOCKS'
,p_column_display_sequence=>260
,p_column_heading=>'Num Freelist Blocks'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035799368148336737)
,p_query_column_id=>27
,p_column_alias=>'DEGREE'
,p_column_display_sequence=>270
,p_column_heading=>'Degree'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035799464967336738)
,p_query_column_id=>28
,p_column_alias=>'INSTANCES'
,p_column_display_sequence=>280
,p_column_heading=>'Instances'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035799579156336739)
,p_query_column_id=>29
,p_column_alias=>'CACHE'
,p_column_display_sequence=>290
,p_column_heading=>'Cache'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035799658191336740)
,p_query_column_id=>30
,p_column_alias=>'TABLE_LOCK'
,p_column_display_sequence=>300
,p_column_heading=>'Table Lock'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035799773969336741)
,p_query_column_id=>31
,p_column_alias=>'SAMPLE_SIZE'
,p_column_display_sequence=>310
,p_column_heading=>'Sample Size'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035799889979336742)
,p_query_column_id=>32
,p_column_alias=>'LAST_ANALYZED'
,p_column_display_sequence=>320
,p_column_heading=>'Last Analyzed'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035799966443336743)
,p_query_column_id=>33
,p_column_alias=>'PARTITIONED'
,p_column_display_sequence=>330
,p_column_heading=>'Partitioned'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035800005708336744)
,p_query_column_id=>34
,p_column_alias=>'IOT_TYPE'
,p_column_display_sequence=>340
,p_column_heading=>'Iot Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035800108293336745)
,p_query_column_id=>35
,p_column_alias=>'TEMPORARY'
,p_column_display_sequence=>350
,p_column_heading=>'Temporary'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035800259695336746)
,p_query_column_id=>36
,p_column_alias=>'SECONDARY'
,p_column_display_sequence=>360
,p_column_heading=>'Secondary'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035800374361336747)
,p_query_column_id=>37
,p_column_alias=>'NESTED'
,p_column_display_sequence=>370
,p_column_heading=>'Nested'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035800448432336748)
,p_query_column_id=>38
,p_column_alias=>'BUFFER_POOL'
,p_column_display_sequence=>380
,p_column_heading=>'Buffer Pool'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035800554048336749)
,p_query_column_id=>39
,p_column_alias=>'FLASH_CACHE'
,p_column_display_sequence=>390
,p_column_heading=>'Flash Cache'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41035800682988336750)
,p_query_column_id=>40
,p_column_alias=>'CELL_FLASH_CACHE'
,p_column_display_sequence=>400
,p_column_heading=>'Cell Flash Cache'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036159623922709901)
,p_query_column_id=>41
,p_column_alias=>'ROW_MOVEMENT'
,p_column_display_sequence=>410
,p_column_heading=>'Row Movement'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036159708418709902)
,p_query_column_id=>42
,p_column_alias=>'GLOBAL_STATS'
,p_column_display_sequence=>420
,p_column_heading=>'Global Stats'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036159850073709903)
,p_query_column_id=>43
,p_column_alias=>'USER_STATS'
,p_column_display_sequence=>430
,p_column_heading=>'User Stats'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036159916231709904)
,p_query_column_id=>44
,p_column_alias=>'DURATION'
,p_column_display_sequence=>440
,p_column_heading=>'Duration'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036160030588709905)
,p_query_column_id=>45
,p_column_alias=>'SKIP_CORRUPT'
,p_column_display_sequence=>450
,p_column_heading=>'Skip Corrupt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036160123179709906)
,p_query_column_id=>46
,p_column_alias=>'MONITORING'
,p_column_display_sequence=>460
,p_column_heading=>'Monitoring'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036160271562709907)
,p_query_column_id=>47
,p_column_alias=>'CLUSTER_OWNER'
,p_column_display_sequence=>470
,p_column_heading=>'Cluster Owner'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036160386507709908)
,p_query_column_id=>48
,p_column_alias=>'DEPENDENCIES'
,p_column_display_sequence=>480
,p_column_heading=>'Dependencies'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036160404757709909)
,p_query_column_id=>49
,p_column_alias=>'COMPRESSION'
,p_column_display_sequence=>490
,p_column_heading=>'Compression'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036160579153709910)
,p_query_column_id=>50
,p_column_alias=>'COMPRESS_FOR'
,p_column_display_sequence=>500
,p_column_heading=>'Compress For'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036160676900709911)
,p_query_column_id=>51
,p_column_alias=>'DROPPED'
,p_column_display_sequence=>510
,p_column_heading=>'Dropped'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036160789092709912)
,p_query_column_id=>52
,p_column_alias=>'READ_ONLY'
,p_column_display_sequence=>520
,p_column_heading=>'Read Only'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036160871476709913)
,p_query_column_id=>53
,p_column_alias=>'SEGMENT_CREATED'
,p_column_display_sequence=>530
,p_column_heading=>'Segment Created'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036160963846709914)
,p_query_column_id=>54
,p_column_alias=>'RESULT_CACHE'
,p_column_display_sequence=>540
,p_column_heading=>'Result Cache'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036161098830709915)
,p_query_column_id=>55
,p_column_alias=>'CLUSTERING'
,p_column_display_sequence=>550
,p_column_heading=>'Clustering'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036161164150709916)
,p_query_column_id=>56
,p_column_alias=>'ACTIVITY_TRACKING'
,p_column_display_sequence=>560
,p_column_heading=>'Activity Tracking'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036161247274709917)
,p_query_column_id=>57
,p_column_alias=>'DML_TIMESTAMP'
,p_column_display_sequence=>570
,p_column_heading=>'Dml Timestamp'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036161309510709918)
,p_query_column_id=>58
,p_column_alias=>'HAS_IDENTITY'
,p_column_display_sequence=>580
,p_column_heading=>'Has Identity'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036161475996709919)
,p_query_column_id=>59
,p_column_alias=>'CONTAINER_DATA'
,p_column_display_sequence=>590
,p_column_heading=>'Container Data'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036161562496709920)
,p_query_column_id=>60
,p_column_alias=>'INMEMORY'
,p_column_display_sequence=>600
,p_column_heading=>'Inmemory'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036161630373709921)
,p_query_column_id=>61
,p_column_alias=>'INMEMORY_PRIORITY'
,p_column_display_sequence=>610
,p_column_heading=>'Inmemory Priority'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036161793823709922)
,p_query_column_id=>62
,p_column_alias=>'INMEMORY_DISTRIBUTE'
,p_column_display_sequence=>620
,p_column_heading=>'Inmemory Distribute'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036161827096709923)
,p_query_column_id=>63
,p_column_alias=>'INMEMORY_COMPRESSION'
,p_column_display_sequence=>630
,p_column_heading=>'Inmemory Compression'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036161952436709924)
,p_query_column_id=>64
,p_column_alias=>'INMEMORY_DUPLICATE'
,p_column_display_sequence=>640
,p_column_heading=>'Inmemory Duplicate'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036162006801709925)
,p_query_column_id=>65
,p_column_alias=>'DEFAULT_COLLATION'
,p_column_display_sequence=>650
,p_column_heading=>'Default Collation'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036162190217709926)
,p_query_column_id=>66
,p_column_alias=>'DUPLICATED'
,p_column_display_sequence=>660
,p_column_heading=>'Duplicated'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036162226413709927)
,p_query_column_id=>67
,p_column_alias=>'SHARDED'
,p_column_display_sequence=>670
,p_column_heading=>'Sharded'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036162305007709928)
,p_query_column_id=>68
,p_column_alias=>'EXTERNAL'
,p_column_display_sequence=>680
,p_column_heading=>'External'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036162419204709929)
,p_query_column_id=>69
,p_column_alias=>'HYBRID'
,p_column_display_sequence=>690
,p_column_heading=>'Hybrid'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036162585568709930)
,p_query_column_id=>70
,p_column_alias=>'CELLMEMORY'
,p_column_display_sequence=>700
,p_column_heading=>'Cellmemory'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036162619499709931)
,p_query_column_id=>71
,p_column_alias=>'CONTAINERS_DEFAULT'
,p_column_display_sequence=>710
,p_column_heading=>'Containers Default'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036162737414709932)
,p_query_column_id=>72
,p_column_alias=>'CONTAINER_MAP'
,p_column_display_sequence=>720
,p_column_heading=>'Container Map'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036162891657709933)
,p_query_column_id=>73
,p_column_alias=>'EXTENDED_DATA_LINK'
,p_column_display_sequence=>730
,p_column_heading=>'Extended Data Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036162959553709934)
,p_query_column_id=>74
,p_column_alias=>'EXTENDED_DATA_LINK_MAP'
,p_column_display_sequence=>740
,p_column_heading=>'Extended Data Link Map'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036163025034709935)
,p_query_column_id=>75
,p_column_alias=>'INMEMORY_SERVICE'
,p_column_display_sequence=>750
,p_column_heading=>'Inmemory Service'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036163151557709936)
,p_query_column_id=>76
,p_column_alias=>'INMEMORY_SERVICE_NAME'
,p_column_display_sequence=>760
,p_column_heading=>'Inmemory Service Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036163275148709937)
,p_query_column_id=>77
,p_column_alias=>'CONTAINER_MAP_OBJECT'
,p_column_display_sequence=>770
,p_column_heading=>'Container Map Object'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036163390041709938)
,p_query_column_id=>78
,p_column_alias=>'MEMOPTIMIZE_READ'
,p_column_display_sequence=>780
,p_column_heading=>'Memoptimize Read'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036163424461709939)
,p_query_column_id=>79
,p_column_alias=>'MEMOPTIMIZE_WRITE'
,p_column_display_sequence=>790
,p_column_heading=>'Memoptimize Write'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036163585862709940)
,p_query_column_id=>80
,p_column_alias=>'HAS_SENSITIVE_COLUMN'
,p_column_display_sequence=>800
,p_column_heading=>'Has Sensitive Column'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036163697980709941)
,p_query_column_id=>81
,p_column_alias=>'ADMIT_NULL'
,p_column_display_sequence=>810
,p_column_heading=>'Admit Null'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036163796348709942)
,p_query_column_id=>82
,p_column_alias=>'DATA_LINK_DML_ENABLED'
,p_column_display_sequence=>820
,p_column_heading=>'Data Link Dml Enabled'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036163831139709943)
,p_query_column_id=>83
,p_column_alias=>'LOGICAL_REPLICATION'
,p_column_display_sequence=>830
,p_column_heading=>'Logical Replication'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41036163912538709944)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'',
'.code-container {',
'    border-radius: 0.375rem;',
'    --tw-bg-opacity: 1;',
'    background-color: rgba(64,71,82,var(--tw-bg-opacity));',
'}',
'.code-container .code-title {',
'    --tw-text-opacity: 1;',
'    color: rgba(255,255,255,var(--tw-text-opacity));',
'    padding-left: 1rem;',
'    padding-right: 1rem;',
'    padding-top: 0.5rem;',
'    padding-bottom: 0.5rem;',
'    font-family: monospace;',
'}',
're {',
'    overflow: auto;',
'}',
'pre {',
'    font-family: monospace,monospace;',
'    font-size: 1em;',
'}',
'.code-container code {',
'    border-radius: 0;',
'    border-bottom-right-radius: 0.25rem;',
'    border-bottom-left-radius: 0.25rem;',
'}',
'code.hljs {',
'    border-radius: 0.375rem;',
'    --tw-bg-opacity: 1;',
'    background-color: rgba(44,53,64,var(--tw-bg-opacity));',
'    padding: 1rem;',
'    border: none;',
'    border-style: none;',
'}',
'.hljs {',
'    display: block;',
'    overflow-x: auto;',
'    background: #2b2b2b;',
'    color: #f8f8f2;',
'    padding: 0.5em;',
'}',
'',
'.hljs, .hljs-subst {',
'    color: #444;',
'}',
'',
'.hljs {',
'    display: block;',
'    overflow-x: auto;',
'    padding: 0.5em;',
'    background: #F0F0F0;',
'}',
'code {',
'    font-family: "Fira Code",monospace;',
'}',
'code {',
'    font-size: .875rem;',
'    line-height: 1.42;',
'    letter-spacing: 0;',
'}',
'code {',
'    border: none;',
'    background-color: #f5f7fa;',
'    font-family: consolas,"Liberation Mono",courier,monospace;',
'    font-weight: 400;',
'    color: #151e29;',
'    display: inline;',
'    max-width: 100%;',
'    word-wrap: break-word;',
'    padding: 0.125rem 0.3125rem 0.0625rem;',
'}',
'code {',
'    font-family: monospace,monospace;',
'    font-size: 1em;',
'}',
'',
'',
'.hljs-keyword, .hljs-selector-tag {',
'    color: #dcc6e0;',
'}',
'',
'.hljs-keyword, .hljs-attribute, .hljs-selector-tag, .hljs-meta-keyword, .hljs-doctag, .hljs-name {',
'    font-weight: bold;',
'}',
'*, ::after, ::before {',
'    --tw-ring-inset: var(--tw-empty, );',
'    --tw-ring-offset-width: 0px;',
'    --tw-ring-offset-color: #fff;',
'    --tw-ring-color: rgba(59, 130, 246, 0.5);',
'    --tw-ring-offset-shadow: 0 0 #0000;',
'    --tw-ring-shadow: 0 0 #0000;',
'}',
'*, ::after, ::before {',
'    --tw-shadow: 0 0 #0000;',
'}',
'*, ::after, ::before {',
'    border-color: currentColor;',
'}',
'* {',
'    border: 0 solid;',
'}',
'*, ::after, ::before {',
'    box-sizing: inherit;',
'}',
'code.hljs {',
'    border-radius: 0.375rem;',
'    --tw-bg-opacity: 1;',
'    background-color: rgba(44,53,64,var(--tw-bg-opacity));',
'    padding: 1rem;',
'    border: none;',
'    border-style: none;',
'}',
'',
'.hljs {',
'    display: block;',
'    overflow-x: auto;',
'    background: #2b2b2b;',
'    color: #f8f8f2;',
'    padding: 0.5em;',
'}',
'.hljs, .hljs-subst {',
'    color: #444;',
'}',
'code {',
'    font-family: "Fira Code",monospace;',
'}',
'code {',
'    font-size: .875rem;',
'    line-height: 1.42;',
'    letter-spacing: 0;',
'}',
'code {',
'    border: none;',
'    background-color: #f5f7fa;',
'    font-family: consolas,"Liberation Mono",courier,monospace;',
'    font-weight: 400;',
'    color: #151e29;',
'    display: inline;',
'    max-width: 100%;',
'    word-wrap: break-word;',
'    padding: 0.125rem 0.3125rem 0.0625rem;',
'}',
'code {',
'    font-family: monospace,monospace;',
'    font-size: 1em;',
'}',
'user agent stylesheet',
'code {',
'    font-family: monospace;',
'}',
'pre {',
'    font-family: monospace,monospace;',
'    font-size: 1em;',
'}',
'user agent stylesheet',
'pre {',
'    font-family: monospace;',
'    white-space: pre;',
'}',
'.code-container {',
'    border-radius: 0.375rem;',
'    --tw-bg-opacity: 1;',
'    background-color: rgba(64,71,82,var(--tw-bg-opacity));',
'}',
'.tabs-content {',
'    border: 1px solid #f5f7fa;',
'    border-top: 0;',
'    background: rgba(0,0,0,0);',
'    color: #151e29;',
'    transition: all .5s ease;',
'}',
'@media (min-width: 768px)',
'.md\:bg-light {',
'    --tw-bg-opacity: 1;',
'    background-color: rgba(238,241,246,var(--tw-bg-opacity));',
'}',
'',
'</style>',
'<pre><code class="sql hljs"><span class="hljs-keyword">SELECT</span> p.ProductName',
'<span class="hljs-keyword">FROM</span> Product <span class="hljs-keyword">AS</span> p',
'<span class="hljs-keyword">JOIN</span> ProductCategory pc <span class="hljs-keyword">ON</span> (p.CategoryID <span class="hljs-operator">=</span> pc.CategoryID <span class="hljs-keyword">AND</span> pc.CategoryName <span class="hljs-operator">=</span>'
||' "Dairy Products")',
'',
'<span class="hljs-keyword">JOIN</span> ProductCategory pc1 <span class="hljs-keyword">ON</span> (p.CategoryID <span class="hljs-operator">=</span> pc1.CategoryID)',
'<span class="hljs-keyword">JOIN</span> ProductCategory pc2 <span class="hljs-keyword">ON</span> (pc1.ParentID <span class="hljs-operator">=</span> pc2.CategoryID <span class="hljs-keyword">AND</span> pc2.CategoryName <span class="hljs-operator">=</sp'
||'an> "Dairy Products")',
'',
'<span class="hljs-keyword">JOIN</span> ProductCategory pc3 <span class="hljs-keyword">ON</span> (p.CategoryID <span class="hljs-operator">=</span> pc3.CategoryID)',
'<span class="hljs-keyword">JOIN</span> ProductCategory pc4 <span class="hljs-keyword">ON</span> (pc3.ParentID <span class="hljs-operator">=</span> pc4.CategoryID)',
'<span class="hljs-keyword">JOIN</span> ProductCategory pc5 <span class="hljs-keyword">ON</span> (pc4.ParentID <span class="hljs-operator">=</span> pc5.CategoryID <span class="hljs-keyword">AND</span> pc5.CategoryName <span class="hljs-operator">=</sp'
||'an> "Dairy Products");</code></pre>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9005381387682881216)
,p_name=>'P50_TABLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9005379972866881202)
,p_prompt=>'Table'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT TABLE_NAME d, TABLE_NAME r FROM USER_TABLES'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp.component_end;
end;
/
