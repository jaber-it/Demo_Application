prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
--   Manifest
--     SHORTCUT: DELETE_CONFIRM_MSG
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>13501875225360637847
,p_default_application_id=>78259
,p_default_id_offset=>0
,p_default_owner=>'FLMPJGAZDYSOYO'
);
wwv_flow_imp_shared.create_shortcut(
 p_id=>wwv_flow_imp.id(33247302449395359153)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
wwv_flow_imp.component_end;
end;
/
