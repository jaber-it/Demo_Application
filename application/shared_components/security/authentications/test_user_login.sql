prompt --application/shared_components/security/authentications/test_user_login
begin
--   Manifest
--     AUTHENTICATION: Test.user_login
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>13501875225360637847
,p_default_application_id=>78259
,p_default_id_offset=>0
,p_default_owner=>'FLMPJGAZDYSOYO'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(33390773750000805903)
,p_name=>'Test.user_login'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'test_user_login'
,p_attribute_05=>'N'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FUNCTION test_user_login',
'(p_username IN VARCHAR2, p_password IN VARCHAR2)',
'RETURN BOOLEAN',
'AS',
'hasil NUMBER := 0;',
'BEGIN',
'SELECT 1 INTO hasil FROM MY_USERS',
'WHERE UPPER(username) = UPPER(p_username)',
'AND password = p_password',
'AND IS_ACTIVE = 1;',
'insert into USERS_log ( LOG_ID,LOGIN_USER,LOGIN_TIME,LOG_DATE,IP_ADDRESS) values (USERS_LOG_SEQ.nextval,p_username,sysdate,sysdate,owa_util.get_cgi_env(''REMOTE_ADDR''));',
'RETURN TRUE;',
'EXCEPTION WHEN NO_DATA_FOUND THEN',
'RETURN FALSE;',
'END test_user_login;'))
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_imp.component_end;
end;
/
