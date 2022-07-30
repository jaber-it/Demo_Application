prompt --application/pages/page_00035
begin
--   Manifest
--     PAGE: 00035
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
 p_id=>35
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Create a Duplicate Record'
,p_alias=>'CREATE-A-DUPLICATE-RECORD'
,p_step_title=>'Create a Duplicate Record'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var validity, message,',
'    ui = this.data;',
'  ',
'//This is to calculate total Weighting and alert',
'// create a private scope where $ is set to apex.jQuery',
'(function($) {',
'    // This is the function that calculates over all the rows of the model and then',
'    // updates something else.',
'    // Call this whenever the model data changes.',
'    function update(model) {',
'        var salKey = model.getFieldKey("SAL"), ',
'            empnoKey = model.getFieldKey("EMPNO"),',
'             recObj = [],',
'             recArray = [];',
'        model.forEach(function(record, index, id) {',
'            var sal = parseInt(record[salKey], 10),  // record[salKey] should be a little faster than using model.getValue in a loop',
'                empno = parseInt(record[empnoKey], 10),',
'                meta = model.getRecordMetadata(id);',
'            if (!isNaN(sal) && !meta.deleted && !meta.agg) {',
'               recObj = {ID: id, salary: sal, EMPNO: empno};',
'               recArray.push(recObj);                    ',
'            }         ',
'        });        ',
'        //************************mark found duplicates*************************        ',
'        var duplicateIds = recArray',
'                         .map(e => e[''salary''])',
'                         .map((e, i, final) => final.indexOf(e) !== i && i)',
'                         .filter(obj => recArray[obj])',
'                         .map(e => recArray[e]["salary"]);',
'        var duplObjects = recArray.filter(obj=> duplicateIds.includes(obj.salary));',
'              ',
'        if (duplicateIds.length > 0) { ',
'          apex.message.clearErrors();      ',
'          $(''#emp button[data-action="save"]'').hide();',
'           // Now show new errors',
'          apex.message.showErrors([',
'                {',
'                    type:       "error",',
'                    location:   "page",',
'                    message:    "Duplicates found on rows!" + "\r\n" + JSON.stringify(duplObjects),',
'                    unsafe:     false',
'                }',
'                  ]);',
'          } else {',
'              apex.message.clearErrors(); ',
'              $(''#emp button[data-action="save"]'').show();      ',
'          }               ',
'    }',
'',
'    //',
'    // This is the general pattern for subscribing to model notifications',
'    //',
'    // need to do this here rather than in Execute when Page Loads so that the handler',
'    // is setup BEFORE the IG is initialized otherwise miss the first model created event',
'    $(function() {',
'        // the model gets released and created at various times such as when the report changes',
'        // listen for model created events so that we can subscribe to model notifications',
'        $("#emp").on("interactivegridviewmodelcreate", function(event, ui) {',
'            var sid, model = ui.model;',
'            ',
'            // note this is only done for the grid veiw. It could be done for',
'            // other views if desired. The important thing to realize is that each',
'            // view has its own model',
'            if ( ui.viewId === "grid" ) {',
'                sid = model.subscribe( {',
'                    onChange: function(type, change) {',
'                        if ( type === "set" ) {',
'                            // don''t bother to recalculate if other columns change',
'                            if (change.field === "SAL" ) {',
'                                update( model );',
'                            }',
'                        } else if (type !== "move" && type !== "metaChange") {',
'                            // any other change except for move and metaChange affect the calculation',
'                            update( model );',
'                        }',
'                    }',
'                } );',
'                // if not lazy loaded there is no notification for initial data so update',
'                update(model); ',
'                // just in case fetch all the data. Model notifications will',
'                // cause calls to update so nothing to do in the callback function.',
'                // can remove if data will always be less than 50 records',
'                model.fetchAll(function() {});',
'            }',
'        });',
'    });',
'})(apex.jQuery);'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.tooltip {',
'  position: relative;',
'  display: inline-block;',
'  border-bottom: 1px dotted black;',
'}',
'.tooltip .tooltiptext {',
'  visibility: hidden;',
'  width: 120px;',
'  background-color: black;',
'  color: #fff;',
'  text-align: center;',
'  border-radius: 6px;',
'  padding: 5px 0;',
'font-size: 12px;',
'  /* Position the tooltip */',
'  position: absolute;',
'  z-index: 1;',
'        LEFT: 20;',
'}',
'.tooltip:hover .tooltiptext {',
'  visibility: visible;',
'}',
'',
'',
'',
'============================',
'.t-Cards {',
'    /* list-style: none; */',
'    /* padding: 0; ',
'    margin: -8px;*/',
'    /* overflow: hidden; */',
'    flex-wrap: wrap;',
'    display: flex;',
'    flex-wrap: wrap;',
'    justify-content: center;',
'    align-items: center;',
'    align-content: center;',
'    align-self: center;',
'    text-align: center;',
'    transition: 0.5s ease; ',
'    cursor: pointer; ',
'}',
'',
'.card {',
'     width: 200px;',
'    margin: 5px;',
'     /*   box-shadow: 5px 5px 15px rgba(0,0,0,0.9);',
'     border-radius: 30px; */',
'    transition: 0.5s ease;',
'    cursor: pointer;',
'    ',
'    margin: 15px;',
'}',
'',
'.card:hover {',
'    transform: scale(1.03);',
'}',
'',
'img {',
'    width: 100%;',
'    height: 200px;',
'    padding: 10px 10px 10px 10px;',
'    border-radius: 32px 32px 0 0;',
'/*    margin-top: 10px;  */',
'}',
'',
'.product-size h4 {',
'    font-size: 13px;',
'    padding: 0px 10px;  ',
'    margin-top: 3px;',
'    /* padding-bottom: 3px; */',
'    /* text-transform: uppercase; */',
'    text-align: left;',
'    /* margin-left: 21px; */',
'}',
'',
'.ul-size {',
'    margin: auto;',
'    padding: 0px 0px 0px 10px;',
'}',
'',
'.ul-size li {',
'  list-style: none;',
'  float: left;',
'  margin-right: 5px;',
'  text-align: left;',
'}',
'',
'',
'.ul-size li a {',
'    display: inline-block;',
'    /* text-decoration: none; */',
'    font-size: 10px;',
'    font-weight: 600;',
'    width: 23px;',
'    height: 23px;',
'    border-radius: 100%;',
'    text-align: center;',
'    line-height: 25px;',
'    color: #000;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(54607701423186465866)
,p_name=>'interactive report'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id,',
'APEX_ITEM.TEXT(p_idx =>  1,p_value =>  seq_id,p_item_id =>''f01_''||c001||'''') seq_id_display,',
'c001 empno,',
'APEX_ITEM.TEXT(p_idx =>  2,p_value=>  c002,p_item_id =>   ''f02_''||c001||'''') ENAME,',
'APEX_ITEM.TEXT( p_idx=>3,p_value=>c003,p_item_id=>''f03_''||c001||'''')  dept ,',
'APEX_ITEM.TEXT(p_idx =>  4,p_value  =>  c004,p_item_id =>   ''f04_''||c001||'''')  sal,',
'seq_id COPY_LINK',
'FROM apex_collections',
'WHERE collection_name = ''DUPLICATE''',
'--ORDER BY seq_id'))
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
 p_id=>wwv_flow_imp.id(28570477774135823181)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Seq Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28570478195426823182)
