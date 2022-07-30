prompt --application/shared_components/plugins/dynamic_action/print_region_to_pdf_v_2_0
begin
--   Manifest
--     PLUGIN: PRINT.REGION.TO.PDF.V.2.0
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(25987934038071398080)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'PRINT.REGION.TO.PDF.V.2.0'
,p_display_name=>'Print Region Into PDF V 2.0'
,p_category=>'EXECUTE'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','PRINT.REGION.TO.PDF.V.2.0'),'')
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js',
''))
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FUNCTION PREVIEW_REGION_TO_PDF (',
'    P_DYNAMIC_ACTION   IN APEX_PLUGIN.T_DYNAMIC_ACTION,',
'    P_PLUGIN           IN APEX_PLUGIN.T_PLUGIN',
') RETURN APEX_PLUGIN.T_DYNAMIC_ACTION_RENDER_RESULT AS',
'    VR_RESULT         APEX_PLUGIN.T_DYNAMIC_ACTION_RENDER_RESULT;',
'BEGIN',
'',
'    APEX_JAVASCRIPT.ADD_LIBRARY(',
'        P_NAME        => ''printpdf'',',
'        P_DIRECTORY   => P_PLUGIN.FILE_PREFIX,',
'        P_VERSION     => NULL',
'        , p_check_to_add_minified => true',
'    ); ',
'    ',
'    VR_RESULT.JAVASCRIPT_FUNCTION   := ''',
'    function () {printpdf(this); }'';',
'',
'    RETURN VR_RESULT;',
'END;'))
,p_api_version=>2
,p_render_function=>'PREVIEW_REGION_TO_PDF'
,p_standard_attributes=>'REGION'
,p_substitute_attributes=>true
,p_reference_id=>19864657348652006939
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'2.0'
,p_files_version=>15
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '66756E6374696F6E207072696E74706466286E297B636F6E736F6C652E6C6F67286E293B76617220653D6E2E74726967676572696E67456C656D656E742E69643B636F6E7374206F3D5B24286E2E6166666563746564456C656D656E7473295D3B242E65';
wwv_flow_imp.g_varchar2_table(2) := '616368286F2C66756E6374696F6E286E2C6F297B76617220743D6F5B305D2E69643B636F6E736F6C652E6C6F672874292C24282223222B65292E7375626D697428293B76617220693D646F63756D656E742E676574456C656D656E74427949642874292E';
wwv_flow_imp.g_varchar2_table(3) := '696E6E657248544D4C2C643D646F63756D656E742E626F64792E696E6E657248544D4C3B646F63756D656E742E626F64792E696E6E657248544D4C3D692C77696E646F772E7072696E7428292C646F63756D656E742E626F64792E696E6E657248544D4C';
wwv_flow_imp.g_varchar2_table(4) := '3D647D297D';
null;
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(25987934892867398087)
,p_plugin_id=>wwv_flow_imp.id(25987934038071398080)
,p_file_name=>'printpdf.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
