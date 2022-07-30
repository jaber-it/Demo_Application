prompt --application/pages/page_00071
begin
--   Manifest
--     PAGE: 00071
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_page.create_page(
 p_id=>71
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Mane Menu and Parent Menu List'
,p_alias=>'MANE-MENU-AND-PARENT-MENU-LIST'
,p_step_title=>'Mane Menu and Parent Menu List'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(21259961008714163541)
,p_name=>'Mane Menu and Parent Menu List'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT level, ',
'case when (select PAGE_ID from apex_application_pages where application_id =:APP_ID and PAGE_ID=:app_page_id) <> 101 then',
':P172_NEW_3 || OID || :P172_NEW_1 || '' ''  || ''#'' || '' '' || :P172_NEW_2',
'else',
'null',
'end label, ',
'',
' ''NO:'' is_current,SORT_BY display_seq',
'FROM MENUS where OID in (select menu_oid from MENUS_Access where GROUP_OID=16)',
'start with PARENT_OID is null',
'connect by prior OID = PARENT_OID ',
'order siblings by PARENT_OID '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14551694827812634439)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21259961721351163548)
,p_query_column_id=>1
,p_column_alias=>'LEVEL'
,p_column_display_sequence=>10
,p_column_heading=>'Level'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21259961899996163549)
,p_query_column_id=>2
,p_column_alias=>'LABEL'
,p_column_display_sequence=>20
,p_column_heading=>'Label'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21259961985767163550)
,p_query_column_id=>3
,p_column_alias=>'IS_CURRENT'
,p_column_display_sequence=>30
,p_column_heading=>'Is Current'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(23262955032938407301)
,p_query_column_id=>4
,p_column_alias=>'DISPLAY_SEQ'
,p_column_display_sequence=>40
,p_column_heading=>'Display Seq'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp.component_end;
end;
/
