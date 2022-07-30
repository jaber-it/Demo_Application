prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Use the custom report print button'
,p_alias=>'USE-THE-CUSTOM-REPORT-PRINT-BUTTON'
,p_step_title=>'Use the custom report print button'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
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
,p_step_template=>wwv_flow_imp.id(33247177518621359049)
,p_page_template_options=>'#DEFAULT#'
,p_browser_cache=>'Y'
,p_deep_linking=>'Y'
,p_page_component_map=>'18'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210123094438'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35899968440337410323)
,p_plug_name=>'Full Report'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent5:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:t-Form--labelsAbove:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>10
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
'      <td >0''||CONV_ENGLISH_BANGLA(x.MOBOLE_NO)|| ''</td>',
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
 p_id=>wwv_flow_imp.id(40377671776312685009)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247210767798359072)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USER_ID,',
'USERNAME,',
'FULL_NAME,',
'PHONE_NUMBER,',
'EMAIL_ADDRESS ',
'from MY_USERS',
'where upper(USERNAME) = :APP_USER;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'New'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(39931724002472711941)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JABER0181@GMAIL.COM'
,p_internal_uid=>39931724002472711941
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33275167687826537913)
,p_db_column_name=>'USER_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'User Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33275168045253537914)
,p_db_column_name=>'USERNAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33275168435285537914)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33275168813314537915)
,p_db_column_name=>'PHONE_NUMBER'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Phone Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33275169235186537915)
,p_db_column_name=>'EMAIL_ADDRESS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Email Address'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(40472214649771999328)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'332751696'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USER_ID:USERNAME:FULL_NAME:PHONE_NUMBER:EMAIL_ADDRESS'
);
wwv_flow_imp.component_end;
end;
/
