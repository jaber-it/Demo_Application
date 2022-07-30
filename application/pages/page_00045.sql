prompt --application/pages/page_00045
begin
--   Manifest
--     PAGE: 00045
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
 p_id=>45
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>' Interactive Report Custom Search'
,p_alias=>'INTERACTIVE-REPORT-CUSTOM-SEARCH-NO-VIDEO-CREATED'
,p_step_title=>' Interactive Report Custom Search'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''.a-IRR-search-field'').keyup(function() {',
'',
'v_search = $(''.a-IRR-search-field'').val();',
'v_search = v_search.toLowerCase();',
'',
'$(".CustomSearch td").each(function() {',
'',
'cellData = $(this).text();',
'cellData = cellData.toLowerCase();',
'cellData = cellData.search(v_search);',
'',
'if ((cellData != ''-1'' || cellData == 0) && v_search != '''') {',
'$(this).closest(''td'').addClass(''u-success'');',
'}',
'else if (cellData == ''-1'') {',
'$(this).closest(''td'').removeClass(''u-success'');',
'}',
'else',
'$(this).closest(''td'').removeClass(''u-success'');',
'',
'});',
'});'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5261952942159368643)
,p_plug_name=>'Documentation'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="margin-left: 88px;">',
'<p>',
'    <h3>',
'        <b>Other Video Tutorial:</b> <a href="https://youtu.be/9wHLF57ezwI">Click Here for Video Tutorial</a> <br>',
'        <b>Documentation: </b> <a href="https://www.jaberit.com/2021/11/Custom-Search-interactive-report-Oracle-Apex.html">Click Here for Documentation</a><br>',
'    </h3>',
'        <h1>',
'            Do not forget to Subscribe',
'        </h1>',
'</p>',
'</div>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5272872852155803876)
,p_plug_name=>' Interactive Report Custom Search'
,p_region_css_classes=>'CustomSearch'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OID,',
'       CNTR_ID,',
'       CNTR_NAME,',
'       CNTR_NAME1,',
'       case when IS_ACTIVE = 1 then',
'       ''Active'' Else',
'       ''InActive'' end IS_ACTIVE',
'',
'  from COUNTRY'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>' Interactive Report Custom Search'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5272872930392803876)
,p_name=>' Interactive Report Custom Search (No Video Created)'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JABER0181@GMAIL.COM'
,p_internal_uid=>5272872930392803876
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5272873366344803880)
,p_db_column_name=>'OID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Oid'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5272873714564803881)
,p_db_column_name=>'CNTR_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Cntr Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5272874162220803881)
,p_db_column_name=>'CNTR_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Cntr Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5272874982481803882)
,p_db_column_name=>'CNTR_NAME1'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Cntr Name1'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5261952825894368642)
,p_db_column_name=>'IS_ACTIVE'
,p_display_order=>15
,p_column_identifier=>'K'
,p_column_label=>'Is Active'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5272934998157843824)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'52729350'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'OID:CNTR_ID:CNTR_NAME:CNTR_NAME1:IS_ACTIVE:'
);
wwv_flow_imp.component_end;
end;
/
