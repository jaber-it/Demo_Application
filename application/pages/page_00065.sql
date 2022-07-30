prompt --application/pages/page_00065
begin
--   Manifest
--     PAGE: 00065
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
 p_id=>65
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Call Web Service Using JavaScript'
,p_alias=>'CALL-WEB-SERVICE-USING-JAVASCRIPT'
,p_step_title=>'Call Web Service Using JavaScript'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 5/13/2022 6:42:09 PM (QP5 v5.381) */',
'FUNCTION CALL_WEBSERVICE()',
'{',
'    var urlvariable;',
'    var ItemJSON;',
'    var v_url      = apex.item("P65_URL").getValue();',
'    URL = v_url ;',
'    var xmlhttp = new XMLHttpRequest();',
'    xmlhttp.onreadystatechange = callbackFunction(xmlhttp);',
'    xmlhttp.open("GET", URL, false);',
'   // xmlhttp.setRequestHeader("authorization", "Basic dGl0YW5jb21wYW55bHRkODkyNDgwMTc0OnI3anMzcjEybDMxZmo4b2poYjM0ZzE4N3Rr");',
'   // xmlhttp.setRequestHeader("Content-Type", "application/json");',
'   //xmlhttp.setRequestHeader(''Authorization'', ''Basic '' + window.btoa(''dGl0YW5jb21wYW55bHRkODkyNDgwMTc0OnI3anMzcjEybDMxZmo4b2poYjM0ZzE4N3Rr''));',
'    xmlhttp.onreadystatechange = callbackFunction(xmlhttp);',
'    xmlhttp.send(ItemJSON);',
'   // alert(xmlhttp.responseText);',
'$x("P65_RESPONSE").value = xmlhttp.responseText;',
'}',
'',
'function         callbackFunction(xmlhttp)',
'{',
'    alert(xmlhttp.responseXML);}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10719926369427799525)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551674142650634431)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(14551607125351634402)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14551731209409634454)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10720073701341801801)
,p_plug_name=>'Call Web Service Using JavaScript'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10720074002250801804)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10720073701341801801)
,p_button_name=>'SUBMIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Submit'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10720073847452801802)
,p_name=>'P65_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10720073701341801801)
,p_prompt=>'Url'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10720073945249801803)
,p_name=>'P65_RESPONSE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10720073701341801801)
,p_prompt=>'Response'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10720074128611801805)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10720074002250801804)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10720074254166801806)
,p_event_id=>wwv_flow_imp.id(10720074128611801805)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'CALL_WEBSERVICE();'
);
wwv_flow_imp.component_end;
end;
/
