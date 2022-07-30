prompt --application/shared_components/navigation/lists/application_configuration
begin
--   Manifest
--     LIST: Application Configuration
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>13501875225360637847
,p_default_application_id=>78259
,p_default_id_offset=>0
,p_default_owner=>'FLMPJGAZDYSOYO'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(33247448431071359407)
,p_name=>'Application Configuration'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(33247299142105359147)
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(33247448827764359408)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Configuration Options'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&SESSION.::&DEBUG.:10010:::'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>'Enable or disable application features'
,p_required_patch=>wwv_flow_imp.id(33247299142105359147)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
