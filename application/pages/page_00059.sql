prompt --application/pages/page_00059
begin
--   Manifest
--     PAGE: 00059
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
 p_id=>59
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Generate DDL source code'
,p_alias=>'GENERATE-DDL-SOURCE-CODE'
,p_step_title=>'Generate DDL source code'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47233200213746847543)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551662801852634426)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'SELECT DBMS_METADATA.GET_DDL (''TABLE'', table_name)  AS All_TABLE  FROM USER_TABLES',
'',
'/*',
'SELECT DBMS_METADATA.get_ddl (''USER'', u.username)     AS ddl',
'  FROM dba_users u',
' WHERE u.username = :v_username',
'UNION ALL',
'SELECT DBMS_METADATA.get_granted_ddl (''TABLESPACE_QUOTA'', tq.username)    AS ddl',
'  FROM dba_ts_quotas tq',
' WHERE tq.username = :v_username AND ROWNUM = 1',
'UNION ALL',
'SELECT DBMS_METADATA.get_granted_ddl (''ROLE_GRANT'', rp.grantee)     AS ddl',
'  FROM dba_role_privs rp',
' WHERE rp.grantee = :v_username AND ROWNUM = 1',
'UNION ALL',
'SELECT DBMS_METADATA.get_granted_ddl (''SYSTEM_GRANT'', sp.grantee)     AS ddl',
'  FROM dba_sys_privs sp',
' WHERE sp.grantee = :v_username AND ROWNUM = 1',
'UNION ALL',
'SELECT DBMS_METADATA.get_granted_ddl (''OBJECT_GRANT'', tp.grantee)     AS ddl',
'  FROM dba_tab_privs tp',
' WHERE tp.grantee = :v_username AND ROWNUM = 1',
'UNION ALL',
'SELECT DBMS_METADATA.get_granted_ddl (''DEFAULT_ROLE'', rp.grantee)     AS ddl',
'  FROM dba_role_privs rp',
' WHERE rp.grantee = :v_username AND rp.default_role = ''YES'' AND ROWNUM = 1',
'UNION ALL',
'SELECT TO_CLOB  AS ddl',
'  FROM dba_users u',
' WHERE u.username = :v_username AND u.profile <> ''DEFAULT'' AND ROWNUM = 1',
'UNION ALL',
'SELECT DBMS_METADATA.get_ddl (''PROFILE'', u.profile)     AS ddl',
'  FROM dba_users u',
' WHERE u.username = :v_username AND u.profile <> ''DEFAULT''',
'UNION ALL',
'SELECT TO_CLOB     AS ddl',
'  FROM dba_users u',
' WHERE u.username = :v_username AND u.profile <> ''DEFAULT'' AND ROWNUM = 1',
' ',
'*/',
'/*',
'Get DDL for All',
'SELECT DBMS_METADATA.GET_DDL (''TABLE'', table_name)  AS All_TABLE  FROM USER_TABLES',
'SELECT DBMS_METADATA.get_ddl (''INDEX'', index_name, owner) FROM   all_indexes',
'SELECT DBMS_METADATA.get_ddl (''VIEW'', view_name, owner) FROM   all_views',
'SELECT DBMS_METADATA.get_ddl (''TABLESPACE'', tablespace_name) FROM   dba_tablespaces',
'SELECT DBMS_METADATA.get_ddl (''CONSTRAINT'', constraint_name, owner) FROM   all_constraints',
'SELECT DBMS_METADATA.get_ddl (''SEQUENCE'', sequence_name, sequence_owner) FROM   all_sequences',
'SELECT DBMS_METADATA.get_ddl (''DB_LINK'', db_link, owner) FROM   dba_db_links',
'',
'',
'select dbms_metadata.get_granted_ddl(''SYSTEM_GRANT'',''[Owner_Schema]'') from dual;',
'SELECT DBMS_METADATA.get_ddl (''VIEW'', view_name, owner) FROM all_views',
'',
'',
'',
'',
'',
'',
'',
'SELECT DBMS_METADATA.GET_DDL(''<object_type'',''<object_name>'',''<object owner>'') FROM DUAL',
'SELECT ',
'(CASE WHEN line = 1 THEN ''create or replace '' || text ELSE text END) texto ',
'FROM user_source',
'',
'',
'    ',
'',
'    SELECT DBMS_METADATA.GET_DDL (''TABLE'', table_name) ',
'    FROM USER_TABLES;',
'',
'    SELECT object_type,',
'              dbms_metadata.get_ddl (object_type,'' '',''_''), object_name, owner AS ddl_source',
'    FROM all_objects',
'INDEX',
'PROCEDURE',
'FUNCTION',
'TRIGGER',
'VIEW',
'',
'    */'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'New'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(47233200396865847544)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JABER0181@GMAIL.COM'
,p_internal_uid=>47233200396865847544
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50872903853202172601)
,p_db_column_name=>'ALL_TABLE'
,p_display_order=>10
,p_column_identifier=>'C'
,p_column_label=>'All Table'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(48728249512619035956)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'487282496'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ALL_TABLE'
);
wwv_flow_imp.component_end;
end;
/
