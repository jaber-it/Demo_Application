prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Ajax Call Back Process'
,p_alias=>'AJAX-CALL-BACK-PROCESS'
,p_step_title=>'Ajax Call Back Process'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function pricetotal() {',
'apex.server.process ("price",   ',
'',
'{',
'    x01: $v(''P11_PRODUCT_ID1''),',
'    x02: ''P11_PRICE'',',
'    x03: ''P11_SIZE'',',
'},',
' { ',
'  dataType: ''xml'',',
'  loadingIndicator: ''#P11_PRICE,#P11_SIZE'',',
'  success: function(gReturn)',
'    {',
'            var l_Count = gReturn.getElementsByTagName("item").length;',
'            for(var i = 0;i<l_Count;i++){',
'            var l_Opt_Xml = gReturn.getElementsByTagName("item")[i];',
'            var l_ID = l_Opt_Xml.getAttribute(''id'');',
'            var l_El = apex.item(l_ID);',
'                if(l_Opt_Xml.firstChild){',
'                var l_Value = l_Opt_Xml.firstChild.nodeValue;',
'            }else{',
'                var l_Value = '''';',
'            }',
'            if(l_El){',
'                if(l_El.tagName == ''INPUT''){',
'                    $s(l_ID,l_Value);',
'                }else if(l_El.tagName == ''SPAN'' && ',
'                l_El.className == ''grabber''){',
'                    l_El.parentNode.innerHTML = l_Value;',
'                    l_El.parentNode.id = l_ID;',
'                }else{',
'                    $s(l_ID,l_Value);',
'                }            ',
'            }        ',
'         }    ',
'  }',
'});',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210612131951'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21361992014624039616)
,p_plug_name=>'Product  Ajax Call Back Process'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(21361993912072039635)
,p_name=>'Product  Detels'
,p_template=>wwv_flow_imp.id(33247212693934359074)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--labelsAbove'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.PRODUCT_CODE,',
'    b.PRODUCT_ID,',
'    b.PROOUCT_SIZE,',
'    c.ORIGINAL_PRICE',
' from PRODUCT_PRICE c,',
'    PURCHASE_DETALIS b,',
'    PRODUCT a ',
' where a.PRODUCT_ID=b.PRODUCT_ID',
'    and c.PRODUCT_ID=b.PRODUCT_ID',
'    and a.PRODUCT_CODE = :P11_PRODUCT_CODE'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P11_PRODUCT_CODE'
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
 p_id=>wwv_flow_imp.id(21375285412784442914)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_CODE'
,p_column_display_sequence=>50
,p_column_heading=>'Product Code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21361994664336039642)
,p_query_column_id=>2
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Product Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21375285505232442915)
,p_query_column_id=>3
,p_column_alias=>'PROOUCT_SIZE'
,p_column_display_sequence=>60
,p_column_heading=>'Proouct Size'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21361995052194039646)
,p_query_column_id=>4
,p_column_alias=>'ORIGINAL_PRICE'
,p_column_display_sequence=>40
,p_column_heading=>'Original Price'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21361995164616039647)
,p_plug_name=>'Item Information'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21361992118656039617)
,p_name=>'P11_PRODUCT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21361992014624039616)
,p_prompt=>'Product Id'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select PRODUCT_NAME, PRODUCT_ID from product'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21361992296785039618)
,p_name=>'P11_PRODUCT_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21361992014624039616)
,p_prompt=>'Product Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21361992313524039619)
,p_name=>'P11_PRODUCT_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(21361992014624039616)
,p_prompt=>'Product Name'
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
 p_id=>wwv_flow_imp.id(21361992488454039620)
,p_name=>'P11_PRODUCT_DESCRIPTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(21361992014624039616)
,p_prompt=>'Product Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21361992647691039622)
,p_name=>'P11_GROUP_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(21361992014624039616)
,p_prompt=>'Group Name'
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
 p_id=>wwv_flow_imp.id(21361992785619039623)
,p_name=>'P11_STATUS_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(21361992014624039616)
,p_prompt=>'Status Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21361995359447039649)
,p_name=>'P11_PRODUCT_ID1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21361995164616039647)
,p_prompt=>'Product Id1'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select distinct a.PRODUCT_CODE||'', ''||a.PRODUCT_NAME d, a.PRODUCT_ID r',
' from PRODUCT a, PURCHASE_DETALIS b',
'where a.PRODUCT_ID=b.PRODUCT_ID',
'order by a.PRODUCT_ID',
'',
'',
'--select PRODUCT_NAME, PRODUCT_ID from product'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--'
,p_cHeight=>1
,p_tag_attributes=>'onchange="pricetotal();"'
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21361995469419039650)
,p_name=>'P11_PRICE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21361995164616039647)
,p_prompt=>'Price'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21375284191594442901)
,p_name=>'P11_SIZE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(21361995164616039647)
,p_prompt=>'Size'
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
 p_id=>wwv_flow_imp.id(21361992949608039625)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P11_PRODUCT_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21361993008196039626)
,p_event_id=>wwv_flow_imp.id(21361992949608039625)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process ("PROUCT",   ',
'',
'{',
'    x01: $v(''P11_PRODUCT_ID''),',
'    x02: ''P11_PRODUCT_CODE'',',
'    x03: ''P11_PRODUCT_NAME'',',
'    x04: ''P11_PRODUCT_DESCRIPTION'',',
'    x05: ''P11_GROUP_NAME'',',
'    x06: ''P11_STATUS_ID'',',
'},',
' { ',
'  dataType: ''xml'',',
'  loadingIndicator: ''#P11_PRODUCT_CODE,#P11_PRODUCT_NAME,#P11_PRODUCT_DESCRIPTION,#P11_GROUP_NAME,#P11_STATUS_ID'',',
'  success: function(gReturn)',
'    {',
'            var l_Count = gReturn.getElementsByTagName("item").length;',
'            for(var i = 0;i<l_Count;i++){',
'            var l_Opt_Xml = gReturn.getElementsByTagName("item")[i];',
'            var l_ID = l_Opt_Xml.getAttribute(''id'');',
'            var l_El = apex.item(l_ID);',
'                if(l_Opt_Xml.firstChild){',
'                var l_Value = l_Opt_Xml.firstChild.nodeValue;',
'            }else{',
'                var l_Value = '''';',
'            }',
'            if(l_El){',
'                if(l_El.tagName == ''INPUT''){',
'                    $s(l_ID,l_Value);',
'                }else if(l_El.tagName == ''SPAN'' && ',
'                l_El.className == ''grabber''){',
'                    l_El.parentNode.innerHTML = l_Value;',
'                    l_El.parentNode.id = l_ID;',
'                }else{',
'                    $s(l_ID,l_Value);',
'                }            ',
'            }        ',
'         }    ',
'  }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21375285922019442919)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P11_PRODUCT_CODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21361994951830039645)
,p_event_id=>wwv_flow_imp.id(21375285922019442919)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21361993912072039635)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21361992862710039624)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROUCT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_proid   number;',
'   v_procode    VARCHAR2 (50);',
'   v_proname    VARCHAR2 (50);',
'   v_prodescr    VARCHAR2 (250);',
'   v_progrope    VARCHAR2 (250);',
'   v_prostates    VARCHAR2 (250);',
'   ',
'   CURSOR cur_c',
'   IS',
'      SELECT PRODUCT_CODE, PRODUCT_NAME, PRODUCT_DESCRIPTION, GROUP_NAME, STATUS_ID',
'        FROM PRODUCT ',
'       WHERE PRODUCT_ID = APEX_APPLICATION.g_x01;',
'BEGIN',
'   FOR c IN cur_c',
'   LOOP',
'        v_procode := c.PRODUCT_CODE;',
'        v_proname := c.PRODUCT_NAME;',
'        v_prodescr := c.PRODUCT_DESCRIPTION;',
'        v_progrope := c.GROUP_NAME;',
'        v_prostates := c.STATUS_ID;',
'   END LOOP;',
'',
'   OWA_UTIL.mime_header (''text/xml'', FALSE);',
'   HTP.p (''Cache-Control: no-cache'');',
'   HTP.p (''Pragma: no-cache'');',
'   OWA_UTIL.http_header_close;',
'   HTP.prn (''<body>'');',
'   HTP.prn (''<desc>this xml genericly sets multiple items</desc>'');',
'   HTP.prn (''<item id="''||APEX_APPLICATION.g_x02||''">''|| v_procode || ''</item>'');',
'   HTP.prn (''<item id="''||APEX_APPLICATION.g_x03||''">''|| v_proname || ''</item>'');',
'   HTP.prn (''<item id="''||APEX_APPLICATION.g_x04||''">''|| v_prodescr || ''</item>'');',
'   HTP.prn (''<item id="''||APEX_APPLICATION.g_x05||''">''|| v_progrope || ''</item>'');',
'   HTP.prn (''<item id="''||APEX_APPLICATION.g_x06||''">''|| v_prostates || ''</item>'');',
'   HTP.prn (''</body>'');',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      OWA_UTIL.mime_header (''text/xml'', FALSE);',
'      HTP.p (''Cache-Control: no-cache'');',
'      HTP.p (''Pragma: no-cache'');',
'      OWA_UTIL.http_header_close;',
'      HTP.prn (''<body>'');',
'      HTP.prn (''<desc>this xml genericly sets multiple items</desc>'');',
'      HTP.prn (''<item id="''||APEX_APPLICATION.g_x02||''">''|| SQLERRM || ''</item>'');',
'      HTP.prn (''</body>'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21375284248127442902)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'price'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_proid1   number;',
'   v_price   VARCHAR2 (50);',
'   v_size    VARCHAR2 (50);',
'',
'   CURSOR cur_c',
'   IS',
'      SELECT b.ORIGINAL_PRICE, c.SIZE_NAME from ITEM_SIZE c, PRODUCT_PRICE b,',
'    PURCHASE_DETALIS a ',
'    where a.PROOUCT_SIZE=c.OID',
'    and a.PRODUCT_ID=b.PRODUCT_ID',
'    and a.PRODUCT_ID = APEX_APPLICATION.g_x01;',
'',
'BEGIN',
'   FOR c IN cur_c',
'   LOOP',
'        v_price := c.ORIGINAL_PRICE;',
'        v_size := c.SIZE_NAME;',
'   END LOOP;',
'',
'   OWA_UTIL.mime_header (''text/xml'', FALSE);',
'   HTP.p (''Cache-Control: no-cache'');',
'   HTP.p (''Pragma: no-cache'');',
'   OWA_UTIL.http_header_close;',
'   HTP.prn (''<body>'');',
'   HTP.prn (''<desc>this xml genericly sets multiple items</desc>'');',
'   HTP.prn (''<item id="''||APEX_APPLICATION.g_x02||''">''|| v_price || ''</item>'');',
'   HTP.prn (''<item id="''||APEX_APPLICATION.g_x03||''">''|| v_size || ''</item>'');',
'   HTP.prn (''</body>'');',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      OWA_UTIL.mime_header (''text/xml'', FALSE);',
'      HTP.p (''Cache-Control: no-cache'');',
'      HTP.p (''Pragma: no-cache'');',
'      OWA_UTIL.http_header_close;',
'      HTP.prn (''<body>'');',
'      HTP.prn (''<desc>this xml genericly sets multiple items</desc>'');',
'      HTP.prn (''<item id="''||APEX_APPLICATION.g_x02||''">''|| SQLERRM || ''</item>'');',
'      HTP.prn (''</body>'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
