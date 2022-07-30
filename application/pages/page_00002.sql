prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Like & Unlike Page'
,p_alias=>'LIKE-UNLIKE-PAGE'
,p_step_title=>'Like & Unlike Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(13212243193071109527)
,p_name=>'Like & Unlike Report'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent5:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'LIKE_TABLE'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(13212243234444109528)
,p_query_column_id=>1
,p_column_alias=>'OID'
,p_column_display_sequence=>10
,p_column_heading=>'Oid'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13212243353046109529)
,p_query_column_id=>2
,p_column_alias=>'LIKE1'
,p_column_display_sequence=>20
,p_column_heading=>'Like1'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13212243431387109530)
,p_query_column_id=>3
,p_column_alias=>'UN_LIKE'
,p_column_display_sequence=>30
,p_column_heading=>'Un Like'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13212243594528109531)
,p_query_column_id=>4
,p_column_alias=>'USER_ID'
,p_column_display_sequence=>40
,p_column_heading=>'User Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13212243631262109532)
,p_query_column_id=>5
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>50
,p_column_heading=>'User Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13212243719320109533)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13212243193071109527)
,p_button_name=>'LIKE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(14551729993831634454)
,p_button_image_alt=>' (&P2_LIKE.)'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-thumbs-up'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13212243879088109534)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(13212243193071109527)
,p_button_name=>'UNLIKE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight:t-Button--hoverIconPush:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(14551729993831634454)
,p_button_image_alt=>' (&P2_UNLIKE.)'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-thumbs-down'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13212244516105109541)
,p_name=>'P2_LIKE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13212243193071109527)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13212244675210109542)
,p_name=>'P2_UNLIKE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13212243193071109527)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13212243986805109535)
,p_name=>'Insert like'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13212243719320109533)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13212244028058109536)
,p_event_id=>wwv_flow_imp.id(13212243986805109535)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'insert into LIKE_TABLE (OID, LIKE1, USER_NAME)values (LIKE_OID.nextval, 1, :APP_USER); '
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13212244102606109537)
,p_event_id=>wwv_flow_imp.id(13212243986805109535)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13212243193071109527)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13212244285970109538)
,p_name=>'Insert Un Like'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13212243879088109534)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13212244398230109539)
,p_event_id=>wwv_flow_imp.id(13212244285970109538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  insert into LIKE_TABLE (OID, UN_LIKE, USER_NAME)',
'  values (LIKE_OID.nextval, 1, :APP_USER); ',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13212244486753109540)
,p_event_id=>wwv_flow_imp.id(13212244285970109538)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13212243193071109527)
);
wwv_flow_imp.component_end;
end;
/