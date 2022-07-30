prompt --application/pages/page_00037
begin
--   Manifest
--     PAGE: 00037
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
 p_id=>37
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Global Search Bar'
,p_alias=>'GLOBAL-SEARCH-BAR'
,p_step_title=>'Global Search Bar'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(30028745960029757641)
,p_name=>'Global Search Bar'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Country: '' || CNTR_NAME as Name,',
'          ''f?p=&''',
'       || ''APP_ID.:37:&''',
'       || ''SESSION.::&''',
'       || ''DEBUG.:RP,37:P37_COUNTRY_ID:''',
'       || OID',
'          AS entry_target',
'  FROM COUNTRY',
'UNION ALL',
'SELECT ''Division: '' || DIVI_NM as Name,',
'          ''f?p=&''',
'       || ''APP_ID.:8:&''',
'       || ''SESSION.::&''',
'       || ''DEBUG.:RP,8:P8_DEPARTMENT_ID:''',
'       || OID',
'  FROM DIVISION',
'UNION ALL',
'SELECT    ''Employee: ''',
'       || USERNAME',
'       || '' ''',
'       || FULL_NAME',
'       || '' (''',
'       || USER_ID',
'       || '')'',',
'          ''f?p=&''',
'       || ''APP_ID.:10:&''',
'       || ''SESSION.::&''',
'       || ''DEBUG.:RP,10:P10_EMPLOYEE_ID:''',
'       || USER_ID',
'  FROM MY_USERS',
'UNION ALL',
'SELECT ''District: '' || DIST_NM as Name,',
'          ''f?p=&''',
'       || ''APP_ID.:11:&''',
'       || ''SESSION.::&''',
'       || ''DEBUG.:RP,11:P11_JOB_ID:''',
'       || OID',
'  FROM DISTRICT',
'UNION ALL',
'SELECT ''Thana: '' || THAN_NM as Name,',
'          ''f?p=&''',
'       || ''APP_ID.:12:&''',
'       || ''SESSION.::&''',
'       || ''DEBUG.:RP,12:P12_LOCATION_ID:''',
'       || OID',
'  FROM THANAUPAZILA',
'UNION ALL',
'SELECT ''Unit: '' || UNIT_NM as Name,',
'          ''f?p=&''',
'       || ''APP_ID.:13:&''',
'       || ''SESSION.::&''',
'       || ''DEBUG.:RP,13:P13_REGION_ID:''',
'       || OID',
'  FROM UNIT'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14551694827812634439)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30269632698986952704)
,p_query_column_id=>1
,p_column_alias=>'NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30269632494722952702)
,p_query_column_id=>2
,p_column_alias=>'ENTRY_TARGET'
,p_column_display_sequence=>20
,p_column_heading=>'Entry Target'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30269632542421952703)
,p_name=>'P37_COUNTRY_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(30028745960029757641)
,p_prompt=>'Country Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30269632733036952705)
,p_name=>'P37_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30028745960029757641)
,p_prompt=>'New'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'SELECT',
'   ''Page: ''||entry_text AS entry_text,',
'   entry_target FROM apex_application_list_entries WHERE',
'   list_name=''Desktop Navigation Menu''',
'   AND application_id=95068;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp.component_end;
end;
/
