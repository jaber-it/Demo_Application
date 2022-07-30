prompt --application/pages/page_00094
begin
--   Manifest
--     PAGE: 00094
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
 p_id=>94
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Responsive Classic Report'
,p_alias=>'RESPONSIVE-CLASSIC-REPORT'
,p_step_title=>'Responsive Classic Report'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.mobile-view-table th, .mobile-view-table td {',
'  margin: .5em 1em;',
'}',
'.mobile-view-table {',
'  margin: 0 0;',
'  min-width: 300px;',
'}',
'.mobile-view-table th {',
'  display: none;',
'}',
'.mobile-view-table td {',
'  display: block;',
'}',
'.mobile-view-table td:first-child {',
'  padding-top: .5em;',
'}',
'.mobile-view-table td:last-child {',
'  padding-bottom: .5em;',
'}',
'.mobile-view-table td:before {',
'  content: attr(data-th) ": ";',
'  font-weight: bold;',
' /* width: 6.5em;',
'  display: inline-block;',
'  */',
'}',
'@media (min-width: 480px) {',
'  .mobile-view-table td:before {',
'    display: none;',
'  }',
'}',
'.mobile-view-table th, .mobile-view-table td {',
'  text-align: left;',
'}',
'@media (min-width: 480px) {',
'  .mobile-view-table th, .mobile-view-table td {',
'    display: table-cell;',
'    padding: .25em .5em;',
'  }',
'  .mobile-view-table th:first-child, .mobile-view-table td:first-child {',
'    padding-left: 0;',
'  }',
'  .mobile-view-table th:last-child, .mobile-view-table td:last-child {',
'    padding-right: 0;',
'  }',
'}',
'.mobile-view-table {',
'  /*background: #34495E;',
'  color: #fff;*/',
'  border-radius: .4em;',
'  overflow: hidden;',
'}',
'.mobile-view-table tr {',
'  border-color: #46637f;',
'}',
'@media (min-width: 480px) {',
'  .mobile-view-table th, .mobile-view-table td {',
'    padding: 1em !important;',
'  }',
'}',
'.mobile-view-table th, .mobile-view-table td:before {',
'  color: #d55;',
'}',
'',
'',
'img {',
'    height: 120px;',
'    width: 120px;',
'    border-radius: 90px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(41036164228074709947)
,p_name=>'Responsive Classic Report'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRODUCT_ID,',
'       PRODUCT_CODE,',
'       PRODUCT_NAME,',
'       PRODUCT_DESCRIPTION,',
'       sys.dbms_lob.getlength(PRODUCT_IMAGE) as PRODUCT_IMAGE,  ',
'       --dbms_lob.getlength(PRODUCT_IMAGE) as PRODUCT_IMAGE,  ',
'       (select CAT_NAME_ENG from CATEGORY where OID = CATEGORY) CATEGORY,',
'       DECODE(STATUS_ID, 1, ''Active'',',
'                    2, ''Inactive'') STATUS',
'  from PRODUCT'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(41042067740577631109)
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
 p_id=>wwv_flow_imp.id(41044253503075724114)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>90
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036164474505709949)
,p_query_column_id=>2
,p_column_alias=>'PRODUCT_CODE'
,p_column_display_sequence=>20
,p_column_heading=>'Product Code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41036164594198709950)
,p_query_column_id=>3
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41044252268326724101)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT_DESCRIPTION'
,p_column_display_sequence=>40
,p_column_heading=>'Product Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41044252380056724102)
,p_query_column_id=>5
,p_column_alias=>'PRODUCT_IMAGE'
,p_column_display_sequence=>50
,p_column_heading=>'Product Image'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:PRODUCT:PRODUCT_IMAGE:PRODUCT_ID::MIME_TYPE::::::'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41044252427829724103)
,p_query_column_id=>6
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>60
,p_column_heading=>'Category'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41044253440655724113)
,p_query_column_id=>7
,p_column_alias=>'STATUS'
,p_column_display_sequence=>80
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp.component_end;
end;
/
