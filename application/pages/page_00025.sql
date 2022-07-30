prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Product List'
,p_alias=>'PRODUCT-LIST'
,p_step_title=>'Product List'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_IMAGES#JsBarcode.all.min.js'
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
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(57872467189515512490)
,p_plug_name=>'Product Report'
,p_region_name=>'partnerslRR'
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRODUCT_ID,',
'       PRODUCT_CODE,',
'       PRODUCT_NAME,',
'       PRODUCT_DESCRIPTION,',
'          decode(NVL(dbms_lob.getlength("PRODUCT_IMAGE"),0),0,NULL,',
'       ''<img src="''||',
'       apex_util.get_blob_file_src(''P26_PRODUCT_IMAGE'',PRODUCT_ID) ',
'||''" style="border: 4px solid #CCC; -moz-border-radius: 4px; -webkit-border-radius: 4px;" ''',
'||''"',
'        width = "125" height="80" />'')',
'        "PRODUCT_IMAGE",',
'       CATEGORY,',
'       GROUP_NAME,',
'       STATUS_ID,',
'       CREATE_BY,',
'       TO_CHAR(CREATE_DATE, ''DD-Mon-YYYY'') Date1,',
'       UPDATE_DATE,',
'       MIME_TYPE,',
'--       PRODUCT_ID Edit,',
'       PRODUCT_ID Del,',
'       ''<a  href="f?p=''|| V(''APP_ID'') ||'':26:''|| V(''SESSION'') ||''::NO:26:P26_PRODUCT_ID:''||PRODUCT_ID||''"',
unistr('       <span style="background-color:#325930; color:white; font-size: 15px;" class="t-Button t-Button\2013small t-Button\2013noLabel t-Button\2013icon add-favorite trans_status" target="_blank"</span>Edit</a>'' Edit,'),
'      PRODUCT_ID Edit2,',
'       ',
'       PRODUCT_ID Detels,',
'       apex_item.hidden(01,PRODUCT_ID)||',
'apex_item.checkbox2(02,PRODUCT_ID)',
'check1',
'  from PRODUCT',
'   where STATUS_ID = 1',
'   and (:P25_PRO_CODE is null or upper(PRODUCT_CODE)= upper(:P25_PRO_CODE))',
'   and (:P25_PRO_NAME is null or upper(PRODUCT_NAME)= upper(:P25_PRO_NAME))',
'   and (:P25_PRO_CATEGRO is null or upper(CATEGORY)= upper(:P25_PRO_CATEGRO))',
'   and (:P25_ADD_DATE_FROM is null or (TO_CHAR(CREATE_DATE, ''DD-Mon-YYYY'') BETWEEN :P25_ADD_DATE_FROM and :P25_ADD_DATE_TO))',
'',
'  ',
'        ',
'        ',
'--decode(nvl(dbms_lob.getlength(PRODUCT_IMAGE),0),0,null, ',
'-- ''<img src="'' ',
'--||apex_util.get_blob_file_src(''P53_PRODUCT_IMAGE'',PRODUCT_ID)||''" height="75" width="75"/>'') PRODUCT_IMAGE,'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P25_PRO_CODE,P25_PRO_NAME,P25_PRO_CATEGRO,P25_ADD_DATE_FROM,P25_ADD_DATE_TO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Product Report'
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
 p_id=>wwv_flow_imp.id(57872467241121512491)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JABER0181@GMAIL.COM'
