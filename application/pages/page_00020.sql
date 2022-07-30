prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Use Different Types Of Text Fields'
,p_alias=>'USE-DIFFERENT-TYPES-OF-TEXT-FIELDS'
,p_step_title=>'Use Different Types Of Text Fields'
,p_html_page_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'onchange="fnc_hide();"',
''))
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'        	function setCol(pThis)',
'        	{var vv = $v(pThis);',
'         	var cls = ''#''+pThis;',
'         	if(isNaN(vv))',
'         	{$(cls).css("background-color","red");}',
'         	else',
'         	{$(cls).css("background-color","white");}}',
'',
'',
'',
'			function fnc_hide(){',
'    			if ($x(''P20_CHANG_ITEM'').value == 0) {',
'        		$(''label[for=P20_HIDE_AND_SHOW_ITEM],#P20_HIDE_AND_SHOW_ITEM'').hide();',
'        		} else {',
'         		$(''label[for=P20_HIDE_AND_SHOW_ITEM],#P20_HIDE_AND_SHOW_ITEM'').show();',
'         		}}',
'',
'</script>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function fnc_calcTotalSal() {',
'    		var Total, Cash_Paid, Due, Changes;',
'      		Total = parseFloat($v("P20_TOTAL"), 10) ? parseFloat($v("P20_TOTAL"), 10) : 0;',
'      		Cash_Paid = parseFloat($v("P20_PAYMENT"), 10) ? parseFloat($v("P20_PAYMENT"), 10) : 0;',
'          		if (Cash_Paid > Total)',
'      		{',
'          		Changes = Cash_Paid - Total;',
'          		Due = 0;                     ',
'    		}',
'      		else {',
'          		Due = Total - Cash_Paid;',
'          		Changes = 0;',
'         ',
'      		}',
'      		$s("P20_CHANGE_AMOUNT", parseFloat(Changes, 10));',
'      		$s("P20_DUE", parseFloat(Due, 10));',
'     ',
'		}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".allow-decimal").keypress(function (e) {',
'			    if(e.which == 46){',
'			        if($(this).val().indexOf(''.'') != null) {',
' 			           return false; }}',
' 			   if (e.which != 8 && e.which != null && e.which != 46 && (e.which < 48 || e.which > 57)) {',
'       			 return false; }});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'input[type="text"] {',
'    background-color: lightgray;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23244027643067050742)
,p_plug_name=>'Dynamically Color Text field'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent5:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23244028439206050750)
,p_plug_name=>'Convert Bengali to English and English to Bengali'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23737130148767033503)
,p_plug_name=>'Region and Item Dynamically Show Hide With Animation'
,p_region_template_options=>'#DEFAULT#:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23737130365212033505)
,p_plug_name=>'Region Show/Hide'
,p_region_name=>'REG2'
,p_parent_plug_id=>wwv_flow_imp.id(23737130148767033503)
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23737131544293033517)
,p_plug_name=>'Item hide and show using JavaScript'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent5:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23737131865662033520)
,p_plug_name=>'Make Calculations in items, using JavaScript'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23244027778442050743)
,p_name=>'P20_CHANGE_COLOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(23244027643067050742)
,p_prompt=>'Change Color'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23244028257055050748)
,p_name=>'P20_READ_ONLY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(23244027643067050742)
,p_item_default=>'1234567890'
,p_prompt=>'Read Only'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true style=''color: red;text-align:'''
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23244028328994050749)
,p_name=>'P20_ONLY_NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(23244027643067050742)
,p_prompt=>'Only Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow-decimal'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23737129933750033501)
,p_name=>'P20_BENGALI_TO_ENGLISH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(23244028439206050750)
,p_prompt=>'Bengali To English'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onblur="javascript:getbanglatoenglish(this)"'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23737130074859033502)
,p_name=>'P20_ENGLISH_TO_BENGALI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(23244028439206050750)
,p_prompt=>'English To Bengali'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onblur="javascript:getbangla(this)"'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23737130439962033506)
,p_name=>'P20_SELECT_LIST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(23737130148767033503)
,p_prompt=>'Select List'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Region Hide;1,Region Show;2,Item Hide;3,Item Show;4'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23737130511041033507)
,p_name=>'P20_ITEM_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(23737130365212033505)
,p_prompt=>'Item 1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23737130600580033508)
,p_name=>'P20_ITEM_2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(23737130365212033505)
,p_prompt=>'Item 2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23737131627758033518)
,p_name=>'P20_CHANG_ITEM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(23737131544293033517)
,p_prompt=>'Chang Item'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23737131795033033519)
,p_name=>'P20_HIDE_AND_SHOW_ITEM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(23737131544293033517)
,p_prompt=>'Hide And Show Item'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23737131937004033521)
,p_name=>'P20_TOTAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(23737131865662033520)
,p_item_default=>'3700'
,p_prompt=>'Total'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23737132076732033522)
,p_name=>'P20_PAYMENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(23737131865662033520)
,p_prompt=>'Payment'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onchange="fnc_calcTotalSal();"'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23737132131114033523)
,p_name=>'P20_CHANGE_AMOUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(23737131865662033520)
,p_prompt=>'Change Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23737132258325033524)
,p_name=>'P20_DUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(23737131865662033520)
,p_prompt=>'Due'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23244027834432050744)
,p_name=>'Change Color'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_CHANGE_COLOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23244027935958050745)
,p_event_id=>wwv_flow_imp.id(23244027834432050744)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_CHANGE_COLOR'
,p_attribute_01=>'setCol(this.triggeringElement.id);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23737130723052033509)
,p_name=>'Region Hide'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_SELECT_LIST'
,p_condition_element=>'P20_SELECT_LIST'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23737130856637033510)
,p_event_id=>wwv_flow_imp.id(23737130723052033509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#REG2").hide(1000);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23737130995615033511)
,p_name=>'Region Show'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_SELECT_LIST'
,p_condition_element=>'P20_SELECT_LIST'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23737131093414033512)
,p_event_id=>wwv_flow_imp.id(23737130995615033511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#REG2").show(1000);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23737131108431033513)
,p_name=>'Item Hide'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_SELECT_LIST'
,p_condition_element=>'P20_SELECT_LIST'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'3'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23737131274113033514)
,p_event_id=>wwv_flow_imp.id(23737131108431033513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#P20_ITEM_1_CONTAINER").hide(1000);',
'$("#P20_ITEM_2_CONTAINER").hide(1000);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23737131315364033515)
,p_name=>'Item Show'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_SELECT_LIST'
,p_condition_element=>'P20_SELECT_LIST'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'4'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23737131423639033516)
,p_event_id=>wwv_flow_imp.id(23737131315364033515)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#P20_ITEM_1_CONTAINER").show(1000);',
'$("#P20_ITEM_2_CONTAINER").show(1000);'))
);
wwv_flow_imp.component_end;
end;
/
