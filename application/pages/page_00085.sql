prompt --application/pages/page_00085
begin
--   Manifest
--     PAGE: 00085
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
 p_id=>85
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Restore Screen Position After Refresh'
,p_alias=>'RESTORE-SCREEN-POSITION-AFTER-REFRESH'
,p_step_title=>'Restore Screen Position After Refresh'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var savepos;'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28671571723665948601)
,p_plug_name=>'Restore Screen Position After Refresh'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OID, ',
'       THAN_ID,',
'       THAN_NM,',
'       DIST_OID,',
'',
'       case when IS_ACTIVE = 1 then ''Active''',
'       else ''inactive'' end Status',
'  from THANAUPAZILA',
'  order by OID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Restore Screen Position After Refresh'
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
 p_id=>wwv_flow_imp.id(28671571876105948602)
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
,p_internal_uid=>28671571876105948602
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28671573954870948623)
,p_db_column_name=>'OID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:87:&SESSION.::&DEBUG.:87:P87_OID:#OID#'
,p_column_linktext=>'Edit'
,p_column_link_attr=>'class="Position" data-id="#OID#"'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28671574054114948624)
,p_db_column_name=>'THAN_ID'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Than Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28671574159922948625)
,p_db_column_name=>'THAN_NM'
,p_display_order=>30
,p_column_identifier=>'L'
,p_column_label=>'Than Nm'
,p_column_link=>'f?p=&APP_ID.:87:&SESSION.::&DEBUG.::P87_OID:#OID#'
,p_column_linktext=>'#THAN_NM#'
,p_column_link_attr=>'class="DialogTitle"'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_column_comment=>'javascript:$s(''P85_DIALOG_TITLE'',''#THAN_NM#'');'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28671574297028948626)
,p_db_column_name=>'DIST_OID'
,p_display_order=>40
,p_column_identifier=>'M'
,p_column_label=>'Dist Oid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28671574871158948632)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'O'
,p_column_label=>'Status'
,p_column_html_expression=>'#STATUS#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(28671778264236956604)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'286717783'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'OID:THAN_ID:THAN_NM:DIST_OID:STATUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28307626767885708326)
,p_name=>'P85_DIALOG_TITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(28671571723665948601)
,p_prompt=>'Dialog Title'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28671574999458948633)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(28671571723665948601)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28671575077625948634)
,p_event_id=>wwv_flow_imp.id(28671574999458948633)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28671571723665948601)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28671575259349948636)
,p_name=>'Restore Scroll Position'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(28671571723665948601)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28671575368685948637)
,p_event_id=>wwv_flow_imp.id(28671575259349948636)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(window).scrollTop(savepos);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28671575452430948638)
,p_name=>'Save Scroll Position'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.Position'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28671575568753948639)
,p_event_id=>wwv_flow_imp.id(28671575452430948638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'savepos = $(window).scrollTop();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28307626822976708327)
,p_name=>'Set Dialog Title'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.DialogTitle'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28307626924124708328)
,p_event_id=>wwv_flow_imp.id(28307626822976708327)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P85_DIALOG_TITLE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.innerText'
,p_attribute_09=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp.component_end;
end;
/
