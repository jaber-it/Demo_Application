prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
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
 p_id=>19
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Interactive Report'
,p_alias=>'INTERACTIVE-REPORT'
,p_step_title=>'Interactive Report'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
' $(".emp td[headers=status]").each(function(){',
'		celldata= $(this).text();',
'		if (celldata ==''Inactive'')',
'		$(this).parent().children().css(''background-color'',''#f4b5b5'');',
'	    });'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img {',
'    width: 45px;',
'    border-style: none;',
'    height: 45px;',
'    border-radius: 50px;',
'}',
'',
'',
'',
'.highlight-data {',
'    font-weight: bold !important;',
'    background-color: #ffecb4 !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23135219999142054585)
,p_plug_name=>'Interactive Report'
,p_region_css_classes=>'emp'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551662801852634426)
,p_plug_display_sequence=>20
,p_plug_grid_column_css_classes=>'emp'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.OID,',
'       c.COURT_ID,',
'       c.COURT_NM,',
'       (select s.STATUS from IS_ACTIVATE s where s.oid = c.IS_ACTIVE) IS_ACTIVE,',
'       (select d.DIVI_NM from DIVISION d where d.oid = c.DIVI_OID) as DIVI_OID,',
'       (select u.USER_TYPE from MY_USERS u where UPPER(u.USERNAME) = UPPER(:APP_USER)) as USER_TYPE,',
'',
'       CASE',
'      WHEN (select u.USER_TYPE from MY_USERS u where UPPER(u.USERNAME) = UPPER(:APP_USER))  = 1 THEN',
'        ''Edit''',
'      ELSE ''''',
'    END Edit',
'        from COURT c'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_page_header=>'Interactive Report'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(23135220055093054585)
,p_name=>'Interactive Report'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JABER0181@GMAIL.COM'
,p_internal_uid=>23135220055093054585
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23135220432006054592)
,p_db_column_name=>'OID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Oid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23135220824740054592)
,p_db_column_name=>'COURT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Court Id'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23135221265494054593)
,p_db_column_name=>'COURT_NM'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Court Nm'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23131048465271455603)
,p_db_column_name=>'IS_ACTIVE'
,p_display_order=>13
,p_column_identifier=>'J'
,p_column_label=>'Is Active'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'status'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23131048582537455604)
,p_db_column_name=>'DIVI_OID'
,p_display_order=>23
,p_column_identifier=>'K'
,p_column_label=>'Divi Oid'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22530463661957058141)
,p_db_column_name=>'USER_TYPE'
,p_display_order=>33
,p_column_identifier=>'L'
,p_column_label=>'User Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22530463707910058142)
,p_db_column_name=>'EDIT'
,p_display_order=>43
,p_column_identifier=>'M'
,p_column_label=>'Edit'
,p_column_link=>'javascript:$s(''P19_ID'',''#OID#'');javascript:$s(''P19_IS_ACTIVE_ITEM'',''#IS_ACTIVE#'');'
,p_column_linktext=>'#EDIT#'
,p_column_link_attr=>'class="update t-Button t-Button--hot t-Button--small t-Button--stretch"'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(23135145122908587404)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'231351452'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'OID:COURT_ID:COURT_NM:IS_ACTIVE:DIVI_OID:USER_TYPE:EDIT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23171955264210206801)
,p_plug_name=>'Update From'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BEFORE_FOOTER'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23244025502407050721)
,p_plug_name=>'Inline Dialogs'
,p_region_name=>'INLINE_ID'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(14551657269079634424)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35177355144701290319)
,p_plug_name=>'Simple List'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'PRODUCT_RATING'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'SEARCH'
,p_attribute_02=>'PRODUCT_CODE'
,p_attribute_06=>'PRODUCT_NAME'
,p_attribute_08=>'PRODUCT_RATING'
,p_attribute_16=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:33:P33_OID:&OID.'
,p_attribute_18=>'SERVER_EXACT_IGNORE'
,p_attribute_20=>'Search...........'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23171956378398206812)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(23171955264210206801)
,p_button_name=>'Update'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Update'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23244026013816050726)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(23244025502407050721)
,p_button_name=>'Update1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Update'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23171955457718206803)
,p_name=>'P19_OID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(23171955264210206801)
,p_prompt=>'Oid'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23171955507016206804)
,p_name=>'P19_COURT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(23171955264210206801)
,p_prompt=>'Court Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23171955683367206805)
,p_name=>'P19_COURT_NM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(23171955264210206801)
,p_prompt=>'Court Nm'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>100
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23171955787326206806)
,p_name=>'P19_IS_ACTIVE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(23171955264210206801)
,p_prompt=>'Is Active'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23171955832867206807)
,p_name=>'P19_PID_EMPLOYEE_INSERT_BY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(23171955264210206801)
,p_prompt=>'Pid Employee Insert By'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23171955966958206808)
,p_name=>'P19_INSERT_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(23171955264210206801)
,p_prompt=>'Insert Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23171956027793206809)
,p_name=>'P19_PID_EMPLOYEE_UPDATE_BY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(23171955264210206801)
,p_prompt=>'Pid Employee Update By'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23171956174797206810)
,p_name=>'P19_UPDATE_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(23171955264210206801)
,p_prompt=>'Update Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23171956287167206811)
,p_name=>'P19_DIVI_OID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(23171955264210206801)
,p_prompt=>'Divi Oid'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23244025623403050722)
,p_name=>'P19_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(23244025502407050721)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23244025781642050723)
,p_name=>'P19_IS_ACTIVE_ITEM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(23244025502407050721)
,p_prompt=>'Is Active'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select STATUS, OID from IS_ACTIVATE',
'ORDER BY OID'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-md'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23244025351944050719)
,p_name=>'After Refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(23135219999142054585)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23244025487502050720)
,p_event_id=>wwv_flow_imp.id(23244025351944050719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  $(".emp td[headers=status]").each(function(){',
'		celldata= $(this).text();',
'		if (celldata ==''Inactive'')',
'		$(this).parent().children().css(''background-color'',''#f4b5b5'');',
'	    });'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23244026155779050727)
,p_name=>'Update Data'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(23244026013816050726)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23244026231970050728)
,p_event_id=>wwv_flow_imp.id(23244026155779050727)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'closeModal(''INLINE_ID'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23244026382765050729)
,p_event_id=>wwv_flow_imp.id(23244026155779050727)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'update COURT set IS_ACTIVE =:P19_IS_ACTIVE_ITEM where OID = :P19_ID;'
,p_attribute_02=>'P19_ID,P19_IS_ACTIVE_ITEM'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23244026434183050730)
,p_event_id=>wwv_flow_imp.id(23244026155779050727)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(23135219999142054585)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23244026519795050731)
,p_name=>'Click the Edit button'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.update'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23244026644672050732)
,p_event_id=>wwv_flow_imp.id(23244026519795050731)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'openModal(''INLINE_ID'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27465724380693512407)
,p_name=>'Highlight IR Cell'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.a-IRR-search-field'
,p_bind_type=>'live'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27465724414286512408)
,p_event_id=>wwv_flow_imp.id(27465724380693512407)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'v_search = $(''.a-IRR-search-field'').val();',
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
