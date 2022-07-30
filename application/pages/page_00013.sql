prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
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
 p_id=>13
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Repeat table header on each page in print'
,p_alias=>'REPEAT-TABLE-HEADER-ON-EACH-PAGE-IN-PRINT'
,p_step_title=>'Repeat table header on each page in print'
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
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'10'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210112113803'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25675205520601908901)
,p_plug_name=>'Repeat table header on each page in print'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'n number;',
'Begin',
'n:=0;',
'',
'Htp.p(''<a id="b_exit" type="button1" class="button button3" class="exit" ''||''href="''||APEX_UTIL.PREPARE_URL(''f?p=&APP_ID.:#:&SESSION.::&DEBUG.::::'')||''">Close</a>',
'<input type="button1" class="button button1"  class="t-Icon t-Icon--right fa fa-print" id="print" type="button" onclick="printdiv(''''div_print1'''');" value="Print"/><br/>',
'     ',
'<div id="div_print1" style="margin-top:5px;"> ''); ',
'',
'begin',
'htp.p(''<table border="1" style="font-size:11pt;" width="100%" align="center">',
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
'END;',
'END;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp.component_end;
end;
/
