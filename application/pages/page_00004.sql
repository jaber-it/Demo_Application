prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Print specific Region In Oracle Apex'
,p_alias=>'PRINT-SPECIFIC-REGION-IN-ORACLE-APEX'
,p_step_title=>'Print specific Region In Oracle Apex'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function printdiv(printpage)',
'{',
'var headstr = "<html><head><title></title></head><body>";',
'var footstr = "</body>";',
'var newstr = document.all.item(printpage).innerHTML;',
'var oldstr = document.body.innerHTML;',
'document.body.innerHTML = headstr+newstr+footstr;',
'window.print();',
'document.body.innerHTML = oldstr;',
'return false;',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Region-headerItems--title {  display: block;  text-align: center;}',
'.button {',
'    background-color: #4CAF50; /* Green */',
'    border: none;',
'    color: white;',
'    height: 3.2rem;',
'    padding: -2px 6px;',
'    text-align: center;',
'    text-decoration: none;',
'    display: inline-block;',
'    font-size: 12px;',
'    margin: 0px 0px;',
'    -webkit-transition-duration: 0.4s; /* Safari */',
'    transition-duration: 0.4s;',
'    cursor: pointer;',
'    line-height: 1.6rem;',
'    padding: 4px 8px;',
'    icon: "fa fa-print";',
'}',
'',
'.button {',
'    background-color: #4CAF50; /* Green */',
'    border: none;',
'    color: white;',
'    padding: .8rem 1.2rem;',
'    text-align: center;',
'    text-decoration: none;',
'    display: inline-block;',
'    font-size: 16px;',
'    margin: 4px 2px;',
'    -webkit-transition-duration: 0.4s; /* Safari */',
'    transition-duration: 0.4s;',
'    cursor: pointer;',
'    float: right;',
'    width: 95px;',
'    icon: "fa fa-print";',
'}',
'',
'.t-Button {',
'        text-align: revert;',
'}',
'',
'.button1 {',
'    background-color: #0572CE;',
'    color: white;',
'    border: 2px solid #0572CE;',
'}',
'',
'',
'.button3 {',
'    background-color: white;',
'    color: black;',
'    border: 2px solid #f44336;',
'}',
'',
'.button3:hover {',
'    background-color: #f44336;',
'    color: white;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'10'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210611172415'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10728696606194090224)
,p_plug_name=>'Print specific Region In Oracle Apex'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent5:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'n number;',
'Begin',
'Htp.p(''<a type="button1" class="button button1"  class="fa fa-print" id="print" type="button" onclick="printdiv(''''div_print1'''');" value="Print"><b class="fa fa-print">  Print</b></a>',
'     <div id="div_print1" style="margin-top:5px;"> ''); ',
'n:=0;',
'',
'htp.p(''<table width="100%" border="1" style="border-collapse:collapse">',
'  <thead style="display:table-header-group;font-weight:bold">',
'   <tr>',
unistr('    <td><div align="center">\0995\09CD\09B0\0983 \09A8\0982</div></td>'),
'    <td><div align="center">OID</div></td>',
'    <td><div align="center">THAN_ID </div></td>',
'    <td><div align="center">THAN_NM </div></td>',
'    <td><div align="center">DIST_OID</div></td>',
'    <td><div align="center"> IS_ACTIVE</div></td>',
'    <td><div align="center">THAN_NM1 </div></td>',
'    </tr> </thead>'');',
'',
'for x in (select OID, THAN_ID, THAN_NM, DIST_OID, IS_ACTIVE, THAN_NM1 from THANAUPAZILA)',
'',
'loop',
'n:=n+1;',
'htp.p(''<tbody style="text-align:center"">',
'        <tr>',
'      <td >''||CONV_ENGLISH_BANGLA(n)||''</td>',
'      <td >''||x.OID||''</td>',
'      <td >''||x.THAN_ID||''</td>',
'      <td >''||x.THAN_NM||''</td>',
'      <td >''||x.DIST_OID||''</td>',
'      <td >''||x.IS_ACTIVE||''</td>',
'      <td >''||x.THAN_NM1||''</td>',
'   </tr>'');',
'  end loop;',
'',
'',
'htp.p(''</table>'');',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp.component_end;
end;
/
