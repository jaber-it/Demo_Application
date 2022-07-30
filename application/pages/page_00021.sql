prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
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
 p_id=>21
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Like Un-Like Report'
,p_alias=>'LIKE-UN-LIKE-REPORT'
,p_step_title=>'Like Un-Like Report'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function myFunction() {',
'  document.getElementById("like").style.color = "red";',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210213151308'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(34398394044009157921)
,p_name=>'Like UN-Like Report'
,p_template=>wwv_flow_imp.id(33247212693934359074)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OID,',
'       LIKE1,',
'       UN_LIKE,',
'       USER_ID,',
'       USER_NAME,',
'       apex_item.hidden(01,OID)||',
'apex_item.checkbox2(02,OID)',
'check1',
'  from LIKE_TABLE'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(33247241596394359095)
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
 p_id=>wwv_flow_imp.id(34398394117937157922)
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
 p_id=>wwv_flow_imp.id(34398394224143157923)
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
 p_id=>wwv_flow_imp.id(34398394340191157924)
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
 p_id=>wwv_flow_imp.id(34398394494263157925)
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
 p_id=>wwv_flow_imp.id(34398394543569157926)
,p_query_column_id=>5
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>50
,p_column_heading=>'User Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34398394609182157927)
,p_query_column_id=>6
,p_column_alias=>'CHECK1'
,p_column_display_sequence=>60
,p_column_heading=>'Check1'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34398394720191157928)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(34398394044009157921)
,p_button_name=>'Like'
,p_button_static_id=>'like'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--hoverIconSpin'
,p_button_template_id=>wwv_flow_imp.id(33247274058984359120)
,p_button_image_alt=>'Like'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'likc'
,p_icon_css_classes=>'fa-thumbs-up'
,p_button_cattributes=>'onclick="myFunction()"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34398395175570157932)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(34398394044009157921)
,p_button_name=>'UNLIKE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--hoverIconSpin'
,p_button_template_id=>wwv_flow_imp.id(33247274058984359120)
,p_button_image_alt=>'Unlike'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'unlike'
,p_icon_css_classes=>'fa-thumbs-down'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34398394876835157929)
,p_name=>'Like Button'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.likc'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34398394989779157930)
,p_event_id=>wwv_flow_imp.id(34398394876835157929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into LIKE_TABLE (OID, LIKE1, USER_NAME)',
'values (LIKE_OID.nextval, 1, :APP_USER);  ',
'',
''))
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34398395046415157931)
,p_event_id=>wwv_flow_imp.id(34398394876835157929)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(34398394044009157921)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34398395465604157935)
,p_name=>'Un Kike Button'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.unlike'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34398395511469157936)
,p_event_id=>wwv_flow_imp.id(34398395465604157935)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  insert into LIKE_TABLE (OID, UN_LIKE, USER_NAME)',
'  values (LIKE_OID.nextval, 1, :APP_USER);  ',
'END;',
''))
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34398395637026157937)
,p_event_id=>wwv_flow_imp.id(34398395465604157935)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(34398394044009157921)
);
wwv_flow_imp.component_end;
end;
/
