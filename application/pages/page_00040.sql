prompt --application/pages/page_00040
begin
--   Manifest
--     PAGE: 00040
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
 p_id=>40
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Add Slider Image'
,p_alias=>'ADD-SLIDER-IMAGE'
,p_step_title=>'Add Slider Image'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img {',
'    height: 100px;',
'    width: 100px;',
'    border-style: dashed;',
'    border-radius: 50px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_cache_mode=>'CACHE'
,p_cache_timeout_seconds=>21600
,p_page_component_map=>'02'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20211107170136'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34371867909955180915)
,p_plug_name=>'Slider Image Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247210767798359072)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OID,',
'       DBMS_LOB.GETLENGTH(IMAGE) IMAGE,',
'       MIME_TYPE,',
'       FILE_NAME,',
'       LAST_UPDATE_DATE,',
'       SET_COLUMN,',
'       IMAGE_NO,',
'       SLIDER_TEXT,',
'       SLIDER_LINK',
'  from SLIDESHOW_IMG'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Slider Image Report'
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
 p_id=>wwv_flow_imp.id(34439449617254783528)
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
,p_internal_uid=>34439449617254783528
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9849219388830789863)
,p_db_column_name=>'OID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Oid'
,p_column_link=>'javascript:$s(''P40_DELETE'',''#OID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash fa-1x"></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9822536924130747303)
,p_db_column_name=>'IMAGE'
,p_display_order=>20
,p_column_identifier=>'J'
,p_column_label=>'Image'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'IMAGE:SLIDESHOW_IMG:IMAGE:OID::MIME_TYPE::::::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9849220139052789864)
,p_db_column_name=>'MIME_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Mime Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9849220533060789864)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9849220970607789864)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9849221383561789864)
,p_db_column_name=>'SET_COLUMN'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Set Column'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9849221711735789864)
,p_db_column_name=>'IMAGE_NO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Image No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9849222170378789865)
,p_db_column_name=>'SLIDER_TEXT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Slider Text'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9849222516431789865)
,p_db_column_name=>'SLIDER_LINK'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Slider Link'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(38155765902141322486)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'184600216'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'OID:IMAGE:FILE_NAME:SLIDER_TEXT:SLIDER_LINK:IMAGE_NO:SET_COLUMN:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34395356058219215285)
,p_plug_name=>'Add Slider Image'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OID,',
'       IMAGE,',
'       MIME_TYPE,',
'       FILE_NAME,',
'       LAST_UPDATE_DATE,',
'       SET_COLUMN,',
'       IMAGE_NO,',
'       SLIDER_TEXT,',
'       SLIDER_LINK',
'  from SLIDESHOW_IMG'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9849223918035789873)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(34395356058219215285)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P40_OID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9849224336317789874)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(34395356058219215285)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9849224777161789874)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(34395356058219215285)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P40_OID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9849225176991789874)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(34395356058219215285)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P40_OID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(9849235578216789890)
,p_branch_name=>'Go To Page 4'
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(9849224336317789874)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9849223223327789872)
,p_name=>'P40_DELETE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(34371867909955180915)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9849225512883789875)
,p_name=>'P40_OID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(34395356058219215285)
,p_item_source_plug_id=>wwv_flow_imp.id(34395356058219215285)
,p_source=>'OID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9849225994741789875)
,p_name=>'P40_IMAGE'
,p_source_data_type=>'BLOB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(34395356058219215285)
,p_item_source_plug_id=>wwv_flow_imp.id(34395356058219215285)
,p_prompt=>'Image'
,p_source=>'IMAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIME_TYPE'
,p_attribute_03=>'FILE_NAME'
,p_attribute_05=>'LAST_UPDATE_DATE'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_12=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9849226382566789876)
,p_name=>'P40_IMAGE_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(34395356058219215285)
,p_item_source_plug_id=>wwv_flow_imp.id(34395356058219215285)
,p_prompt=>'Image No'
,p_source=>'IMAGE_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1;1,2;2,3;3,4;4,5;5'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9849226771474789876)
,p_name=>'P40_SET_COLUMN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(34395356058219215285)
,p_item_source_plug_id=>wwv_flow_imp.id(34395356058219215285)
,p_prompt=>'Set Column'
,p_source=>'SET_COLUMN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9849227101311789876)
,p_name=>'P40_SLIDER_TEXT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(34395356058219215285)
,p_item_source_plug_id=>wwv_flow_imp.id(34395356058219215285)
,p_prompt=>'Slider Text'
,p_source=>'SLIDER_TEXT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9849227599781789876)
,p_name=>'P40_SLIDER_LINK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(34395356058219215285)
,p_item_source_plug_id=>wwv_flow_imp.id(34395356058219215285)
,p_prompt=>'Slider Link'
,p_source=>'SLIDER_LINK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9849227962655789877)
,p_name=>'P40_LAST_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(34395356058219215285)
,p_item_source_plug_id=>wwv_flow_imp.id(34395356058219215285)
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9849228301798789877)
,p_name=>'P40_MIME_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(34395356058219215285)
,p_item_source_plug_id=>wwv_flow_imp.id(34395356058219215285)
,p_source=>'MIME_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9849228756636789877)
,p_name=>'P40_FILE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(34395356058219215285)
,p_item_source_plug_id=>wwv_flow_imp.id(34395356058219215285)
,p_source=>'FILE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9849233144057789888)
,p_name=>'Delete Report Row'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_DELETE'
,p_condition_element=>'P40_DELETE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9849233653500789888)
,p_event_id=>wwv_flow_imp.id(9849233144057789888)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE FROM SLIDESHOW_IMG',
'WHERE oid = :P40_DELETE;'))
,p_attribute_02=>'P40_DELETE'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9849234141878789889)
,p_event_id=>wwv_flow_imp.id(9849233144057789888)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(34371867909955180915)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9849234562502789889)
,p_name=>'New'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9849235099403789889)
,p_event_id=>wwv_flow_imp.id(9849234562502789889)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_OID,P40_IMAGE,P40_IMAGE_NO,P40_SET_COLUMN,P40_SLIDER_TEXT,P40_SLIDER_LINK,P40_LAST_UPDATE_DATE,P40_MIME_TYPE,P40_FILE_NAME'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9849232347827789879)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(34395356058219215285)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Add Slider Image'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9849232729707789888)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'New'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9849231900144789879)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(34395356058219215285)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Add Slider Image'
);
wwv_flow_imp.component_end;
end;
/
