prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Create New User'
,p_alias=>'CREATE-NEW-USER'
,p_page_mode=>'MODAL'
,p_step_title=>'Create New User'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.submit {',
'    background-color: white;',
'    color: black;',
'    border: 2px solid #a41c16;',
'    border-radius: 9px;',
'    font-size: 15px;',
'    padding: 2px 8px 2px 8px;',
'    height: 30px;',
'    width: 68%;',
'}',
'.submit:hover {',
'    background-color: #7C3010;',
'    color: white;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_attributes=>'open: function( event, ui ) { closeDialogClickOutside(this); }'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'USER'
,p_cache_timeout_seconds=>604800
,p_page_component_map=>'02'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20191669602897215088)
,p_plug_name=>'Create New User'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--large:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(14551633705629634415)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USER_ID,',
'       USERNAME,',
'       FULL_NAME,',
'       PHONE_NUMBER,',
'       EMAIL_ADDRESS,',
'       IMAGE,',
'       USER_TYPE,',
'       SHOP_CATEGORY,',
'       IS_ACTIVE,',
'       PASSWORD,',
'       CREATE_BY,',
'       ADDED_DATE,',
'       UPDATE_DATE,',
'       MIME_TYPE,',
'       PIN,',
'       UPDATE_BY',
'  from MY_USERS'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20318085810235412744)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_button_name=>'Reset_Password'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Reset Password'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P11_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20191679742523215096)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--hoverIconSpin:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(14551729993831634454)
,p_button_image_alt=>'Cancel'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'submit'
,p_icon_css_classes=>'fa-exclamation-circle'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20191680516166215096)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Delete'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20191681358773215096)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--hoverIconSpin:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(14551729993831634454)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_condition=>'P11_USER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'submit'
,p_icon_css_classes=>'fa-user-circle'
,p_grid_new_row=>'N'
,p_grid_column_span=>3
,p_grid_column=>9
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20191680911840215096)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_condition=>'P11_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(20191681648998215097)
,p_branch_name=>'Go To Page 10'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(20191680911840215096)
,p_branch_sequence=>1
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18548683299588089241)
,p_name=>'P11_PASSWORD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_item_source_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_source=>'PASSWORD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18548683300848089242)
,p_name=>'P11_UPDATE_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_item_source_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_source=>'UPDATE_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20191669915074215089)
,p_name=>'P11_USER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_item_source_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_source=>'USER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20191670300743215090)
,p_name=>'P11_USERNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_item_source_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_colspan=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727466942634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20191670708940215090)
,p_name=>'P11_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_item_source_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_prompt=>'Full Name'
,p_source=>'FULL_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_colspan=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727466942634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20191671140027215090)
,p_name=>'P11_PHONE_NUMBER'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_item_source_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_prompt=>'Phone Number'
,p_source=>'PHONE_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_colspan=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20191671581697215090)
,p_name=>'P11_EMAIL_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_item_source_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_prompt=>'Email Address'
,p_source=>'EMAIL_ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_colspan=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20191671927782215091)
,p_name=>'P11_IMAGE'
,p_source_data_type=>'BLOB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_item_source_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_prompt=>'Image'
,p_source=>'IMAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_colspan=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIME_TYPE'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_12=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20191672335503215091)
,p_name=>'P11_USER_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_item_source_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_prompt=>'User Type'
,p_source=>'USER_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select GROUP_TITLE, OID from USER_GROUP'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727466942634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20191672751972215091)
,p_name=>'P11_SHOP_CATEGORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_item_source_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_source=>'SHOP_CATEGORY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20191673183387215091)
,p_name=>'P11_IS_ACTIVE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_item_source_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_item_default=>'1'
,p_prompt=>'Is Active'
,p_source=>'IS_ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select STATUS, OID from IS_ACTIVATE'
,p_cHeight=>1
,p_colspan=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727466942634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20191673544110215092)
,p_name=>'P11_PIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_item_source_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_prompt=>'Password'
,p_source=>'PIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>60
,p_cMaxlength=>4000
,p_colspan=>10
,p_grid_label_column_span=>3
,p_display_when=>'P11_USER_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_imp.id(14551727466942634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20191673944069215092)
,p_name=>'P11_CREATE_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_item_source_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_source=>'CREATE_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20191674379730215092)
,p_name=>'P11_ADDED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_item_source_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_source=>'ADDED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20191674735214215093)
,p_name=>'P11_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_item_source_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20191675129207215093)
,p_name=>'P11_MIME_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_item_source_plug_id=>wwv_flow_imp.id(20191669602897215088)
,p_source=>'MIME_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20206484912591032304)
,p_name=>'Clear All'
,p_event_sequence=>10
,p_condition_element=>'P11_USER_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20206485085063032305)
,p_event_id=>wwv_flow_imp.id(20206484912591032304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_USERNAME,P11_PIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20318085920728412745)
,p_name=>'Reset Password'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20318085810235412744)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20318086084587412746)
,p_event_id=>wwv_flow_imp.id(20318085920728412745)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update MY_USERS set',
'Password = 12345,',
'		pin = 12345',
'		where user_id = :P11_USER_ID;'))
,p_attribute_02=>'P11_USER_ID'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20335416908922344901)
,p_event_id=>wwv_flow_imp.id(20318085920728412745)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Accretion Process'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20335417011270344902)
,p_event_id=>wwv_flow_imp.id(20318085920728412745)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16753119362449609342)
,p_name=>'Closes When Clicking Outside'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.test_invalid_selector'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16753119413870609343)
,p_event_id=>wwv_flow_imp.id(16753119362449609342)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16753119712095609346)
,p_name=>'Closes When Clicking Outside_1'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20191679742523215096)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16753119822241609347)
,p_event_id=>wwv_flow_imp.id(16753119712095609346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20191682522636215097)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(20191669602897215088)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Create New User'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20206485172706032306)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialoge'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20191682166504215097)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(20191669602897215088)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Create New User'
);
wwv_flow_imp.component_end;
end;
/
