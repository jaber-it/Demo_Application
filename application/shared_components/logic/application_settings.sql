prompt --application/shared_components/logic/application_settings
begin
--   Manifest
--     APPLICATION SETTINGS: 78259
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>13501875225360637847
,p_default_application_id=>78259
,p_default_id_offset=>0
,p_default_owner=>'FLMPJGAZDYSOYO'
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(33247302772677359154)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(33247298966743359147)
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(33247303058143359154)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(33247298762292359147)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
);
wwv_flow_imp.component_end;
end;
/
