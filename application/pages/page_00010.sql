prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'How to Download File From Classic Report'
,p_alias=>'HOW-TO-DOWNLOAD-FILE-FROM-CLASSIC-REPORT'
,p_step_title=>'How to Download File From Classic Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210619133108'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13322702624924263492)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247210767798359072)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRODUCT_ID,',
'       PRODUCT_CODE,',
'       PRODUCT_NAME,',
'       PRODUCT_DESCRIPTION,',
'       PRODUCT_IMAGE pc,',
'       dbms_lob.getlength(PRODUCT_IMAGE) Download,',
'       CATEGORY,',
'       GROUP_NAME,',
'       STATUS_ID',
'  from PRODUCT'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report 1'
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
 p_id=>wwv_flow_imp.id(21310159529412109449)
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
,p_internal_uid=>21310159529412109449
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21310159615673109450)
,p_db_column_name=>'PRODUCT_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Product Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21361990505133039601)
,p_db_column_name=>'PRODUCT_CODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Product Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21361990628336039602)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21361990784786039603)
,p_db_column_name=>'PRODUCT_DESCRIPTION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Product Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21361990917518039605)
,p_db_column_name=>'CATEGORY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Category'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21361991083173039606)
,p_db_column_name=>'GROUP_NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Group Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21361991146215039607)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Status Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21361991794055039613)
,p_db_column_name=>'DOWNLOAD'
,p_display_order=>100
,p_column_identifier=>'N'
,p_column_label=>'Download'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'DOWNLOAD:PRODUCT:PRODUCT_IMAGE:PRODUCT_ID::MIME_TYPE:PRODUCT_NAME:UPDATE_DATE::attachment::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21361991922723039615)
,p_db_column_name=>'PC'
,p_display_order=>110
,p_column_identifier=>'P'
,p_column_label=>'Pc'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(21361043962975603412)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'213610440'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCT_ID:PRODUCT_CODE:PRODUCT_NAME:PRODUCT_DESCRIPTION:CATEGORY:GROUP_NAME:STATUS_ID:DOWNLOAD:PC'
);
wwv_flow_imp.component_end;
end;
/
