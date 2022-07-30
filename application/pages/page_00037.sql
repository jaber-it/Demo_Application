prompt --application/pages/page_00037
begin
--   Manifest
--     PAGE: 00037
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
 p_id=>37
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Mobile View Report'
,p_alias=>'MOBILE-VIEW-REPORT'
,p_step_title=>'Mobile View Report'
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
,p_last_upd_yyyymmddhh24miss=>'20220219171231'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(41044253891293724117)
,p_name=>'Mobile View'
,p_template=>wwv_flow_imp.id(33247212693934359074)
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
'       PRODUCT_DESCRIPTION',
'  from PRODUCT'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(41101347057114203083)
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
 p_id=>wwv_flow_imp.id(41044253937256724118)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Product Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41044254072790724119)
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
 p_id=>wwv_flow_imp.id(41044254159817724120)
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
 p_id=>wwv_flow_imp.id(41044254279405724121)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT_DESCRIPTION'
,p_column_display_sequence=>40
,p_column_heading=>'Product Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp.component_end;
end;
/
