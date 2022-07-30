prompt --application/shared_components/logic/application_items/app_msg
begin
--   Manifest
--     APPLICATION ITEM: APP_MSG
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(34330907314381939151)
,p_name=>'APP_MSG'
,p_protection_level=>'I'
);
wwv_flow_imp.component_end;
end;
/
