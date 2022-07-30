prompt --application/shared_components/security/authentications/google
begin
--   Manifest
--     AUTHENTICATION: Google
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(33019409552789543848)
,p_name=>'Google'
,p_scheme_type=>'NATIVE_SOCIAL'
,p_attribute_01=>wwv_flow_imp.id(33019259457455179520)
,p_attribute_02=>'GOOGLE'
,p_attribute_07=>'profile'
,p_attribute_09=>'#sub# (#APEX_AUTH_NAME#)'
,p_attribute_11=>'N'
,p_attribute_13=>'Y'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_switch_in_session_yn=>'Y'
);
wwv_flow_imp.component_end;
end;
/
