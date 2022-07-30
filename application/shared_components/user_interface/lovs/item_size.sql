prompt --application/shared_components/user_interface/lovs/item_size
begin
--   Manifest
--     ITEM_SIZE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(25987668713897383238)
,p_lov_name=>'ITEM_SIZE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'ITEM_SIZE'
,p_return_column_name=>'OID'
,p_display_column_name=>'SIZE_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'SIZE_NAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
