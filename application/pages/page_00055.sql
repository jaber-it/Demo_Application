prompt --application/pages/page_00055
begin
--   Manifest
--     PAGE: 00055
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
 p_id=>55
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Add New Product'
,p_alias=>'ADD-NEW-PRODUCT1'
,p_step_title=>'Add New Product'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function getVal(pNd){',
'return ($v(pNd)!="")?parseFloat($v(pNd)):0;',
'}',
'    function calcItems(){',
'        $s(''P86_ORIGINAL_PRICE'',getVal(''P86_SELLING_PRICE'')-getVal(''P86_DISCOUNT''));',
'}',
'   ',
'</script>'))
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'02'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220218150114'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75078117247502540282)
,p_plug_name=>'Add Product Detels'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent4:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding:t-Form--large:t-Form--stretchInputs:t-Form--labelsAbove:margin-bottom-sm'
,p_plug_template=>wwv_flow_imp.id(33247195628587359062)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_column=>8
,p_plug_display_point=>'BODY_1'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P55_PRODUCT_CODE'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75078117285778540283)
,p_plug_name=>'Set Product Price'
,p_region_template_options=>'#DEFAULT#:t-Region--accent3:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding:t-Form--large:t-Form--stretchInputs:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY_1'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P55_PRODUCT_CODE'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75090270983925583264)
,p_plug_name=>'Add New Product'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent4:t-Region--scrollBody:t-Form--standardPadding:t-Form--large:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(33247195628587359062)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>6
,p_plug_display_column=>2
,p_plug_display_point=>'BODY_1'
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
 p_id=>wwv_flow_imp.id(40818958124261075287)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40818969110383075298)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(75078117247502540282)
,p_button_name=>'Save_Detels'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Save Detels'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P55_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40818975114803075300)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(75078117285778540283)
,p_button_name=>'Save_Price'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Save Price'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P55_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40818956900049075286)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Delete'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P55_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40818957772716075286)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--gapLeft:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P55_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40818956125818075286)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_button_name=>'Add_Category'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--hoverIconSpin'
,p_button_template_id=>wwv_flow_imp.id(33247274058984359120)
,p_button_image_alt=>'Add Category'
,p_button_redirect_url=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:84::'
,p_icon_css_classes=>'fa-plus-circle'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40818956581674075286)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_button_name=>'GROUP_NAME'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--hoverIconSpin'
,p_button_template_id=>wwv_flow_imp.id(33247274058984359120)
,p_button_image_alt=>'Group Name'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:32::'
,p_icon_css_classes=>'fa-plus-circle'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40818968784205075297)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(75078117247502540282)
,p_button_name=>'Detels_Apply_Changes_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_condition=>'P55_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40818974783978075300)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(75078117285778540283)
,p_button_name=>'Price_Apply_Changes'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_condition=>'P55_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40818957305890075286)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_condition=>'P55_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40818955716502075285)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_button_name=>'New_Entry'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'New Entry'
,p_button_position=>'EDIT'
,p_button_condition=>'P55_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(40818986921845075311)
,p_branch_name=>'Go To Page 86'
,p_branch_action=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(40818986586943075311)
,p_branch_name=>'Go To Page 86'
,p_branch_action=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(40818956900049075286)
,p_branch_sequence=>11
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40818958566138075291)
,p_name=>'P55_PRODUCT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_item_source_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_source=>'PRODUCT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40818958934452075292)
,p_name=>'P55_PRODUCT_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_item_source_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_prompt=>'Product Code'
,p_source=>'PRODUCT_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>250
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40818959368810075292)
,p_name=>'P55_PRODUCT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_item_source_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_prompt=>'Product Name'
,p_source=>'PRODUCT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select distinct PRODUCT_NAME from PRODUCT'
,p_cSize=>60
,p_cMaxlength=>250
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40818959721789075293)
,p_name=>'P55_PRODUCT_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_item_source_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_prompt=>'Product Description'
,p_source=>'PRODUCT_DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>5
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40818960112189075293)
,p_name=>'P55_PRODUCT_IMAGE'
,p_source_data_type=>'BLOB'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_item_source_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_prompt=>'Product Image'
,p_source=>'PRODUCT_IMAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
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
 p_id=>wwv_flow_imp.id(40818960531638075293)
