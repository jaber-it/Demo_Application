prompt --application/pages/page_00027
begin
--   Manifest
--     PAGE: 00027
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
 p_id=>27
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Instant Search by Java Script'
,p_alias=>'INSTANT-SEARCH-BY-JAVA-SCRIPT'
,p_step_title=>'Instant Search by Java Script'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">  ',
'           window.onbeforeunload = function (e) {                               e = e || window.event;',
'           if (e) {',
'            e.returnValue = ''?'';',
'              }',
'       // For Safari',
'         return ''?'';',
'                };',
'    </script>'))
,p_javascript_code=>'var gTimer;'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function(){',
'  $("#P27_SEARCH").on("keyup", function() {',
'    var value = $(this).val().toLowerCase();',
'    $("#id tr").filter(function() {',
'   $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)',
'    });',
'  });',
'});'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210625104230'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43609948925545025110)
,p_plug_name=>'Instant Search in Oracle Apex by Java Script'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247195628587359062)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="post-body entry-content" id="post-body-8988753844314926072" itemprop="description articleBody">',
'',
'<br>',
'1. Create a classic report by your query<br>',
'2. Take a item for input search content<br>',
'3. Goto Shared Components &gt;&gt; Templates &gt;&gt;Copy Report (Type)/Standard (Name) with diffrent&nbsp; &nbsp; &nbsp; &nbsp;name like&nbsp; Standard2<br>',
'4. Goto Standard2 &gt;&gt; After Column Heading &gt;&gt; &lt;/thead&gt; &lt;tbody id="id" &gt;&nbsp; and save<br>',
'5. Goto Report Attributes &gt;&gt; Appearance &gt;&gt;Template &gt;&gt; Standard2<br>',
'6. Copy the code into Page &gt;&gt; Execute when Page Loads<br>',
'<br>',
'<span style="color: blue;">(Change item name and id)</span><br>',
'<br>',
'&nbsp; <span style="font-family: &quot;courier new&quot; , &quot;courier&quot; , monospace;">&nbsp;$(document).ready(function(){</span><br>',
'<span style="font-family: &quot;courier new&quot; , &quot;courier&quot; , monospace;">&nbsp; $("#<span style="color: blue;">P9_SEARCH</span>").on("keyup", function() {</span><br>',
'<span style="font-family: &quot;courier new&quot; , &quot;courier&quot; , monospace;">&nbsp; &nbsp; var value = $(this).val().toLowerCase();</span><br>',
'<span style="font-family: &quot;courier new&quot; , &quot;courier&quot; , monospace;">&nbsp; &nbsp; $("#<span style="color: blue;">id </span>tr").filter(function() {</span><br>',
'<span style="font-family: &quot;courier new&quot; , &quot;courier&quot; , monospace;">&nbsp; &nbsp;$(this).toggle($(this).text().toLowerCase().indexOf(value) &gt; -1)</span><br>',
'<span style="font-family: &quot;courier new&quot; , &quot;courier&quot; , monospace;">&nbsp; &nbsp; });</span><br>',
'<span style="font-family: &quot;courier new&quot; , &quot;courier&quot; , monospace;">&nbsp; });</span><br>',
'<span style="font-family: &quot;courier new&quot; , &quot;courier&quot; , monospace;">});</span><br>',
'<br>',
'Then Enjoy',
'<div style="clear: both;"></div>',
'</div>',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(43610655073212067873)
,p_name=>'Instant Search by Java Script'
,p_template=>wwv_flow_imp.id(33247212693934359074)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent4:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'DISTRICT'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P27_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(43609768485390016062)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10728694787728090205)
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
 p_id=>wwv_flow_imp.id(10728694870731090206)
,p_query_column_id=>2
,p_column_alias=>'DIST_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Dist Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10728694979659090207)
,p_query_column_id=>3
,p_column_alias=>'DIST_NM'
,p_column_display_sequence=>30
,p_column_heading=>'Dist Nm'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10728695075952090208)
,p_query_column_id=>4
,p_column_alias=>'DIVI_OID'
,p_column_display_sequence=>40
,p_column_heading=>'Divi Oid'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10728695164996090209)
,p_query_column_id=>5
,p_column_alias=>'IS_ACTIVE'
,p_column_display_sequence=>50
,p_column_heading=>'Is Active'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10728695201340090210)
,p_query_column_id=>6
,p_column_alias=>'DIST_NM1'
,p_column_display_sequence=>60
,p_column_heading=>'Dist Nm1'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10728695357205090211)
,p_query_column_id=>7
,p_column_alias=>'PID_EMPLOYEE_INSERT_BY'
,p_column_display_sequence=>70
,p_column_heading=>'Pid Employee Insert By'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10728695406544090212)
,p_query_column_id=>8
,p_column_alias=>'INSERT_DATE'
,p_column_display_sequence=>80
,p_column_heading=>'Insert Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10728695589275090213)
,p_query_column_id=>9
,p_column_alias=>'PID_EMPLOYEE_UPDATE_BY'
,p_column_display_sequence=>90
,p_column_heading=>'Pid Employee Update By'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10728695661897090214)
,p_query_column_id=>10
,p_column_alias=>'UPDATE_DATE'
,p_column_display_sequence=>100
,p_column_heading=>'Update Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43609948851125025109)
,p_name=>'P27_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43610655073212067873)
,p_prompt=>'Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp.component_end;
end;
/
