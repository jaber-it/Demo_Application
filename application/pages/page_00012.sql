prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>13501875225360637847
,p_default_application_id=>78259
,p_default_id_offset=>0
,p_default_owner=>'FLMPJGAZDYSOYO'
);
wwv_flow_imp_page.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'User Wise Report View'
,p_alias=>'USER-WISE-REPORT-VIEW'
,p_step_title=>'User Wise Report View'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'   window.onbeforeunload = function (e) {',
'      e = e || window.event;',
'',
'      if (e) {',
'         e.returnValue = ''?'';',
'      }',
'',
'      // For Safari',
'      return ''?'';',
'',
'   };',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210625103158'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21732583533933260359)
,p_plug_name=>'User Wise Report View'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247210767798359072)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LOG_ID,',
'       IP_ADDRESS,',
'       LOGIN_USER,',
'       LOGIN_TIME,',
'       LOGOUT_TIME,',
'       LOG_DATE,',
'       CREATED,',
'       CREATED_BY,',
'       case when upper(:username) = ''jaber0181@gmail.com'' then ''Edit'' ',
'         else null end as Edi,',
'       CASE WHEN LOGIN_USER = ''JABER'' THEN',
'               ''Edit2''',
'           ELSE NULL END EDIT2',
'  from USERS_LOG'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_page_header=>'User Wise Report View'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(21732583608583260359)
,p_name=>'User Wise Report View'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JABER0181@GMAIL.COM'
,p_internal_uid=>21732583608583260359
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21732584033018260365)
,p_db_column_name=>'LOG_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Log Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21732584450328260366)
,p_db_column_name=>'IP_ADDRESS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Ip Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21732584806305260367)
,p_db_column_name=>'LOGIN_USER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Login User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21732585225448260367)
,p_db_column_name=>'LOGIN_TIME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Login Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21732585625379260367)
,p_db_column_name=>'LOGOUT_TIME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Logout Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21732586009225260368)
,p_db_column_name=>'LOG_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Log Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21732586440198260368)
,p_db_column_name=>'CREATED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Created'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21732586868155260369)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21375287170131442931)
,p_db_column_name=>'EDI'
,p_display_order=>18
,p_column_identifier=>'K'
,p_column_label=>'Edi'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21375287552750442935)
,p_db_column_name=>'EDIT2'
,p_display_order=>28
,p_column_identifier=>'L'
,p_column_label=>'Edit2'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(21734768140322697913)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'217347682'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LOG_ID:IP_ADDRESS:LOGIN_USER:LOGIN_TIME:LOGOUT_TIME:LOG_DATE:CREATED:CREATED_BY:EDI:EDIT2'
);
wwv_flow_imp.component_end;
end;
/
