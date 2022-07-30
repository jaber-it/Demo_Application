prompt --application/pages/page_00057
begin
--   Manifest
--     PAGE: 00057
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
 p_id=>57
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Carting List'
,p_alias=>'CARTING-LIST'
,p_step_title=>'Carting List'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body {',
'    background-color: #e6d3d3;',
'}',
'',
'.t-Button--navBar .t-Button-badge {',
'    color: white;',
'    font-size: 18px;',
'    font-weight: bold;',
'    background-color: #e21616;',
'    border-radius: var(--ut-navbar-button-badge-border-radius);',
'    padding: 3px 8px 3px 8px;',
'    /* border-color: red; */',
'    /* border-width: 19px; */',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39813386507986272936)
,p_plug_name=>'Carting'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(14551671528873634430)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39813385852487272929)
,p_plug_name=>'Pending Cart for Invoice'
,p_parent_plug_id=>wwv_flow_imp.id(39813386507986272936)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551662801852634426)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OID, PRODUCT_CODE, PRODUCT_NAME, RATE, QTY, ORDER_DATE, ',
'       OID Confirm_Order,',
'       OID Cancel_Order',
'  from ORDER_PRODUCT where CONFIRM_ORDER is null and CANCEL_ORDER is null'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Pending Cart for Invoice'
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
 p_id=>wwv_flow_imp.id(39813387351302272944)
,p_max_row_count=>'1000000'
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
,p_internal_uid=>39813387351302272944
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14010222020459124042)
,p_db_column_name=>'OID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Oid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14010222480372124043)
,p_db_column_name=>'PRODUCT_CODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Product Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14010222813161124043)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14010223215820124043)
,p_db_column_name=>'RATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14010223683150124044)
,p_db_column_name=>'QTY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14010224020107124044)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Order Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14010224419176124044)
,p_db_column_name=>'CONFIRM_ORDER'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Confirm Order'
,p_column_link=>'javascript:$s(''P57_CONFIRM_ORDER_OID'',''#OID#'');'
,p_column_linktext=>'Confirm Order'
,p_column_link_attr=>'class= button5'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14010224816435124045)
,p_db_column_name=>'CANCEL_ORDER'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cancel Order'
,p_column_link=>'javascript:$s(''P57_CANCEL_ORDER_OID'',''#OID#'');'
,p_column_linktext=>'Cancel Order'
,p_column_link_attr=>'class= button3'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(41955953238702670110)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'139365095'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCT_CODE:PRODUCT_NAME:QTY:RATE::ORDER_DATE:CONFIRM_ORDER:CANCEL_ORDER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39813385907213272930)
,p_plug_name=>'Pending Invoice for Confirm'
,p_parent_plug_id=>wwv_flow_imp.id(39813386507986272936)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551662801852634426)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OID,',
'       PRODUCT_CODE,',
'       PRODUCT_NAME,',
'       RATE,',
'       QTY,',
'       ORDER_DATE',
'  from ORDER_PRODUCT',
'  where CONFIRM_ORDER = ''Confirm'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Pending Invoice for Confirm'
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
 p_id=>wwv_flow_imp.id(39813388634151272957)
,p_max_row_count=>'1000000'
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
,p_internal_uid=>39813388634151272957
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14010226611027124053)
,p_db_column_name=>'OID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Oid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14010227065618124053)
,p_db_column_name=>'PRODUCT_CODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Product Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14010227492908124053)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14010227824271124054)
,p_db_column_name=>'RATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14010228239734124054)
,p_db_column_name=>'QTY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14010228635521124054)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Order Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(41998354333067304298)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'139789106'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'OID:PRODUCT_CODE:PRODUCT_NAME:RATE:QTY:ORDER_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39813386036970272931)
,p_plug_name=>'Pending Invoice for Payment'
,p_parent_plug_id=>wwv_flow_imp.id(39813386507986272936)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39813386171663272932)
,p_plug_name=>'Pending Paid Invoice for Delivery'
,p_parent_plug_id=>wwv_flow_imp.id(39813386507986272936)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39813386251252272933)
,p_plug_name=>'Completed Invoice'
,p_parent_plug_id=>wwv_flow_imp.id(39813386507986272936)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39813386364618272934)
,p_plug_name=>'Cancel Cart'
,p_parent_plug_id=>wwv_flow_imp.id(39813386507986272936)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551662801852634426)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OID,',
'       PRODUCT_CODE,',
'       PRODUCT_NAME,',
'       RATE,',
'       QTY,',
'       ORDER_DATE',
'  from ORDER_PRODUCT',
'  where CANCEL_ORDER = ''Cancel'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Cancel Cart'
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
 p_id=>wwv_flow_imp.id(41998224072266294516)
,p_max_row_count=>'1000000'
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
,p_internal_uid=>41998224072266294516
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14010230535318124056)
,p_db_column_name=>'OID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Oid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14010230986065124057)
,p_db_column_name=>'PRODUCT_CODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Product Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14010231333180124057)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14010231703574124057)
,p_db_column_name=>'RATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14010232166641124057)
,p_db_column_name=>'QTY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14010232555550124058)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Order Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(41998354979626304304)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'139789112'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'OID:PRODUCT_CODE:PRODUCT_NAME:RATE:QTY:ORDER_DATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14010225582611124051)
,p_name=>'P57_CONFIRM_ORDER_OID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(39813385852487272929)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14010225952366124052)
,p_name=>'P57_CANCEL_ORDER_OID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(39813385852487272929)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14010233295781124061)
,p_name=>'Update Confirm Order'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P57_CONFIRM_ORDER_OID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14010233718476124062)
,p_event_id=>wwv_flow_imp.id(14010233295781124061)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P57_CONFIRM_ORDER_OID is not null then',
'update ORDER_PRODUCT',
'set CONFIRM_ORDER = ''Confirm''',
'where oid = :P57_CONFIRM_ORDER_OID;',
'end if;'))
,p_attribute_02=>'P57_CONFIRM_ORDER_OID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14010234277775124063)
,p_event_id=>wwv_flow_imp.id(14010233295781124061)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Order Confirm'
,p_attribute_03=>'success'
,p_attribute_04=>'fa-cart-lock'
,p_attribute_06=>'Confirm Order '
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14010234776757124063)
,p_event_id=>wwv_flow_imp.id(14010233295781124061)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14010235115061124063)
,p_name=>'Update Cancel Order'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P57_CANCEL_ORDER_OID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14010235638872124063)
,p_event_id=>wwv_flow_imp.id(14010235115061124063)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P57_CANCEL_ORDER_OID is not null then',
'UPDATE ORDER_PRODUCT',
'   SET CANCEL_ORDER = ''Cancel''',
' WHERE oid = :P57_CANCEL_ORDER_OID;',
' end if;'))
,p_attribute_02=>'P57_CANCEL_ORDER_OID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14010236120447124064)
,p_event_id=>wwv_flow_imp.id(14010235115061124063)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Order Cancel'
,p_attribute_03=>'danger'
,p_attribute_04=>'fa-remove'
,p_attribute_06=>'Cancel Order'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14010236664454124064)
,p_event_id=>wwv_flow_imp.id(14010235115061124063)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14010237056320124064)
,p_name=>'Clear All'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14010237564271124064)
,p_event_id=>wwv_flow_imp.id(14010237056320124064)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P57_CONFIRM_ORDER_OID,P57_CANCEL_ORDER_OID'
);
wwv_flow_imp.component_end;
end;
/
