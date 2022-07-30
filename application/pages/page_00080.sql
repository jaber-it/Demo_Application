prompt --application/pages/page_00080
begin
--   Manifest
--     PAGE: 00080
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
 p_id=>80
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Add New Post In Blog'
,p_alias=>'ADD-NEW-POST-IN-BLOG'
,p_step_title=>'Add New Post In Blog'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.cke_widget_element {',
'width:10px !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26499274358391432718)
,p_plug_name=>'Add New Post In Blog'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OID,',
'       REPORT_NAME,',
'       "paragraph"',
'  from POST_BLOG'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26499283333176432724)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(26499274358391432718)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P80_OID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26499282359351432724)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26499274358391432718)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26499283775373432725)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(26499274358391432718)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P80_OID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26499282945984432724)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26499274358391432718)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P80_OID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(26499284070467432725)
,p_branch_action=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26499274637852432718)
,p_name=>'P80_OID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26499274358391432718)
,p_item_source_plug_id=>wwv_flow_imp.id(26499274358391432718)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Oid'
,p_source=>'OID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26499275023065432719)
,p_name=>'P80_REPORT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26499274358391432718)
,p_item_source_plug_id=>wwv_flow_imp.id(26499274358391432718)
,p_prompt=>'Report Name'
,p_source=>'REPORT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_colspan=>10
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26499276607062432720)
,p_name=>'P80_PARAGRAPH'
,p_source_data_type=>'CLOB'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(26499274358391432718)
,p_item_source_plug_id=>wwv_flow_imp.id(26499274358391432718)
,p_prompt=>'Paragraph'
,p_source=>'paragraph'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_cSize=>30
,p_cHeight=>25
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function ( configObject ) {',
'    configObject.uiColor        = "#AADC6E";',
'    configObject.resize_enabled = false;',
'',
'    return configObject;',
'}'))
,p_attribute_02=>'Full'
,p_attribute_09=>'HTML'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26499713508744402701)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P80_OID := PRODUCT_ID_SEQ.nextval;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(26499283775373432725)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26499284997054432725)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(26499274358391432718)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Add New Post In Blog'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26499284501908432725)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(26499274358391432718)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Add New Post In Blog'
);
wwv_flow_imp.component_end;
end;
/
