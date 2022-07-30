prompt --application/pages/page_00036
begin
--   Manifest
--     PAGE: 00036
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
 p_id=>36
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Instant Search in Oracle Apex by Java Script'
,p_alias=>'INSTANT-SEARCH-IN-ORACLE-APEX-BY-JAVA-SCRIPT'
,p_step_title=>'Instant Search in Oracle Apex by Java Script'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function(){',
'  $("#P36_SEARCH").on("keyup", function() {',
'    var value = $(this).val().toLowerCase();',
'    $("#id tr").filter(function() {',
'   $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)',
'    });',
'  });',
'});'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(30025570942574023949)
,p_name=>'Report 1'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'COURT'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(30027808609958075251)
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
 p_id=>wwv_flow_imp.id(30025571379172023949)
,p_query_column_id=>1
,p_column_alias=>'OID'
,p_column_display_sequence=>10
,p_column_heading=>'Oid'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30025571707236023950)
,p_query_column_id=>2
,p_column_alias=>'COURT_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Court Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30025572100718023950)
,p_query_column_id=>3
,p_column_alias=>'COURT_NM'
,p_column_display_sequence=>30
,p_column_heading=>'Court Nm'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30025572598614023950)
,p_query_column_id=>4
,p_column_alias=>'IS_ACTIVE'
,p_column_display_sequence=>40
,p_column_heading=>'Is Active'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30025572920545023950)
,p_query_column_id=>5
,p_column_alias=>'PID_EMPLOYEE_INSERT_BY'
,p_column_display_sequence=>50
,p_column_heading=>'Pid Employee Insert By'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30025573355260023950)
,p_query_column_id=>6
,p_column_alias=>'INSERT_DATE'
,p_column_display_sequence=>60
,p_column_heading=>'Insert Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30025573797559023951)
,p_query_column_id=>7
,p_column_alias=>'PID_EMPLOYEE_UPDATE_BY'
,p_column_display_sequence=>70
,p_column_heading=>'Pid Employee Update By'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30025574183586023951)
,p_query_column_id=>8
,p_column_alias=>'UPDATE_DATE'
,p_column_display_sequence=>80
,p_column_heading=>'Update Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30025574522449023951)
,p_query_column_id=>9
,p_column_alias=>'DIVI_OID'
,p_column_display_sequence=>90
,p_column_heading=>'Divi Oid'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30025718659541677701)
,p_name=>'P36_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30025570942574023949)
,p_prompt=>'Search'
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
wwv_flow_imp.component_end;
end;
/
