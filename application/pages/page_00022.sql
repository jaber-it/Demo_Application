prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
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
 p_id=>22
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Upload Excel, XML, JSON & CSV Files'
,p_alias=>'UPLOAD-EXCEL-XML-JSON-CSV-FILES'
,p_step_title=>'Upload Excel, XML, JSON & CSV Files'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210227085041'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34722921146696208601)
,p_plug_name=>'Uplode Fele'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38012294089105407609)
,p_plug_name=>'Lode Data'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(33247219442693359079)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(34722921598401208605)
,p_name=>'Prace Data'
,p_region_name=>'partnerslRR2'
,p_parent_plug_id=>wwv_flow_imp.id(38012294089105407609)
,p_template=>wwv_flow_imp.id(33247212693934359074)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APEX_ITEM.display_and_save(01,col001) col001,',
'APEX_ITEM.display_and_save(02,col002) col002,',
'APEX_ITEM.display_and_save(03,col003) col003,',
'APEX_ITEM.display_and_save(04,col004) col004,',
'APEX_ITEM.display_and_save(05,col005) col005,',
'APEX_ITEM.display_and_save(06,col006) col006,',
'APEX_ITEM.display_and_save(07,col007) col007,',
'APEX_ITEM.display_and_save(08,col008) col008,',
'APEX_ITEM.display_and_save(09,col009) col009,',
'APEX_ITEM.display_and_save(10,col010) col010,',
'APEX_ITEM.CHECKBOX(20,''#ROWNUM#'')CHECKBOX',
'                    -- more columns (col011 to col300) can be selected here.',
'  from apex_application_temp_files f, ',
'       table( apex_data_parser.parse(',
'                  p_content                     => f.blob_content,',
'                  p_add_headers_row             => ''Y'',',
'                  --',
'                  p_row_selector                => ''/DOCUMENT/ROWSET/ROW'',',
'                  --',
'                  p_store_profile_to_collection => ''FILE_PARSER_COLLECTION'',',
'                  p_file_name                   => f.filename ) ) p',
' where f.name = :P22_FILE',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P22_XLSX_WORKSHEET'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(33247241596394359095)
,p_query_num_rows=>1500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38012295753381407626)
,p_query_column_id=>1
,p_column_alias=>'COL001'
,p_column_display_sequence=>10
,p_column_heading=>'Col001'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34722921813024208608)
,p_query_column_id=>2
,p_column_alias=>'COL002'
,p_column_display_sequence=>20
,p_column_heading=>'Col002'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34722921994756208609)
,p_query_column_id=>3
,p_column_alias=>'COL003'
,p_column_display_sequence=>30
,p_column_heading=>'Col003'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34722922031391208610)
,p_query_column_id=>4
,p_column_alias=>'COL004'
,p_column_display_sequence=>40
,p_column_heading=>'Col004'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34722922182330208611)
,p_query_column_id=>5
,p_column_alias=>'COL005'
,p_column_display_sequence=>50
,p_column_heading=>'Col005'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34722922284871208612)
,p_query_column_id=>6
,p_column_alias=>'COL006'
,p_column_display_sequence=>60
,p_column_heading=>'Col006'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34722922336128208613)
,p_query_column_id=>7
,p_column_alias=>'COL007'
,p_column_display_sequence=>70
,p_column_heading=>'Col007'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34722922413848208614)
,p_query_column_id=>8
,p_column_alias=>'COL008'
,p_column_display_sequence=>80
,p_column_heading=>'Col008'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34722922529927208615)
,p_query_column_id=>9
,p_column_alias=>'COL009'
,p_column_display_sequence=>90
,p_column_heading=>'Col009'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34625586777366278127)
,p_query_column_id=>10
,p_column_alias=>'COL010'
,p_column_display_sequence=>100
,p_column_heading=>'Col010'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38012295424568407623)
,p_query_column_id=>11
,p_column_alias=>'CHECKBOX'
,p_column_display_sequence=>110
,p_column_heading=>'<input type="checkbox" id="selectUnselectAll" title="Select/UnselectAll">'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(34722922732938208617)
,p_name=>'Discovered Columns'
,p_parent_plug_id=>wwv_flow_imp.id(38012294089105407609)
,p_template=>wwv_flow_imp.id(33247212693934359074)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select column_position, column_name, data_type, format_mask',
'  from apex_collections c, ',
'       table( apex_data_parser.get_columns( p_profile => c.clob001 ) )',
' where c.collection_name = ''FILE_PARSER_COLLECTION'' ',
'   and c.seq_id = 1'))
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
 p_id=>wwv_flow_imp.id(34722922875132208618)
