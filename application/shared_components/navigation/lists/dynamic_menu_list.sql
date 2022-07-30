prompt --application/shared_components/navigation/lists/dynamic_menu_list
begin
--   Manifest
--     LIST: Dynamic Menu List
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(21426515119759090636)
,p_name=>'Dynamic Menu List'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT level , ',
'case when (select PAGE_ID from apex_application_pages where application_id =:APP_ID and PAGE_ID=:app_page_id) <> 101 then',
'MENU_NAME ',
'else',
'null',
'end label,',
'case when (select PAGE_ID from apex_application_pages where application_id =:APP_ID and PAGE_ID=:app_page_id) <> 101 then',
'''f?p=''||:APP_ID||'':''||MENU_LINK||'':''||:APP_SESSION ',
'else',
'null',
'end target,',
' ''NO:'' is_current,',
'nvl(icon_img,''fa-apex-square'') image, PARENT_OID ',
'FROM MENUS',
'where status = ''1'' and OID in (select PAGE_ID from USER_GROUP_PAGE_ACCESS where PID_GROUP=:P0_USER_TYPE)',
'start with PARENT_OID is null',
'connect by prior OID = PARENT_OID ',
'order siblings by SORT_BY;'))
,p_list_status=>'PUBLIC'
);
wwv_flow_imp.component_end;
end;
/