,p_query_column_id=>2
,p_column_alias=>'SEQ_ID_DISPLAY'
,p_column_display_sequence=>20
,p_column_heading=>'Seq Id Display'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28570478527810823182)
,p_query_column_id=>3
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>30
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28570478958886823182)
,p_query_column_id=>4
,p_column_alias=>'ENAME'
,p_column_display_sequence=>40
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28570479362943823182)
,p_query_column_id=>5
,p_column_alias=>'DEPT'
,p_column_display_sequence=>50
,p_column_heading=>'Dept'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28570479788788823183)
,p_query_column_id=>6
,p_column_alias=>'SAL'
,p_column_display_sequence=>60
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28570480106364823183)
,p_query_column_id=>7
,p_column_alias=>'COPY_LINK'
,p_column_display_sequence=>70
,p_column_heading=>'Copy Link'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s("P27_SEQ_ID","#SEQ_ID#");'
,p_column_linktext=>'<div class="tooltip fa fa-files-o call_collection" ria-hidden="true">                  <span class="tooltiptext">Duplicate Record</span>                </div>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28570480500359823183)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54607701423186465866)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28570480969537823183)
,p_name=>'P35_SEQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54607701423186465866)
,p_prompt=>'Seq Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28570482162066823187)
,p_name=>'Create a Duplicate Record'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28570482689109823189)
,p_event_id=>wwv_flow_imp.id(28570482162066823187)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_collection_name   VARCHAR2 (30) := ''DUPLICATE'';',
'BEGIN',
'      apex_collection.create_or_truncate_collection',
'                                      (p_collection_name      => v_collection_name);',
'      FOR x IN (SELECT *  FROM emp)    LOOP',
'         apex_collection.add_member (p_collection_name      => v_collection_name,',
'                                     p_c001                 => x.empno,',
'                                     p_c002                 => x.ename,',
'                                     p_c003                 => x.deptno,',
'                                     p_c004                 => x.sal',
'                                    );',
'         END LOOP;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28570483029209823189)
,p_name=>'DUPLICATE'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(54607701423186465866)
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28570483502540823189)
,p_event_id=>wwv_flow_imp.id(28570483029209823189)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_collection_name   VARCHAR2 (30) := ''DUPLICATE'';',
'   v_empno NUMBER;',
'BEGIN',
'SELECT EMP_SEQ.NEXTVAL',
'     INTO v_empno',
'     FROM DUAL;',
'    FOR x IN (SELECT *  FROM',
'    	        apex_collections',
'    	         where collection_name= ''DUPLICATE''',
'    	          and seq_id= :P35_SEQ_ID)',
'      LOOP',
'      apex_collection.add_member (p_collection_name      => v_collection_name,',
'                                  p_c001                 => v_empno,',
'                                  p_c002                 => x.c002,',
'                                  p_c003                 => x.c003,',
'                                  p_c004                 => x.c004',
'                                 );',
'',
'        end loop;',
'END;'))
,p_attribute_02=>'P35_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28570484005621823189)
,p_event_id=>wwv_flow_imp.id(28570483029209823189)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54607701423186465866)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28570481301997823184)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(54607701423186465866)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'interactive report - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28570481784714823187)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'		INSERT INTO EMP (EMPNO, ENAME, JOB, SAL)',
'		select c001, c002, c003, c004',
'		from apex_collections where collection_name =''DUPLICATE'';',
'',
'		APEX_COLLECTION.DELETE_COLLECTION (p_collection_name => ''DUPLICATE'');',
'	end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(28570480500359823183)
);
wwv_flow_imp.component_end;
end;
/
