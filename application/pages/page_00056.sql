prompt --application/pages/page_00056
begin
--   Manifest
--     PAGE: 00056
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
 p_id=>56
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Bootstrap Progress Bar in your Oracle (No Video Created) '
,p_alias=>'BOOTSTRAP-PROGRESS-BAR-IN-YOUR-ORACLE-NO-VIDEO-CREATED'
,p_step_title=>'Bootstrap Progress Bar in your Oracle (No Video Created) '
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.progress-bar {',
'    display: -ms-flexbox;',
'    display: flex;',
'    -ms-flex-direction: column;',
'    flex-direction: column;',
'    -ms-flex-pack: center;',
'    justify-content: center;',
'    color: #fff;',
'    text-align: center;',
'    white-space: nowrap;',
'    background-color: #007bff;',
'    transition: width .6s ease;',
'}',
'',
'.progress {',
'    display: -ms-flexbox;',
'    display: flex;',
'    height: 1rem;',
'    overflow: hidden;',
'    font-size: .75rem;',
'    background-color: #cfdae4;',
'    border-radius: .25rem;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(16438692174719432301)
,p_name=>'Bootstrap Progress Bar'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.PRODUCT_ID as PRODUCT_ID,',
'    a.PRODUCT_CODE,',
'    a.PRODUCT_NAME,',
'    get_progress_bar(b.SELLING_PRICE) SELLING_PRICE',
' from PRODUCT_PRICE b,',
'    PRODUCT a',
'    where a.PRODUCT_ID = b.PRODUCT_ID'))
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
 p_id=>wwv_flow_imp.id(16438692204742432302)
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
 p_id=>wwv_flow_imp.id(16438692315877432303)
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
 p_id=>wwv_flow_imp.id(16438692479202432304)
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
 p_id=>wwv_flow_imp.id(16438693689266432316)
,p_query_column_id=>4
,p_column_alias=>'SELLING_PRICE'
,p_column_display_sequence=>60
,p_column_heading=>'Selling Price'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(16438693881397432318)
,p_name=>'Tool-tip with Image in Oracle APEX Report'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OID,',
'       TOOLTIP_WITH_IMAGE (OID, FILE_NAME, MIME_TYPE, 250, 175) as Slider_IMAGE,',
'       MIME_TYPE,',
'       FILE_NAME,',
'       LAST_UPDATE_DATE,',
'       SET_COLUMN,',
'       IMAGE_NO,',
'       SLIDER_TEXT,',
'       SLIDER_LINK',
'  from SLIDESHOW_IMG'))
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
 p_id=>wwv_flow_imp.id(16438695910614432339)
,p_query_column_id=>1
,p_column_alias=>'OID'
,p_column_display_sequence=>150
,p_column_heading=>'Oid'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16438696799965432347)
,p_query_column_id=>2
,p_column_alias=>'SLIDER_IMAGE'
,p_column_display_sequence=>210
,p_column_heading=>'Slider Image'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16438695777616432337)
,p_query_column_id=>3
,p_column_alias=>'MIME_TYPE'
,p_column_display_sequence=>250
,p_column_heading=>'Mime Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16438696108193432341)
,p_query_column_id=>4
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>170
,p_column_heading=>'File Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16438696481806432344)
,p_query_column_id=>7
,p_column_alias=>'IMAGE_NO'
,p_column_display_sequence=>200
,p_column_heading=>'Image No'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16438696598782432345)
,p_query_column_id=>8
,p_column_alias=>'SLIDER_TEXT'
,p_column_display_sequence=>220
,p_column_heading=>'Slider Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16438696620072432346)
,p_query_column_id=>9
,p_column_alias=>'SLIDER_LINK'
,p_column_display_sequence=>230
,p_column_heading=>'Slider Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp.component_end;
end;
/
