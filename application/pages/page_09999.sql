prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
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
 p_id=>9999
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'All Test Page - Sign In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function viewPassword()',
'{',
'  var passwordInput = document.getElementById(''P9999_PASSWORD'');',
'  var passStatus = document.getElementById(''pass-status'');',
'',
'',
'  if (passwordInput.type == ''password''){',
'    passwordInput.type=''text'';',
'    passStatus.className=''fa fa-eye-slash field-icon'';',
'    ',
'  }',
'  else{',
'    passwordInput.type=''password'';',
'    passStatus.className=''fa fa-eye field-icon'';',
'  }',
'}',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.field-icon {',
'    right : 5px;',
'    margin-left: -25px;',
'    margin-top: 14px;',
'    position: relative;',
'    z-index: 2;',
'}'))
,p_step_template=>wwv_flow_imp.id(33247165363905359040)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'12'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20201111145920'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33247304298910359158)
,p_plug_name=>'All Test Page'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247211348399359073)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33247308956017359164)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_imp.id(33247304298910359158)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(33247185261157359055)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33247307041902359162)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(33247304298910359158)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33247304658724359158)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33247304298910359158)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(33247273335695359119)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33247305072392359159)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(33247304298910359158)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_post_element_text=>'<i id="pass-status" class="fa fa-eye field-icon" aria-hidden="true" onClick="viewPassword()"></i>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'onchange="htmldb_item_change(this)"  onkeydown="if (event.keyCode == 13) document.getElementById(''LOGIN'').focus();"'
,p_field_template=>wwv_flow_imp.id(33247273335695359119)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33247306123992359161)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(33247304298910359158)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_imp.id(33247305333250359160)||'.'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(33247273335695359119)
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33247307817217359163)
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
 p_id=>wwv_flow_imp.id(33247307435658359163)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33247308666997359164)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33247308257090359164)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9062256139795089801)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Autologin'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_app_user varchar2(100);',
'  v_password varchar2(100);',
'  v_relogin_hash varchar2(100);',
'',
'  v_cookie_hash owa_cookie.cookie;',
'  v_cookie_user owa_cookie.cookie;',
'begin ',
'  -- read cookie',
'  v_cookie_hash  := owa_cookie.get(''C_LOGIN_HASH'');',
'  v_cookie_user  := owa_cookie.get(''C_LOGIN_USER'');',
'  ',
'  -- check if an cookie exist',
'  if v_cookie_user.num_vals != 0 then',
'      -- Create Hash value',
'      select ',
'      CUST_NUMBER.GET_32_BASE_NUMBER (lower(v_cookie_user.vals (1))||''''||to_char(sysdate-5, ''dd.mm.yyyy hh24:mi''))',
'      into v_relogin_hash',
'      from dual;',
'      ',
'     -- Debug in a text area on page 101',
'      -- :P101_COMPARE_HASH := ''New_''||v_relogin_hash||'' Old_''||v_cookie_hash.vals (1);',
'',
'      -- Compare Hash values',
'      if v_cookie_hash.vals (1) = v_relogin_hash and v_cookie_hash.num_vals != 0  then',
'        -- Auto-Login',
'        v_app_user := v_cookie_user.vals (1);',
'        v_password := ''autologin''; -- Password must be saved in plaintext to be able to login ',
'',
'        wwv_flow_custom_auth_std.login(',
'            P_UNAME       => v_app_user,',
'            P_PASSWORD    => v_password,',
'            P_SESSION_ID  => APEX_CUSTOM_AUTH.GET_NEXT_SESSION_ID,',
'            P_FLOW_PAGE   => :APP_ID||'':1'',',
'            P_PRESERVE_CASE => TRUE',
'        );',
'',
'      end if;',
'  end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
