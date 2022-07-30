prompt --workspace/credentials/google
begin
--   Manifest
--     CREDENTIAL: Google
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(33019259457455179520)
,p_name=>'Google'
,p_static_id=>'Google'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_prompt_on_install=>true
);
wwv_flow_imp.component_end;
end;
/
