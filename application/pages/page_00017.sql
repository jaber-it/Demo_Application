prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
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
 p_id=>17
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Height and Weight Report'
,p_alias=>'HEIGHT-AND-WEIGHT-REPORT'
,p_step_title=>'Height and Weight Report'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">  ',
'           window.onbeforeunload = function (e) {                               e = e || window.event;',
'           if (e) {',
'            e.returnValue = ''?'';',
'              }',
'       // For Safari',
'         return ''?'';',
'                };',
'    </script>'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'10'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210625104246'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30586558300425992201)
,p_plug_name=>'Height and Weight Report'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.p(''<!DOCTYPE html>'');',
'htp.p(''<html lang="en">'');',
'htp.p(''<meta charset="UTF-8">'');',
'htp.p(''<meta name="viewport" content="width=device-width, initial-scale=1.0">'');',
'htp.p(''<TITLE>My Shop, Feni</TITLE>'');',
'htp.p(''<style type="text/css">',
'      body{',
'	margin:0;',
'	padding: 0;',
'}',
'.letter{',
'	font-size: 18px;',
'	width: 700px;',
'	height: 300px;',
'	margin: auto;',
'	font-family: bangla;',
'}',
'.row::after {',
'  content: "";',
'  clear: both;',
'  display: table;',
'}',
'',
'    </style>'');',
'htp.p(''</head>'');',
'htp.p(''<body>'');',
'',
'for x in (select LOG_ID,',
'       IP_ADDRESS,',
'       LOGIN_USER,',
'       case when upper(:username) = ''jaber0181@gmail.com'' then ''Edit'' ',
'         else null end as Edi,',
'       CASE WHEN LOGIN_USER = ''JABER'' THEN',
'               ''Edit2''',
'           ELSE NULL END EDIT2',
'  from USERS_LOG where LOG_ID = 8692226)',
'',
'loop',
'htp.p(''<div class="letter" ><table>',
'    <tr>',
unistr('        <td style="text-align:right; padding-top: 20px;">\0985\09A4\09BF\09AC \099C\09B0\09C1\09B0\09C0</td>'),
'    </tr>',
unistr('     <tr><td>\09B8\09CD\09AE\09BE\09B0\0995 \09A8\0982-\09EA\09EA.\09E6\09E7.\09E6\09E6\09E6\09E6.\09EF\09EE\09ED. &nbsp;&nbsp; \09A4\09BE\09B0\09BF\0996\0983- </br></br></td></tr>'),
unistr('     <tr><td style="text-align:center;">\098F\0995 \09AE\09BE\09A4\09CD\09B0 \09B0\09BE\09B7\09CD\099F\09CD\09B0\09BF\09DF \0995\09BE\099C\09C7 \09AC\09CD\09AF\09AC\09B9\09C3\09A4 </br></br></td></tr>'),
'  </table>'');',
'',
'htp.p(''<table>',
'        <tr><td>',
unistr('            <div>\09AA\09CD\09B0\09C7\09B0\0995</div>'),
'                <div style="margin-left: 12%;">',
unistr('                \09B8\09BF\09A1\09BF\098F\09AE\098F\09B8 \09B8\09C7\09B2 <br>'),
unistr('                \0995\09CD\09B0\09BE\0987\09AE \0985\09CD\09AF\09BE\09A8\09BE\09B2\09BE\0987\09B8\09BF\09B8 \09B6\09BE\0996\09BE <br>'),
unistr('                \09AC\09BE\0982\09B2\09BE\09A6\09C7\09B6 \09AA\09C1\09B2\09BF\09B6 <br>'),
unistr('                \09AA\09C1\09B2\09BF\09B6 \09B9\09C7\09A1\0995\09CB\09DF\09BE\09B0\09CD\099F\09BE\09B0\09CD\09B8, \09A2\09BE\0995\09BE <br></div></td>'),
'        <td style="margin-left: 20%;">',
unistr('            <div>\09AA\09CD\09B0\09BE\09AA\0995</div>'),
'                <div style="margin-left: 15%;">',
unistr('                \09AA\09C1\09B2\09BF\09B6 \09B8\09C1\09AA\09BE\09B0  <br>'),
unistr('                \0995\09C1\09AE\09BF\09B2\09CD\09B2\09BE,\099C\09C7\09B2\09BE <br>'),
'            </div></td>',
'        </tr>',
'    </table>'');',
'',
'  end loop;',
'  ',
'htp.p(''</table>'');',
'htp.p(''</div>'');',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30586558402723992202)
,p_plug_name=>'222222'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.p(''<!DOCTYPE html>'');',
'htp.p(''<html>'');',
'htp.p(''<head>'');',
'htp.p(''<meta name="viewport" content="width=device-width, initial-scale=1.0">'');',
'htp.p(''<style>',
'',
'',
'.row::after {',
'  content: "";',
'  clear: both;',
'  display: table;',
'}',
'',
'[class*="col-"] {',
'  float: left;',
'  padding: 15px;',
'}',
'',
'.menu ul {',
'  list-style-type: none;',
'  margin: 0;',
'  padding: 0;',
'}',
'',
'.menu li {',
'    box-shadow: 0 0px 0px rgba(0,0,0,0.12), 0 -1px 0px rgba(0,0,0,0.24);',
'}',
'      ',
'.menu li:hover {',
'  background-color: #0099cc;',
'}',
'',
'/* For mobile phones: */',
'[class*="col-"] {',
'  width: 100%;',
'}',
'',
'@media only screen and (min-width: 600px) {',
'  /* For tablets: */',
'  .col-s-1 {width: 8.33%;}',
'  .col-s-2 {width: 16.66%;}',
'  .col-s-3 {width: 25%;}',
'  .col-s-4 {width: 33.33%;}',
'  .col-s-5 {width: 41.66%;}',
'  .col-s-6 {width: 50%;}',
'  .col-s-7 {width: 58.33%;}',
'  .col-s-8 {width: 66.66%;}',
'  .col-s-9 {width: 75%;}',
'  .col-s-10 {width: 83.33%;}',
'  .col-s-11 {width: 91.66%;}',
'  .col-s-12 {width: 100%;}',
'}',
'@media only screen and (min-width: 768px) {',
'  /* For desktop: */',
'  .col-1 {width: 8.33%;}',
'  .col-2 {width: 16.66%;}',
'  .col-3 {width: 25%;}',
'  .col-4 {width: 33.33%;}',
'  .col-5 {width: 41.66%;}',
'  .col-6 {width: 50%;}',
'  .col-7 {width: 58.33%;}',
'  .col-8 {width: 66.66%;}',
'  .col-9 {width: 75%;}',
'  .col-10 {width: 83.33%;}',
'  .col-11 {width: 91.66%;}',
'  .col-12 {width: 100%;}',
'}',
'</style>'');',
'htp.p(''</head>'');',
'htp.p(''<body>'');',
'',
'For u in (select PRODUCT_ID,PRODUCT_CODE,PRODUCT_NAME,PRODUCT_DESCRIPTION,',
'          ',
'          decode(nvl(dbms_lob.getlength(PRODUCT_IMAGE),0),0,null, ',
'       ''<img src="'' ',
'       ||apex_util.get_blob_file_src(''P9_PRODUCT_IMAGE'',PRODUCT_ID)||''"width="100%"/>'') PRODUCT_IMAGE from PRODUCT where ALL_SLIDE_ID = 1)',
'loop      ',
'htp.p(''<div class="row">',
'  <div class="col-3 col-s-3 menu">',
unistr('        <div>\09AA\09CD\09B0\09C7\09B0\0995</div>'),
'            <div style="margin-left: 10%;">',
unistr('            <div>\09B8\09BF\09A1\09BF\098F\09AE\098F\09B8 \09B8\09C7\09B2 </div>'),
unistr('            <div>\0995\09CD\09B0\09BE\0987\09AE \0985\09CD\09AF\09BE\09A8\09BE\09B2\09BE\0987\09B8\09BF\09B8 \09B6\09BE\0996\09BE </div>'),
unistr('            <div>\09AC\09BE\0982\09B2\09BE\09A6\09C7\09B6 \09AA\09C1\09B2\09BF\09B6 </div>'),
unistr('            <div>\09AA\09C1\09B2\09BF\09B6 \09B9\09C7\09A1\0995\09CB\09DF\09BE\09B0\09CD\099F\09BE\09B0\09CD\09B8, \09A2\09BE\0995\09BE </div>'),
'  </div></div>'');',
'',
'  htp.p(''<div class="col-6 col-s-9" align:center;">',
unistr('        <div>\09AA\09CD\09B0\09BE\09AA\0995</div>'),
'            <div style="margin-left: 12%;">',
unistr('            <div>\09AA\09C1\09B2\09BF\09B6 \09B8\09C1\09AA\09BE\09B0, </div>'),
unistr('            <div>\0995\09C1\09AE\09BF\09B2\09CD\09B2\09BE,\099C\09C7\09B2\09BE</div>'),
'  </div></div>'');',
'end loop;',
'',
'htp.p(''</body>'');',
'htp.p(''</html>'');',
'',
'',
'',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp.component_end;
end;
/