,p_query_column_id=>1
,p_column_alias=>'COLUMN_POSITION'
,p_column_display_sequence=>10
,p_column_heading=>'Column Position'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34722922930060208619)
,p_query_column_id=>2
,p_column_alias=>'COLUMN_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Column Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34722923039423208620)
,p_query_column_id=>3
,p_column_alias=>'DATA_TYPE'
,p_column_display_sequence=>30
,p_column_heading=>'Data Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34722923190295208621)
,p_query_column_id=>4
,p_column_alias=>'FORMAT_MASK'
,p_column_display_sequence=>40
,p_column_heading=>'Format Mask'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34722923580593208625)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(34722921146696208601)
,p_button_name=>'Uplode'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Uplode'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34722925330614208642)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(34722921146696208601)
,p_button_name=>'Insert'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Insert'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34625586593537278125)
,p_name=>'P22_SELECT_TABLE_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(34722921146696208601)
,p_prompt=>'Select Table Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select table_name d, table_name r from user_tables'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34722921292413208602)
,p_name=>'P22_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(34722921146696208601)
,p_prompt=>'File'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34722921387135208603)
,p_name=>'P22_XLSX_WORKSHEET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(34722921146696208601)
,p_prompt=>'New'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sheet_display_name, sheet_file_name',
'	from apex_application_temp_files f,',
'		table(apex_data_parser.get_xlsx_worksheets( p_content => blob_content)) p',
'where f.name = :P22_FILE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'lower (:P22_FILE) like ''%xlsx'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(34722923263400208622)
,p_validation_name=>'Must be Valide'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'lower( :P22_FILE ) like ''%.xlsx'' or',
'lower( :P22_FILE ) like ''%.xml'' or',
'lower( :P22_FILE ) like ''%.csv'' or',
'lower( :P22_FILE ) like ''%.txt'' or',
'lower( :P22_FILE ) like ''%.js'' or',
'lower( :P22_FILE ) like ''%.json'' or',
'lower( :P22_FILE ) like ''%.geojson'''))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Error '
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34625586842264278128)
,p_name=>'Worksheet change'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P22_XLSX_WORKSHEET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34625586912863278129)
,p_event_id=>wwv_flow_imp.id(34625586842264278128)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(34722921598401208605)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34625587063815278130)
,p_name=>'Refresh Column Information'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(34722921598401208605)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34625587105992278131)
,p_event_id=>wwv_flow_imp.id(34625587063815278130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(34722921598401208605)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38012295500576407624)
,p_name=>'DA'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectUnselectAll'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#partnerslRR2'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38012295635854407625)
,p_event_id=>wwv_flow_imp.id(38012295500576407624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( $( ''#selectUnselectAll'' ).is('':checked'') ) {',
'    $(''input[type=checkbox][name=f20]'').attr(''checked'',true);',
'}',
'else {',
'    $(''input[type=checkbox][name=f20]'').attr(''checked'',false);    ',
'}',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34625586689045278126)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Data New Processing'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_blob blob;',
'begin',
'    select blob_content',
'      into l_blob',
'      from apex_application_temp_files',
'     where name = :P22_FILE;',
'',
'    load_xml_to_existing_table( ',
'        p_table_name => :P22_SELECT_TABLE_NAME, ',
'        p_xml_content => l_blob );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34722923420465208624)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into MENUS (OID, PARENT_OID, MENU_NAME, MENU_LINK, STATUS) (',
'    select to_number( p.col001 ),',
'           upper( p.col002 ),',
'           upper( p.col003 ),        ',
'           upper( p.col004 ),',
'           upper( p.col005)',
'      from apex_application_temp_files f,',
'           apex_data_parser.parse(',
'               p_content   => f.blob_content,',
'               p_skip_rows => 1,',
'               p_file_type => apex_data_parser.c_file_type_csv ) p',
'     where f.name = :P22_FILE ',
');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(34722925330614208642)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38012295248725407621)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'var number;',
'begin',
'for i in 1..APEX_APPLICATION.G_f20.COUNT loop',
'var:= APEX_APPLICATION.G_f20(i);',
'insert into MENUS (OID, PARENT_OID, MENU_NAME, MENU_LINK, STATUS) values (APEX_APPLICATION.G_f01(var),',
'                                                                         APEX_APPLICATION.G_f02(var),',
'                                                                         APEX_APPLICATION.G_f03(var),',
'                                                                         APEX_APPLICATION.G_f04(var),',
'                                                                         ''Y'');',
'    end loop;',
' end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
