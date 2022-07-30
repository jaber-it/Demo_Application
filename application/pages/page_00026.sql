prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Add New Product'
,p_alias=>'ADD-NEW-PRODUCT'
,p_step_title=>'Add New Product'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function getVal(pNd){',
'return ($v(pNd)!="")?parseFloat($v(pNd)):0;',
'}',
'    function calcItems(){',
'        $s(''P92_ORIGINAL_PRICE'',getVal(''P92_SELLING_PRICE'')-getVal(''P92_DISCOUNT''));',
'}',
'   ',
'</script>'))
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'02'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76230232344430237011)
,p_plug_name=>'<span style="margin-left:230Px;font-size:23px;">Product Name</span>'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent13:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76230235816368237046)
,p_plug_name=>'Add Product Detels'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent4:t-Region--scrollBody:t-Form--slimPadding:t-Form--large:t-Form--stretchInputs:margin-right-lg'
,p_plug_template=>wwv_flow_imp.id(14551645193068634419)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P26_PRODUCT_CODE'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(76314087139883352715)
,p_name=>'<span style="margin-left:230Px;font-size:23px;">Product Detels</span>'
,p_region_name=>'detelsreport'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent13:t-Region--stacked:t-Region--scrollBody:t-Form--noPadding:margin-top-sm:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRODUCT_DETELS_ID,',
'       PRODUCT_ID,',
'       PRODUCT_CODE,',
'       COLOR,',
'       FABRIC,',
'       GENDER,',
'       STYLE,',
'       BRAND,',
'       PRODUCT_TYPE,',
'       OTHERS',
'  from PRODUCT_DETELS',
'  where PRODUCT_CODE = :P26_PRODUCT_CODE'))
,p_display_when_condition=>'P26_PRODUCT_CODE'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P26_PRODUCT_CODE'
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
 p_id=>wwv_flow_imp.id(25991601384289567500)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_DETELS_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.:99:P99_PRODUCT_DETELS_ID,P99_PRODUCT_ID:#PRODUCT_DETELS_ID#,#PRODUCT_ID#'
,p_column_linktext=>'Edit'
,p_column_link_attr=>'class="t-Button t-Button--hot t-Button--small t-Button--stretch"'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25991601764193567501)
,p_query_column_id=>2
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25991602188654567501)
,p_query_column_id=>3
,p_column_alias=>'PRODUCT_CODE'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25991602572763567501)
,p_query_column_id=>4
,p_column_alias=>'COLOR'
,p_column_display_sequence=>3
,p_column_heading=>'Color'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25991602938227567501)
,p_query_column_id=>5
,p_column_alias=>'FABRIC'
,p_column_display_sequence=>4
,p_column_heading=>'Fabric'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25991603322751567502)
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
 p_id=>wwv_flow_imp.id(25991603700077567502)
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
 p_id=>wwv_flow_imp.id(25991604192372567502)
,p_query_column_id=>8
,p_column_alias=>'BRAND'
,p_column_display_sequence=>7
,p_column_heading=>'Brand'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25991604532660567502)
,p_query_column_id=>9
,p_column_alias=>'PRODUCT_TYPE'
,p_column_display_sequence=>8
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25991604916971567502)
,p_query_column_id=>10
,p_column_alias=>'OTHERS'
,p_column_display_sequence=>9
,p_column_heading=>'Others'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76314088389761352727)
,p_plug_name=>'Set Product Price'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent5:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--large:t-Form--stretchInputs:margin-right-lg'
,p_plug_template=>wwv_flow_imp.id(14551645193068634419)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P26_PRODUCT_CODE'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(76314089678406352740)
,p_name=>'<span style="margin-left:230Px;font-size:23px;">Product Price</span>'
,p_region_name=>'pricereport'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent13:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--noPadding:margin-top-none:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRODUCT_PRICE_OID,',
'       COST_PRICE,',
'       SELLING_PRICE,',
'       DISCOUNT,',
'       ORIGINAL_PRICE',
'  from PRODUCT_PRICE',
'  where PRODUCT_CODE = :P26_PRODUCT_CODE'))
,p_display_when_condition=>'P26_PRODUCT_CODE'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P26_PRODUCT_CODE'
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
 p_id=>wwv_flow_imp.id(25991607911151567505)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_PRICE_OID'
