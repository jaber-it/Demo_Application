prompt --application/shared_components/user_interface/lovs/product_name
begin
--   Manifest
--     PRODUCT NAME
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
 p_id=>wwv_flow_imp.id(25987669330223383243)
,p_lov_name=>'PRODUCT NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PRODUCT'
,p_return_column_name=>'PRODUCT_ID'
,p_display_column_name=>'PRODUCT_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
