prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'report To Item Value in Report'
,p_alias=>'REPORT-TO-ITEM-VALUE-IN-REPORT'
,p_step_title=>'report To Item Value in Report'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">  ',
'           window.onbeforeunload = function (e) {                               e = e || window.event;',
'           if (e) {',
'            e.returnValue = ''?'';',
'              }',
'       // For Safari',
'         return ''?'';',
'                };',
'    </script>'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210625104255'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(25021260193432832468)
,p_name=>'report To Item Value in Report'
,p_template=>wwv_flow_imp.id(33247210767798359072)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,       ',
'       case when USER_NAME is not null then',
'         ''<a  href="#" <span data-id=''||ID||''',
'         data-lat=''||LATITUDE||''',
'         data-long=''||LONGITUDE||'' class="change-name-js t-Button t-Button--hot t-Button--small t-Button--stretch"  type="button"</span>USER_NAME</a>''',
'          ELSE USER_NAME',
'        End AS USER_NAME,  ',
'        LATITUDE,',
'        LONGITUDE,',
'       LOC_DATE',
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
 p_id=>wwv_flow_imp.id(25021297078258834307)
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
 p_id=>wwv_flow_imp.id(25021297127269834308)
,p_query_column_id=>2
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>60
,p_column_heading=>'User Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25021297281211834309)
,p_query_column_id=>3
,p_column_alias=>'LATITUDE'
,p_column_display_sequence=>30
,p_column_heading=>'Latitude'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25021297307109834310)
,p_query_column_id=>4
,p_column_alias=>'LONGITUDE'
,p_column_display_sequence=>40
,p_column_heading=>'Longitude'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25021297441732834311)
,p_query_column_id=>5
,p_column_alias=>'LOC_DATE'
,p_column_display_sequence=>50
,p_column_heading=>'Loc Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25021296428957834301)
,p_plug_name=>'Report Value To Item'
,p_region_name=>'INLINE_ID'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(33247205155181359069)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25021296616798834303)
,p_name=>'P15_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25021296428957834301)
,p_prompt=>'Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25034181233571237101)
,p_name=>'P15_LATITUDE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(25021296428957834301)
,p_prompt=>'Latitude'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25034181384302237102)
,p_name=>'P15_LONGITUDE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(25021296428957834301)
,p_prompt=>'Longitude'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25021296783190834304)
,p_name=>'Report Value To Item'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.change-name-js'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25021296877369834305)
,p_event_id=>wwv_flow_imp.id(25021296783190834304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25021296428957834301)
,p_attribute_01=>'openModal(''INLINE_ID'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25021296941595834306)
,p_event_id=>wwv_flow_imp.id(25021296783190834304)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.dataset.id'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25034181616134237105)
,p_event_id=>wwv_flow_imp.id(25021296783190834304)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_LATITUDE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.dataset.lat'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25034181731670237106)
,p_event_id=>wwv_flow_imp.id(25021296783190834304)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_LONGITUDE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.dataset.long'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp.component_end;
end;
/
