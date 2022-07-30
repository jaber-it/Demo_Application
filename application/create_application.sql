prompt --application/create_application
begin
--   Manifest
--     FLOW: 95068
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_MYSTOCK')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Demo Applications Oracle Apex')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'DEMO-APPLICATION-ORACLE-APEX')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'BF8DE61224661A44BC23D1932D54FECE06D39FC1A78A88E31DC2D2D6E0D21C2D'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'21.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'SESSION'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DD-MON-YYYY'
,p_date_time_format=>'DD-MON-YYYY HH:MIPM'
,p_timestamp_format=>'DD-MON-YYYY HH:MI:SSXFF PM'
,p_timestamp_tz_format=>'DD-MON-YYYY HH:MIPM'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2021.06.18.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_imp.id(20192791648518339176)
,p_application_tab_set=>0
,p_logo=>'#APP_FILES#app-95068-logo.png'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'Y'
,p_tokenize_row_search=>'N'
,p_friendly_url=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Demo Applications Oracle Apex'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220730115543'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>147
,p_ui_type_name => null
,p_print_server_type=>'INSTANCE'
,p_is_pwa=>'N'
);
wwv_flow_imp.component_end;
end;
/
