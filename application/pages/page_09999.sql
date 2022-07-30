prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
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
 p_id=>9999
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Test Application Oracle Apex - Sign In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function viewPassword()',
'{  var passwordInput = document.getElementById(''P9999_PASSWORD'');',
'  var passStatus = document.getElementById(''pass-status'');',
'  if (passwordInput.type == ''password''){',
'    passwordInput.type=''text'';',
'    passStatus.className=''fa fa-eye-slash field-icon'';    ',
'  }',
'  else{',
'    passwordInput.type=''password'';',
'    passStatus.className=''fa fa-eye field-icon'';',
'  }}',
'',
'function closeDialogClickOutside(elem){',
'   $(''.ui-widget-overlay'').click(function(){',
'      $(elem).dialog(''close'');',
'   });',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' .field-icon {',
'    right : 5px;',
'    margin-left: -25px;',
'    /* margin-top: 0px; */',
'    position: relative;',
'    z-index: 2;}',
'',
'.t-PageBody--login form#wwvFlowForm{',
'    background:url(#APP_IMAGES#01.jpg);',
'    background-repeat:no-repeat;',
'    background-Size:cover;',
'}',
'',
'Span.t-Login-logo{',
'    background-image: url("#APP_IMAGES#logo.png");',
'    background-size: cover;',
'    border-radius: 50%;',
'    width: 120px;',
'    height: 120px;',
'}',
'',
'.t-Login-region .t-Login-body .t-Form-fieldContainer:not(.t-Form-fieldContainer--floatingLabel) .apex-item-text {',
'    font-size: 16px;',
'    padding: 4px 36px;  ',
' /*    height: 40px;    */',
'    border-radius: 20px;',
'    background-repeat: no-repeat;',
'    background-size: cover;',
'}  ',
'',
'',
'.t-Login-region {',
'    --ut-field-padding-x: 0px;',
'    --ut-field-padding-y: 6px;',
'    border-radius: 40px;',
'}',
'',
'',
'.t-Button {',
'    font-size: 15px;',
'    line-height: 8px;',
'    padding: 11px;',
'    font-weight: 700;',
'    border-radius: 15px;',
'}',
'',
'.t-Login-header {',
'    padding: 0px 0;',
'}',
''))
,p_step_template=>wwv_flow_imp.id(14551613867014634406)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'12'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14551758575898634472)
,p_plug_name=>'Demo Applications Oracle Apex'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_imp.id(14551663479857634427)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14551763288515634475)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_imp.id(14551758575898634472)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551633705629634415)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27465724613516512410)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14551758575898634472)
,p_button_name=>'demo'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--link:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Click- demo/demo'
,p_button_redirect_url=>'javascript:$s(''P9999_USERNAME'',''demo''); javascript:$s(''P9999_PASSWORD'',''demo'');'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34811899647708690101)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(14551758575898634472)
,p_button_name=>'Sign_In_Facebook'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Sign In Facebook'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.:APEX_AUTHENTICATION=Facebook:&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-google'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14551761371481634474)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(14551758575898634472)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Sign In'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20206484627440032301)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(14551758575898634472)
,p_button_name=>'Create_New_Account'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Create New Account'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33064800694647560426)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(14551758575898634472)
,p_button_name=>'Forgot_Password'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Forgot Password'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:38::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-google'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33015427153536009413)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(14551758575898634472)
,p_button_name=>'Sign_In_Google'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Sign In Google'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.:APEX_AUTHENTICATION=Google:&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-google'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14551758906472634472)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14551758575898634472)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(14551727066926634452)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14551759379126634472)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14551758575898634472)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_post_element_text=>'<i id="pass-status" class="fa fa-eye field-icon" aria-hidden="true" onClick="viewPassword()"></i>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'onchange="htmldb_item_change(this)"  onkeydown="if (event.keyCode == 13) document.getElementById(''LOGIN'').focus();"'
,p_field_template=>wwv_flow_imp.id(14551727066926634452)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14551760407916634473)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(14551758575898634472)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_imp.id(14551759633819634473)||'.'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(14551727066926634452)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20206485585795032310)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(14551758575898634472)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20206485630583032311)
,p_event_id=>wwv_flow_imp.id(20206485585795032310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14551758575898634472)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16753119549220609344)
,p_name=>'Modal Close'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(14551758575898634472)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16753119603747609345)
,p_event_id=>wwv_flow_imp.id(16753119549220609344)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'console.log(''dialog closed'');'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14551762122761634474)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14551761796769634474)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );',
'',
'',
'    select USER_TYPE into :P0_USER_TYPE from MY_USERS where upper(USERNAME) = upper(:P9999_USERNAME );',
'',
'    :P0_USERNAME := upper(:P9999_USERNAME );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14551762990824634475)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14551762548092634475)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
