prompt --application/pages/page_10051
begin
--   Manifest
--     PAGE: 10051
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
 p_id=>10051
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Feedback Submitted'
,p_alias=>'FEEDBACK-SUBMITTED'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(33247303328318359155)
,p_required_patch=>wwv_flow_imp.id(33247298966743359147)
,p_page_component_map=>'11'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20200807105036'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33247412622064359365)
,p_plug_name=>'Feedback Submitted'
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(33247181542231359052)
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33247412586253359365)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(33247412622064359365)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Close'
,p_button_position=>'EDIT'
,p_button_css_classes=>'w40p'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33247412740259359365)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33247412586253359365)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33247422591944359374)
,p_event_id=>wwv_flow_imp.id(33247412740259359365)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp.component_end;
end;
/
