prompt --application/shared_components/logic/application_processes/download_blob
begin
--   Manifest
--     APPLICATION PROCESS: DOWNLOAD_BLOB
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(5270324433018681006)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DOWNLOAD_BLOB'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  download_blob(:FILE_ID);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'USER_IS_NOT_PUBLIC_USER'
);
wwv_flow_imp.component_end;
end;
/
