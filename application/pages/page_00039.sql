prompt --application/pages/page_00039
begin
--   Manifest
--     PAGE: 00039
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
 p_id=>39
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Email Verification'
,p_alias=>'EMAIL-VERIFICATION'
,p_step_title=>'Email Verification'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(14551613867014634406)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'16'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33064801982545560439)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <div style = "text-align:center; color:red;">',
'          <h2><b>',
'               Congratulation, Your account verification is done.</br>',
'               <u> Change Your Password. </u>',
'    </b></h2>',
'      </div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33064699804069560418)
,p_plug_name=>'Email Verification'
,p_parent_plug_id=>wwv_flow_imp.id(33064801982545560439)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_email   NVARCHAR2 (50);',
'BEGIN',
'   SELECT EMAIL_ADDRESS',
'     INTO v_email',
'     FROM MY_USERS',
'    WHERE EMAIL_ADDRESS = :P39_EMAIL_ADDRESS;',
'',
'   IF v_email IS NOT NULL',
'   THEN',
'      UPDATE MY_USERS',
'         SET FORGOT_PASSWORD_USE = ''Done''',
'       WHERE EMAIL_ADDRESS = :P39_EMAIL_ADDRESS;',
'',
'      HTP.p (',
'         ''',
'      <style>',
'      .class1',
'      {',
'       text-align:center;',
'      }',
'      </style>',
' <div style = "text-align:center;">',
'          <h4>',
'               Congratulation, Your account verification is done.</br>',
'                 <a href="https://apex.oracle.com/pls/apex/my_stock/r/demo-application-oracle-apex/login">click</a> here to Change Password.',
'    </h4>',
'      </div>',
'      '');',
'   ELSE',
'      HTP.p (',
'         ''',
'            <style>',
'      .class2',
'      {',
'       text-align:center;',
'      }',
'      </style>',
'      <div class="class2">',
'          <p>',
'               Sorry, There is something went wrong.</br>',
'                 Please <a href="f?p=&APP_ID.:38">click</a> here for Registration again after 30min.  ',
'          </p>',
'      </div>',
'      '');',
'   END IF;',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      NULL;',
'END;'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33064801728244560437)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(33064699804069560418)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(33064801886852560438)
,p_branch_action=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:999::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33064699904752560419)
,p_name=>'P39_EMAIL_ADDRESS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33064699804069560418)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33064801055796560430)
,p_name=>'P39_USER_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(33064699804069560418)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33064801314748560433)
,p_name=>'P39_NEW_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(33064699804069560418)
,p_prompt=>'New Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_colspan=>10
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33064801499002560434)
,p_name=>'P39_CONFIRM_NEW_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(33064699804069560418)
,p_prompt=>'Confirm New Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_colspan=>10
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(33064801530235560435)
,p_validation_name=>'New Password'
,p_validation_sequence=>10
,p_validation=>':P39_NEW_PASSWORD = :P39_CONFIRM_NEW_PASSWORD'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'New Password doesn''t match to each other!!!'
,p_associated_item=>wwv_flow_imp.id(33064801314748560433)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33064801681305560436)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Processes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 9/10/2021 11:54:13 PM (QP5 v5.227.12220.39754) */',
'BEGIN',
'   UPDATE MY_USERS',
'      SET PASSWORD = :P39_CONFIRM_NEW_PASSWORD,',
'          pin = :P39_CONFIRM_NEW_PASSWORD',
'    WHERE user_id = :P39_USER_ID;',
'',
'   APEX_APPLICATION.g_print_success_message := ''Successfully Change Your Password'';',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      APEX_APPLICATION.g_print_success_message := ''Password Not Updated'';',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(33064801728244560437)
);
wwv_flow_imp.component_end;
end;
/
