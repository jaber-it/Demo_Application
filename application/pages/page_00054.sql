prompt --application/pages/page_00054
begin
--   Manifest
--     PAGE: 00054
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
 p_id=>54
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Product Report'
,p_alias=>'PRODUCT-REPORT1'
,p_step_title=>'Product Report'
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
,p_last_upd_yyyymmddhh24miss=>'20220218150152'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59872820830533197694)
,p_plug_name=>'Product Report'
,p_region_name=>'partnerslRR'
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
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
'       apex_util.get_blob_file_src(''P55_PRODUCT_IMAGE'',PRODUCT_ID) ',
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
'       ''<a  href="f?p=''|| V(''APP_ID'') ||'':55:''|| V(''SESSION'') ||''::NO:55:P55_PRODUCT_ID:''||PRODUCT_ID||''"',
unistr('       <span style="background-color:#325930; color:white; font-size: 16px; line-height: 11px; border-radius: 8px; " class="t-Button t-Button\2013small t-Button\2013noLabel t-Button\2013icon add-favorite trans_status" target="_blank"</span>Edit</a>'' Edit,'),
'       PRODUCT_ID Edit2,',
'       PRODUCT_ID Detels,',
'       apex_item.hidden(01,PRODUCT_ID)||',
'apex_item.checkbox2(02,PRODUCT_ID)',
'check1',
'  from PRODUCT',
'   where STATUS_ID = 1',
'   and (:P54_PRO_CODE is null or upper(PRODUCT_CODE)= upper(:P54_PRO_CODE))',
'   and (:P54_PRO_NAME is null or upper(PRODUCT_NAME)= upper(:P54_PRO_NAME))',
'   and (:P54_PRO_CATEGRO is null or upper(CATEGORY)= upper(:P54_PRO_CATEGRO))',
'   and (:P54_ADD_DATE_FROM is null or (TO_CHAR(CREATE_DATE, ''DD-Mon-YYYY'') BETWEEN :P54_ADD_DATE_FROM and :P54_ADD_DATE_TO))',
'',
'  ',
'        ',
'        ',
'--decode(nvl(dbms_lob.getlength(PRODUCT_IMAGE),0),0,null, ',
'-- ''<img src="'' ',
'--||apex_util.get_blob_file_src(''P53_PRODUCT_IMAGE'',PRODUCT_ID)||''" height="75" width="75"/>'') PRODUCT_IMAGE,'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P54_PRO_CODE,P54_PRO_NAME,P54_PRO_CATEGRO,P54_ADD_DATE_FROM,P54_ADD_DATE_TO'
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
 p_id=>wwv_flow_imp.id(59872820882139197695)
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
,p_internal_uid=>59872820882139197695
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40818602134954727799)
,p_db_column_name=>'PRODUCT_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Product Id'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40818602564121727800)
,p_db_column_name=>'PRODUCT_CODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40818605733997727802)
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
 p_id=>wwv_flow_imp.id(40818602943948727800)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40818603312077727801)
,p_db_column_name=>'PRODUCT_DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40818606934688727803)
,p_db_column_name=>'CATEGORY'
,p_display_order=>60
,p_column_identifier=>'W'
,p_column_label=>'Category'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40818603710534727801)
,p_db_column_name=>'GROUP_NAME'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Group '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40818604505536727802)
,p_db_column_name=>'CREATE_BY'
,p_display_order=>80
,p_column_identifier=>'O'
,p_column_label=>'Create By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40818604959670727802)
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
 p_id=>wwv_flow_imp.id(40818605332170727802)
,p_db_column_name=>'MIME_TYPE'
,p_display_order=>100
,p_column_identifier=>'R'
,p_column_label=>'Mime Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40818606122779727803)
,p_db_column_name=>'DEL'
,p_display_order=>120
,p_column_identifier=>'U'
,p_column_label=>'Del'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40818604160427727801)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>130
,p_column_identifier=>'G'
,p_column_label=>'Status Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40818606517280727803)
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
 p_id=>wwv_flow_imp.id(40818607315339727804)
