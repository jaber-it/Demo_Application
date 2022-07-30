prompt --application/pages/page_00038
begin
--   Manifest
--     PAGE: 00038
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
 p_id=>38
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Forgot Password Page'
,p_alias=>'FORGOT-PASSWORD-PAGE'
,p_page_mode=>'MODAL'
,p_step_title=>'Forgot Password Page'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Breadcrumb-label {',
'    display: none;',
'',
'}',
'',
'',
'.submit {',
'    background-color: white;',
'    color: black;',
'    border: 2px solid #a41c16;',
'    border-radius: 9px;',
'    font-size: 15px;',
'    padding: 2px 8px 2px 8px;',
'    height: 30px;',
' //   width: 88%;',
'}',
'.submit:hover {',
'    background-color: #7C3010;',
'    color: white;',
'}',
'',
'.close {',
'    background-color: white;',
'    color: #0f0f0f;',
'    border: 2px solid #2bde0b;',
'    border-radius: 9px;',
'    font-size: 15px;',
'    padding: 2px 8px 2px 8px;',
'    height: 30px;',
' //   width: 88%;',
'}',
'.close:hover {',
'    border: 2px solid #2bde0b;',
'    background-color: rgb(5, 134, 22); ',
'    color: white;',
'}',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_dialog_attributes=>'open: function( event, ui ) { closeDialogClickOutside(this); }'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'16'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51615301119152034810)
,p_plug_name=>'Forgot Password'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding:t-Form--xlarge:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21191327316757830302)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(51615301119152034810)
,p_button_name=>'Close'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconRight:t-Button--hoverIconSpin:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14551729993831634454)
,p_button_image_alt=>'Close'
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'close'
,p_icon_css_classes=>'fa-send'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33066624336951948534)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(51615301119152034810)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconRight:t-Button--hoverIconSpin:t-Button--gapRight:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14551729993831634454)
,p_button_image_alt=>'Submit'
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'submit'
,p_icon_css_classes=>'fa-send'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(33066629358810948538)
,p_branch_name=>'Home Page'
,p_branch_action=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:9999::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33066625524308948535)
,p_name=>'P38_USERNAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(51615301119152034810)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>9
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727466942634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--indicatorAsterisk:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33066625960318948535)
,p_name=>'P38_PHONE_NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(51615301119152034810)
,p_prompt=>'Phone Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>9
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727466942634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--indicatorAsterisk:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33066626358122948536)
,p_name=>'P38_EMAIL_ADDRESS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(51615301119152034810)
,p_prompt=>'Email Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>9
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727466942634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--indicatorAsterisk:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(33066626808885948537)
,p_validation_name=>'Get Username'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 9/10/2021 11:56:34 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   v_users   NVARCHAR2 (50);',
'BEGIN',
'   SELECT USERNAME',
'     INTO v_users',
'     FROM MY_USERS',
'    WHERE USERNAME = :P38_USERNAME;',
'',
'   RETURN TRUE;',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      RETURN FALSE;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Username does not found'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(33066624336951948534)
,p_associated_item=>wwv_flow_imp.id(33066625524308948535)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(33064699534356560415)
,p_validation_name=>'Get Phone Number'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 9/10/2021 11:56:15 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   v_phone   NVARCHAR2 (50);',
'BEGIN',
'   SELECT PHONE_NUMBER',
'     INTO v_phone',
'     FROM MY_USERS',
'    WHERE USERNAME = :P38_USERNAME AND PHONE_NUMBER = :P38_PHONE_NUMBER;',
'',
'   RETURN TRUE;',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      RETURN FALSE;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Phone Number does not found'
,p_when_button_pressed=>wwv_flow_imp.id(33066624336951948534)
,p_associated_item=>wwv_flow_imp.id(33066625960318948535)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(33064699630627560416)
,p_validation_name=>'Get Email Address'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 9/10/2021 11:55:53 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   v_email   NVARCHAR2 (50);',
'BEGIN',
'   SELECT EMAIL_ADDRESS',
'     INTO v_email',
'     FROM MY_USERS',
'    WHERE     USERNAME = :P38_USERNAME',
'          AND PHONE_NUMBER = :P38_PHONE_NUMBER',
'          AND EMAIL_ADDRESS = :P38_EMAIL_ADDRESS;',
'',
'   --if :P38_EMAIL_ADDRESS = v_email then',
'   RETURN TRUE;',
'--    end if;',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      RETURN FALSE;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Email Address does not found'
,p_when_button_pressed=>wwv_flow_imp.id(33066624336951948534)
,p_associated_item=>wwv_flow_imp.id(33066626358122948536)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33066628337608948538)
,p_name=>'Get User Id'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33066628899576948538)
,p_event_id=>wwv_flow_imp.id(33066628337608948538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_USER_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select USER_ID from MY_USERS WHERE upper(USERNAME) = :APP_USER'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16753119979109609348)
,p_name=>'Closes When Clicking Outside'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.test_invalid_selector'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16753120001650609349)
,p_event_id=>wwv_flow_imp.id(16753119979109609348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33066627505691948537)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Send Email 3 Item'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 9/11/2021 12:00:22 AM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   l_body_html   CLOB;',
'   v_name        NVARCHAR2 (50);',
'   v_code        NVARCHAR2 (50);',
'   v_userid        NVARCHAR2 (50);',
'   v_email       NVARCHAR2 (50);',
'BEGIN',
'   SELECT EMAIL_ADDRESS, PASSWORD_RECOVERY_CODE, USER_ID',
'     INTO v_email, v_code, v_userid',
'     FROM MY_USERS',
'    WHERE USERNAME = :P38_USERNAME',
'          AND PHONE_NUMBER = :P38_PHONE_NUMBER',
'          AND EMAIL_ADDRESS = :P38_EMAIL_ADDRESS;',
'',
'   l_body_html :=',
'         ''',
'<html lang="en-US">',
'         <head>',
'  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">',
'         </head>',
'                <body>',
'<div style="height:300px; width: 800px;border: 1px solid rgb(167, 162, 162);box-shadow: 2px 2px 5px 2px rgb(216, 204, 203);">',
'          <div style="background:#244283; height: 40px; width: 800px;color:#fff; ">',
'      <h2 style="margin-left:20px; margin-top: 0px; padding-top: 10px;">Account Verification Email</h2>',
'     </div>',
'     <div style="height: 45px;margin: 20px;" >',
'     <p>',
'                    Recover your password.              ',
'                    <br>',
'     To verify your account please click the link below.</p>',
'     <p><a href="https://apex.oracle.com/pls/apex/my_stock/r/demo-application-oracle-apex/email-verification?P39_EMAIL_ADDRESS=''|| v_email ||''&P39_USER_ID=''|| v_userid ||''"',
'',
'    >Verify Your account</a></p><br>',
'  </div>',
'</div> ',
'</body>',
'</html>',
''';',
'   APEX_MAIL.SEND (:P38_EMAIL_ADDRESS,',
'                   ''no-reply@oraclelearner.com'',',
'                   l_body_html,',
'                   l_body_html,',
'                   ''Account Verification Email'',',
'                   NULL,',
'                   NULL,',
'                   NULL);',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(33066624336951948534)
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A message has been sent to your email. <br>',
'Please check the mail and recover the password. <br>',
'Thanks'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33064800500959560425)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Send Email 1 item'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 9/11/2021 12:00:22 AM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   l_body_html   CLOB;',
'   v_name        NVARCHAR2 (50);',
'   v_code        NVARCHAR2 (50);',
'   v_email       NVARCHAR2 (50);',
'BEGIN',
'   SELECT EMAIL_ADDRESS, PASSWORD_RECOVERY_CODE',
'     INTO v_email, v_code',
'     FROM MY_USERS',
'    WHERE USERNAME = :P38_USERNAME',
'          AND PHONE_NUMBER = :P38_PHONE_NUMBER',
'          AND EMAIL_ADDRESS = :P38_EMAIL_ADDRESS;',
'',
'   l_body_html :=',
'         ''',
'<html lang="en-US">',
'         <head>',
'  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">',
'         </head>',
'                <body>',
'<div style="height:300px; width: 800px;border: 1px solid rgb(167, 162, 162);box-shadow: 2px 2px 5px 2px rgb(216, 204, 203);">',
'          <div style="background:#244283; height: 40px; width: 800px;color:#fff; ">',
'      <h2 style="margin-left:20px; margin-top: 0px; padding-top: 10px;">Account Verification Email</h2>',
'     </div>',
'     <div style="height: 45px;margin: 20px;" >',
'     <p>',
'                    Recover your password.              ',
'                    <br>',
'     To verify your account please click the link below.</p>',
'     <p><a href="https://apex.oracle.com/pls/apex/my_stock/r/demo-application-oracle-apex/email-verification?P39_EMAIL_ADDRESS=''||v_email||''"',
'',
'    >Verify Your account</a></p><br>',
'  </div>',
'</div> ',
'</body>',
'</html>',
''';',
'   APEX_MAIL.SEND (:P38_EMAIL_ADDRESS,',
'                   ''no-reply@oraclelearner.com'',',
'                   l_body_html,',
'                   l_body_html,',
'                   ''Account Verification Email'',',
'                   NULL,',
'                   NULL,',
'                   NULL);',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(33066624336951948534)
,p_process_when_type=>'NEVER'
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A message has been sent to your email. <br>',
'Please check the mail and recover the password. <br>',
'Thanks'))
);
wwv_flow_imp.component_end;
end;
/