,p_column_display_sequence=>6
,p_column_heading=>'id'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:93:&SESSION.::&DEBUG.:93:P93_PRODUCT_PRICE_OID:#PRODUCT_PRICE_OID#'
,p_column_linktext=>'Edit'
,p_column_link_attr=>'class="t-Button t-Button--hot t-Button--small t-Button--stretch"'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25991608345078567505)
,p_query_column_id=>2
,p_column_alias=>'COST_PRICE'
,p_column_display_sequence=>2
,p_column_heading=>'Cost Price'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25991608758595567505)
,p_query_column_id=>3
,p_column_alias=>'SELLING_PRICE'
,p_column_display_sequence=>3
,p_column_heading=>'Selling Price'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25991609124400567505)
,p_query_column_id=>4
,p_column_alias=>'DISCOUNT'
,p_column_display_sequence=>4
,p_column_heading=>'Discount'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25991609521709567506)
,p_query_column_id=>5
,p_column_alias=>'ORIGINAL_PRICE'
,p_column_display_sequence=>5
,p_column_heading=>'Original Price'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76336055820973973741)
,p_plug_name=>'All Button'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--showIcon:t-Region--hideHeader:t-Region--textContent:t-Region--hiddenOverflow:t-Form--noPadding:margin-top-none:margin-bottom-none:margin-left-none:margin-right-lg'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76336055910290973742)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--textContent:t-Region--scrollBody:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109523760808869146738)
,p_plug_name=>'Add New Product'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent4:t-Region--scrollBody:t-Form--slimPadding:t-Form--large:t-Form--stretchInputs:margin-top-none:margin-right-lg'
,p_plug_template=>wwv_flow_imp.id(14551645193068634419)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRODUCT_ID,',
'       PRODUCT_CODE,',
'       PRODUCT_NAME,',
'       PRODUCT_DESCRIPTION,',
'       PRODUCT_IMAGE,',
'       CATEGORY,',
'       GROUP_NAME,',
'       STATUS_ID,',
'       CREATE_BY,',
'       CREATE_DATE,',
'       UPDATE_DATE,',
'       MIME_TYPE,',
'       ALL_SLIDE_ID',
'  from PRODUCT'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25991612815770567508)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_button_name=>'Add_Category'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--hoverIconSpin'
,p_button_template_id=>wwv_flow_imp.id(14551729169018634453)
,p_button_image_alt=>'Add Category'
,p_button_redirect_url=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:84::'
,p_icon_css_classes=>'fa-plus-circle'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25991605659726567503)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(76314088389761352727)
,p_button_name=>'Save_Price'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Save'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="width:38%;"'
,p_grid_new_row=>'Y'
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25991613278176567508)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_button_name=>'GROUP_NAME'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--hoverIconSpin'
,p_button_template_id=>wwv_flow_imp.id(14551729169018634453)
,p_button_image_alt=>'Group Name'
,p_button_redirect_url=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.:95::'
,p_icon_css_classes=>'fa-plus-circle'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25991397847918567496)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(76230235816368237046)
,p_button_name=>'Save_Detels'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Save'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="width:100%;"'
,p_grid_new_row=>'N'
,p_grid_column=>9
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25991610273942567506)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(76336055820973973741)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25991610673671567506)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(76336055820973973741)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Delete'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P26_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25991611040821567507)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(76336055820973973741)
,p_button_name=>'New_Entry'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'New Entry'
,p_button_position=>'BOTTOM'
,p_button_condition=>'P26_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25991611464051567507)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(76336055820973973741)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BOTTOM'
,p_button_condition=>'P26_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25991611834438567507)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(76336055820973973741)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--gapLeft:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Create'
,p_button_position=>'BOTTOM'
,p_button_condition=>'P26_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(25991636748224567526)
,p_branch_name=>'Go To Page 86'
,p_branch_action=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(25991636335041567526)
,p_branch_name=>'Go To Page 92'
,p_branch_action=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(25991610673671567506)
,p_branch_sequence=>11
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991397219621567494)
,p_name=>'P26_DETELS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(76230232344430237011)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Detels'
,p_source=>'select GET_PRODETAILS(:P26_PRODUCT_ID) from dual'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style=''color: #325930;text-align: left;font-size: 18px;'''
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14551727066926634452)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991398246681567496)
,p_name=>'P26_COLOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(76230235816368237046)
,p_prompt=>'Color'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select distinct COLOR from PRODUCT_DETELS'
,p_cSize=>30
,p_cMaxlength=>250
,p_tag_attributes=>'style=''color: #325930;text-align: left;font-size: 18px;'''
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991398688678567496)
,p_name=>'P26_FABRIC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(76230235816368237046)
,p_prompt=>'Fabric'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select distinct FABRIC from PRODUCT_DETELS'
,p_cSize=>30
,p_cMaxlength=>250
,p_tag_attributes=>'style=''color: #325930;text-align: left;font-size: 18px;'''
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991399058640567497)
,p_name=>'P26_GENDER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(76230235816368237046)
,p_prompt=>'Gender'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select distinct GENDER from PRODUCT_DETELS'
,p_cSize=>30
,p_cMaxlength=>250
,p_tag_attributes=>'style=''color: #325930;text-align: left;font-size: 18px;'''
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991399432693567497)
,p_name=>'P26_STYLE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(76230235816368237046)
,p_prompt=>'Style'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select distinct STYLE from PRODUCT_DETELS'
,p_cSize=>30
,p_cMaxlength=>250
,p_tag_attributes=>'style=''color: #325930;text-align: left;font-size: 18px;'''
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991399827660567497)
,p_name=>'P26_BRAND'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(76230235816368237046)
,p_prompt=>'Brand'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select distinct BRAND from PRODUCT_DETELS'
,p_cSize=>30
,p_cMaxlength=>250
,p_tag_attributes=>'style=''color: #325930;text-align: left;font-size: 18px;'''
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991600259742567498)
,p_name=>'P26_PRODUCT_TYPE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(76230235816368237046)
,p_prompt=>'Product Type'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select distinct PRODUCT_TYPE from PRODUCT_DETELS'
,p_cSize=>30
,p_cMaxlength=>250
,p_tag_attributes=>'style=''color: #325930;text-align: left;font-size: 18px;'''
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991600621765567498)
,p_name=>'P26_OTHERS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(76230235816368237046)
,p_prompt=>'Others'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select distinct OTHERS from PRODUCT_DETELS'
,p_cSize=>30
,p_cMaxlength=>250
,p_tag_attributes=>'style=''color: #325930;text-align: left;font-size: 18px;'''
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991606044030567503)
,p_name=>'P26_COST_PRICE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(76314088389761352727)
,p_prompt=>'Cost Price'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style=''color: #325930;text-align: center;font-size: 18px;'''
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991606470017567504)
,p_name=>'P26_SELLING_PRICE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(76314088389761352727)
,p_prompt=>'Selling Price'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onchange="calcItems()"style=''color: #325930;text-align: center;font-size: 18px;'''
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991606891471567504)
,p_name=>'P26_DISCOUNT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(76314088389761352727)
,p_prompt=>'Discount'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onchange="calcItems()"style=''color: #325930;text-align: center;font-size: 18px;'''
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991607249616567504)
,p_name=>'P26_ORIGINAL_PRICE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(76314088389761352727)
,p_prompt=>'Original Price'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style=''color: #325930;text-align: center;font-size: 18px;'''
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991613682853567508)
,p_name=>'P26_PRODUCT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_item_source_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_source=>'PRODUCT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991614004931567509)
,p_name=>'P26_PRODUCT_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_item_source_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_prompt=>'Product Code'
,p_source=>'PRODUCT_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>250
,p_tag_attributes=>'style=''color: #325930;text-align: left;font-size: 18px;'''
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991614482016567509)
,p_name=>'P26_PRODUCT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_item_source_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_prompt=>'Product Name'
,p_source=>'PRODUCT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select distinct PRODUCT_NAME from PRODUCT'
,p_cSize=>60
,p_cMaxlength=>250
,p_tag_attributes=>'style=''color: #325930;text-align: left;font-size: 18px;'''
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991614862503567509)
,p_name=>'P26_PRODUCT_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_item_source_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_prompt=>'Product Description'
,p_source=>'PRODUCT_DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>5
,p_tag_attributes=>'style=''color: #325930;text-align: left;font-size: 18px;'''
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727231854634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991615243469567509)
,p_name=>'P26_PRODUCT_IMAGE'
,p_source_data_type=>'BLOB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_item_source_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_prompt=>'Product Image'
,p_source=>'PRODUCT_IMAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(14551727231854634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIME_TYPE'
,p_attribute_03=>'PRODUCT_NAME'
,p_attribute_05=>'UPDATE_DATE'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_12=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991615686688567509)
,p_name=>'P26_CATEGORY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_item_source_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_prompt=>'Category'
,p_source=>'CATEGORY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select CAT_NAME_ENG||''-''||CAT_NAME_BANGLA d, OID r from CATEGORY'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select List -'
,p_cHeight=>1
,p_tag_attributes=>'style=''color: #325930;text-align: left;font-size: 14px;'''
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991616051642567510)
,p_name=>'P26_GROUP_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_item_source_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_prompt=>'Group Name'
,p_source=>'GROUP_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select GROUP_NAME_ENG||''-''||GROUP_NAME_BANGLA, OID from GROUP_NAME',
'where CATEGORY=:P26_CATEGORY'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select List -'
,p_lov_cascade_parent_items=>'P26_CATEGORY'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'style=''color: #325930;text-align: left;font-size: 14px;'''
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991616415039567510)
,p_name=>'P26_STATUS_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_item_source_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_prompt=>'Status Id'
,p_source=>'STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select STATUS d, OID r',
' from IS_ACTIVATE'))
,p_cHeight=>1
,p_tag_attributes=>'style=''color: #325930;text-align: left;font-size: 18px;'''
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_icon_css_classes=>'fa-check-circle'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991616819895567510)
,p_name=>'P26_CREATE_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_item_source_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_source=>'CREATE_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991617280585567511)
,p_name=>'P26_CREATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_item_source_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_source=>'CREATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991617695157567511)
,p_name=>'P26_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_item_source_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991618014747567511)
,p_name=>'P26_MIME_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_item_source_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_source=>'MIME_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991618419350567511)
,p_name=>'P26_ALL_SLIDE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_item_source_plug_id=>wwv_flow_imp.id(109523760808869146738)
,p_source=>'ALL_SLIDE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25991625507422567518)
,p_name=>'Product Code'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P26_PRODUCT_CODE'
,p_condition_element=>'P26_PRODUCT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25991626010999567519)
,p_event_id=>wwv_flow_imp.id(25991625507422567518)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_PRODUCT_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25991626541227567519)
,p_event_id=>wwv_flow_imp.id(25991625507422567518)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_PRODUCT_CODE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25991626996131567519)
,p_name=>'Add Button to Items'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25991627427449567520)
,p_event_id=>wwv_flow_imp.id(25991626996131567519)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_APEX.ITEMS.WITH.BUTTONS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(25991612815770567508)
,p_attribute_01=>'P26_CATEGORY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25991627933933567521)
,p_event_id=>wwv_flow_imp.id(25991626996131567519)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_APEX.ITEMS.WITH.BUTTONS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(25991613278176567508)
,p_attribute_01=>'P26_GROUP_NAME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25991628378306567521)
,p_name=>'New'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P26_DISCOUNT'
,p_condition_element=>'P26_DISCOUNT'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25991628845997567521)
,p_event_id=>wwv_flow_imp.id(25991628378306567521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_DISCOUNT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25991629250263567521)
,p_name=>'DELETE_all_Table'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25991610673671567506)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25991629747961567522)
,p_event_id=>wwv_flow_imp.id(25991629250263567521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from PRODUCT where PRODUCT_CODE=:P26_PRODUCT_CODE;',
'delete from PRODUCT_DETELS where PRODUCT_CODE=:P26_PRODUCT_CODE;',
'delete from PRODUCT_PRICE where PRODUCT_CODE=:P26_PRODUCT_CODE;',
'',
''))
,p_attribute_02=>'P26_PRODUCT_CODE'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25991630202184567522)
,p_event_id=>wwv_flow_imp.id(25991629250263567521)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'DELETE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25991630696361567522)
,p_name=>'Save Detels'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25991397847918567496)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25991631197373567522)
,p_event_id=>wwv_flow_imp.id(25991630696361567522)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into PRODUCT_DETELS (PRODUCT_DETELS_ID,PRODUCT_ID,PRODUCT_CODE,COLOR,FABRIC,GENDER,STYLE,BRAND,PRODUCT_TYPE,OTHERS)',
'values (PRODUCT_DETALIS_SEQ.NEXTVAL,:P26_PRODUCT_ID,:P26_PRODUCT_CODE,:P26_COLOR,:P26_FABRIC,:P26_GENDER,:P26_STYLE,:P26_BRAND,',
'        :P26_PRODUCT_TYPE,:P26_OTHERS);'))
,p_attribute_02=>'P26_PRODUCT_CODE,P26_COLOR,P26_FABRIC,P26_GENDER,P26_STYLE,P26_BRAND,P26_PRODUCT_TYPE,P26_OTHERS'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25991631643076567523)
,p_event_id=>wwv_flow_imp.id(25991630696361567522)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(76314087139883352715)
,p_attribute_01=>'apex.region("detelsreport").refresh();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25991632128594567523)
,p_event_id=>wwv_flow_imp.id(25991630696361567522)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_COLOR,P26_FABRIC,P26_GENDER,P26_STYLE,P26_BRAND,P26_PRODUCT_TYPE,P26_OTHERS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25991632537060567523)
,p_name=>'Save Price'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25991605659726567503)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25991633027304567523)
,p_event_id=>wwv_flow_imp.id(25991632537060567523)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into PRODUCT_PRICE (PRODUCT_PRICE_OID,PRODUCT_ID,PRODUCT_CODE,COST_PRICE,SELLING_PRICE,DISCOUNT,ORIGINAL_PRICE)',
'values (PRODUCT_PRICE_SEQ.NEXTVAL,:P26_PRODUCT_ID,:P26_PRODUCT_CODE,:P26_COST_PRICE,:P26_SELLING_PRICE,:P26_DISCOUNT,:P26_ORIGINAL_PRICE);'))
,p_attribute_02=>'P26_PRODUCT_CODE,P26_COST_PRICE,P26_SELLING_PRICE,P26_DISCOUNT,P26_ORIGINAL_PRICE'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25991633528954567524)
,p_event_id=>wwv_flow_imp.id(25991632537060567523)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(76314089678406352740)
,p_attribute_01=>'apex.region("pricereport").refresh();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25991634006175567524)
,p_event_id=>wwv_flow_imp.id(25991632537060567523)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_COST_PRICE,P26_SELLING_PRICE,P26_DISCOUNT,P26_ORIGINAL_PRICE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25991634478459567524)
,p_name=>'Edit Deterls - Dialog Closed'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(76314087139883352715)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25991634950420567524)
,p_event_id=>wwv_flow_imp.id(25991634478459567524)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(76314087139883352715)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25991635329628567525)
,p_name=>'Edit Price- Dialog Closed_1'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(76314089678406352740)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25991635869371567525)
,p_event_id=>wwv_flow_imp.id(25991635329628567525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(76314089678406352740)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25991624324651567517)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    function get_pk return varchar2',
'    is',
'    begin',
'        DECLARE',
'   V_REF_ID VARCHAR (30);',
'BEGIN',
'V_REF_ID :=',
'            TO_CHAR (''P'')',
'         || ''''|| CUST_NUMBER.GET_32_BASE_NUMBER (:P26_PRODUCT_ID );',
'',
'   RETURN V_REF_ID;',
'END;',
'    end; ',
'begin',
':P26_PRODUCT_ID := PRODUCT_ID_SEQ.nextval;',
':P26_PRODUCT_CODE := get_pk;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(25991611834438567507)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25991623114255567515)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(109523760808869146738)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Add New Product'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25991624720602567517)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'New'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(25991611040821567507)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25991625197633567518)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'New_1'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(25991610673671567506)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25991622748093567515)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(109523760808869146738)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Add New Product'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25991623587121567517)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P26_UPDATE_DATE :=To_date(sysdate);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(25991611464051567507)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25991623961676567517)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insart'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P26_CREATE_BY :=:APP_USER;',
':P26_CREATE_DATE :=To_date(sysdate);',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
