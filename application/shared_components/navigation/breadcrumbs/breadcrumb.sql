prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(14551607125351634402)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(186954781268230223)
,p_short_name=>'Copy To Clipboard'
,p_link=>'f?p=&APP_ID.:67:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>67
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(673619985768540226)
,p_short_name=>'Copy To Clipboard Finial Code'
,p_link=>'f?p=&APP_ID.:61:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>61
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7463939658028589675)
,p_parent_id=>wwv_flow_imp.id(14551607351259634402)
,p_short_name=>'How to Get Device ID Use  JavaScript Code'
,p_link=>'f?p=&APP_ID.:47:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>47
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10719926780565799526)
,p_short_name=>'Call Web Service Using JavaScript'
,p_link=>'f?p=&APP_ID.:65:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>65
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14551607351259634402)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(28538746929557627727)
,p_short_name=>'Replace Text In Oracle Apex'
,p_link=>'f?p=&APP_ID.:72:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>72
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(35873120040091183309)
,p_short_name=>'Preview Multiple Images Before Upload Using JavaScript'
,p_link=>'f?p=&APP_ID.:73:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>73
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(36048282047704075477)
,p_short_name=>'Parse XLSX and CSV'
,p_link=>'f?p=&APP_ID.:74:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>74
);
wwv_flow_imp.component_end;
end;
/
