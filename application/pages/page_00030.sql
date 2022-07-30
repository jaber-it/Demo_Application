prompt --application/pages/page_00030
begin
--   Manifest
--     PAGE: 00030
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
 p_id=>30
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Download One Or More Files'
,p_alias=>'DOWNLOAD-ONE-OR-MORE-FILES'
,p_step_title=>'Download One Or More Files'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''.ui-dialog-titlebar'').removeClass("ui-dialog-titlebar");',
'$(''.ui-corner-all'').removeClass("ui-widget-header");'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.ui-draggable-handle {',
'    height: 40px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'11'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210522140022'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4932199610527705432)
,p_plug_name=>'Confirm MSG with 3 buttons'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4932199790380705433)
,p_plug_name=>'3 Button'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247210767798359072)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7144306312270501104)
,p_plug_name=>'Inline Dialogs'
,p_region_name=>'confirm_message'
,p_region_css_classes=>'js-dialog-size400x161'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(33247205155181359069)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7144306242016501103)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4932199790380705433)
,p_button_name=>'open'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Open'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7144306486891501105)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7144306242016501103)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7144306598809501106)
,p_event_id=>wwv_flow_imp.id(7144306486891501105)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:openModal(''confirm_message'');'
);
wwv_flow_imp.component_end;
end;
/
