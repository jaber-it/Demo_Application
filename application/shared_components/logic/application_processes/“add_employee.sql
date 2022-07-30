prompt --application/shared_components/logic/application_processes/“add_employee
begin
--   Manifest
--     APPLICATION PROCESS: “Add Employee
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
 p_id=>wwv_flow_imp.id(9501167751620181701)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\201CAdd Employee')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' INSERT INTO emp',
' (ename, job, hiredate, sal,',
' deptno, empno',
' )',
' VALUES (:P8_ename, :P8_job, SYSDATE, :P8_sal,',
' :P8_deptno, :P8_empno',
' );',
' :P8_ename := NULL;',
' :P8_job := NULL;',
' :P8_sal := NULL;',
' :P8_deptno := NULL;',
' :P8_empno := NULL;',
'EXCEPTION',
' WHEN OTHERS',
' THEN',
' HTP.prn (''Error adding record to the EMP Table. / '' || SQLERRM);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_imp.component_end;
end;
/
