prompt --application/pages/page_00092
begin
--   Manifest
--     PAGE: 00092
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
 p_id=>92
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Multiple File Upload'
,p_alias=>'MULTIPLE-FILE-UPLOAD'
,p_step_title=>'Multiple File Upload'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#spin.min.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var fileInputElem = document.getElementById(''P92_FILE_UPLOAD'');',
'var fileIndex = 0;',
'',
'// builds a js array from long string',
'function clob2Array(clob, size, array) {',
'  loopCount = Math.floor(clob.length / size) + 1;',
'  for (var i = 0; i < loopCount; i++) {',
'    array.push(clob.slice(size * i, size * (i + 1)));',
'  }',
'  return array;',
'}',
'',
'// converts binaryArray to base64 string',
'function binaryArray2base64(int8Array) {',
'  var data = "";',
'  var bytes = new Uint8Array(int8Array);',
'  var length = bytes.byteLength;',
'  for (var i = 0; i < length; i++) {',
'    data += String.fromCharCode(bytes[i]);',
'  }',
'  return btoa(data);',
'}',
'',
'// a recursive function that calls itself to upload multiple files synchronously',
'function uploadFile(pFileIndex) {',
'  var file = fileInputElem.files[pFileIndex];',
'  var reader = new FileReader();',
'',
'  reader.onload = (function(pFile) {',
'    return function(e) {',
'      if (pFile) {',
'        var base64 = binaryArray2base64(e.target.result);',
'        var f01Array = [];',
'        f01Array = clob2Array(base64, 30000, f01Array);',
'',
'        apex.server.process(',
'          ''UPLOAD_FILE'',',
'          {',
'            x01: file.name,',
'            x02: file.type,',
'            f01: f01Array',
'          },',
'          {',
'            dataType: ''json'',',
'            success: function(data) {',
'              if (data.result == ''success'') {',
'                fileIndex++;',
'',
'                if (fileIndex < fileInputElem.files.length) {',
'                  // start uploading the next file',
'                  uploadFile(fileIndex);',
'                } else {',
'                  // all files have been uploaded at this point',
'                  spinner.stop();',
'                  fileInputElem.value = '''';',
'                  $(''#report'').trigger(''apexrefresh'');',
'                }',
'              } else {',
'                alert(''Oops! Something went terribly wrong. Please try again or contact your application administrator.'');',
'              }',
'            }',
'          }',
'        );',
'      }',
'    }',
'  })(file);',
'  reader.readAsArrayBuffer(file);',
'}',
'',
'// variables for spin.js',
'var spinner;',
'var spinTargetElem = document.getElementById(''wwvFlowForm'');',
'var spinOptions = {',
'  lines: 13',
', length: 28',
', width: 14',
', radius: 42',
', scale: 1',
', corners: 1',
', color: ''#000''',
', opacity: 0.25',
', rotate: 0',
', direction: 1',
', speed: 1',
', trail: 60',
', fps: 20',
', zIndex: 2e9',
', className: ''spinner''',
', top: ''50%''',
', left: ''50%''',
', shadow: false',
', hwaccel: false',
', position: ''absolute''',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220212172828'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38883577947114109513)
,p_plug_name=>'Uploaded Files Files'
,p_region_name=>'report '
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id,',
'      ''UPLOADED_FILES''                 AS collection_name,',
'      c001,',
'      c002,',
'      DBMS_LOB.getlength (blob001)     AS file_size,',
'      DBMS_LOB.getlength (blob001)     AS blob001,',
'      seq_id                           AS delete_file',
' FROM apex_collections',
'WHERE collection_name = ''UPLOADED_FILES'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Uploaded Files Files'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(38883578007864109514)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JABER0181@GMAIL.COM'
,p_internal_uid=>38883578007864109514
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38883578120242109515)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38883578240731109516)
,p_db_column_name=>'COLLECTION_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Collection Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38883578378737109517)
,p_db_column_name=>'C001'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'C001'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38883578447807109518)
,p_db_column_name=>'C002'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'C002'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38883578581380109519)
,p_db_column_name=>'FILE_SIZE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'File Size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38883578640536109520)
,p_db_column_name=>'BLOB001'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Blob001'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38883578722150109521)
,p_db_column_name=>'DELETE_FILE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Delete File'
,p_column_link=>'javascript:$s(''P92_DELETE_FILE_ID'', #SEQ_ID#);void(0);'
,p_column_linktext=>'Delete'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(38916970461969096020)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'389169705'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEQ_ID:COLLECTION_NAME:C001:C002:FILE_SIZE:BLOB001:DELETE_FILE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38883579195717109525)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(38883577947114109513)
,p_button_name=>'UPLOAD_FILE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload File'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38883579975055109533)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(38883577947114109513)
,p_button_name=>'save_data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Data'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38883578815295109522)
,p_name=>'P92_FILE_UPLOAD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38883577947114109513)
,p_prompt=>'File Upload'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_tag_attributes=>'multiple'
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'DROPZONE_BLOCK'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38883579054327109524)
,p_name=>'P92_DELETE_FILE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(38883577947114109513)
,p_prompt=>'Delete File Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38883579325617109527)
,p_name=>'Collection'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38883579195717109525)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'fileInputElem.files.length != 0'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38883579419030109528)
,p_event_id=>wwv_flow_imp.id(38883579325617109527)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'spinner = new Spinner(spinOptions).spin(spinTargetElem);',
'fileIndex = 0;',
'uploadFile(fileIndex);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38883579691676109530)
,p_name=>'delete collection'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_DELETE_FILE_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38883579717861109531)
,p_event_id=>wwv_flow_imp.id(38883579691676109530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var confirmDialog = confirm(''Are you sure you want to delete this file?'');',
'if (confirmDialog == true) {',
' spinner = new Spinner(spinOptions).spin(spinTargetElem);',
' ',
' apex.server.process(',
'   ''DELETE_FILE'',',
'   {',
'     x01: $v(''P92_DELETE_FILE_ID'')',
'   },',
'   {',
'     dataType: ''json'',',
'     success: function(data) {',
'       spinner.stop();',
'       if (data.result == ''success'') {',
'         $(''#report'').trigger(''apexrefresh'');',
'       } else {',
'         alert(''Oops! Something went terribly wrong. Please try again or contact your application administrator.'');',
'       }',
'     }',
'   }',
' );',
'} else {',
' $s(''P92_DELETE_FILE_ID'', '''');',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38883579203033109526)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'init uploaded_files collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  lco_collection_name constant apex_collections.collection_name%type := ''UPLOADED_FILES'';',
'begin',
'  if not apex_collection.collection_exists(lco_collection_name) then',
'    apex_collection.create_collection(',
'      p_collection_name => lco_collection_name',
'    );',
'  end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38883580072638109534)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   -- get files data from saved apex_collection',
'   CURSOR l_cur_files IS',
'       SELECT c001        AS filename,',
'              c002        AS mime_type,',
'              d001        AS date_created,',
'              n001        AS file_id,',
'              blob001     AS file_content',
'         FROM apex_collections',
'        WHERE collection_name = ''UPLOADED_FILES'';',
'BEGIN',
'   -- loop over files cursor',
'   FOR l_rec_files IN l_cur_files',
'   LOOP',
'       -- do whatever processing is required prior to the insert into your own table',
'       INSERT INTO custom_table (filename,',
'                                 mime_type,',
'                                 upload_date,',
'                                 file_content,',
'                                 fk_id)',
'            VALUES (l_rec_files.filename,',
'                    l_rec_files.mime_type,',
'                    l_rec_files.date_created,',
'                    l_rec_files.file_content,',
'                    :1);',
'   END LOOP;',
'   -- clear original apex collection (only if exist)',
'   IF apex_collection.collection_exists (',
'          p_collection_name   => ''UPLOADED_FILES'')',
'   THEN',
'       apex_collection.delete_collection (',
'           p_collection_name   => ''UPLOADED_FILES'');',
'   END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38883579502061109529)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPLOAD_FILE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   lco_collection_name   CONSTANT apex_collections.collection_name%TYPE',
'                                      := ''UPLOADED_FILES'' ;',
'   l_blob                         BLOB;',
'   l_filename                     VARCHAR2 (200);',
'   l_mime_type                    VARCHAR2 (200);',
'   l_token                        VARCHAR2 (32000);',
'BEGIN',
'   l_filename := APEX_APPLICATION.g_x01;',
'   l_mime_type := NVL (APEX_APPLICATION.g_x02, ''application/octet-stream'');',
'   -- build BLOB from f01 30k array (base64 encoded)',
'   DBMS_LOB.createtemporary (l_blob, FALSE, DBMS_LOB.session);',
'   FOR i IN 1 .. APEX_APPLICATION.g_f01.COUNT',
'   LOOP',
'       l_token := wwv_flow.g_f01 (i);',
'       IF LENGTH (l_token) > 0',
'       THEN',
'           DBMS_LOB.append (',
'               dest_lob   => l_blob,',
'               src_lob    =>',
'                   to_blob (',
'                       UTL_ENCODE.base64_decode (',
'                           UTL_RAW.cast_to_raw (l_token))));',
'       END IF;',
'   END LOOP;',
'   -- add collection member (only if BLOB is not null)',
'   IF DBMS_LOB.getlength (l_blob) IS NOT NULL',
'   THEN',
'       apex_collection.add_member (',
'           p_collection_name   => lco_collection_name,',
'           p_c001              => l_filename,',
'           p_c002              => l_mime_type,',
'           p_blob001           => l_blob);',
'   END IF;',
'   apex_json.open_object;',
'   apex_json.write (p_name => ''result'', p_value => ''success'');',
'   apex_json.close_object;',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'       apex_json.open_object;',
'       apex_json.write (p_name => ''result'', p_value => ''fail'');',
'       apex_json.close_object;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38883579839254109532)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DELETE_FILE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   apex_collection.delete_member (',
'       p_collection_name   => ''UPLOADED_FILES'',',
'       p_seq               => APEX_APPLICATION.g_x01);',
'   apex_json.open_object;',
'   apex_json.write (p_name => ''result'', p_value => ''success'');',
'   apex_json.close_object;',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'       apex_json.open_object;',
'       apex_json.write (p_name => ''result'', p_value => ''fail'');',
'       apex_json.close_object;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
