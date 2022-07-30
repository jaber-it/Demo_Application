prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Group Classic Report'
,p_alias=>'GROUP-CLASSIC-REPORT'
,p_step_title=>'Group Classic Report'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.highlight-data {',
'    font-weight: bold !important;',
'    background-color: #ffecb4 !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(16661678223715380601)
,p_name=>'Group Report'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Form--slimPadding'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CASE',
'            WHEN ROW_NUMBER ()',
'                 OVER (PARTITION BY B.PRODUCT_ID ORDER BY B.PRODUCT_ID) =',
'                    1',
'            THEN',
'               B.PRODUCT_CODE || ''('' || B.PRODUCT_NAME || '')''',
'            ELSE',
'               NULL',
'         END',
'            PNAME,',
'        OID,',
'        INVNO,',
'         PROOUCT_SIZE,',
'         RATE',
'         QTY,',
'         DISCOUNT,',
'         TOTAL',
'    FROM SALES_DTLS A, PRODUCT B',
'    WHERE A.PRODUCT_ID = B.PRODUCT_ID',
'    ORDER BY B.PRODUCT_ID',
'',
'',
'      '))
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
 p_id=>wwv_flow_imp.id(16661679265907380611)
,p_query_column_id=>1
,p_column_alias=>'PNAME'
,p_column_display_sequence=>10
,p_column_heading=>'Pname'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16661678380600380602)
,p_query_column_id=>2
,p_column_alias=>'OID'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16661678480825380603)
,p_query_column_id=>3
,p_column_alias=>'INVNO'
,p_column_display_sequence=>30
,p_column_heading=>'Invno'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16661678617814380605)
,p_query_column_id=>4
,p_column_alias=>'PROOUCT_SIZE'
,p_column_display_sequence=>40
,p_column_heading=>'Proouct Size'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16661678740356380606)
,p_query_column_id=>5
,p_column_alias=>'QTY'
,p_column_display_sequence=>50
,p_column_heading=>'Qty'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16661678853887380607)
,p_query_column_id=>6
,p_column_alias=>'DISCOUNT'
,p_column_display_sequence=>60
,p_column_heading=>'Discount'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16661678943896380608)
,p_query_column_id=>7
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>70
,p_column_heading=>'Total'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(27465725378752512417)
,p_name=>'New'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'emp'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'SALES_DTLS'
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
 p_id=>wwv_flow_imp.id(27465727660071512440)
,p_query_column_id=>1
,p_column_alias=>'OID'
,p_column_display_sequence=>210
,p_column_heading=>'Oid'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27465726456567512428)
,p_query_column_id=>2
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>110
,p_column_heading=>'Product Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27465727760285512441)
,p_query_column_id=>3
,p_column_alias=>'ITEM_NAME'
,p_column_display_sequence=>220
,p_column_heading=>'Item Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27465727853302512442)
,p_query_column_id=>4
,p_column_alias=>'PROOUCT_SIZE'
,p_column_display_sequence=>230
,p_column_heading=>'Proouct Size'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27465727933409512443)
,p_query_column_id=>5
,p_column_alias=>'QTY'
,p_column_display_sequence=>240
,p_column_heading=>'Qty'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27465728073856512444)
,p_query_column_id=>6
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>250
,p_column_heading=>'Total'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27465728119892512445)
,p_query_column_id=>7
,p_column_alias=>'SUBMIT'
,p_column_display_sequence=>260
,p_column_heading=>'Submit'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27465728221538512446)
,p_query_column_id=>8
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>270
,p_column_heading=>'Created By'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27465727340954512437)
,p_query_column_id=>9
,p_column_alias=>'CREATE_DATE'
,p_column_display_sequence=>200
,p_column_heading=>'Create Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27465728365689512447)
,p_query_column_id=>10
,p_column_alias=>'INVNO'
,p_column_display_sequence=>280
,p_column_heading=>'Invno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27465728478879512448)
,p_query_column_id=>11
,p_column_alias=>'RATE'
,p_column_display_sequence=>290
,p_column_heading=>'Rate'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27465728574719512449)
,p_query_column_id=>12
,p_column_alias=>'DISCOUNT'
,p_column_display_sequence=>300
,p_column_heading=>'Discount'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27465728658392512450)
,p_query_column_id=>13
,p_column_alias=>'UPDATE_BY'
,p_column_display_sequence=>310
,p_column_heading=>'Update By'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27465726387921512427)
,p_query_column_id=>14
,p_column_alias=>'UPDATE_DATE'
,p_column_display_sequence=>100
,p_column_heading=>'Update Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27489890271166502301)
,p_query_column_id=>15
,p_column_alias=>'IP'
,p_column_display_sequence=>320
,p_column_heading=>'Ip'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27489890343988502302)
,p_name=>'P6_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27465725378752512417)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'item_data'
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27489890431994502303)
,p_name=>'Highlight Cell'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.item_data'
,p_bind_type=>'live'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27489890546991502304)
,p_event_id=>wwv_flow_imp.id(27489890431994502303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'v_search = $(''.item_data'').val();',
'    	v_search = v_search.toLowerCase();',
'',
'    $(".emp td").each(function () {',
'',
'        // get the data from IR cell and make it to lower case',
'        cellData = $(this).text();',
'        cellData = cellData.toLowerCase();',
'        // search IR search field value with IR cell data',
'        cellData = cellData.search(v_search);',
'        // class (highlight-data) should be defined in inline CSS section',
'        // if any match found in IR cells then add the class ',
'        if ((cellData != ''-1'' || cellData == 0) && v_search != '''') {',
'            $(this).closest(''td'').addClass(''highlight-data'');',
'        }',
'        // if no match found in IR cells then remove the class',
'        else if (cellData == ''-1'') {',
'            $(this).closest(''td'').removeClass(''highlight-data'');',
'        } else',
'            $(this).closest(''td'').removeClass(''highlight-data'');',
'    });'))
);
wwv_flow_imp.component_end;
end;
/
