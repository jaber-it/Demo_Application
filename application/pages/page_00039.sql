prompt --application/pages/page_00039
begin
--   Manifest
--     PAGE: 00039
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
 p_id=>39
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Apex Collection Part-1'
,p_alias=>'APEX-COLLECTION-PART-1'
,p_step_title=>'Apex Collection Part-1'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210702153011'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18385605652713071501)
,p_plug_name=>'Apex Collection From'
,p_region_template_options=>'#DEFAULT#:t-Region--accent9:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18385606433901071509)
,p_plug_name=>'Apex Collection Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247210767798359072)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq_id SL_NO, c001 STUDENT_ID, c002 STUDENT_NAME, c003 ADDRESS, c004 PHONE, c005 DATE1, seq_id id, seq_id edit',
'	from apex_collections',
'	where collection_name = ''STUDENT'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Apex Collection Report'
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
 p_id=>wwv_flow_imp.id(18385606581852071510)
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
,p_internal_uid=>18385606581852071510
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18385606696138071511)
,p_db_column_name=>'SL_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sl No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18385606793619071512)
,p_db_column_name=>'STUDENT_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Student Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18385606817204071513)
,p_db_column_name=>'STUDENT_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Student Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18385606950229071514)
,p_db_column_name=>'ADDRESS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18385607000847071515)
,p_db_column_name=>'PHONE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Phone'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18385607108435071516)
,p_db_column_name=>'DATE1'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Date1'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18385607330400071518)
,p_db_column_name=>'EDIT'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Edit'
,p_column_link=>'javascript:$s(''P39_STUDENT_ID'',''#STUDENT_ID#'');javascript:$s(''P39_STUDENT_NAME'',''#STUDENT_NAME#'');javascript:$s(''P39_ADDRESS'',''#ADDRESS#'');javascript:$s(''P39_PHONE'',''#PHONE#'');javascript:$s(''P39_DATE1'',''#DATE1#'');javascript:$s(''P39_EDIT'',''#ID#'');'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18385607216585071517)
,p_db_column_name=>'ID'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Delete'
,p_column_link=>'javascript:$s(''P39_DELETE'',''#ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash fa-1x"></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18387468403135123456)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'183874685'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SL_NO:STUDENT_ID:STUDENT_NAME:ADDRESS:PHONE:DATE1:ID:EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18385606382575071508)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18385605652713071501)
,p_button_name=>'Add_Data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Data'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18385608401489071529)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18385605652713071501)
,p_button_name=>'Apply_Changes'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18385608031802071525)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18385606433901071509)
,p_button_name=>'Save_Data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Save Data'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18385605850086071503)
,p_name=>'P39_STUDENT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18385605652713071501)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18385605976894071504)
,p_name=>'P39_STUDENT_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18385605652713071501)
,p_prompt=>'Student Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>250
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18385606002556071505)
,p_name=>'P39_ADDRESS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18385605652713071501)
,p_prompt=>'Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>250
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18385606131974071506)
,p_name=>'P39_PHONE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18385605652713071501)
,p_prompt=>'Phone'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18385606237407071507)
,p_name=>'P39_DATE1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(18385605652713071501)
,p_prompt=>'Date1'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
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
 p_id=>wwv_flow_imp.id(18385608212479071527)
,p_name=>'P39_EDIT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18385606433901071509)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18385608980852071534)
,p_name=>'P39_DELETE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18385606433901071509)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18385607691596071521)
,p_name=>'Clear All'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18385607718543071522)
,p_event_id=>wwv_flow_imp.id(18385607691596071521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P39_STUDENT_ID,P39_STUDENT_NAME,P39_ADDRESS,P39_PHONE,P39_DATE1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18385608585430071530)
,p_name=>'Update Data '
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18385608401489071529)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18385608610448071531)
,p_event_id=>wwv_flow_imp.id(18385608585430071530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'		APEX_COLLECTION.UPDATE_MEMBER (',
'    		p_collection_name => ''STUDENT'',',
'    		p_seq  =>            :P39_EDIT,',
'    		p_c001 =>            :P39_STUDENT_ID,',
'    		p_c002 =>            :P39_STUDENT_NAME,',
'    		p_c003 =>            :P39_ADDRESS,',
'    		p_c004 =>            :P39_PHONE,',
'    		p_c005 =>            :P39_DATE1',
'  			);',
'	    End;'))
,p_attribute_02=>'P39_EDIT,P39_STUDENT_NAME,P39_ADDRESS,P39_PHONE,P39_DATE1'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18385608738751071532)
,p_event_id=>wwv_flow_imp.id(18385608585430071530)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18385606433901071509)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18385608851336071533)
,p_event_id=>wwv_flow_imp.id(18385608585430071530)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P39_EDIT,P39_STUDENT_NAME,P39_ADDRESS,P39_PHONE,P39_DATE1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18385609047038071535)
,p_name=>'Delete Data '
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P39_DELETE'
,p_condition_element=>'P39_DELETE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18385609109668071536)
,p_event_id=>wwv_flow_imp.id(18385609047038071535)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'    			APEX_COLLECTION.DELETE_MEMBER(',
'        		p_collection_name => ''STUDENT'',',
'        		p_seq => :P39_DELETE);',
'		End;'))
,p_attribute_02=>'P39_DELETE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18385609259801071537)
,p_event_id=>wwv_flow_imp.id(18385609047038071535)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18385606433901071509)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18385609347509071538)
,p_event_id=>wwv_flow_imp.id(18385609047038071535)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P39_DELETE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18385607597708071520)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'		if not apex_collection.collection_exists(''STUDENT'') then ',
'',
'		apex_collection.create_collection(''STUDENT'');',
'		end if;',
'  ',
'  	apex_collection.add_member(',
'    	p_collection_name => ''STUDENT'',',
'    	p_c001 =>            :P39_STUDENT_ID,',
'    	p_c002 =>            :P39_STUDENT_NAME,',
'    	p_c003 =>            :P39_ADDRESS,',
'    	p_c004 =>            :P39_PHONE,',
'    	p_c005 =>            :P39_DATE1',
'  		);',
'  	end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(18385606382575071508)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18385608143972071526)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Data Save'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'		INSERT INTO STUDENT (STUDENT_ID, STUDENT_NAME, ADDRESS, PHONE, DATE1)',
'		select c001, c002, c003, c004, c005',
'		from apex_collections where collection_name =''STUDENT'';',
'		APEX_COLLECTION.DELETE_COLLECTION (p_collection_name => ''STUDENT'');',
'	end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(18385608031802071525)
);
wwv_flow_imp.component_end;
end;
/
