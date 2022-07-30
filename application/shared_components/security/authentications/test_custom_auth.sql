prompt --application/shared_components/security/authentications/test_custom_auth
begin
--   Manifest
--     AUTHENTICATION: TEST.CUSTOM_AUTH
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
 p_id=>wwv_flow_imp.id(33390845955990910833)
,p_name=>'TEST.CUSTOM_AUTH'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'ACL.CUSTOM_AUTH'
,p_attribute_05=>'N'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_imp.component_end;
end;
/
