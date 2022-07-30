prompt --application/pages/page_00032
begin
--   Manifest
--     PAGE: 00032
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
 p_id=>32
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'SYS CONTEXT'
,p_alias=>'SYS-CONTEXT'
,p_step_title=>'SYS CONTEXT'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210522161116'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7144306675526501107)
,p_name=>'SYS_CONTEXT '
,p_template=>wwv_flow_imp.id(33247212693934359074)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent9:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select res.*',
'from (',
'  select *',
'  from (',
'    select',
'      sys_context (''userenv'',''ACTION'') ACTION,',
'      sys_context (''userenv'',''AUDITED_CURSORID'') AUDITED_CURSORID,',
'      sys_context (''userenv'',''AUTHENTICATED_IDENTITY'') AUTHENTICATED_IDENTITY,',
'      sys_context (''userenv'',''AUTHENTICATION_DATA'') AUTHENTICATION_DATA,',
'      sys_context (''userenv'',''AUTHENTICATION_METHOD'') AUTHENTICATION_METHOD,',
'      sys_context (''userenv'',''BG_JOB_ID'') BG_JOB_ID,',
'      sys_context (''userenv'',''CLIENT_IDENTIFIER'') CLIENT_IDENTIFIER,',
'      sys_context (''userenv'',''CLIENT_INFO'') CLIENT_INFO,',
'      sys_context (''userenv'',''CURRENT_BIND'') CURRENT_BIND,',
'      sys_context (''userenv'',''CURRENT_EDITION_ID'') CURRENT_EDITION_ID,',
'      sys_context (''userenv'',''CURRENT_EDITION_NAME'') CURRENT_EDITION_NAME,',
'      sys_context (''userenv'',''CURRENT_SCHEMA'') CURRENT_SCHEMA,',
'      sys_context (''userenv'',''CURRENT_SCHEMAID'') CURRENT_SCHEMAID,',
'      sys_context (''userenv'',''CURRENT_SQL'') CURRENT_SQL,',
'      sys_context (''userenv'',''CURRENT_SQLn'') CURRENT_SQLn,',
'      sys_context (''userenv'',''CURRENT_SQL_LENGTH'') CURRENT_SQL_LENGTH,',
'      sys_context (''userenv'',''CURRENT_USER'') CURRENT_USER,',
'      sys_context (''userenv'',''CURRENT_USERID'') CURRENT_USERID,',
'      sys_context (''userenv'',''DATABASE_ROLE'') DATABASE_ROLE,',
'      sys_context (''userenv'',''DB_DOMAIN'') DB_DOMAIN,',
'      sys_context (''userenv'',''DB_NAME'') DB_NAME,',
'      sys_context (''userenv'',''DB_UNIQUE_NAME'') DB_UNIQUE_NAME,',
'      sys_context (''userenv'',''DBLINK_INFO'') DBLINK_INFO,',
'      sys_context (''userenv'',''ENTRYID'') ENTRYID,',
'      sys_context (''userenv'',''ENTERPRISE_IDENTITY'') ENTERPRISE_IDENTITY,',
'      sys_context (''userenv'',''FG_JOB_ID'') FG_JOB_ID,',
'      sys_context (''userenv'',''GLOBAL_CONTEXT_MEMORY'') GLOBAL_CONTEXT_MEMORY,',
'      sys_context (''userenv'',''GLOBAL_UID'') GLOBAL_UID,',
'      sys_context (''userenv'',''HOST'') HOST,',
'      sys_context (''userenv'',''IDENTIFICATION_TYPE'') IDENTIFICATION_TYPE,',
'      sys_context (''userenv'',''INSTANCE'') INSTANCE,',
'      sys_context (''userenv'',''INSTANCE_NAME'') INSTANCE_NAME,',
'      sys_context (''userenv'',''IP_ADDRESS'') IP_ADDRESS,',
'      sys_context (''userenv'',''ISDBA'') ISDBA,',
'      sys_context (''userenv'',''LANG'') LANG,',
'      sys_context (''userenv'',''LANGUAGE'') LANGUAGE,',
'      sys_context (''userenv'',''MODULE'') MODULE,',
'      sys_context (''userenv'',''NETWORK_PROTOCOL'') NETWORK_PROTOCOL,',
'      sys_context (''userenv'',''NLS_CALENDAR'') NLS_CALENDAR,',
'      sys_context (''userenv'',''NLS_CURRENCY'') NLS_CURRENCY,',
'      sys_context (''userenv'',''NLS_DATE_FORMAT'') NLS_DATE_FORMAT,',
'      sys_context (''userenv'',''NLS_DATE_LANGUAGE'') NLS_DATE_LANGUAGE,',
'      sys_context (''userenv'',''NLS_SORT'') NLS_SORT,',
'      sys_context (''userenv'',''NLS_TERRITORY'') NLS_TERRITORY,',
'      sys_context (''userenv'',''OS_USER'') OS_USER,',
'      sys_context (''userenv'',''POLICY_INVOKER'') POLICY_INVOKER,',
'      sys_context (''userenv'',''PROXY_ENTERPRISE_IDENTITY'') PROXY_ENTERPRISE_IDENTITY,',
'      sys_context (''userenv'',''PROXY_USER'') PROXY_USER,',
'      sys_context (''userenv'',''PROXY_USERID'') PROXY_USERID,',
'      sys_context (''userenv'',''SERVER_HOST'') SERVER_HOST,',
'      sys_context (''userenv'',''SERVICE_NAME'') SERVICE_NAME,',
'      sys_context (''userenv'',''SESSION_EDITION_ID'') SESSION_EDITION_ID,',
'      sys_context (''userenv'',''SESSION_EDITION_NAME'') SESSION_EDITION_NAME,',
'      sys_context (''userenv'',''SESSION_USER'') SESSION_USER,',
'      sys_context (''userenv'',''SESSION_USERID'') SESSION_USERID,',
'      sys_context (''userenv'',''SESSIONID'') SESSIONID,',
'      sys_context (''userenv'',''SID'') SID,',
'      sys_context (''userenv'',''STATEMENTID'') STATEMENTID,',
'      sys_context (''userenv'',''TERMINAL'') TERMINAL',
'    from dual',
'    -- where sys_context (''userenv'',''SESSIONID'') NOT in (''SYS'', ''XDB'')    -- <<<<< filter by user',
'  )',
'  unpivot include nulls (',
'    val for name in (action, audited_cursorid, authenticated_identity, authentication_data, authentication_method, bg_job_id, client_identifier, client_info, current_bind, current_edition_id, current_edition_name, current_schema, current_schemaid, cu'
||'rrent_sql, current_sqln, current_sql_length, current_user, current_userid, database_role, db_domain, db_name, db_unique_name, dblink_info, entryid, enterprise_identity, fg_job_id, global_context_memory, global_uid, host, identification_type, instance'
||', instance_name, ip_address, isdba, lang, language, module, network_protocol, nls_calendar, nls_currency, nls_date_format, nls_date_language, nls_sort, nls_territory, os_user, policy_invoker, proxy_enterprise_identity, proxy_user, proxy_userid, serve'
||'r_host, service_name, session_edition_id, session_edition_name, session_user, session_userid, sessionid, sid, statementid, terminal)',
'  )',
') res'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(33247241596394359095)
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
 p_id=>wwv_flow_imp.id(7144306784110501108)
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
 p_id=>wwv_flow_imp.id(7144306886824501109)
