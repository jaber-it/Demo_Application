prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
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
 p_id=>16
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Create Manule Report Print Button'
,p_alias=>'CREATE-MANULE-REPORT-PRINT-BUTTON'
,p_step_title=>'Create Manule Report Print Button'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_imp.id(33247177518621359049)
,p_page_template_options=>'#DEFAULT#'
,p_browser_cache=>'Y'
,p_deep_linking=>'Y'
,p_page_component_map=>'18'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210123144723'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65155318672494344991)
,p_plug_name=>'Full Report'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--accent5:t-Region--textContent:t-Region--hiddenOverflow:t-Form--noPadding:t-Form--stretchInputs:t-Form--labelsAbove:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'n number;',
'Begin',
'n:=0;',
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
 p_id=>wwv_flow_imp.id(69633022008469619677)
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
 p_id=>wwv_flow_imp.id(69187074234629646609)
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
,p_internal_uid=>69187074234629646609
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29256277575091940283)
,p_db_column_name=>'USER_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'User Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29256277987623940284)
,p_db_column_name=>'USERNAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29256278202337940285)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29256278609796940285)
,p_db_column_name=>'PHONE_NUMBER'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Phone Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29256279065158940286)
,p_db_column_name=>'EMAIL_ADDRESS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Email Address'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(69727564881928933996)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'292562794'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USER_ID:USERNAME:FULL_NAME:PHONE_NUMBER:EMAIL_ADDRESS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29256952661899567601)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(65155318672494344991)
,p_button_name=>'Print_Report'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft:t-Button--hoverIconSpin:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(33247274854578359121)
,p_button_image_alt=>'Print Report'
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa fa-print'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29256952779214567602)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29256952661899567601)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29256952839848567603)
,p_event_id=>wwv_flow_imp.id(29256952779214567602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//// Collapse Left Navigation Bar If It Was Expanded ////',
'var navCollapsed = 0;',
'if ($("body").hasClass("js-navExpanded")) {',
'    $("#t_Button_navControl").click();',
'    navCollapsed = 1;',
'};',
'setTimeout(3000);',
'',
'',
'',
'//////// Hide ////////',
'',
'//Hide Navigation Bar List',
'$("#t_Header").hide();',
'',
'//Hide Navigation Menu',
'$("#t_Body_nav").hide();',
'',
'//Hide Breadcrumb',
'$("#t_Body_title").hide();',
'',
'//Hide Content Offset',
'$("#t_Body_content_offset").hide();',
'',
'//Hide Report Column Edit Link',
'$(".apex-edit-page").hide();',
'',
'//Hide Report Download Links',
'$(".t-Report-links").hide();',
'',
'//Hide Buttons',
'$(".t-Button").hide();',
'',
'//Hide Footer',
'$(".t-Footer").hide();',
'',
'',
'',
'//////// Browser Print ////////',
'window.print();',
'',
'',
'',
'//////// Show ////////',
'',
'//Show Navigation Bar List',
'$("#t_Header").show();',
'',
'//Show Navigation Menu',
'$("#t_Body_nav").show();',
'',
'//Show Breadcrumb',
'$("#t_Body_title").show();',
'',
'//Show Content Offset',
'$("#t_Body_content_offset").show();',
'',
'//Show Report Column Edit Link',
'$(".apex-edit-page").show();',
'',
'//Show Report Download Links',
'$(".t-Report-links").show();',
'',
'//Show Buttons',
'$(".t-Button").show();',
'',
'//Show Footer',
'$(".t-Footer").show();',
'',
'',
'',
'//// Expand Left Navigation Bar If It Was Colapsed ////',
'if ( navCollapsed == 1 ) {',
'    $("#t_Button_navControl").click();',
'}'))
);
wwv_flow_imp.component_end;
end;
/