,p_db_column_name=>'DATE1'
,p_display_order=>150
,p_column_identifier=>'X'
,p_column_label=>'Date1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40818607711459727804)
,p_db_column_name=>'DETELS'
,p_display_order=>160
,p_column_identifier=>'Y'
,p_column_label=>'Detels'
,p_column_link=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:47:P47_ID:#PRODUCT_ID#'
,p_column_linktext=>unistr('<span style="background-color:#f44336; color:white;font-size: 16px; line-height: 11px; border-radius: 8px; " class="t-Button t-Button\2013small t-Button\2013noLabel t-Button\2013icon add-favorite trans_status"> <i class="fa fa-indent-o fa-1x" aria-hidden="true">')
||'</i>  Detels</span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40818608190653727804)
,p_db_column_name=>'EDIT'
,p_display_order=>210
,p_column_identifier=>'AF'
,p_column_label=>'Edit'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40816554045637693005)
,p_db_column_name=>'EDIT2'
,p_display_order=>220
,p_column_identifier=>'AG'
,p_column_label=>'Edit2'
,p_column_link=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.:55:P55_PRODUCT_ID:#PRODUCT_ID#'
,p_column_linktext=>'#EDIT2#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(59876060908596295163)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'190574629'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCT_CODE:PRODUCT_NAME:PRODUCT_DESCRIPTION:CATEGORY:GROUP_NAME:PRODUCT_IMAGE:DETELS:EDIT:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74072237582812173479)
,p_plug_name=>'Search Protect'
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--noPadding:t-Form--large:t-Form--stretchInputs:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>3
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74184892712147881295)
,p_plug_name=>'HTML Report'
,p_region_name=>'partnerslRRhtml'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
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
'   and (:P54_PRO_CODE is null or upper("PRODUCT_CODE")= upper(:P54_PRO_CODE))',
'   and (:P54_PRO_NAME is null or upper("PRODUCT_NAME")= upper(:P54_PRO_NAME))',
'   and (:P54_PRO_CATEGRO is null or upper("CATEGORY")= upper(:P54_PRO_CATEGRO))',
'   and (:P54_ADD_DATE_FROM is null or (TO_CHAR(CREATE_DATE, ''DD-Mon-YYYY'') BETWEEN :P54_ADD_DATE_FROM and :P54_ADD_DATE_TO)))',
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
 p_id=>wwv_flow_imp.id(77248866955521510988)
,p_name=>'Report 2nd Try'
,p_template=>wwv_flow_imp.id(33247212693934359074)
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
,p_query_row_template=>wwv_flow_imp.id(33247241596394359095)
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
 p_id=>wwv_flow_imp.id(40818615721222727819)
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
 p_id=>wwv_flow_imp.id(40818616111170727820)
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
 p_id=>wwv_flow_imp.id(40818616581346727820)
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
 p_id=>wwv_flow_imp.id(40818612903601727818)
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
 p_id=>wwv_flow_imp.id(40818616902789727820)
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
 p_id=>wwv_flow_imp.id(40818613312412727818)
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
 p_id=>wwv_flow_imp.id(40818613706937727818)
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
 p_id=>wwv_flow_imp.id(40818614178613727818)
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
 p_id=>wwv_flow_imp.id(40818614501199727819)
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
 p_id=>wwv_flow_imp.id(40818614952869727819)
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
 p_id=>wwv_flow_imp.id(40818615381734727819)
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
 p_id=>wwv_flow_imp.id(40818612584521727817)
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
 p_id=>wwv_flow_imp.id(40818617393140727820)
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
 p_id=>wwv_flow_imp.id(82229239382331520898)
