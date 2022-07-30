prompt --application/shared_components/logic/application_items/file_id
begin
--   Manifest
--     APPLICATION ITEM: FILE_ID
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
 p_id=>wwv_flow_imp.id(9647730717196970579)
,p_name=>'FILE_ID'
,p_protection_level=>'N'
);
wwv_flow_imp.component_end;
end;
/
