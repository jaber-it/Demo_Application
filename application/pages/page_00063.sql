prompt --application/pages/page_00063
begin
--   Manifest
--     PAGE: 00063
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
 p_id=>63
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Get API URL Data'
,p_alias=>'GET-API-URL-DATA'
,p_step_title=>'Get API URL Data'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function get_api_data() {',
'    var xhr = new XMLHttpRequest();',
'    var url = "https://apex.oracle.com/pls/apex/my_stock/report/allreport";',
'    xhr.open(''GET'', url, true);',
'    xhr.onload = function() {',
'             $s(''P63_JASON_DATA'',(xhr.responseText));',
'             alert (''Get Api Daata''',
'                ',
'             )',
'         }',
'     xhr.send();',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47233200611327847547)
,p_plug_name=>'Call API'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT x.OID,',
'       x.UNIT_NM,',
'       x.COURT_OID',
'',
'  FROM apex_collections  c,',
'       XMLTABLE (''/json/items/row'' ',
'                 PASSING apex_json.to_xmltype (c.clob001) ',
'                 COLUMNS OID VARCHAR2 (4000) PATH ''oid'',',
'                         UNIT_NM VARCHAR2 (4000) PATH ''unit_nm'',',
'                         COURT_OID VARCHAR2 (4000) PATH ''court_oid'') x',
' WHERE c.collection_name = ''REST_COLLECTION'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Call API'
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
 p_id=>wwv_flow_imp.id(51139773720266782704)
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
,p_internal_uid=>51139773720266782704
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51139773825651782705)
,p_db_column_name=>'OID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Oid'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51139773988898782706)
,p_db_column_name=>'UNIT_NM'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Unit Nm'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51139774004461782707)
,p_db_column_name=>'COURT_OID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Court Oid'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(51140940364166184455)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'511409404'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'OID:UNIT_NM:COURT_OID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(47233200822345847549)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(47233200611327847547)
,p_button_name=>'Call_josn_data'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Call Josn Data'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47233200778875847548)
,p_name=>'P63_JASON_DATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(47233200611327847547)
,p_prompt=>'Jason Data'
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
 p_id=>wwv_flow_imp.id(47233200975872847550)
,p_name=>'Call API'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(47233200822345847549)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51139773415190782701)
,p_event_id=>wwv_flow_imp.id(47233200975872847550)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'get_api_data ();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51139773509075782702)
,p_name=>'Add Apex Collection'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P63_JASON_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51139773623237782703)
,p_event_id=>wwv_flow_imp.id(51139773509075782702)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_response   CLOB;',
'BEGIN',
'    l_response := :P63_JASON_DATA;',
'    apex_collection.create_or_truncate_collection (''REST_COLLECTION'');',
'    apex_collection.add_member (p_collection_name   => ''REST_COLLECTION'',',
'                                p_clob001           => l_response);',
'END;'))
,p_attribute_02=>'P63_JASON_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51139774134832782708)
,p_event_id=>wwv_flow_imp.id(51139773509075782702)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47233200611327847547)
);
wwv_flow_imp.component_end;
end;
/
