prompt --application/shared_components/security/authentications/custom_auth
begin
--   Manifest
--     AUTHENTICATION: Custom Auth
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
 p_id=>wwv_flow_imp.id(20192791648518339176)
,p_name=>'Custom Auth'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'ACL.CUSTOM_AUTH'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_imp.component_end;
end;
/
