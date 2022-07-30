prompt --application/pages/page_00035
begin
--   Manifest
--     PAGE: 00035
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
 p_id=>35
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Select All / Unselect All Checkbox'
,p_alias=>'SELECT-ALL-UNSELECT-ALL-CHECKBOX'
,p_step_title=>'Select All / Unselect All Checkbox'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210528165204'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8974662198037089020)
,p_plug_name=>'Report '
,p_region_name=>'partnerslRR'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247210767798359072)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LOG_ID, LOGIN_USER, IP_ADDRESS, LOGIN_TIME, LOGOUT_TIME, LOG_DATE,',
'           apex_item.hidden(01,LOG_ID)||',
'           apex_item.checkbox2(02,LOG_ID)',
'           check1 from USERS_LOG'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report '
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
 p_id=>wwv_flow_imp.id(8974662248599089021)
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
,p_internal_uid=>8974662248599089021
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8974662343577089022)
,p_db_column_name=>'LOG_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Log Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8974662466012089023)
,p_db_column_name=>'LOGIN_USER'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Login User'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8974662508104089024)
,p_db_column_name=>'IP_ADDRESS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ip Address'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8974662606673089025)
,p_db_column_name=>'LOGIN_TIME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Login Time'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8974662792466089026)
,p_db_column_name=>'LOGOUT_TIME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Logout Time'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8974662861645089027)
,p_db_column_name=>'LOG_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Log Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8974662945645089028)
,p_db_column_name=>'CHECK1'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'<input type="checkbox" id="selectUnselectAll" title="Select/UnselectAll">'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8991215133724467506)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'89912152'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LOG_ID:LOGIN_USER:IP_ADDRESS:LOGIN_TIME:LOGOUT_TIME:LOG_DATE:CHECK1'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8974663212921089031)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8974662198037089020)
,p_button_name=>'Delete'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8974663030801089029)
,p_name=>'Select All'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectUnselectAll'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8974663194343089030)
,p_event_id=>wwv_flow_imp.id(8974663030801089029)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if ( $( ''#selectUnselectAll'' ).is('':checked'') ) {',
'                  $(''input[type=checkbox][name=f02]'').attr(''checked'',true);',
'                        }',
'                  else {',
'                  $(''input[type=checkbox][name=f02]'').attr(''checked'',false);    ',
'                        }'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8974663441746089033)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Deplte Processes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FOR I in 1..APEX_APPLICATION.G_F02.COUNT LOOP',
'        DELETE USERS_LOG',
'        WHERE LOG_ID=APEX_APPLICATION.G_F02(i);',
'        END LOOP;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8974663212921089031)
);
wwv_flow_imp.component_end;
end;
/
