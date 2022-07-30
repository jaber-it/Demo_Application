prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Change Password Page'
,p_alias=>'CHANGE-PASSWORD-PAGE'
,p_step_title=>'Change Password Page'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#t_Body_content_offset {',
'    height: 35px !important;',
'}',
'',
'.red {',
'    background-color: red;',
'    color: white;',
'    font-size: 30px;',
'    border-radius: 50px;',
'    right: 5px;',
'    margin-left: -35px;',
'}',
'',
'.green {',
'    font-size: 30px;',
'    background-color: green;',
'    color: white;',
'    border-radius: 50px;',
'    right: 5px;',
'    margin-left: -35px;',
'}',
'',
'.UID_view {',
'    font-size: 20px !important;',
'    color: #D40202 !important;',
'   ',
'}',
'',
'.UID_view a{',
' text-decoration: none;',
'}',
'',
'.brdr {',
'    border-radius: 5px;',
'}',
'',
'.t-Region-headerItems--title {',
'    text-align: center;',
'    padding: 0.6rem 1.2rem;',
'}',
'',
'.t-Region {',
'    border-radius: 20px;',
'}',
'',
'.t-Region--accent5:not(.t-Region--textContent)>.t-Region-header {',
'    background-color: #81BB5F;',
'    color: #fff;',
'    border-radius: 20px 0px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729194053'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31358693572446666116)
,p_plug_name=>'Full Body'
,p_region_name=>'full_body'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:margin-top-lg'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18548681415626089223)
,p_plug_name=>'Password Change (Not on YouTube)'
,p_parent_plug_id=>wwv_flow_imp.id(31358693572446666116)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:margin-top-lg'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31358693461497666115)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(31358693572446666116)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="margin-left: 30px;margin-right: 30px;">',
'',
unistr('<h3 align= "center" style="color:tomato;"><b><h4>\09AA\09BE\09B8\0993\09DF\09BE\09B0\09CD\09A1 \0987\0982\09B0\09C7\099C\09BF\09A4\09C7 \09A6\09BF\09A4\09C7 \09B9\09AC\09C7 \098F\09AC\0982 \09B8\09BE\09AC\09AE\09BF\099F \0995\09B0\09BE\09B0 \0986\0997\09C7 \099A\09CB\0996 \099A\09BF\09B9\09CD\09A8\09BF\09A4 \0986\0987\0995\09A8 \098F \0995\09CD\09B2\09BF\0995 \0995\09B0\09C7 \09A8\09BF\09B6\09CD\099A\09BF\09A4 \09B9\09DF\09C7 \09A8\09BF\09A8</h4></b> </h3>'),
'<div id="example1">',
unistr('  <h3 style="color:DarkBlue; "> <b>\09AA\09BE\09B8\0993\09AF\09BC\09BE\09B0\09CD\09A1 \09AC\09C8\09A7\0995\09B0\09A3 \09A4\09A5\09CD\09AF</b></h3>'),
'       <hr>',
'   <h3 style="color:black"> ',
unistr('       <li>\09AA\09BE\09B8\0993\09AF\09BC\09BE\09B0\09CD\09A1\09C7 A-Z \09A5\09C7\0995\09C7 \0995\09AE\09AA\0995\09CD\09B7\09C7 \098F\0995\099F\09BF \09AC\09A1\09BC \0985\0995\09CD\09B7\09B0 \09A5\09BE\0995\09A4\09C7 \09B9\09AC\09C7\0964</li>'),
unistr('       <li>\09AA\09BE\09B8\0993\09AF\09BC\09BE\09B0\09CD\09A1\09C7 \0985\09AC\09B6\09CD\09AF\0987 a-z \09A5\09C7\0995\09C7 \0995\09AE\09AA\0995\09CD\09B7\09C7 \098F\0995\099F\09BF \099B\09CB\099F \0985\0995\09CD\09B7\09B0 \09A5\09BE\0995\09A4\09C7 \09B9\09AC\09C7\0964</li>'),
unistr('       <li>\09AA\09BE\09B8\0993\09AF\09BC\09BE\09B0\09CD\09A1\09C7 0-9 \09AA\09B0\09CD\09AF\09A8\09CD\09A4  \0995\09AE\09AA\0995\09CD\09B7\09C7 \098F\0995\099F\09BF \09A8\09AE\09CD\09AC\09B0 \09A5\09BE\0995\09A4\09C7 \09B9\09AC\09C7\0964</li>'),
unistr('       <li>\09AA\09BE\09B8\0993\09AF\09BC\09BE\09B0\09CD\09A1\09C7 \0985\09AC\09B6\09CD\09AF\0987 \098F\0995\099F\09BF \09AC\09BF\09B6\09C7\09B7 \0985\0995\09CD\09B7\09B0 \09A5\09BE\0995\09A4\09C7 \09B9\09AC\09C7 (@, $, !, &, \0987\09A4\09CD\09AF\09BE\09A6\09BF)\0964 </li> '),
unistr('       <li>\09AA\09BE\09B8\0993\09AF\09BC\09BE\09B0\09CD\09A1\09C7\09B0 \09A6\09C8\09B0\09CD\0998\09CD\09AF \0995\09AE\09AA\0995\09CD\09B7\09C7 \09EE \0985\0995\09CD\09B7\09B0 \09B9\09A4\09C7 \09B9\09AC\09C7\0964</li>'),
unistr('       <li>\09B8\09AC \09A5\09C7\0995\09C7 \0997\09C1\09B0\09C1\09A4\09CD\09AC\09AA\09C2\09B0\09CD\09A3 \09B9\09B2\09CB \09AA\09BE\09B8\0993\09DF\09BE\09B0\09CD\09A1 \098F\09B0 \0998\09B0 \0996\09BE\09B2\09BF \09B0\09BE\0996\09BE \09AF\09BE\09AC\09C7 \09A8\09BE\0964</li>'),
unistr('       <!-- --  \0989\09A6\09BE\09B9\09B0\09A3: Abc#1234  ---->'),
unistr('       <li>\0989\09A6\09BE\09B9\09B0\09A3: Abc#1234</li>'),
'   </h3>',
'      <!-- -- <br>  ---->',
'       ',
unistr('  <h3 style="color:DarkBlue; "> <b>\09A8\09BF\09B0\09BE\09AA\09A4\09CD\09A4\09BE \09A8\09BF\09B0\09CD\09A6\09C7\09B6\09BE\09AC\09B2\09C0</b></h3>'),
'       <hr>',
'   <h3 style="color:black"> ',
unistr('       <li>\0986\09AA\09A8\09BE\09B0 \09AA\09BE\09B8\0993\09AF\09BC\09BE\09B0\09CD\09A1 \09AC\09BE \0985\09A8\09CD\09AF\09BE\09A8\09CD\09AF \09A8\09BF\09B0\09BE\09AA\09A4\09CD\09A4\09BE \09A4\09A5\09CD\09AF \0985\09A8\09CD\09AF \09AC\09CD\09AF\0995\09CD\09A4\09BF\09B0 \09A8\09BF\0995\099F \09AA\09CD\09B0\0995\09BE\09B6 \0995\09B0\09AC\09C7\09A8 \09A8\09BE\0964</li>'),
unistr('       <li>\098F\0987 \09B8\09BF\09B8\09CD\099F\09C7\09AE\09C7\09B0 \099C\09A8\09CD\09AF \0986\09AA\09A8\09BE\09B0 \09B8\09CB\09B6\09CD\09AF\09BE\09B2 \09AE\09BF\09A1\09BF\09DF\09BE\09DF \09AC\09CD\09AF\09AC\09B9\09C3\09A4 \09AA\09BE\09B8\0993\09AF\09BC\09BE\09B0\09CD\09A1 \09AC\09CD\09AF\09AC\09B9\09BE\09B0 \09A8\09BE \0995\09B0\09BE\09B0 \09AA\09B0\09BE\09AE\09B0\09CD\09B6 \09A6\09C7\0993\09AF\09BC\09BE \09B9\099A\09CD\099B\09C7\09F7</li>'),
unistr('       <li> <b> "save password for this site" </b>\098F\0987 \09AE\09C7\09B8\09C7\099C\099F\09BF\09B0 \09B8\09C7\09AD \09AC\09BE\099F\09A8\09C7 \0995\09CD\09B2\09BF\0995 \0995\09B0\09AC\09C7\09A8 \09A8\09BE\09F7</li>'),
unistr('       <li><strong>NB:</strong> \0986\09AA\09A8\09BE\09B0 \09AA\09BE\09B8\0993\09AF\09BC\09BE\09B0\09CD\09A1 \09B9\09BF\09B8\09C7\09AC\09C7 \099C\09A8\09CD\09AE \09A4\09BE\09B0\09BF\0996,\0987\09AE\09C7\0987\09B2/\09A8\09BE\09AE \09AC\09CD\09AF\09AC\09B9\09BE\09B0 \0995\09B0\09AC\09C7\09A8 \09A8\09BE\0964</li>'),
'   </h3><br> ',
'        <!-- -- <br>  ',
'      <h3 style="color:red;"> <b>Helpline </b></h3>',
'       <hr>',
'   <p style="color: black">',
'                 CDMS Help Desk: +8801320001428, +8801320001429 <br>',
'                 E-mail: addlspcdms@police.gov.bd, cdms@police.gov.bd',
'                 ',
'    </p>   ',
'    ---->',
'</div></div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18548682039547089229)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(18548681415626089223)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--danger:t-Button--simple:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'CHANGE'
,p_warn_on_unsaved_changes=>null
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(18548683190355089240)
,p_branch_name=>'Home Page'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:1::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7450050605196139610)
,p_name=>'P14_TAST_DATA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(18548681415626089223)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18548681515387089224)
,p_name=>'P14_USER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18548681415626089223)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18548681676896089225)
,p_name=>'P14_USUSERNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18548681415626089223)
,p_item_default=>':USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Username'
,p_post_element_text=>'Please choose a strong password and don''t reuse it for other accounts.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="text-align:left; font-size:30px; color:#009900;padding:10px"'
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18548681767253089226)
,p_name=>'P14_OLD_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18548681415626089223)
,p_item_default=>'jaber0181'
,p_prompt=>'Old Password'
,p_post_element_text=>'&nbsp <span id="bpid"></span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551728600610634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--indicatorAsterisk'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18548681838251089227)
,p_name=>'P14_NEW_PASSWORD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(18548681415626089223)
,p_prompt=>'New Password'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&nbsp <span id="newpass"></span>',
''))
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551728600610634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--indicatorAsterisk'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18548681928852089228)
,p_name=>'P14_CONFIRM_NEW_PASSWORD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(18548681415626089223)
,p_prompt=>'Confirm New Password'
,p_post_element_text=>'&nbsp <span id="conpass"></span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551728600610634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--indicatorAsterisk'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(18548682398756089232)
,p_validation_name=>'Old Password'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 9/10/2021 11:54:48 PM (QP5 v5.227.12220.39754) */',
'BEGIN',
'   RETURN acl.CUSTOM_AUTH (acl.GET_CURRENT_USER, :P14_OLD_PASSWORD);',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Old Password does not match'
,p_when_button_pressed=>wwv_flow_imp.id(18548682039547089229)
,p_associated_item=>wwv_flow_imp.id(18548681767253089226)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(18548682400675089233)
,p_validation_name=>'New Password'
,p_validation_sequence=>20
,p_validation=>':P14_NEW_PASSWORD = :P14_CONFIRM_NEW_PASSWORD'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'New Password doesn''t match to each other!!!'
,p_when_button_pressed=>wwv_flow_imp.id(18548682039547089229)
,p_associated_item=>wwv_flow_imp.id(18548681838251089227)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(31358695826805666139)
,p_validation_name=>'Password Validation'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF 8 <= LENGTH ( :P14_NEW_PASSWORD) AND LENGTH ( :P14_NEW_PASSWORD) <= 15',
'    THEN',
'        IF REGEXP_LIKE ( :P14_NEW_PASSWORD, ''^.*[0-9]'')',
'        THEN',
'            IF REGEXP_LIKE ( :P14_NEW_PASSWORD, ''^.*[a-z]'', ''c'')',
'            THEN',
'                IF REGEXP_LIKE ( :P14_NEW_PASSWORD, ''^.*[A-Z]'', ''c'')',
'                THEN',
'                    IF REGEXP_LIKE ( :P14_NEW_PASSWORD,',
'                                    ''^.*[!@#$%^&*()_]'',',
'                                    ''c'')',
'                    THEN',
'                        RETURN '''';',
'                    ELSE',
'                        RETURN ''Password has not one special character'';',
'                    END IF;',
'                ELSE',
'                    RETURN ''Password has not one UpperCase'';',
'                END IF;',
'            ELSE',
'                RETURN ''Password has not one LowerCase'';',
'            END IF;',
'        ELSE',
'            RETURN ''Password has not a numeric value'';',
'        END IF;',
'    ELSE',
'        RETURN ''Password Length Must be min 8 char and max 15 char',
'and your password length is'' || '' '' || LENGTH ( :P14_NEW_PASSWORD);',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_imp.id(18548682039547089229)
,p_associated_item=>wwv_flow_imp.id(18548681838251089227)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18548682110929089230)
,p_name=>'Get User Id'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18548682221290089231)
,p_event_id=>wwv_flow_imp.id(18548682110929089230)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_USER_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 9/10/2021 11:55:23 PM (QP5 v5.227.12220.39754) */',
'SELECT USER_ID',
'  FROM MY_USERS',
' WHERE UPPER (USERNAME) = :APP_USER'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7450050928636139613)
,p_name=>'Old Password'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_OLD_PASSWORD'
,p_condition_element=>'P14_OLD_PASSWORD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7450051097690139614)
,p_event_id=>wwv_flow_imp.id(7450050928636139613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    L_PASSWORD VARCHAR2 (4000); ',
'    L_STORED_PASSWORD   VARCHAR2 (4000); ',
'BEGIN',
'    SELECT PIN ',
'        INTO L_STORED_PASSWORD ',
'        FROM MY_USERS ',
'       WHERE is_active = ''1'' and LOWER (USERNAME) = LOWER (acl.GET_CURRENT_USER) and rownum<=1; ',
'       L_PASSWORD := acl.CUSTOM_HASH (acl.GET_CURRENT_USER, :P14_OLD_PASSWORD);',
'',
'',
'      IF L_PASSWORD = L_STORED_PASSWORD ',
'   THEN',
'      :P14_TAST_DATA := 1;',
'   ELSE',
'      :P14_TAST_DATA := 0;',
'   END IF;',
'END;',
''))
,p_attribute_02=>'P14_OLD_PASSWORD'
,p_attribute_03=>'P14_TAST_DATA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7450051108787139615)
,p_name=>'Ching Icon'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_TAST_DATA'
,p_condition_element=>'P14_TAST_DATA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7450051268119139616)
,p_event_id=>wwv_flow_imp.id(7450051108787139615)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#bpid'').removeClass(''fa fa-check-circle-o'');',
'$(''#bpid'').removeClass(''green'');',
'',
'$(''#bpid'').addClass(''fa fa-times-circle-o /*fa-lg fa-anim-flash*/'');',
'$(''#bpid'').addClass(''red'');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7450051311707139617)
,p_event_id=>wwv_flow_imp.id(7450051108787139615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#bpid'').removeClass(''fa fa-times-circle-o /*fa-lg fa-anim-flash*/'');',
'$(''#bpid'').removeClass(''red'');',
'',
'$(''#bpid'').addClass(''fa fa-check-circle-o'');',
'$(''#bpid'').addClass(''green'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7450051454983139618)
,p_name=>'Clear All'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7450051511689139619)
,p_event_id=>wwv_flow_imp.id(7450051454983139618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_NEW_PASSWORD,P14_CONFIRM_NEW_PASSWORD,P14_TAST_DATA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7450053392691139637)
,p_name=>'Show Icon New adn con Passwore'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7450053406145139638)
,p_event_id=>wwv_flow_imp.id(7450053392691139637)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    $(''#conpass'').addClass(''fa fa-times-circle-o /*fa-lg fa-anim-flash*/'');',
'    $(''#conpass'').addClass(''red'');',
'    $(''#newpass'').addClass(''fa fa-times-circle-o /*fa-lg fa-anim-flash*/'');',
'    $(''#newpass'').addClass(''red'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7450053525616139639)
,p_name=>'Chang Confirm Password'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_CONFIRM_NEW_PASSWORD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7450053688115139640)
,p_event_id=>wwv_flow_imp.id(7450053525616139639)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P14_NEW_PASSWORD") == $v("P14_CONFIRM_NEW_PASSWORD"))  {',
'        $(''#conpass'').removeClass(''fa fa-check-circle-o'');',
'    $(''#conpass'').removeClass(''green'');',
'    $(''#conpass'').addClass(''fa fa-times-circle-o /*fa-lg fa-anim-flash*/'');',
'    $(''#conpass'').addClass(''red'');',
'',
'',
'    $(''#newpass'').removeClass(''fa fa-check-circle-o'');',
'    $(''#newpass'').removeClass(''green'');',
'    $(''#newpass'').addClass(''fa fa-times-circle-o /*fa-lg fa-anim-flash*/'');',
'    $(''#newpass'').addClass(''red'');',
'   } else {',
'    $(''#conpass'').removeClass(''fa fa-times-circle-o /*fa-lg fa-anim-flash*/'');',
'    $(''#conpass'').removeClass(''red'');',
'    $(''#conpass'').addClass(''fa fa-check-circle-o'');',
'    $(''#conpass'').addClass(''green'');',
'',
'',
'    $(''#newpass'').removeClass(''fa fa-times-circle-o /*fa-lg fa-anim-flash*/'');',
'    $(''#newpass'').removeClass(''red'');',
'    $(''#newpass'').addClass(''fa fa-check-circle-o'');',
'    $(''#newpass'').addClass(''green'');',
'};',
'',
'',
'',
'if ($v(''P14_NEW_PASSWORD'') == '''' && $v(''P14_CONFIRM_NEW_PASSWORD'') == '''')  {',
'    ',
'    $(''#conpass'').addClass(''fa fa-times-circle-o /*fa-lg fa-anim-flash*/'');',
'    $(''#conpass'').addClass(''red'');',
'    $(''#newpass'').addClass(''fa fa-times-circle-o /*fa-lg fa-anim-flash*/'');',
'    $(''#newpass'').addClass(''red'');',
'};'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7450053766644139641)
,p_event_id=>wwv_flow_imp.id(7450053525616139639)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P14_NEW_PASSWORD") !== $v("P14_CONFIRM_NEW_PASSWORD"))  {',
'        $(''#conpass'').removeClass(''fa fa-check-circle-o'');',
'    $(''#conpass'').removeClass(''green'');',
'    $(''#conpass'').addClass(''fa fa-times-circle-o /*fa-lg fa-anim-flash*/'');',
'    $(''#conpass'').addClass(''red'');',
'',
'',
'    $(''#newpass'').removeClass(''fa fa-check-circle-o'');',
'    $(''#newpass'').removeClass(''green'');',
'    $(''#newpass'').addClass(''fa fa-times-circle-o /*fa-lg fa-anim-flash*/'');',
'    $(''#newpass'').addClass(''red'');',
'   } else {',
'    $(''#conpass'').removeClass(''fa fa-times-circle-o /*fa-lg fa-anim-flash*/'');',
'    $(''#conpass'').removeClass(''red'');',
'    $(''#conpass'').addClass(''fa fa-check-circle-o'');',
'    $(''#conpass'').addClass(''green'');',
'',
'',
'    $(''#newpass'').removeClass(''fa fa-times-circle-o /*fa-lg fa-anim-flash*/'');',
'    $(''#newpass'').removeClass(''red'');',
'    $(''#newpass'').addClass(''fa fa-check-circle-o'');',
'    $(''#newpass'').addClass(''green'');',
'};',
'',
'if ($v(''P14_NEW_PASSWORD'') == '''' && $v(''P14_CONFIRM_NEW_PASSWORD'') == '''')  {',
'    ',
'    $(''#conpass'').addClass(''fa fa-times-circle-o /*fa-lg fa-anim-flash*/'');',
'    $(''#conpass'').addClass(''red'');',
'    $(''#newpass'').addClass(''fa fa-times-circle-o /*fa-lg fa-anim-flash*/'');',
'    $(''#newpass'').addClass(''red'');',
'};',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18548682553338089234)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Processes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 9/10/2021 11:54:13 PM (QP5 v5.227.12220.39754) */',
'BEGIN',
'   UPDATE MY_USERS',
'      SET PASSWORD = :P14_CONFIRM_NEW_PASSWORD,',
'          pin = :P14_CONFIRM_NEW_PASSWORD',
'    WHERE user_id = :P14_USER_ID;',
'',
'   APEX_APPLICATION.g_print_success_message := ''Password Successfully Created'';',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      APEX_APPLICATION.g_print_success_message := ''Password Not Updated'';',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18548682694685089235)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear All'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
