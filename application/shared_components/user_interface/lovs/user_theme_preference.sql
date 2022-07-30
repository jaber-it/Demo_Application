prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
--   Manifest
--     USER_THEME_PREFERENCE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>13501875225360637847
,p_default_application_id=>78259
,p_default_id_offset=>0
,p_default_owner=>'FLMPJGAZDYSOYO'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(33247321935324359195)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_imp.id(33247321935324359195)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(33247322205221359195)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
);
wwv_flow_imp.component_end;
end;
/
