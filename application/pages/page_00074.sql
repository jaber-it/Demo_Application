prompt --application/pages/page_00074
begin
--   Manifest
--     PAGE: 00074
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
 p_id=>74
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'refresh Static region data '
,p_alias=>'PARSE-XLSX-AND-CSV'
,p_step_title=>'refresh Static region data '
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function get_data() {',
'    return apex.server.process(''GET_EMP_DATA'', {',
'        pageItems: "",',
'        x01: ''TEST'',',
'        x02: ''p_url''',
'    }, {',
'        dataType: ''text'',',
'        done: function (pData) {',
'            alert(''pData'');',
'        }',
'    }, {',
'        loadingIndicator: ".EMP_DATA",',
'        loadingIndicatorPosition: "append"',
'    });',
'}',
'async function run() {',
'    console.log(''Start'');',
'    var result = await get_data();',
'    parse_json(result);',
'}',
'function parse_json(p_data) { //debugger;',
'    var obj = jQuery.parseJSON(p_data);',
'    var table_header = $(''<div class="tbl-header"></div>'');',
'    var table_header_content = $(''<table cellpadding="0" cellspacing="0" border="0"><thead><tr><th>Empno</th><th>Ename</th><th>MGR</th><th>SAL</th><th>HIRE date</th></tr></thead>'');',
'    table_header.append(table_header_content);',
'    var table_body_div = $(''<div class="tbl-content"><div>'');',
'    //var table_body = $(''<table class="test" cellpadding="0" cellspacing="0" border="0"><table>'');',
'    var table_tbody = $(''<tbody></tbody>'');',
'    var l_record_cnt = 0;',
'    $(obj.employees).each(function () {',
'        console.log(''ashish'');',
'        l_record_cnt = l_record_cnt + 1;',
'        var l_emp = $(this);',
'        // debugger;',
'        var table_rows = $(''<tr></tr>'');',
'        table_rows.append(''<td>'' + l_emp[0].employee_number + ''</td><td>''',
'            +l_emp[0].employee_name + ''</td><td>''',
'            +l_emp[0].mgr + ''</td><td>''',
'            +l_emp[0].sal + ''</td><td>''',
'            +l_emp[0].hiredate + ''</td>'');',
'        table_tbody.append(table_rows);',
'    });',
'    console.log(l_record_cnt);',
'    var l_table = $(''<table class="test" cellpadding="0" cellspacing="0" border="0"></table>'');',
'    l_table.append(table_tbody);',
'    table_body_div.append(l_table);',
'    var l_cnt = $(''<span> 1 - '' + l_record_cnt + ''</span>'');',
'    $(''.EMP_DATA'').append(table_header);',
'    $(''.EMP_DATA'').append(table_body_div);',
'    $(''.EMP_DATA'').append(l_cnt);',
'}',
'function refresh() {',
'    $(''.EMP_DATA'').empty();',
'    run();',
'}',
''))
,p_javascript_code_onload=>'run();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'table{',
'  width:100%;',
'  table-layout: fixed;',
'}',
'.tbl-header{',
'  background-color: rgba(79, 183, 20, 0.3);',
' }',
'.tbl-content{',
'  height:300px;',
'  overflow-x:auto;',
'  margin-top: 0px;',
'  border: 1px solid rgba(234, 45, 45, 0.79);',
'}',
'th{',
'  padding: 20px 15px;',
'  text-align: center;',
'  font-weight: 500;',
'  font-size: 12px;',
'  color: red;',
'  text-transform: uppercase;',
'}',
'td{',
'  padding: 15px;',
'  text-align: left;',
'  vertical-align:middle;',
'  font-weight: 300;',
'  font-size: 12px;',
'  color: #000;',
'  border-bottom: solid 1px rgba(234, 45, 45, 0.79);',
'  border-left: solid 1px;',
'}',
'  /* for custom scrollbar for webkit browser*/',
'::-webkit-scrollbar {',
'    width: 6px;',
'}',
'::-webkit-scrollbar-track {',
'    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);',
'}',
'::-webkit-scrollbar-thumb {',
'    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220730115424'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31358696417858666145)
,p_plug_name=>'Employee Data'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="EMP_DATA">',
'<div>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36048281621103075477)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551674142650634431)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(14551607125351634402)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14551731209409634454)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31358696557885666146)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31358696417858666145)
,p_button_name=>'Refresh_Data'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Refresh Data'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31358696662362666147)
,p_name=>'Trigger the AJAX.'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(31358696557885666146)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31358696767137666148)
,p_event_id=>wwv_flow_imp.id(31358696662362666147)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'refresh();'
);
wwv_flow_imp.component_end;
end;
/