,p_plug_name=>'Protect Like Variabal'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247185261157359055)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40818599413310727784)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74072237582812173479)
,p_button_name=>'Search'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Search'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40818599014615727784)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(74072237582812173479)
,p_button_name=>'Clear'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Clear'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40818611832914727815)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74184892712147881295)
,p_button_name=>'Print'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Print'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40818608807436727812)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(59872820830533197694)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.:86::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40818609250744727813)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(59872820830533197694)
,p_button_name=>'Delete'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40818609671628727813)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(59872820830533197694)
,p_button_name=>'Print_Report'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Print Report'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40818617769397727820)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(77248866955521510988)
,p_button_name=>'New'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'New'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40818599824252727791)
,p_name=>'P54_PRO_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74072237582812173479)
,p_prompt=>'Product Code'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40818600274504727792)
,p_name=>'P54_PRO_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(74072237582812173479)
,p_prompt=>'Product Name'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRODUCT_CODE ||''-''|| PRODUCT_NAME d, PRODUCT_NAME r',
'  from PRODUCT'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
,p_attribute_10=>'100%'
,p_attribute_12=>'DISPLAY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40818600635416727792)
,p_name=>'P54_PRO_CATEGRO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(74072237582812173479)
,p_prompt=>'Product Category'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CAT_NAME_ENG d, OID r',
'  from CATEGORY'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40818601042550727792)
,p_name=>'P54_ADD_DATE_FROM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(74072237582812173479)
,p_prompt=>'Entry Date From'
,p_format_mask=>'DD-Mon-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'+0d'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40818601447254727792)
,p_name=>'P54_ADD_DATE_TO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(74072237582812173479)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Entry Date To'
,p_format_mask=>'DD-Mon-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'+0d'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40818610056369727813)
,p_name=>'P54_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(59872820830533197694)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40818610719449727814)
,p_name=>'P54_PROTECT_LIKE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(82229239382331520898)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40818611115730727814)
,p_name=>'P54_PROTECT_UNLIKE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(82229239382331520898)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40818619845558727825)
,p_name=>'Delete action'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P54_NEW'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40818620876514727825)
,p_event_id=>wwv_flow_imp.id(40818619845558727825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'delete from PRODUCT where PRODUCT_ID=:P54_NEW;'
,p_attribute_02=>'P54_NEW'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40818620326585727825)
,p_event_id=>wwv_flow_imp.id(40818619845558727825)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59872820830533197694)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40818621265028727825)
,p_name=>'Select All Delete'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectUnselectAll'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#partnerslRR'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40818621762375727826)
,p_event_id=>wwv_flow_imp.id(40818621265028727825)
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
 p_id=>wwv_flow_imp.id(40818622142105727826)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40818599413310727784)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40818623136244727826)
,p_event_id=>wwv_flow_imp.id(40818622142105727826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("partnerslRR").refresh();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40818622671544727826)
,p_event_id=>wwv_flow_imp.id(40818622142105727826)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("partnerslRRhtml").refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40818624497829727827)
,p_name=>'New_1'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40818611832914727815)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40818624929796727827)
,p_event_id=>wwv_flow_imp.id(40818624497829727827)
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
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>13501875225360637847
,p_default_application_id=>78259
,p_default_id_offset=>0
,p_default_owner=>'FLMPJGAZDYSOYO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40818623586642727826)
,p_name=>'New_2'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40818609671628727813)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40818624074134727827)
,p_event_id=>wwv_flow_imp.id(40818623586642727826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_PRINT.REGION.TO.PDF.V.2.0'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59872820830533197694)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40818625350106727827)
,p_name=>'Baecode Report'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40818625809712727827)
,p_event_id=>wwv_flow_imp.id(40818625350106727827)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77248866955521510988)
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
 p_id=>wwv_flow_imp.id(40818618956726727823)
,p_name=>'New_3'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40818617769397727820)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40818619482456727825)
,p_event_id=>wwv_flow_imp.id(40818618956726727823)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77248866955521510988)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40818618149368727822)
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
,p_process_when_button_id=>wwv_flow_imp.id(40818609250744727813)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40818618554662727822)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(40818599014615727784)
);
wwv_flow_imp.component_end;
end;
/
