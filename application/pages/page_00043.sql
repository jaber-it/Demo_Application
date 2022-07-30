prompt --application/pages/page_00043
begin
--   Manifest
--     PAGE: 00043
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
 p_id=>43
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Custom Search In Interactive Report'
,p_alias=>'CUSTOM-SEARCH-IN-INTERACTIVE-REPORT'
,p_step_title=>'Custom Search In Interactive Report'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''.a-IRR-search-field'').keyup(function() {',
'                     v_search = $(''.a-IRR-search-field'').val();',
'            v_search = v_search.toLowerCase();',
'            $(".CustomSearch td").each(function() {',
'            cellData = $(this).text();',
'            cellData = cellData.toLowerCase();',
'            cellData = cellData.search(v_search);',
'            if ((cellData != ''-1'' || cellData == 0) && v_search != '''') {',
'            $(this).closest(''td'').addClass(''u-success'');',
'            }',
'            else if (cellData == ''-1'') {',
'            $(this).closest(''td'').removeClass(''u-success'');',
'            }',
'            else',
'            $(this).closest(''td'').removeClass(''u-success'');',
'            ',
'            });',
'            });'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20211119135610'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11793940914042112707)
,p_plug_name=>'Custom Search'
,p_region_css_classes=>'CustomSearch'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247210767798359072)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OID,',
'       CNTR_ID,',
'       CNTR_NAME,',
'       IS_ACTIVE,',
'       CNTR_NAME1',
'  from COUNTRY'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Custom Search'
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
 p_id=>wwv_flow_imp.id(11793941078966112708)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JABER0181@GMAIL.COM'
,p_internal_uid=>11793941078966112708
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11793941159641112709)
,p_db_column_name=>'OID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Oid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11793941288022112710)
,p_db_column_name=>'CNTR_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cntr Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11793941355706112711)
,p_db_column_name=>'CNTR_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cntr Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11793941439557112712)
,p_db_column_name=>'IS_ACTIVE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Is Active'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11793941550627112713)
,p_db_column_name=>'CNTR_NAME1'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cntr Name1'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(13897262924333434573)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'138972630'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'OID:CNTR_ID:CNTR_NAME:IS_ACTIVE:CNTR_NAME1'
);
wwv_flow_imp.component_end;
end;
/
