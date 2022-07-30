prompt --application/pages/page_00046
begin
--   Manifest
--     PAGE: 00046
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
 p_id=>46
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Order Product'
,p_alias=>'ORDER-PRODUCT'
,p_page_mode=>'MODAL'
,p_step_title=>'Order Product'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img {',
'    height: 190px;',
'    width: 100%;',
'    border-radius: 10px;',
'}',
'',
'.t-Card-subtitle {',
'    line-height: 23px;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(34736346405180988149)
,p_name=>'Pro Image'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:t-Form--stretchInputs'
,p_grid_column_span=>4
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    a.PRODUCT_ID,',
'    DBMS_LOB.getlength (a.PRODUCT_IMAGE) AS PRODUCT_IMAGE',
'FROM PRODUCT a',
'where  a.PRODUCT_ID = :P46_PRODUCT_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P46_PRODUCT_ID'
,p_lazy_loading=>false
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34930387658573432801)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34736346540668988150)
,p_query_column_id=>2
,p_column_alias=>'PRODUCT_IMAGE'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:PRODUCT:PRODUCT_IMAGE:PRODUCT_ID::MIME_TYPE::UPDATE_DATE::::'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34927304068068183894)
,p_plug_name=>'Order Product'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OID,',
'       PRODUCT_CODE,',
'       PRODUCT_NAME,',
'       RATE,',
'       QTY,',
'       USER_NAME,',
'       ORDER_DATE,',
'       CONFIRM_ORDER,',
'       CANCEL_ORDER,',
'       PRODUCT_ID,',
'       TOTAL',
'  from ORDER_PRODUCT'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34927311109041183898)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P46_OID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34927309905485183898)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34927311587474183899)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(14551729993831634454)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add to Cart'
,p_button_position=>'CREATE'
,p_button_condition=>'P46_OID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-cart-plus'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34927310756184183898)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P46_OID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(34927311800648183899)
,p_branch_action=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14011303486839247801)
,p_name=>'P46_ORDER_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_item_source_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Order Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'ORDER_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14011303562175247802)
,p_name=>'P46_CONFIRM_ORDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_item_source_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_source=>'CONFIRM_ORDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14011303687965247803)
,p_name=>'P46_CANCEL_ORDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_item_source_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_source=>'CANCEL_ORDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34927304339490183895)
,p_name=>'P46_OID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_item_source_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_source=>'OID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34927304762220183895)
,p_name=>'P46_PRODUCT_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_item_source_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_prompt=>'Product Code'
,p_source=>'PRODUCT_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>250
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
 p_id=>wwv_flow_imp.id(34927305128340183895)
,p_name=>'P46_PRODUCT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_item_source_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_prompt=>'Product Name'
,p_source=>'PRODUCT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>250
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
 p_id=>wwv_flow_imp.id(34927305522056183896)
,p_name=>'P46_RATE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_item_source_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_prompt=>'Rate'
,p_source=>'RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'center'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34927305960934183896)
,p_name=>'P46_QTY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_item_source_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_prompt=>'Qty'
,p_source=>'QTY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'center'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34927306319222183896)
,p_name=>'P46_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_item_source_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34927306756624183896)
,p_name=>'P46_PRODUCT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_item_source_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_source=>'PRODUCT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34927307138220183896)
,p_name=>'P46_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_item_source_plug_id=>wwv_flow_imp.id(34927304068068183894)
,p_prompt=>'Total'
,p_source=>'TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'center'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34736344079870988125)
,p_name=>'Calculation'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P46_QTY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34736344107480988126)
,p_event_id=>wwv_flow_imp.id(34736344079870988125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P46_TOTAL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN(:P46_RATE*:P46_QTY);'
,p_attribute_07=>'P46_RATE,P46_QTY'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34927312770784183899)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(34927304068068183894)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Order Product'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34927312357718183899)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(34927304068068183894)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Order Product'
);
wwv_flow_imp.component_end;
end;
/
