prompt --application/pages/page_00044
begin
--   Manifest
--     PAGE: 00044
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
 p_id=>44
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Product Card Classic Report'
,p_alias=>'PRODUCT-CARD-CLASSIC-REPORT'
,p_step_title=>'Product Card Classic Report'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img {',
'    border-style: none;',
'    height: 150px;',
'    width: 100%;',
'    border-radius: 20px 20px 5px 5px;',
'}',
'',
'',
'',
'.t-Card, .t-Cards-item {',
'    width: 91%;',
'    height: 102%;',
'    display: flex;',
'    flex-grow: 11;',
'}',
'.t-Cards--displaySubtitle .t-Card-subtitle {',
'    display: block;',
'    font-size: 18px;',
'    line-height: 23px;',
'}',
'.t-Card-desc {',
'    flex-grow: initial;',
'    font-size: 18px;',
'    line-height: 20px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(25282411042994979001)
,p_name=>'Report 12'
,p_template=>wwv_flow_imp.id(14551636964758634416)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT a.PRODUCT_ID,',
'       DBMS_LOB.getlength (a.PRODUCT_IMAGE) AS Title,',
'       a.PRODUCT_DESCRIPTION AS secondary_card,',
'       a.PRODUCT_NAME as Title_subtitle,',
'       a.PRODUCT_CODE Read1,',
'       (SELECT p.ORIGINAL_PRICE FROM PRODUCT_PRICE p WHERE a.PRODUCT_ID = p.PRODUCT_ID) AS Bookmark,',
'       (SELECT p.SELLING_PRICE FROM PRODUCT_PRICE p WHERE a.PRODUCT_ID = p.PRODUCT_ID) AS share1,',
'       (SELECT p.DISCOUNT FROM PRODUCT_PRICE p WHERE a.PRODUCT_ID = p.PRODUCT_ID) AS more_vert',
'  FROM PRODUCT a'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(25282274803471930265)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25282411112936979002)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Product Id'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25282411943152979010)
,p_query_column_id=>2
,p_column_alias=>'TITLE'
,p_column_display_sequence=>70
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25282412049663979011)
,p_query_column_id=>3
,p_column_alias=>'SECONDARY_CARD'
,p_column_display_sequence=>80
,p_column_heading=>'Secondary Card'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25282412106455979012)
,p_query_column_id=>4
,p_column_alias=>'TITLE_SUBTITLE'
,p_column_display_sequence=>90
,p_column_heading=>'Title Subtitle'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25282412203515979013)
,p_query_column_id=>5
,p_column_alias=>'READ1'
,p_column_display_sequence=>100
,p_column_heading=>'Read1'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25282412325087979014)
,p_query_column_id=>6
,p_column_alias=>'BOOKMARK'
,p_column_display_sequence=>110
,p_column_heading=>'Bookmark'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25282412415935979015)
,p_query_column_id=>7
,p_column_alias=>'SHARE1'
,p_column_display_sequence=>120
,p_column_heading=>'Share1'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25282412516045979016)
,p_query_column_id=>8
,p_column_alias=>'MORE_VERT'
,p_column_display_sequence=>130
,p_column_heading=>'More Vert'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(34736345128533988136)
,p_name=>'Add Cart Report'
,p_region_name=>'ADE'
,p_template=>wwv_flow_imp.id(14551657269079634424)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_display_point=>'REGION_POSITION_04'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'ORDER_PRODUCT'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34736345685865988141)
,p_query_column_id=>1
,p_column_alias=>'OID'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34736345746779988142)
,p_query_column_id=>2
,p_column_alias=>'PRODUCT_CODE'
,p_column_display_sequence=>20
,p_column_heading=>'Product Code'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34736345887535988143)
,p_query_column_id=>3
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34736345915744988144)
,p_query_column_id=>4
,p_column_alias=>'RATE'
,p_column_display_sequence=>40
,p_column_heading=>'Rate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34736346099382988145)
,p_query_column_id=>5
,p_column_alias=>'QTY'
,p_column_display_sequence=>50
,p_column_heading=>'Qty'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34736346106766988146)
,p_query_column_id=>6
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>70
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34736346273886988147)
,p_query_column_id=>7
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>80
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34736346362779988148)
,p_query_column_id=>8
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>60
,p_column_heading=>'Total'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(34894162502983682063)
,p_name=>'Report 1'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--displaySubtitle:t-Cards--compact:t-Cards--5cols:t-Cards--animColorFill'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT a.PRODUCT_ID,',
'       DBMS_LOB.getlength (a.PRODUCT_IMAGE) AS CARD_TITLE,',
'       a.PRODUCT_DESCRIPTION AS CARD_SUBTEXT,',
'       a.PRODUCT_NAME as CARD_SUBTITLE,',
'       a.PRODUCT_CODE,',
'       (SELECT p.ORIGINAL_PRICE FROM PRODUCT_PRICE p WHERE a.PRODUCT_ID = p.PRODUCT_ID) AS CARD_TEXT,',
'       (SELECT p.SELLING_PRICE FROM PRODUCT_PRICE p WHERE a.PRODUCT_ID = p.PRODUCT_ID) AS SELLPRICE,',
'       (SELECT p.DISCOUNT FROM PRODUCT_PRICE p WHERE a.PRODUCT_ID = p.PRODUCT_ID) AS DISPRICE',
'  FROM PRODUCT a'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14551680849571634433)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34894162994564682064)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Product Id'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34893072863074641816)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>20
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:PRODUCT:PRODUCT_IMAGE:PRODUCT_ID::MIME_TYPE::::::'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34893074138646641829)
,p_query_column_id=>3
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>110
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.:46:P46_PRODUCT_CODE,P46_PRODUCT_NAME,P46_RATE,P46_PRODUCT_ID:#PRODUCT_CODE#,#CARD_SUBTITLE#,#SELLPRICE#,#PRODUCT_ID#'
,p_column_linktext=>unistr('<span style="background-color:#f44336; color:white; width:100%;font-size: 16px; line-height: 11px; border-radius: 8px;" class="t-Button t-Button\2013small t-Button\2013noLabel t-Button\2013icon add-favorite trans_status"> <i class="fa fa-shopping-cart" aria-hidd')
||'en="true"></i> Add Cart</span>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34893074042376641828)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTITLE'
,p_column_display_sequence=>100
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34893073627122641824)
,p_query_column_id=>5
,p_column_alias=>'PRODUCT_CODE'
,p_column_display_sequence=>60
,p_column_heading=>'Product Code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34893073147065641819)
,p_query_column_id=>6
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>50
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34893073852829641826)
,p_query_column_id=>7
,p_column_alias=>'SELLPRICE'
,p_column_display_sequence=>80
,p_column_heading=>'Rate'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34893073971589641827)
,p_query_column_id=>8
,p_column_alias=>'DISPRICE'
,p_column_display_sequence=>90
,p_column_heading=>'Disprice'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34893075755059641845)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(34894162502983682063)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34893075844679641846)
,p_event_id=>wwv_flow_imp.id(34893075755059641845)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(34894162502983682063)
);
wwv_flow_imp.component_end;
end;
/
