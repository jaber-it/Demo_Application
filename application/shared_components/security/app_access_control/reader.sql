prompt --application/shared_components/security/app_access_control/reader
begin
--   Manifest
--     ACL ROLE: Reader
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>13501875225360637847
,p_default_application_id=>78259
,p_default_id_offset=>0
,p_default_owner=>'FLMPJGAZDYSOYO'
);
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(33247301313191359151)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
);
wwv_flow_imp.component_end;
end;
/
