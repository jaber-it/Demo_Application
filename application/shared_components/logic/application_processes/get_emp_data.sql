prompt --application/shared_components/logic/application_processes/get_emp_data
begin
--   Manifest
--     APPLICATION PROCESS: GET_EMP_DATA
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
 p_id=>wwv_flow_imp.id(36054456573252425950)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_EMP_DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  APEX_JSON.initialize_clob_output;',
'  APEX_JSON.open_object; -- {',
'',
'  APEX_JSON.open_array(''employees'');',
'',
'  FOR cur_rec IN (SELECT * FROM emp e )',
'  LOOP',
'    APEX_JSON.open_object; -- {',
'    APEX_JSON.write(''employee_number'', cur_rec.empno);',
'    APEX_JSON.write(''employee_name'', cur_rec.ename);',
'    APEX_JSON.write(''mgr'', nvl(cur_rec.mgr,''0''));',
'    APEX_JSON.write(''sal'', cur_rec.sal);',
'    APEX_JSON.write(''hiredate'', cur_rec.hiredate);',
'    APEX_JSON.close_object;',
'  END LOOP;',
'  APEX_JSON.close_array;',
'',
'  APEX_JSON.close_object;',
' htp.p(APEX_JSON.get_clob_output);',
'  APEX_JSON.free_output;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_imp.component_end;
end;
/
