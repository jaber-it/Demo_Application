prompt --application/shared_components/logic/application_processes/ap_relogin
begin
--   Manifest
--     APPLICATION PROCESS: AP_RELOGIN
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>13501875225360637847
,p_default_application_id=>78259
,p_default_id_offset=>0
,p_default_owner=>'FLMPJGAZDYSOYO'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(9060373371587734544)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'AP_RELOGIN'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_relogin_hash varchar2(100);',
'  v_url          varchar2(200);',
'  ',
'  v_relogin_time       date;',
'  v_cookie_expire_time date;',
'begin',
'',
'-- Set date variables',
'v_relogin_time := sysdate-(to_number(:AI_RELOGIN_IN_MINUTES)/ 24/ 60);',
'v_cookie_expire_time := sysdate + (case when to_number(:AI_RELOGIN_IN_MINUTES)-1 = 0 then 1 else to_number(:AI_RELOGIN_IN_MINUTES)-1 end / 24/ 60);',
'',
'-- Check if a re-login is necessary because the time run out',
'if :AI_START_TIME is not null and v_relogin_time > to_date(:AI_START_TIME,''dd.mm.yyyy hh24:mi:ss'') then ',
'  -- Create hash value',
'  -- Including: Username, Some kind of Hash-Password, and the SYSDATE with minutes so that the HASH will only be valid for one minute.',
'  -- Description about Hashvalues: http://stackoverflow.com/questions/22533037/how-to-call-oracle-md5-hash-function',
'  select ',
'  CUST_NUMBER.GET_32_BASE_NUMBER (lower(:APP_USER)||''''||to_char(sysdate-5, ''dd.mm.yyyy hh24:mi''))',
'  into v_relogin_hash',
'  from dual;             ',
' ',
'  -- Create cookie',
'  -- Example/Description: https://apex.oracle.com/pls/apex/f?p=155555:1',
'  owa_util.mime_header(''text/html'', FALSE);  ',
'  ',
'  owa_cookie.send(',
'    name => ''C_LOGIN_USER'',  ',
'    value => lower(:APP_USER),  ',
'    expires => v_cookie_expire_time',
'  );',
'  ',
'  owa_cookie.send(',
'    name => ''C_LOGIN_HASH'',  ',
'    value => v_relogin_hash,  ',
'    expires => v_cookie_expire_time',
'  );',
'  ',
'  -- Logout procedure',
'  apex_authentication.logout(:SESSION, :APP_ID);',
'  ',
'  -- Stop further execution of code',
'  apex_application.stop_apex_engine;',
'',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
