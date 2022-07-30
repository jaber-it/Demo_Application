prompt --application/pages/page_00049
begin
--   Manifest
--     PAGE: 00049
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
 p_id=>49
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Close Modal Page When Clicking Outside'
,p_alias=>'CLOSE-MODAL-PAGE-WHEN-CLICKING-OUTSIDE'
,p_page_mode=>'MODAL'
,p_step_title=>'Close Modal Page When Clicking Outside'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_dialog_attributes=>'open: function( event, ui ) {closeDialogClickOutside(this); }'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20211211162222'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21191327667728830305)
,p_plug_name=>'Close Modal Page When Clicking Outside'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247185261157359055)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21191328535575830314)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(21191327667728830305)
,p_button_name=>'Close'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--simple:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Close'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21191327765741830306)
,p_name=>'P49_MODAL_PAGE_ITEM1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21191327667728830305)
,p_prompt=>'Modal Page Item-1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>10
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21191327891766830307)
,p_name=>'P49_MODAL_PAGE_ITEM2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21191327667728830305)
,p_prompt=>'Modal Page Item-2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>10
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21191327981937830308)
,p_name=>'Clicking Outside'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>' .test_invalid_selector'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21191328028283830309)
,p_event_id=>wwv_flow_imp.id(21191327981937830308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21191328691125830315)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(21191328535575830314)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21191328789322830316)
,p_event_id=>wwv_flow_imp.id(21191328691125830315)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/
