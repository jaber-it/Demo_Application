prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'How to Use Apex Collection Part-1'
,p_alias=>'HOW-TO-USE-APEX-COLLECTION-PART-1'
,p_step_title=>'How to Use Apex Collection Part-1'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'18'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14743703442015196009)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551662801852634426)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq_id SL_NO, c001 STUDENT_ID, c002 STUDENT_NAME, c003 ADDRESS, c004 PHONE, c005 DATE1, seq_id id, seq_id edit',
'from apex_collections',
'where collection_name = ''STUDENT'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report'
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
 p_id=>wwv_flow_imp.id(14743703598030196010)
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
,p_internal_uid=>14743703598030196010
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14743703614959196011)
,p_db_column_name=>'SL_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sl No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14743703700718196012)
,p_db_column_name=>'STUDENT_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Student Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14743703895344196013)
,p_db_column_name=>'STUDENT_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Student Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14743703955105196014)
,p_db_column_name=>'ADDRESS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14743704099131196015)
,p_db_column_name=>'PHONE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Phone'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14743704116189196016)
,p_db_column_name=>'DATE1'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Date1'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14743704263292196017)
,p_db_column_name=>'ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Delete'
,p_column_link=>'javascript:$s(''P8_DELETE'',''#ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash fa-1x"></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14743704373359196018)
,p_db_column_name=>'EDIT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Edit'
,p_column_link=>'javascript:$s(''P8_STUDENT_ID'',''#STUDENT_ID#'');javascript:$s(''P8_STUDENT_NAME'',''#STUDENT_NAME#'');javascript:$s(''P8_ADDRESS'',''#ADDRESS#'');javascript:$s(''P8_PHONE'',''#PHONE#'');javascript:$s(''P8_DATE1'',''#DATE1#'');javascript:$s(''P8_EDIT'',''#ID#'');'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(16732868219117294630)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'167328683'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SL_NO:STUDENT_ID:STUDENT_NAME:ADDRESS:PHONE:DATE1:ID:EDIT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16661680492019380623)
,p_plug_name=>'.'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18376597628532789703)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14743703442015196009)
,p_button_name=>'Save_Data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Data'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14743703145910196006)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16661680492019380623)
,p_button_name=>'Add'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add'
,p_button_position=>'RIGHT_OF_TITLE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18408239289616180802)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(16661680492019380623)
,p_button_name=>'Apply_Changes'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16661680626181380625)
,p_name=>'P8_STUDENT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16661680492019380623)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16661680744903380626)
,p_name=>'P8_STUDENT_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(16661680492019380623)
,p_prompt=>'Student Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>250
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16661680868854380627)
,p_name=>'P8_ADDRESS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(16661680492019380623)
,p_prompt=>'Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>250
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16661680901641380628)
,p_name=>'P8_PHONE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(16661680492019380623)
,p_prompt=>'Phone'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16661681061524380629)
,p_name=>'P8_DATE1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(16661680492019380623)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18408239165872180801)
,p_name=>'P8_EDIT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14743703442015196009)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18408239768764180807)
,p_name=>'P8_DELETE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14743703442015196009)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18376597414984789701)
,p_name=>'Clear All '
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18376597512758789702)
,p_event_id=>wwv_flow_imp.id(18376597414984789701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_STUDENT_ID,P8_STUDENT_NAME,P8_ADDRESS,P8_PHONE,P8_DATE1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18376597992092789706)
,p_name=>'PRIMARY KEY'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18376598034878789707)
,p_event_id=>wwv_flow_imp.id(18376597992092789706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_STUDENT_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT STUDENT_SEQ.NEXTVAL INTO :P8_STUDENT_ID FROM DUAL;'
,p_attribute_07=>'P8_STUDENT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P8_STUDENT_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18408239386674180803)
,p_name=>'Update Data '
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18408239289616180802)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18408239479799180804)
,p_event_id=>wwv_flow_imp.id(18408239386674180803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'APEX_COLLECTION.UPDATE_MEMBER (',
'    p_collection_name => ''STUDENT'',',
'    p_seq  =>            :P8_EDIT,',
'    p_c001 =>            :P8_STUDENT_ID,',
'    p_c002 =>            :P8_STUDENT_NAME,',
'    p_c003 =>            :P8_ADDRESS,',
'    p_c004 =>            :P8_PHONE,',
'    p_c005 =>            :P8_DATE1',
'  );',
'End;'))
,p_attribute_02=>'P8_EDIT,P8_STUDENT_NAME,P8_ADDRESS,P8_PHONE,P8_DATE1'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18408239580127180805)
,p_event_id=>wwv_flow_imp.id(18408239386674180803)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14743703442015196009)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18408239630720180806)
,p_event_id=>wwv_flow_imp.id(18408239386674180803)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_EDIT,P8_STUDENT_NAME,P8_ADDRESS,P8_PHONE,P8_DATE1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18408239880154180808)
,p_name=>'Delete Data '
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_DELETE'
,p_condition_element=>'P8_DELETE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18408239910553180809)
,p_event_id=>wwv_flow_imp.id(18408239880154180808)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'    			APEX_COLLECTION.DELETE_MEMBER(',
'        		p_collection_name => ''STUDENT'',',
'        		p_seq => :P8_DELETE);',
'		End;'))
,p_attribute_02=>'P8_DELETE'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18408240045342180810)
,p_event_id=>wwv_flow_imp.id(18408239880154180808)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14743703442015196009)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18408240136747180811)
,p_event_id=>wwv_flow_imp.id(18408239880154180808)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_DELETE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14743704801319196023)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRIMARY KEY'
,p_process_sql_clob=>'SELECT STUDENT_SEQ.NEXTVAL INTO :P8_STUDENT_ID FROM DUAL;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14743703145910196006)
,p_process_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14743704738546196022)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if not apex_collection.collection_exists(''STUDENT'') then ',
'',
'apex_collection.create_collection(''STUDENT'');',
'end if;',
'  ',
'  ',
'  apex_collection.add_member(',
'    p_collection_name => ''STUDENT'',',
'    p_c001 =>            :P8_STUDENT_ID,',
'    p_c002 =>            :P8_STUDENT_NAME,',
'    p_c003 =>            :P8_ADDRESS,',
'    p_c004 =>            :P8_PHONE,',
'    p_c005 =>            :P8_DATE1',
'  );',
'  end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14743703145910196006)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18376597734575789704)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Data_Save'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'		INSERT INTO STUDENT (STUDENT_ID, STUDENT_NAME, ADDRESS, PHONE, DATE1)',
'		select c001, c002, c003, c004, c005',
'		from apex_collections where collection_name =''STUDENT'';',
'',
'		APEX_COLLECTION.DELETE_COLLECTION (p_collection_name => ''STUDENT'');',
'	end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(18376597628532789703)
);
wwv_flow_imp.component_end;
end;
/
