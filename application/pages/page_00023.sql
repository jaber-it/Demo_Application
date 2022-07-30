prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
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
 p_id=>23
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Apex Collection Example'
,p_alias=>'APEX-COLLECTION-EXAMPLE'
,p_step_title=>'Apex Collection Example'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210221130901'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34625587474461278134)
,p_plug_name=>'Upload File'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(34625587736361278137)
,p_name=>'Upload File Report'
,p_region_name=>'partnerslRR'
,p_template=>wwv_flow_imp.id(33247212693934359074)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select              APEX_ITEM.display_and_save(01, col001) col001,',
'                    APEX_ITEM.display_and_save(02, col002) col002,',
'                    APEX_ITEM.display_and_save(03, col003) col003,',
'                    APEX_ITEM.display_and_save(04, col004) col004,',
'                    APEX_ITEM.display_and_save(05, col005) col005, ',
'                    APEX_ITEM.display_and_save(06, col006) col006,',
'                    APEX_ITEM.display_and_save(07, col007) col007,',
'                    APEX_ITEM.display_and_save(08, col008) col008,',
'                    APEX_ITEM.display_and_save(09, col009) col009,',
'                    APEX_ITEM.display_and_save(10, col010) col010,',
'                    APEX_ITEM.CHECKBOX(20,''#ROWNUM#'')CHECKBOX',
'                    -- more columns (col011 to col300) can be selected here.',
'  from apex_application_temp_files f, ',
'       table( apex_data_parser.parse(',
'                  p_content                     => f.blob_content,',
'                  p_add_headers_row             => ''Y'',',
'                  --',
'                  p_xlsx_sheet_name             => :P23_XLSX_WORKSHEET,',
'                  --',
'                  p_store_profile_to_collection => ''FILE_PARSER_COLLECTION'',',
'                  p_file_name                   => f.filename ) ) p',
' where f.name = :P23_FILE;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P23_XLSX_WORKSHEET'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(33247241596394359095)
,p_query_num_rows=>15000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36186915207763466428)
,p_query_column_id=>1
,p_column_alias=>'COL001'
,p_column_display_sequence=>20
,p_column_heading=>'Col001'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36186915335690466429)
,p_query_column_id=>2
,p_column_alias=>'COL002'
,p_column_display_sequence=>30
,p_column_heading=>'Col002'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36186915446675466430)
,p_query_column_id=>3
,p_column_alias=>'COL003'
,p_column_display_sequence=>40
,p_column_heading=>'Col003'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36186915586892466431)
,p_query_column_id=>4
,p_column_alias=>'COL004'
,p_column_display_sequence=>50
,p_column_heading=>'Col004'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36186915625325466432)
,p_query_column_id=>5
,p_column_alias=>'COL005'
,p_column_display_sequence=>60
,p_column_heading=>'Col005'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36186915797689466433)
,p_query_column_id=>6
,p_column_alias=>'COL006'
,p_column_display_sequence=>70
,p_column_heading=>'Col006'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36186915848381466434)
,p_query_column_id=>7
,p_column_alias=>'COL007'
,p_column_display_sequence=>80
,p_column_heading=>'Col007'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36186915971460466435)
,p_query_column_id=>8
,p_column_alias=>'COL008'
,p_column_display_sequence=>90
,p_column_heading=>'Col008'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36186916058667466436)
,p_query_column_id=>9
,p_column_alias=>'COL009'
,p_column_display_sequence=>100
,p_column_heading=>'Col009'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36186916158350466437)
,p_query_column_id=>10
,p_column_alias=>'COL010'
,p_column_display_sequence=>110
,p_column_heading=>'Col010'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36186916297086466438)
,p_query_column_id=>11
,p_column_alias=>'CHECKBOX'
,p_column_display_sequence=>120
,p_column_heading=>'<input type="checkbox" id="selectUnselectAll" title="Select/UnselectAll">'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(34625588968455278149)
,p_name=>'Apex Collection Report'
,p_template=>wwv_flow_imp.id(33247212693934359074)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq_id SL_NO, c001, c002, c003, c004, c005, c006, c007, c008, c009, c010',
'from apex_collections',
'where collection_name = ''STUDENT'''))
,p_display_condition_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(36149346418834385905)
,p_query_column_id=>1
,p_column_alias=>'SL_NO'
,p_column_display_sequence=>10
,p_column_heading=>'Sl No'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36149346541118385906)
,p_query_column_id=>2
,p_column_alias=>'C001'
,p_column_display_sequence=>20
,p_column_heading=>'C001'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36149346666486385907)
,p_query_column_id=>3
,p_column_alias=>'C002'
,p_column_display_sequence=>30
,p_column_heading=>'C002'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36149346700751385908)
,p_query_column_id=>4
,p_column_alias=>'C003'
,p_column_display_sequence=>40
,p_column_heading=>'C003'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36149346884560385909)
,p_query_column_id=>5
,p_column_alias=>'C004'
,p_column_display_sequence=>50
,p_column_heading=>'C004'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36149346951115385910)
,p_query_column_id=>6
,p_column_alias=>'C005'
,p_column_display_sequence=>60
,p_column_heading=>'C005'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36149347084417385911)
,p_query_column_id=>7
,p_column_alias=>'C006'
,p_column_display_sequence=>70
,p_column_heading=>'C006'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36149347129962385912)
,p_query_column_id=>8
,p_column_alias=>'C007'
,p_column_display_sequence=>80
,p_column_heading=>'C007'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36149347256103385913)
,p_query_column_id=>9
,p_column_alias=>'C008'
,p_column_display_sequence=>90
,p_column_heading=>'C008'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36149347386226385914)
,p_query_column_id=>10
,p_column_alias=>'C009'
,p_column_display_sequence=>100
,p_column_heading=>'C009'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36186916971546466445)
,p_query_column_id=>11
,p_column_alias=>'C010'
,p_column_display_sequence=>110
,p_column_heading=>'C010'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(36186912695950466402)
,p_name=>'Discovered Columns'
,p_template=>wwv_flow_imp.id(33247212693934359074)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select column_position, column_name, data_type, format_mask',
'  from apex_collections c, ',
'       table( apex_data_parser.get_columns( p_profile => c.clob001 ) )',
' where c.collection_name = ''FILE_PARSER_COLLECTION'' ',
'   and c.seq_id = 1'))
,p_display_condition_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(36186912758501466403)
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
 p_id=>wwv_flow_imp.id(36186912836678466404)
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
 p_id=>wwv_flow_imp.id(36186912959786466405)
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
 p_id=>wwv_flow_imp.id(36186913044672466406)
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
 p_id=>wwv_flow_imp.id(34625587618184278136)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(34625587474461278134)