,p_name=>'P55_CATEGORY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_item_source_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_prompt=>'Category'
,p_source=>'CATEGORY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select CAT_NAME_ENG||''-''||CAT_NAME_BANGLA d, OID r from CATEGORY'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select List -'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40818960984893075293)
,p_name=>'P55_GROUP_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_item_source_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_prompt=>'Group Name'
,p_source=>'GROUP_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select GROUP_NAME_ENG||''-''||GROUP_NAME_BANGLA, OID from GROUP_NAME',
'where CATEGORY=:P55_CATEGORY'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select List -'
,p_lov_cascade_parent_items=>'P55_CATEGORY'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40818961343940075293)
,p_name=>'P55_STATUS_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_item_source_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_prompt=>'Status Id'
,p_source=>'STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select STATUS d, OID r',
' from IS_ACTIVATE'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40818961748323075294)
,p_name=>'P55_CREATE_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_item_source_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_source=>'CREATE_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40818962128732075294)
,p_name=>'P55_CREATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_item_source_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_source=>'CREATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40818962573012075294)
,p_name=>'P55_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_item_source_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40818962972962075294)
,p_name=>'P55_MIME_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_item_source_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_source=>'MIME_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40818963377621075294)
,p_name=>'P55_ALL_SLIDE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_item_source_plug_id=>wwv_flow_imp.id(75090270983925583264)
,p_source=>'ALL_SLIDE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40818985024611075310)
,p_name=>'Save Price'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40818975114803075300)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40818986082483075311)
,p_event_id=>wwv_flow_imp.id(40818985024611075310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE ',
'PRODUCT set',
'COST_PRICE=:P55_COST_PRICE,',
'SELLING_PRICE=:P55_SELLING_PRICE,',
'DISCOUNT=:P55_DISCOUNT,',
'ORIGINAL_PRICE=:P55_ORIGINAL_PRICE',
'WHERE PRODUCT_ID=:P55_PRODUCT_ID;'))
,p_attribute_02=>'P55_PRODUCT_ID'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40818985529957075310)
,p_event_id=>wwv_flow_imp.id(40818985024611075310)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Save Product Price...............'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40818980871160075308)
,p_name=>'Product Code'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_PRODUCT_CODE'
,p_condition_element=>'P55_PRODUCT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40818981331361075308)
,p_event_id=>wwv_flow_imp.id(40818980871160075308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_PRODUCT_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40818981806867075308)
,p_event_id=>wwv_flow_imp.id(40818980871160075308)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_PRODUCT_CODE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40818982260066075308)
,p_name=>'Add Button to Items'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40818983257096075310)
,p_event_id=>wwv_flow_imp.id(40818982260066075308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_APEX.ITEMS.WITH.BUTTONS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(40818956125818075286)
,p_attribute_01=>'P55_CATEGORY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40818982766483075309)
,p_event_id=>wwv_flow_imp.id(40818982260066075308)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_APEX.ITEMS.WITH.BUTTONS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(40818956581674075286)
,p_attribute_01=>'P55_GROUP_NAME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40818983653121075310)
,p_name=>'Save Detels'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40818969110383075298)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40818984159370075310)
,p_event_id=>wwv_flow_imp.id(40818983653121075310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE ',
'PRODUCT set',
'COLOR=:P55_COLOR,',
'MAIN_MATERIAL=:P55_MAIN_MATERIAL,',
'GENDER=:P55_GENDER,',
'STYLE=:P55_STYLE,',
'BRAND=:P55_BRAND,',
'PRODUCT_TYPE=:P55_PRODUCT_TYPE,',
'OTHERS=:P55_OTHERS',
'WHERE PRODUCT_ID=:P55_PRODUCT_ID;'))
,p_attribute_02=>'P55_PRODUCT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40818984671388075310)
,p_event_id=>wwv_flow_imp.id(40818983653121075310)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Save Product Detels...............'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40818979902160075306)
,p_name=>'New'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_DISCOUNT'
,p_condition_element=>'P55_DISCOUNT'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40818980408434075308)
,p_event_id=>wwv_flow_imp.id(40818979902160075306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_DISCOUNT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40818979145352075306)
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
'         || ''''|| CUST_NUMBER.GET_32_BASE_NUMBER (:P55_PRODUCT_ID );',
'',
'   RETURN V_REF_ID;',
'END;',
'    end; ',
'begin',
':P55_PRODUCT_ID := PRODUCT_ID_SEQ.nextval;',
':P55_PRODUCT_CODE := get_pk;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(40818957772716075286)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40818968044885075297)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(75090270983925583264)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Add New Product'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40818979573953075306)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'New'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(40818955716502075285)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40818967648529075296)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(75090270983925583264)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Add New Product'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40818978303681075306)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P55_UPDATE_DATE :=To_date(sysdate);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(40818957305890075286)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40818978783304075306)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insart'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P55_CREATE_BY :=:APP_USER;',
':P55_CREATE_DATE :=To_date(sysdate);',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