,p_internal_uid=>57872467241121512491
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25987799201961398047)
,p_db_column_name=>'PRODUCT_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Product Id'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25987799666311398049)
,p_db_column_name=>'PRODUCT_CODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25987902881857398051)
,p_db_column_name=>'PRODUCT_IMAGE'
,p_display_order=>30
,p_column_identifier=>'S'
,p_column_label=>'Image'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25987800089850398049)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25987900420514398049)
,p_db_column_name=>'PRODUCT_DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25987904033069398052)
,p_db_column_name=>'CATEGORY'
,p_display_order=>60
,p_column_identifier=>'W'
,p_column_label=>'Category'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(25987927971638398075)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25987900823832398050)
,p_db_column_name=>'GROUP_NAME'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Group '
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(25987926719893398074)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25987901679126398050)
,p_db_column_name=>'CREATE_BY'
,p_display_order=>80
,p_column_identifier=>'O'
,p_column_label=>'Create By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25987902084238398051)
,p_db_column_name=>'UPDATE_DATE'
,p_display_order=>90
,p_column_identifier=>'Q'
,p_column_label=>'Update Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25987902417296398051)
,p_db_column_name=>'MIME_TYPE'
,p_display_order=>100
,p_column_identifier=>'R'
,p_column_label=>'Mime Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25987903223811398051)
,p_db_column_name=>'DEL'
,p_display_order=>120
,p_column_identifier=>'U'
,p_column_label=>'Del'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25987901255511398050)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>130
,p_column_identifier=>'G'
,p_column_label=>'Status Id'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(25987927397462398075)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25987903661741398052)
,p_db_column_name=>'CHECK1'
,p_display_order=>140
,p_column_identifier=>'V'
,p_column_label=>'<input type="checkbox" id="selectUnselectAll" title="Select/UnselectAll">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25987904733921398053)
,p_db_column_name=>'DATE1'
,p_display_order=>150
,p_column_identifier=>'X'
,p_column_label=>'Date1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25987905158726398053)
,p_db_column_name=>'DETELS'
,p_display_order=>160
,p_column_identifier=>'Y'
,p_column_label=>'Detels'
,p_column_link=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.:91:P91_ID:#PRODUCT_ID#'
,p_column_linktext=>unistr('<span style="background-color:#f44336; color:white; font-size:16px; " class="t-Button t-Button\2013small t-Button\2013noLabel t-Button\2013icon add-favorite trans_status"> <i class="fa fa-indent-o fa-1x" aria-hidden="true"></i>  Details</span>')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25987905558422398054)
,p_db_column_name=>'EDIT'
,p_display_order=>210
,p_column_identifier=>'AF'
,p_column_label=>'Edit'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40801679125234353507)
,p_db_column_name=>'EDIT2'
,p_display_order=>220
,p_column_identifier=>'AG'
,p_column_label=>'Edit2'
,p_column_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:26:P26_PRODUCT_ID:#PRODUCT_ID#'
,p_column_linktext=>'#EDIT2#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(57875707267578609959)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'190574629'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCT_CODE:PRODUCT_NAME:PRODUCT_DESCRIPTION:CATEGORY:GROUP_NAME:PRODUCT_IMAGE:DETELS:EDIT:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72071883941794488275)
,p_plug_name=>'Search Protect'
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--noPadding:t-Form--large:t-Form--stretchInputs:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>3
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72184539071130196091)
,p_plug_name=>'HTML Report'
,p_region_name=>'partnerslRRhtml'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'Htp.p(''<a id="b_exit" type="button1" class="button button3" class="exit" ''||''href="''||APEX_UTIL.PREPARE_URL(''f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'')||''">Close</a>',
'<input type="button1" class="button button1"  class="t-Icon t-Icon--right fa fa-print" id="print" type="button" onclick="printdiv(''''div_print1'''');" value="Print"/><br/>',
'     ',
'<div id="div_print1" style="margin-top:5px;"> ''); ',
'',
'htp.p(''<table width="100%" border="0" cellspacing="0" cellpadding="3">',
'  <tr>',
unistr('    <td valign="top"><div align="center"><span class="rpt_report_head"><strong>\09B0\09BF\09AA\09CB\09B0\09CD\099F</strong></span></div>'),
'    </td>  ',
'    </tr>',
'</table>'');',
'htp.p(''<table width="100%" border="1" style="border-collapse:collapse;font-size: 18px;"">       ',
'    <tr>',
'    <td><div align="center">Product Code</div></td>',
'    <td><div align="center">Product Name </div></td>',
'    <td><div align="center">Product Description </div></td>',
'    <td><div align="center">Product Image </div></td>',
'    <td><div align="center">Category </div></td>',
'    <td><div align="center"> Group Name </div></td>',
'    <td><div align="center">Status </div></td>',
'    <td><div align="center">Create Date</div></td>',
'      <td><div align="center"><input type="checkbox" id="selectUnselectAll" title="Select/UnselectAll"></div></td>',
'    </tr>'');',
'-- For x in (select "USER_ID","USERNAME","FULL_NAME","PHONE_NUMBER","EMAIL_ADDRESS",(select GROUP_TITLE from USER_GROUP where OID=USER_TYPE) "USER_TYPE","SHOP_CATEGORY","IS_ACTIVE","PIN" from "MY_USERS")',
'',
'  For x in (select "PRODUCT_CODE","PRODUCT_NAME","PRODUCT_DESCRIPTION",',
'          decode(NVL(dbms_lob.getlength("PRODUCT_IMAGE"),0),0,NULL,',
'       ''<img src="''||',
'       apex_util.get_blob_file_src(''P53_PRODUCT_IMAGE'',PRODUCT_ID) ',
'||''" style="border: 4px solid #CCC; -moz-border-radius: 4px; -webkit-border-radius: 4px;" ''',
'||''"',
'        width = "125" height="80" />'')',
'        "PRODUCT_IMAGE",',
'            (select CAT_NAME_ENG from CATEGORY where OID=CATEGORY) "CATEGORY",',
'            (select GROUP_NAME_ENG from GROUP_NAME where OID=GROUP_NAME) "GROUP_NAME",',
'            (select STATUS from IS_ACTIVATE where OID=STATUS_ID) "STATUS_ID",',
'            TO_CHAR(CREATE_DATE, ''DD-Mon-YYYY'') "Date",',
'            apex_item.hidden(01,"PRODUCT_ID")||',
'            apex_item.checkbox2(02,"PRODUCT_ID") "check1"  from "PRODUCT"',
'            where "STATUS_ID" = 1',
'   and (:P25_PRO_CODE is null or upper("PRODUCT_CODE")= upper(:P25_PRO_CODE))',
'   and (:P25_PRO_NAME is null or upper("PRODUCT_NAME")= upper(:P25_PRO_NAME))',
'   and (:P25_PRO_CATEGRO is null or upper("CATEGORY")= upper(:P25_PRO_CATEGRO))',
'   and (:P25_ADD_DATE_FROM is null or (TO_CHAR(CREATE_DATE, ''DD-Mon-YYYY'') BETWEEN :P25_ADD_DATE_FROM and :P25_ADD_DATE_TO)))',
'',
'  ',
'        ',
'        ',
'--decode(nvl(dbms_lob.getlength(PRODUCT_IMAGE),0),0,null, ',
'-- ''<img src="'' ',
'--||apex_util.get_blob_file_src(''P53_PRODUCT_IMAGE'',PRODUCT_ID)||''" height="75" width="75"/>'') PRODUCT_IMAGE,',
' ',
' ',
' ',
' ',
' loop',
' htp.p(''',
'  <tr>    ',
'    <td>'' || x.PRODUCT_CODE || ''</td>    ',
'    <td>'' || x.PRODUCT_NAME || ''</td>',
'    <td>'' || x.PRODUCT_DESCRIPTION         || ''</td>',
'    <td>'' || x.PRODUCT_IMAGE || ''</td>',
'    <td>'' || x.CATEGORY  || ''</td>',
'    <td>'' || x.GROUP_NAME     || ''</td>',
'    <td>'' || x.STATUS_ID  || ''</td>',
'    <td>'' || x."Date" || ''</td>',
'    <td>'' || x."check1"   || ''</td>',
'   </tr>'');',
'END LOOP;',
'htp.p(''</table>'');',
'htp.p(''</div>'');',
'END;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(75248513314503825784)
,p_name=>'Report 2nd Try'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:i-h320:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.PRODUCT_ID,',
'    a.PRODUCT_CODE,',
'    a.PRODUCT_NAME,',
'    b.COLOR,',
'    b.FABRIC,',
'    b.GENDER,',
'    b.STYLE,',
'    c.COST_PRICE,',
'    c.SELLING_PRICE,',
'    c.DISCOUNT,',
'    c.ORIGINAL_PRICE,',
'    a.PRODUCT_ID Barcode,',
'    a.PRODUCT_ID Barcode2',
'    ',
' from PRODUCT_PRICE c,',
'    PRODUCT_DETELS b,',
'    PRODUCT a ',
' where a.PRODUCT_ID=b.PRODUCT_ID',
'    and a.PRODUCT_ID=c.PRODUCT_ID',
'    and a.PRODUCT_CODE=b.PRODUCT_CODE',
'    and a.PRODUCT_CODE=c.PRODUCT_CODE'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14551694827812634439)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25987911945049398064)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Product Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25987912325565398065)
,p_query_column_id=>2
,p_column_alias=>'PRODUCT_CODE'
,p_column_display_sequence=>2
,p_column_heading=>'Product Code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25987912776991398065)
,p_query_column_id=>3
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25987913182918398065)
,p_query_column_id=>4
,p_column_alias=>'COLOR'
,p_column_display_sequence=>4
,p_column_heading=>'Color'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25987913565604398065)
,p_query_column_id=>5
,p_column_alias=>'FABRIC'
,p_column_display_sequence=>11
,p_column_heading=>'Fabric'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25987913964718398066)
,p_query_column_id=>6
,p_column_alias=>'GENDER'
,p_column_display_sequence=>5
,p_column_heading=>'Gender'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25987914319174398066)
,p_query_column_id=>7
,p_column_alias=>'STYLE'
,p_column_display_sequence=>6
,p_column_heading=>'Style'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25987914724152398066)
,p_query_column_id=>8
,p_column_alias=>'COST_PRICE'
,p_column_display_sequence=>7
,p_column_heading=>'Cost Price'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25987915111295398066)
,p_query_column_id=>9
,p_column_alias=>'SELLING_PRICE'
,p_column_display_sequence=>8
,p_column_heading=>'Selling Price'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25987915568748398067)
,p_query_column_id=>10
,p_column_alias=>'DISCOUNT'
,p_column_display_sequence=>9
,p_column_heading=>'Discount'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25987915944351398067)
,p_query_column_id=>11
,p_column_alias=>'ORIGINAL_PRICE'
,p_column_display_sequence=>10
,p_column_heading=>'Original Price'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25987916370200398067)
,p_query_column_id=>12
,p_column_alias=>'BARCODE'
,p_column_display_sequence=>21
,p_column_heading=>'Barcode'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<svg id="barcode"</svg>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25987916795472398068)
,p_query_column_id=>13
,p_column_alias=>'BARCODE2'
,p_column_display_sequence=>31
,p_column_heading=>'Barcode2'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<img style="height:60px;" src="http://barcode.Tec-it.com/barcode.ashx?data=''#BARCODE2''" alt="barcode"/>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(80228885741313835694)
,p_plug_name=>'Protect Like Variabal'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551633705629634415)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25987908165155398061)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(72071883941794488275)
,p_button_name=>'Search'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Search'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25987908529004398061)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(72071883941794488275)
,p_button_name=>'Clear'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Clear'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25987911205561398064)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(72184539071130196091)
,p_button_name=>'Print'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Print'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25987906245307398060)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(57872467189515512490)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.:86::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25987906624027398060)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(57872467189515512490)
,p_button_name=>'Delete'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25987907033394398060)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(57872467189515512490)
,p_button_name=>'Print_Report'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Print Report'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25987917157574398068)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(75248513314503825784)
,p_button_name=>'New'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'New'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25987907411183398060)
,p_name=>'P25_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(57872467189515512490)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25987908978344398062)
,p_name=>'P25_PRO_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(72071883941794488275)
,p_prompt=>'Product Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25987909331912398062)
,p_name=>'P25_PRO_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(72071883941794488275)
,p_prompt=>'Product Name'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRODUCT_CODE ||''-''|| PRODUCT_NAME d, PRODUCT_NAME r',
'  from PRODUCT'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
,p_attribute_10=>'100%'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25987909767829398062)
,p_name=>'P25_PRO_CATEGRO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(72071883941794488275)
,p_prompt=>'Product Category'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CAT_NAME_ENG d, OID r',
'  from CATEGORY'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25987910129463398063)
,p_name=>'P25_ADD_DATE_FROM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(72071883941794488275)
,p_prompt=>'Entry Date From'
,p_format_mask=>'DD-Mon-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'STATIC'
,p_attribute_07=>'+0d'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
,p_attribute_15=>'FOCUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25987910543336398063)
,p_name=>'P25_ADD_DATE_TO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(72071883941794488275)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Entry Date To'
,p_format_mask=>'DD-Mon-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'STATIC'
,p_attribute_07=>'+0d'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
,p_attribute_15=>'FOCUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25987917894696398069)
,p_name=>'P25_PROTECT_LIKE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(80228885741313835694)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25987918204626398069)
,p_name=>'P25_PROTECT_UNLIKE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(80228885741313835694)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25987919418481398070)
,p_name=>'Delete action'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P25_NEW'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987919940604398070)
,p_event_id=>wwv_flow_imp.id(25987919418481398070)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'delete from PRODUCT where PRODUCT_ID=:P25_NEW;'
,p_attribute_02=>'P25_NEW'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987920448120398070)
,p_event_id=>wwv_flow_imp.id(25987919418481398070)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(57872467189515512490)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25987920878751398070)
,p_name=>'Select All Delete'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectUnselectAll'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#partnerslRR'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987921360049398071)
,p_event_id=>wwv_flow_imp.id(25987920878751398070)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( $( ''#selectUnselectAll'' ).is('':checked'') ) {',
'    $(''input[type=checkbox][name=f02]'').attr(''checked'',true);',
'}',
'else {',
'    $(''input[type=checkbox][name=f02]'').attr(''checked'',false);    ',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25987921703518398071)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25987908165155398061)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987922237032398071)
,p_event_id=>wwv_flow_imp.id(25987921703518398071)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("partnerslRR").refresh();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987922738785398071)
,p_event_id=>wwv_flow_imp.id(25987921703518398071)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("partnerslRRhtml").refresh();'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25987923197082398072)
,p_name=>'New_1'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25987911205561398064)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987923609744398072)
,p_event_id=>wwv_flow_imp.id(25987923197082398072)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25987924078828398072)
,p_name=>'New_2'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25987907033394398060)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987924598920398072)
,p_event_id=>wwv_flow_imp.id(25987924078828398072)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_PRINT.REGION.TO.PDF.V.2.0'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(57872467189515512490)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25987924926440398072)
,p_name=>'Baecode Report'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987925482348398072)
,p_event_id=>wwv_flow_imp.id(25987924926440398072)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(75248513314503825784)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'JsBarcode("#barcode", "1234", {',
'format: "pharmacode",',
'lineColor: "#0aa",',
'width: 4,',
'height: 40,',
'displayValue: false',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25987925818611398073)
,p_name=>'New_3'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25987917157574398068)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987926368424398073)
,p_event_id=>wwv_flow_imp.id(25987925818611398073)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(75248513314503825784)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25987918691776398069)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FOR I in 1..APEX_APPLICATION.G_F02.COUNT LOOP',
'DELETE PRODUCT',
'WHERE PRODUCT_ID=APEX_APPLICATION.G_F02(i);',
'END LOOP;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(25987906624027398060)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25987919020871398069)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(25987908529004398061)
);
wwv_flow_imp.component_end;
end;
/