,p_query_column_id=>2
,p_column_alias=>'VAL'
,p_column_display_sequence=>20
,p_column_heading=>'Val'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7144306903768501110)
,p_plug_name=>'SYS_CONTEXT - Code'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247195628587359062)
,p_plug_display_sequence=>30
,p_plug_source=>'<h2 style="text-align: center;"><span style="color: red; font-family: times;">&nbsp;SYS CONTEXT - Code In Oracle Apex</span></h2><blockquote style="border: none; margin: 0 0 0 40px; padding: 0px;"><div style="text-align: left;"><span style="font-fami'
||'ly: times; font-size: large; white-space: pre;">1. Create Region and C</span><span style="background-color: white; color: #262626; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;">lassic </span><span style="font-family: times; font-s'
||'ize: large; white-space: pre;">Report Use The SQL Query</span></div></blockquote><div><span style="font-family: times; font-size: large; white-space: pre;"><br /></span></div><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; te'
||'xt-align: left;"><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: t'
||'imes;"><span style="box-sizing: border-box; color: navy; font-weight: bold;">select</span> res.*</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: b'
||'order-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;"><span style="box-sizing: border-box; color: navy; font-weight: bold;">from</span> (</span></pre></div></blockquote><blockquote style'
||'="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">  <span style="box-sizing: '
||'border-box; color: navy; font-weight: bold;">select</span> *</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-heig'
||'ht: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">  <span style="box-sizing: border-box; color: navy; font-weight: bold;">from</span> (</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0p'
||'x 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">    <span style="box-sizing: border-box; color: navy; font-we'
||'ight: bold;">select</span></span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; marg'
||'in-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''ACTION''</span>) ACTION,</span></pre></div></blockquote><blockqu'
||'ote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context '
||'(<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''AUDITED_CURSORID''</span>) AUDITED_CURSORID,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 4'
||'0px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: b'
||'lue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''AUTHENTICATED_IDENTITY''</span>) AUTHENTICATED_IDENTITY,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: lef'
||'t;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style'
||'="box-sizing: border-box; color: blue;">''AUTHENTICATION_DATA''</span>) AUTHENTICATION_DATA,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-'
||'box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">'
||'''AUTHENTICATION_METHOD''</span>) AUTHENTICATION_METHOD,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15'
||'px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''BG_JOB_ID''</span>) BG_JOB_ID,</span'
||'></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-'
||'family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''CLIENT_IDENTIFIER''</span>) CLIENT_IDENTIFIER,</span></pre></div></blockquote><blockquote style='
||'"border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span sty'
||'le="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''CLIENT_INFO''</span>) CLIENT_INFO,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; t'
||'ext-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</spa'
||'n>,<span style="box-sizing: border-box; color: blue;">''CURRENT_BIND''</span>) CURRENT_BIND,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-'
||'box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">'
||'''CURRENT_EDITION_ID''</span>) CURRENT_EDITION_ID,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; ma'
||'rgin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''CURRENT_EDITION_NAME''</span>) CURRENT_EDI'
||'TION_NAME,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><s'
||'pan style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''CURRENT_SCHEMA''</span>) CURRENT_SCHEMA,</span></pre></div></blockquote><blockqu'
||'ote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context '
||'(<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''CURRENT_SCHEMAID''</span>) CURRENT_SCHEMAID,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 4'
||'0px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: b'
||'lue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''CURRENT_SQL''</span>) CURRENT_SQL,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="b'
||'ox-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-b'
||'ox; color: blue;">''CURRENT_SQLn''</span>) CURRENT_SQLn,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15'
||'px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''CURRENT_SQL_LENGTH''</span>) CURRENT'
||'_SQL_LENGTH,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;">'
||'<span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''CURRENT_USER''</span>) <span style="box-sizing: border-box; color: navy; font-'
||'weight: bold;">CURRENT_USER</span>,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: '
||'0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''CURRENT_USERID''</span>) CURRENT_USERID,</span></pre></'
||'div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: t'
||'imes;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''DATABASE_ROLE''</span>) DATABASE_ROLE,</span></pre></div></blockquote><blockquote style="border: none; ma'
||'rgin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: b'
||'order-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''DB_DOMAIN''</span>) DB_DOMAIN,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><di'
||'v><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-s'
||'izing: border-box; color: blue;">''DB_NAME''</span>) DB_NAME,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-heigh'
||'t: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''DB_UNIQUE_NAME''</span>) DB_UNI'
||'QUE_NAME,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><sp'
||'an style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''DBLINK_INFO''</span>) DBLINK_INFO,</span></pre></div></blockquote><blockquote sty'
||'le="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span '
||'style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''ENTRYID''</span>) ENTRYID,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-a'
||'lign: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<s'
||'pan style="box-sizing: border-box; color: blue;">''ENTERPRISE_IDENTITY''</span>) ENTERPRISE_IDENTITY,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing'
||': border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color'
||': blue;">''FG_JOB_ID''</span>) FG_JOB_ID,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bott'
||'om: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''GLOBAL_CONTEXT_MEMORY''</span>) GLOBAL_CONTEXT_MEMO'
||'RY,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span sty'
||'le="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''GLOBAL_UID''</span>) GLOBAL_UID,</span></pre></div></blockquote><blockquote style="bord'
||'er: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="b'
||'ox-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''HOST''</span>) <span style="box-sizing: border-box; color: navy; font-weight: bold;">HOST</span>,</span></pre></div></blockquote><blockquote styl'
||'e="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span s'
||'tyle="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''IDENTIFICATION_TYPE''</span>) IDENTIFICATION_TYPE,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40p'
||'x; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blu'
||'e;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''INSTANCE''</span>) INSTANCE,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizin'
||'g: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; colo'
||'r: blue;">''INSTANCE_NAME''</span>) INSTANCE_NAME,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; ma'
||'rgin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''IP_ADDRESS''</span>) IP_ADDRESS,</span></p'
||'re></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-fami'
||'ly: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''ISDBA''</span>) ISDBA,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0'
||'px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; '
||'color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''LANG''</span>) LANG,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-siz'
||'ing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; co'
||'lor: blue;">''LANGUAGE''</span>) <span style="box-sizing: border-box; color: navy; font-weight: bold;">LANGUAGE</span>,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre'
||' style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing:'
||' border-box; color: blue;">''MODULE''</span>) MODULE,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px;'
||' margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''NETWORK_PROTOCOL''</span>) NETWORK_PROT'
||'OCOL,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span s'
||'tyle="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''NLS_CALENDAR''</span>) NLS_CALENDAR,</span></pre></div></blockquote><blockquote style'
||'="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span st'
||'yle="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''NLS_CURRENCY''</span>) NLS_CURRENCY,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px'
||'; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</'
||'span>,<span style="box-sizing: border-box; color: blue;">''NLS_DATE_FORMAT''</span>) NLS_DATE_FORMAT,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing'
||': border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color'
||': blue;">''NLS_DATE_LANGUAGE''</span>) NLS_DATE_LANGUAGE,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 1'
||'5px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''NLS_SORT''</span>) NLS_SORT,</span>'
||'</pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-f'
||'amily: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''NLS_TERRITORY''</span>) NLS_TERRITORY,</span></pre></div></blockquote><blockquote style="border: '
||'none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-s'
||'izing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''OS_USER''</span>) OS_USER,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"'
||'><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="b'
||'ox-sizing: border-box; color: blue;">''POLICY_INVOKER''</span>) POLICY_INVOKER,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #'
||'262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''PROXY_ENTERP'
||'RISE_IDENTITY''</span>) PROXY_ENTERPRISE_IDENTITY,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; m'
||'argin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''PROXY_USER''</span>) PROXY_USER,</span></'
||'pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-fam'
||'ily: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''PROXY_USERID''</span>) PROXY_USERID,</span></pre></div></blockquote><blockquote style="border: none'
||'; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizin'
||'g: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''SERVER_HOST''</span>) SERVER_HOST,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: le'
||'ft;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span styl'
||'e="box-sizing: border-box; color: blue;">''SERVICE_NAME''</span>) SERVICE_NAME,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #'
||'262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''SESSION_EDIT'
||'ION_ID''</span>) SESSION_EDITION_ID,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: '
||'0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''SESSION_EDITION_NAME''</span>) SESSION_EDITION_NAME,</s'
||'pan></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="fo'
||'nt-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''SESSION_USER''</span>) <span style="box-sizing: border-box; color: navy; font-weight: bold;">'
||'SESSION_USER</span>,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top'
||': 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''SESSION_USERID''</span>) SESSION_USERID,</span></pre></div></blockquot'
||'e><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sy'
||'s_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''SESSIONID''</span>) SESSIONID,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px;'
||' padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;'
||'">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''SID''</span>) SID,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-bo'
||'x; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''S'
||'TATEMENTID''</span>) STATEMENTID,</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px'
||'; margin-top: 0px;"><span style="font-family: times;">      sys_context (<span style="box-sizing: border-box; color: blue;">''userenv''</span>,<span style="box-sizing: border-box; color: blue;">''TERMINAL''</span>) TERMINAL</span></pre></div></blockquote'
||'><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">    <span'
||' style="box-sizing: border-box; color: navy; font-weight: bold;">from</span> dual</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; colo'
||'r: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">    <span style="box-sizing: border-box; color: #008800; font-style: italic;">-- where sys_context (''userenv'',''SESSIONID'') NOT in (''SYS'', ''XDB'')   '
||' -- &lt;&lt;&lt;&lt;&lt; filter by user</span></span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; marg'
||'in-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">  )</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626'
||'; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">  unpivot include nulls (</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pr'
||'e style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: times;">    val <span style="box-sizing: border-box; color: navy; font-weight: bold;">for</span> name <span style="box'
||'-sizing: border-box; color: navy; font-weight: bold;">in</span> (action, audited_cursorid, authenticated_identity, authentication_data, authentication_method, bg_job_id, client_identifier, client_info, current_bind, current_edition_id, current_editio'
||'n_name, current_schema, current_schemaid, current_sql, current_sqln, current_sql_length, <span style="box-sizing: border-box; color: navy; font-weight: bold;">current_user</span>, current_userid, database_role, db_domain, db_name, db_unique_name, dbl'
||'ink_info, entryid, enterprise_identity, fg_job_id, global_context_memory, global_uid, <span style="box-sizing: border-box; color: navy; font-weight: bold;">host</span>, identification_type, instance, instance_name, ip_address, isdba, lang, <span styl'
||'e="box-sizing: border-box; color: navy; font-weight: bold;">language</span>, module, network_protocol, nls_calendar, nls_currency, nls_date_format, nls_date_language, nls_sort, nls_territory, os_user, policy_invoker, proxy_enterprise_identity, proxy_'
||'user, proxy_userid, server_host, service_name, session_edition_id, session_edition_name, <span style="box-sizing: border-box; color: navy; font-weight: bold;">session_user</span>, session_userid, sessionid, sid, statementid, terminal)</span></pre></d'
||'iv></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><span style="font-family: ti'
||'mes;">  )</span></pre></div></blockquote><blockquote style="border: none; margin: 0px 0px 0px 40px; padding: 0px; text-align: left;"><div><pre style="box-sizing: border-box; color: #262626; line-height: 15px; margin-bottom: 0px; margin-top: 0px;"><sp'
||'an style="font-fa'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>13501875225360637847
,p_default_application_id=>78259
,p_default_id_offset=>0
,p_default_owner=>'FLMPJGAZDYSOYO'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7144307123717501112)
,p_name=>'Apex ORDS Database Version'
,p_template=>wwv_flow_imp.id(33247212693934359074)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent13:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''APEX'' tool, ',
'       version_no ',
'from apex_release',
'union all',
'select ''ORDS'', ',
'        ords.installed_version ',
'from dual',
'union all',
'select ''Database'' tool,',
'       coalesce( x.version_full, x.version ) version_no',
'from xmltable( ',
'  ''*'' passing xmltype(',
'    cursor(',
'      select pcv.* ',
'      from product_component_version pcv',
'      where pcv.product like ''Oracle%'')) ',
'columns version varchar2(100) path ''/ROWSET/ROW/VERSION'',',
'version_full varchar2(100) path ''/ROWSET/ROW/VERSION_FULL'') x'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(33247241596394359095)
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
 p_id=>wwv_flow_imp.id(7144307242759501113)
,p_query_column_id=>1
,p_column_alias=>'TOOL'
,p_column_display_sequence=>10
,p_column_heading=>'Tool'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7144307307607501114)
,p_query_column_id=>2
,p_column_alias=>'VERSION_NO'
,p_column_display_sequence=>20
,p_column_heading=>'Version No'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7144307431295501115)
,p_plug_name=>'Force Upper Case'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>60
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7144307591409501116)
,p_name=>'P32_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7144307431295501115)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="text-transform: uppercase;" onKeyUp="this.value=this.value.toUpperCase();"'
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp.component_end;
end;
/
