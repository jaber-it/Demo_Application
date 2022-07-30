prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Select2 Plug-in'
,p_alias=>'SELECT2-PLUG-IN'
,p_step_title=>'Select2 Plug-in'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20206488699410032341)
,p_plug_name=>'Add Data'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(20206488974796032344)
,p_name=>'Report'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent9:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>8
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 b."OID" as "OID",',
'	 a."GROUP_TITLE" as "GROUP_TITLE",',
'	 (c.PAGE_ID || '' - '' ||  c.PAGE_NAME  ) as page_name,',
'c.PAGE_ID,',
'c.DESCRIPTION,',
'	 b."PERMISSION" as "PERMISSION",',
'	 b."PID_GROUP" as "PID_GROUP"',
' from	 "USER_GROUP"  a,',
'	 "USER_GROUP_PAGE_ACCESS22" b,',
'USER_PAGE c',
' where   b."PID_GROUP"=a."OID"',
'and b.page_id = c.PAGE_ID(+)',
''))
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
 p_id=>wwv_flow_imp.id(20206489396007032348)
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
 p_id=>wwv_flow_imp.id(20206489441098032349)
,p_query_column_id=>2
,p_column_alias=>'GROUP_TITLE'
,p_column_display_sequence=>20
,p_column_heading=>'Group Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20206489559922032350)
,p_query_column_id=>3
,p_column_alias=>'PAGE_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Page Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21487582368326119101)
,p_query_column_id=>4
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>40
,p_column_heading=>'Page Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21487582496700119102)
,p_query_column_id=>5
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>50
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21487582501386119103)
,p_query_column_id=>6
,p_column_alias=>'PERMISSION'
,p_column_display_sequence=>60
,p_column_heading=>'Permission'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21487582617366119104)
,p_query_column_id=>7
,p_column_alias=>'PID_GROUP'
,p_column_display_sequence=>70
,p_column_heading=>'Pid Group'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20206489015581032345)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(20206488699410032341)
,p_button_name=>'Save_Data'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Save Data'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27465724942040512413)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(20206488974796032344)
,p_button_name=>'New222222'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New222222'
,p_button_position=>'NEXT'
,p_button_condition=>'P0_USERNAME'
,p_button_condition2=>'JABER'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20206488786172032342)
,p_name=>'P18_GROUP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20206488699410032341)
,p_prompt=>'Group'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT GROUP_TITLE,OID FROM USER_GROUP ORDER BY 1'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>11
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20206488840351032343)
,p_name=>'P18_PAGE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20206488699410032341)
,p_prompt=>'Page'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>'select page_id || '' - '' || page_name d, page_id from USER_page where status = ''1'' order by page_id'
,p_lov_display_null=>'YES'
,p_colspan=>11
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'MULTI'
,p_attribute_06=>'Y'
,p_attribute_08=>'CIC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20206489134312032346)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20206489015581032345)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20206489260963032347)
,p_event_id=>wwv_flow_imp.id(20206489134312032346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'		l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'			BEGIN',
'		l_selected := APEX_UTIL.STRING_TO_TABLE(:P18_PAGE);',
'',
'		FOR i in 1..l_selected.count',
'			LOOP',
'		INSERT INTO USER_GROUP_PAGE_ACCESS22(OID,PID_GROUP,PAGE_ID,PERMISSION)',
'		VALUES ((select nvl(max(oid),0)+1 from USER_GROUP_PAGE_ACCESS22),:P18_GROUP,l_selected(i),1);',
'		END LOOP;',
'		END;',
''))
,p_attribute_02=>'P18_GROUP,P18_PAGE'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21487582735850119105)
,p_event_id=>wwv_flow_imp.id(20206489134312032346)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20206488974796032344)
);
wwv_flow_imp.component_end;
end;
/
