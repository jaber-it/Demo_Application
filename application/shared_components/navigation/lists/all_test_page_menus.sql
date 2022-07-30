prompt --application/shared_components/navigation/lists/all_test_page_menus
begin
--   Manifest
--     LIST: All_TEST_PAGE_MENUS
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
 p_id=>wwv_flow_imp.id(13312711674755401366)
,p_name=>'All_TEST_PAGE_MENUS'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null as level_value ',
'       , "MENU_NAME" as label_value ',
'       , "MENU_LINK" as target_value',
'       , ''YES'' as is_current ',
'       , "ICON_IMG" as image_value ',
'       , null as image_attr_value ',
'       , null as image_alt_value ',
'from "MENUS"',
'order by 1'))
,p_list_status=>'PUBLIC'
);
wwv_flow_imp.component_end;
end;
/
