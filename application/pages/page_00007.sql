prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Close & Print Button PL / SQL Code'
,p_alias=>'CLOSE-PRINT-BUTTON-PL-SQL-CODE'
,p_step_title=>'Close & Print Button PL / SQL Code'
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
'}',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.button {',
'    background-color: #4CAF50; /* Green */',
'    border: none;',
'    color: white;',
'    padding: 14px 28px;',
'    text-align: center;',
'    text-decoration: none;',
'    display: inline-block;',
'    font-size: 15px;',
'    margin: 4px 2px;',
'    -webkit-transition-duration: 0.4s; /* Safari */',
'    transition-duration: 0.4s;',
'    cursor: pointer;',
'}',
'',
'.button1 {',
'    background-color: white;',
'    color: black;',
'    border: 2px solid #008CBA;',
'}',
'.button1:hover {',
'    background-color: #008CBA;',
'    color: white;',
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
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'10'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20201022101427'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(227266840537073203)
,p_plug_name=>'Close & Print Button'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'n number;',
'Begin',
'n:=0;',
'',
'Htp.p(''<a id="b_exit" type="button1" class="button button3" class="exit" ''||''href="''||APEX_UTIL.PREPARE_URL(''f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'')||''">Close</a>',
'<input type="button1" class="button button1"  class="t-Icon t-Icon--right fa fa-print" id="print" type="button" onclick="printdiv(''''div_print1'''');" value="Print"/><br/>',
'     ',
'<div id="div_print1" style="margin-top:5px;"> ''); ',
'',
'',
'',
'',
'htp.p(''<!DOCTYPE html>'');',
'htp.p(''<html lang="en">'');',
'htp.p(''<meta charset="UTF-8">'');',
'htp.p(''<TITLE>My Shop, Feni</TITLE>'');',
'htp.p(''<style type="text/css">',
'      body{',
'          width: auto;',
'      }',
'      /*header table 1 css*/',
'      #table_1 h3{',
'          font-size: 30px;',
'          margin:0px;',
'      }',
'      #table_1 tr td{',
'          font-size: 20px;',
'          margin:0px;',
'      }',
'      #table_3,',
'      #table_3 tr td{',
'          font-size: 15px;',
'          margin:0px;',
'      }',
'      #table_3 th,',
'      #table_3 td{',
'        border: 1px solid #D5D8DC;',
'        border-collapse: collapse;',
'      }',
'      ',
'th {',
'  padding-top: 12px;',
'  padding-bottom: 12px;',
'  text-align: center;',
'  background-color: #4CAF50;;',
'  color: white;',
'}',
'    </style>'');',
'htp.p(''</head>'');',
'',
'',
'htp.p(''<body>'');',
'',
'for u in (select USER_ID,USERNAME,FULL_NAME,PHONE_NUMBER,EMAIL_ADDRESS from MY_USERS where upper(USERNAME) = :APP_USER)',
'loop',
'htp.p(''<table id="table_1" width="800px" style="text-align:center;">',
'      <tr>',
'      <td><h3><i>''||u.FULL_NAME||''</i></h3></td>',
'      </tr>',
'      <tr>',
'      <td>0''||u.PHONE_NUMBER||''</td>',
'      </tr>',
'      <tr>',
'      <td>''||u.EMAIL_ADDRESS||''</td>',
'      </tr>',
'</table><br>'');',
'  end loop; ',
'',
'',
'for u in (select USER_ID,USERNAME,FULL_NAME,PHONE_NUMBER,EMAIL_ADDRESS from MY_USERS where upper(USERNAME) = :APP_USER)',
'loop',
'htp.p(''<table id="table_2" width="100%" style="padding-bottom: 10px;">',
'            <tr><td colspan="5">Company Name : <b>''||u.FULL_NAME||''</b></td></tr>'');',
'      htp.p(''<tr><td colspan="5">User Name : <b>''||u.USERNAME||''</b></td></tr>'');',
'      htp.p(''<tr><td colspan="5">Phone Numbar : <b>0''||u.PHONE_NUMBER||''</b></td></tr>'');',
'      htp.p(''<tr><td colspan="5">EMAIL ADDRESS : <b>''||u.EMAIL_ADDRESS||''</b></td><td colspan="1" style="text-align:right;">Date : <b>''||(sysdate)||''</b></td>',
'            </tr>',
'      ',
'',
'</table><br>'');',
'end loop;',
'',
'',
'htp.p(''<table id="table_3" width="100%" cellpadding="5px" style="text-align: center;">',
'      <tr>',
unistr('      <th width="5%">\0995\09CD\09B0\09AE\09BF\0995 \09A8\09BE\09AE\09CD\09AC\09BE\09B0 </th>'),
unistr('      <th width="5%">\099B\09AC\09BF </th>'),
unistr('      <th width="20%">\0995\09CD\09B0\09C7\09A4\09BE\09B0 \09A8\09BE\09AE </th>'),
unistr('      <th width="15%">\09AE\09CB\09AC\09BE\0987\09B2 \09A8\09BE\09AE\09CD\09AC\09BE\09B0 </th>'),
unistr('      <th width="40%">\09A0\09BF\0995\09BE\09A8\09BE </th>'),
unistr('      <th width="15%">\0985\09A8\09CD\09AF\09BE\09A8\09CD\09AF \09A4\09A5\09CD\09AF </th>'),
'    </tr>'');',
'',
'for x in (select OID,CUSTOMER_NAME,MOBOLE_NO,ADDRESS,NOTE,',
'          decode(nvl(dbms_lob.getlength(PICTURE),0),0,null, ',
'                 ''<img src="'' ||apex_util.get_blob_file_src(''P14_PICTURE'',OID)||''" height="75" width="75"/>'') ',
'          PICTURE from CUSTOMER)',
'loop',
'n:=n+1;',
'htp.p(''<tr>',
'      <td >''||CONV_ENGLISH_BANGLA(n)|| ''</td>',
'      <td >''||x.PICTURE|| ''</td>',
'      <td >''||x.CUSTOMER_NAME|| ''</td>',
unistr('      <td >\09E6''||CONV_ENGLISH_BANGLA(x.MOBOLE_NO)|| ''</td>'),
'      <td >''||x.ADDRESS|| ''</td>',
'      <td >''||x.NOTE|| ''</td>',
'   </tr>'');',
'  end loop;',
'  ',
'htp.p(''</table>'');',
'htp.p(''</div>'');',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(227267058997073205)
,p_plug_name=>'Tree'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2511035137129470406)
,p_name=>'P7_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(227267058997073205)
,p_prompt=>'New'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style=" float: left; margin-left: 4px;">',
'    <a href = "#" id="ref" class="t-Button t-Button--default t-Button--hot t-Button--stretch" style=" padding: 4px 4px;"title="Search">',
'        <i class="fa fa-refresh fa-spin" aria-hidden="true"></i>',
'        </a>',
'</div>',
'',
'<div style="float: right; margin-left: 4px;">',
'    <a href = "#" id="clr" class="t-Button t-Button--danger t-Button--normal t-Button--stretch" style=" padding: 4px 4px;"title="Clear">',
'        <i class="fa fa-times" aria-hidden="true"></i>',
'        </a>',
'</div>',
'',
''))
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2511035276945470407)
,p_name=>'ref'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#ref'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2511035317105470408)
,p_event_id=>wwv_flow_imp.id(2511035276945470407)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2511035478594470409)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#clr'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2511035506342470410)
,p_event_id=>wwv_flow_imp.id(2511035478594470409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_NEW'
);
wwv_flow_imp.component_end;
end;
/
