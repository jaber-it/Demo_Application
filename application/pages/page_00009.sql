prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
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
 p_id=>9
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Delete Report Row'
,p_alias=>'DELETE-REPORT-ROW'
,p_step_title=>'Delete Report Row'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function deleteRowGlobal(recordid,delitem){        ',
'                         apex.lang.addMessages({"APEX.DIALOG.OK":     "Yes"});',
'                           apex.lang.addMessages({"APEX.DIALOG.CANCEL": "No"});        ',
'                            apex.message.confirm( ''Are you sure to remove this row?'', function( okPressed ) { ',
'                            if( okPressed ) {',
'                              // Delete it!',
'                            apex.item(delitem).setValue(recordid);',
'                                apex.event.trigger(''#''+delitem, ''Link_Call'', '''');',
'                            apex.message.showPageSuccess( "One Record Removed...." );   ',
'                                    }',
'                                  });',
'                                } '))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210528160026'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8974661059998089009)
,p_name=>'Report'
,p_template=>wwv_flow_imp.id(33247212693934359074)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       USER_NAME,',
'       LATITUDE,',
'       LONGITUDE,',
'       LOC_DATE,',
'       '''' Del',
'  from USER_LOC'))
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
 p_id=>wwv_flow_imp.id(8974661156377089010)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8974661201725089011)
,p_query_column_id=>2
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'User Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8974661356183089012)
,p_query_column_id=>3
,p_column_alias=>'LATITUDE'
,p_column_display_sequence=>30
,p_column_heading=>'Latitude'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8974661426079089013)
,p_query_column_id=>4
,p_column_alias=>'LONGITUDE'
,p_column_display_sequence=>40
,p_column_heading=>'Longitude'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8974661586669089014)
,p_query_column_id=>5
,p_column_alias=>'LOC_DATE'
,p_column_display_sequence=>50
,p_column_heading=>'Loc Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8974661625292089015)
,p_query_column_id=>6
,p_column_alias=>'DEL'
,p_column_display_sequence=>60
,p_column_heading=>'Delete'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:deleteRowGlobal(''#ID#'',''P9_DELROW'')'
,p_column_linktext=>'<button class="t-Button t-Button--noLabel t-Button--icon t-Button--stretch lto21536390526165204_0 t-Button--hot"  type="button" id="B21536" title="Remove" aria-label="Remove"> <span class="t-Icon fa fa-trash-o" aria-hidden="true"></span></button>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8974661754068089016)
,p_name=>'P9_DELROW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8974661059998089009)
,p_prompt=>'Delrow'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8974661880762089017)
,p_name=>'Delete Row'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_DELROW'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'Link_Call'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8974661907573089018)
,p_event_id=>wwv_flow_imp.id(8974661880762089017)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'                    DELETE FROM USER_LOC',
'                    WHERE id = :P9_DELROW;',
'                END;'))
,p_attribute_02=>'P9_DELROW'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8974662038670089019)
,p_event_id=>wwv_flow_imp.id(8974661880762089017)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8974661059998089009)
);
wwv_flow_imp.component_end;
end;
/
