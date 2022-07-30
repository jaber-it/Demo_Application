prompt --application/pages/page_00052
begin
--   Manifest
--     PAGE: 00052
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>13501875225360637847
,p_default_application_id=>78259
,p_default_id_offset=>0
,p_default_owner=>'FLMPJGAZDYSOYO'
);
wwv_flow_imp_page.create_page(
 p_id=>52
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Download Any Report '
,p_alias=>'DOWNLOAD-ANY-REPORT'
,p_step_title=>'Download Any Report '
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'https://drive.google.com/uc?export=view&id=1DlmoT_Qtqpaeyo2198gkEGZdIMZPh7ye'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220129192112'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35177354082819290308)
,p_plug_name=>'All Button'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--DOCTYPE html-->',
'    <html>',
'    	<head>',
'    		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">',
'    			<title>SheetJS JS-XLSX In-Browser HTML Table Export Demo</title>',
'    			<style>',
'    .xport, .btn {',
'     display: inline;',
'     text-align:center;',
'    }',
'    a { text-decoration: none }',
'    #data-table, #data-table th, #data-table td { border: 1px solid black }',
' </style>',
'<style type="text/css"></style>',
'   </head>',
'    <body>',
'    <!--[if gt IE 9]-->',
'    <script type="text/javascript" src=" #APP_IMAGES#download/xlsx.full.min.js.download">',
'             	</script>',
'    <!--[endif]---->',
'    <!--[if lte IE 9]>',
'    <script type="text/javascript" src="shim.min.js"></script>',
'    <script type="text/javascript" src="xlsx.full.min.js"></script>',
'    <script type="text/javascript" src="Blob.js"></script>',
'    <script type="text/javascript" src="FileSaver.js"></script>',
'    <![endif]-->',
'  <script>',
'    function doit(type, fn, dl) {',
'     var elt = document.getElementById(''testid'');',
'     var wb = XLSX.utils.table_to_book(elt, {sheet:"Sheet JS"});',
'     return dl ?',
'      XLSX.write(wb, {bookType:type, bookSST:true, type: ''base64''}) :',
'      XLSX.writeFile(wb, fn || (''Downloaded File.'' + (type || ''xlsx'')));',
'    }',
'    </script>',
'        <pre>',
'        	<b>Export it!</b>',
'        </pre>',
'        <table id="xport">',
'      <tbody>',
'        <tr>',
'        	<td>',
'        		<pre>XLSX Excel 2007+ XML</pre>',
'        	</td>',
'        	<td>',
'        	<p id="xportxlsx" class="xport">',
'        		<input type="submit" value="Export to XLSX!" onclick="doit(&#39;xlsx&#39;);">',
'        		</p>',
'        		<p id="xlsxbtn" class="btn"></p>',
'        	</td>',
'        </tr>',
'   <tr>',
'       <td>',
'       	<pre>XLSB Excel 2007+ Binary</pre>',
'       </td>',
'       <td>',
'       	<p id="xportxlsb" class="xport">',
'       		<input type="submit" value="Export to XLSB!" onclick="doit(&#39;xlsb&#39;);">',
'       		</p>',
'       		<p id="xlsbbtn" class="btn"></p>',
'       	</td>',
'   </tr>',
'      <tr>',
'       <td>',
'        	<pre>Comma Separated Values</pre>',
'        </td>',
'        <td>',
'          <p id="xportcsv" class="xport">',
'        	<input type="submit" value="Export to CSV!" onclick="doit(&#39;csv&#39;);">',
'        	</p>',
'        <p id="csvbtn" class="btn"></p>',
'       </td>',
'      </tr>',
'      </tbody>',
'   </table>',
' </body>',
'</html>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(35177354113077290309)
,p_name=>'Report'
,p_region_name=>'testid'
,p_template=>wwv_flow_imp.id(33247212693934359074)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'COUNTRY'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(33247241596394359095)
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
 p_id=>wwv_flow_imp.id(35177354293555290310)
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
 p_id=>wwv_flow_imp.id(35177354385436290311)
,p_query_column_id=>2
,p_column_alias=>'CNTR_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Cntr Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35177354452869290312)
,p_query_column_id=>3
,p_column_alias=>'CNTR_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Cntr Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35177354503054290313)
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
 p_id=>wwv_flow_imp.id(35177354686171290314)
,p_query_column_id=>5
,p_column_alias=>'CNTR_NAME1'
,p_column_display_sequence=>50
,p_column_heading=>'Cntr Name1'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35177354749608290315)
,p_query_column_id=>6
,p_column_alias=>'PID_EMPLOYEE_INSERT_BY'
,p_column_display_sequence=>60
,p_column_heading=>'Pid Employee Insert By'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35177354821878290316)
,p_query_column_id=>7
,p_column_alias=>'INSERT_DATE'
,p_column_display_sequence=>70
,p_column_heading=>'Insert Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35177354926855290317)
,p_query_column_id=>8
,p_column_alias=>'PID_EMPLOYEE_UPDATE_BY'
,p_column_display_sequence=>80
,p_column_heading=>'Pid Employee Update By'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35177355052993290318)
,p_query_column_id=>9
,p_column_alias=>'UPDATE_DATE'
,p_column_display_sequence=>90
,p_column_heading=>'Update Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp.component_end;
end;
/
