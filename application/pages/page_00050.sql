prompt --application/pages/page_00050
begin
--   Manifest
--     PAGE: 00050
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
 p_id=>50
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Dynamically Change Title Of Modal Dialog Page Report'
,p_alias=>'DYNAMICALLY-CHANGE-TITLE-OF-MODAL-DIALOG-PAGE-REPORT'
,p_step_title=>'Dynamically Change Title Of Modal Dialog Page Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220115185833'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30326255554420690074)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247210767798359072)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OID,',
'       CUSTOMER_NAME,',
'       MOBOLE_NO,',
'       ADDRESS,',
'       NOTE,       ',
'       case when STATUS_ID = 1 then ''Activate''',
'       else ''Inactivate '' end STATUS_ID',
'  from CUSTOMER'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Report 1'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(30326255908358690074)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:RP:P51_OID:\#OID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'JABER0181@GMAIL.COM'
,p_internal_uid=>30326255908358690074
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30326256061036690075)
,p_db_column_name=>'OID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Oid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30326256426370690077)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Customer Name'
,p_column_link=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#CUSTOMER_NAME#'
,p_column_link_attr=>'class="DialogTitle"'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30326256887582690077)
,p_db_column_name=>'MOBOLE_NO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Mobole No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30326257218973690077)
,p_db_column_name=>'ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30326257640910690078)
,p_db_column_name=>'NOTE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Note'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30326258858528690081)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(30326276195175693611)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'303262762'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'OID:CUSTOMER_NAME:MOBOLE_NO:ADDRESS:NOTE:STATUS_ID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30326273664942693116)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(30326255554420690074)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:51'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30326368067165659719)
,p_name=>'P50_DIALOG_TITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30326255554420690074)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30326367710232659716)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(30326255554420690074)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30326367887479659717)
,p_event_id=>wwv_flow_imp.id(30326367710232659716)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(30326255554420690074)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30326368168355659720)
,p_name=>'Set Dialog Title'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.DialogTitle'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30326368216319659721)
,p_event_id=>wwv_flow_imp.id(30326368168355659720)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P50_DIALOG_TITLE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>' this.triggeringElement.innerText'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