,p_button_name=>'Upload'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Upload'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36149346380352385904)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(34625587474461278134)
,p_button_name=>'Add_Apex_Collection'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Add Apex Collection'
,p_button_position=>'BELOW_BOX'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36149347718032385918)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(34625587474461278134)
,p_button_name=>'Clear_All'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Clear All'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25433895957502703549)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(34625587474461278134)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36186917021050466446)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(34625587474461278134)
,p_button_name=>'clear_collection'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Clear Collection'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36149347581013385916)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(34625587736361278137)
,p_button_name=>'Save_Data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Data'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34625587519926278135)
,p_name=>'P23_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(34625587474461278134)
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
 p_id=>wwv_flow_imp.id(36149347609624385917)
,p_name=>'P23_TABLE_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(34625587474461278134)
,p_prompt=>'Table Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sheet_display_name, sheet_file_name',
'	from apex_application_temp_files f,',
'		table(apex_data_parser.get_xlsx_worksheets( p_content => blob_content)) p',
'where f.name = :P23_FILE'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36186912566808466401)
,p_name=>'P23_XLSX_WORKSHEET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(34625587474461278134)
,p_prompt=>'Xlsx Worksheet'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sheet_display_name, sheet_file_name',
'  from apex_application_temp_files f,',
'       table( apex_data_parser.get_xlsx_worksheets( p_content => blob_content ) ) p',
' where f.name = :P23_FILE'))
,p_cHeight=>1
,p_display_when=>'lower(:P23_FILE) like ''%xlsx'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(36186913648784466412)
,p_computation_sequence=>10
,p_computation_item=>'P23_XLSX_WORKSHEET'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'UPLOAD'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(36186913733425466413)
,p_validation_name=>'Must be a valid file type'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'lower( :P23_FILE ) like ''%.xlsx'' or',
'lower( :P23_FILE ) like ''%.xml'' or',
'lower( :P23_FILE ) like ''%.csv'' or',
'lower( :P23_FILE ) like ''%.txt'' or',
'lower( :P23_FILE ) like ''%.js'' or',
'lower( :P23_FILE ) like ''%.json'' or',
'lower( :P23_FILE ) like ''%.geojson'''))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Only XML, JSON, XLSX or delimited (CSV) files are supported.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36186913144848466407)
,p_name=>'Refresh Columns'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(34625587736361278137)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36186913224741466408)
,p_event_id=>wwv_flow_imp.id(36186913144848466407)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36186912695950466402)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36186913383423466409)
,p_name=>'Worksheet chosen'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P23_XLSX_WORKSHEET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36186913445549466410)
,p_event_id=>wwv_flow_imp.id(36186913383423466409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(34625587736361278137)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36186916317085466439)
,p_name=>'DA'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectUnselectAll'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#partnerslRR'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36186916476802466440)
,p_event_id=>wwv_flow_imp.id(36186916317085466439)
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
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36186916677297466442)
,p_name=>'New'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25433895957502703549)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36197204934001823801)
,p_event_id=>wwv_flow_imp.id(36186916677297466442)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'var number;',
'begin',
'for i in 1..APEX_APPLICATION.G_f20.COUNT loop',
'var:= APEX_APPLICATION.G_f20(i);',
'--raise_application_error(-20001,APEX_APPLICATION.G_f01(var));',
'insert into COURT (OID,COURT_ID,COURT_NM,IS_ACTIVE,DIVI_OID) values (APEX_APPLICATION.G_f01(var),',
'                                                                                   APEX_APPLICATION.G_f02(var),',
'                                                                                   APEX_APPLICATION.G_f03(var),',
'                                                                                   APEX_APPLICATION.G_f04(var),',
'                                                                                   APEX_APPLICATION.G_f10(var));',
'end loop;',
'end;',
'',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36186916882922466444)
,p_event_id=>wwv_flow_imp.id(36186916677297466442)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(34625587736361278137)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36186917151726466447)
,p_name=>'New_1'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(36186917021050466446)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36186917295587466448)
,p_event_id=>wwv_flow_imp.id(36186917151726466447)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'APEX_COLLECTION.DELETE_COLLECTION (p_collection_name => ''STUDENT'');'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36186917350150466449)
,p_event_id=>wwv_flow_imp.id(36186917151726466447)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(34625588968455278149)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36186917417743466450)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'var number;',
'begin',
'for i in 1..APEX_APPLICATION.G_f20.COUNT loop',
'var:= APEX_APPLICATION.G_f20(i);',
'--raise_application_error(-20001,APEX_APPLICATION.G_f01(var));',
'insert into ACL_OBJECT (OID,PID_PARENT,OBJECT_TITLE,OBJECT_ID,DESCRIPTION) values (APEX_APPLICATION.G_f01(var),',
'                                                                                   APEX_APPLICATION.G_f02(var),',
'                                                                                   APEX_APPLICATION.G_f03(var),',
'                                                                                   APEX_APPLICATION.G_f04(var),',
'                                                                                   APEX_APPLICATION.G_f05(var));',
'end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(36149347581013385916)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36186914161786466417)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear All'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(36149347718032385918)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36186916512835466441)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ADD Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name => ''STUDENT'') THEN',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'          p_collection_name => ''STUDENT''); ',
' End IF;',
'  ',
'  APEX_COLLECTION.ADD_MEMBERS(',
'    p_collection_name => ''STUDENT'',',
'    p_c001 =>            apex_application.g_f01,',
'    p_c002 =>            apex_application.g_f02,',
'    p_c003 =>            apex_application.g_f03,',
'    p_c004 =>            apex_application.g_f04,',
'    p_c005 =>            apex_application.g_f05,',
'    p_c006 =>            apex_application.g_f06,',
'    p_c007 =>            apex_application.g_f07,',
'    p_c008 =>            apex_application.g_f08,',
'    p_c009 =>            apex_application.g_f09,',
'    p_c010 =>            apex_application.g_f10',
'  );',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(25433895957502703549)
);
wwv_flow_imp.component_end;
end;
/
