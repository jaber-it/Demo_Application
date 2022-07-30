prompt --application/pages/page_00042
begin
--   Manifest
--     PAGE: 00042
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
 p_id=>42
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Creating On/Off Toggle Switch Using HTML,CSS and JS'
,p_alias=>'CREATING-ON-OFF-TOGGLE-SWITCH-USING-HTML-CSS-AND-JS'
,p_step_title=>'Creating On/Off Toggle Switch Using HTML,CSS and JS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'function myFunction() {',
'  // Get the checkbox',
'  var checkBox = document.getElementById("myCheck");',
'',
'  // If the checkbox is checked, display the output text',
'  if (checkBox.checked == true){',
'    apex.item(''P42_CHECKBOX_VALUE'').setValue(''Y'');',
'  } else {',
'        apex.item(''P42_CHECKBOX_VALUE'').setValue(''N'');  ',
'  }',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const barOuter = document.querySelector(".bar-outer");',
'const options = document.querySelectorAll(".bar-grey .option");',
'let current = 1;',
'options.forEach((option, i) => (option.index = i + 1));',
'options.forEach(option =>',
'                option.addEventListener("click", function() {',
'  barOuter.className = "bar-outer";',
'  barOuter.classList.add(`pos${option.index}`);',
'  if (option.index > current) {',
'    barOuter.classList.add("right");',
'  } else if (option.index < current) {',
'    barOuter.classList.add("left");',
'  }',
'  current = option.index;',
'}));'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'',
'',
'',
'',
'.switch {',
'  position: relative;',
'  display: inline-block;',
'  width: 60px;',
'  height: 34px;',
'}',
'',
'/* Hide default HTML checkbox */',
'.switch input {',
'  opacity: 0;',
'  width: 0;',
'  height: 0;',
'}',
'',
'/* The slider */',
'.slider {',
'  position: absolute;',
'  cursor: pointer;',
'  top: 0;',
'  left: 0;',
'  right: 0;',
'  bottom: 0;',
'  background-color: #ccc;',
'  -webkit-transition: .4s;',
'  transition: .4s;',
'}',
'',
'.slider:before {',
'  position: absolute;',
'  content: "";',
'  height: 26px;',
'  width: 26px;',
'  left: 4px;',
'  bottom: 4px;',
'  background-color: white;',
'  -webkit-transition: .4s;',
'  transition: .4s;',
'}',
'',
'input:checked + .slider {',
'  background-color: #2196F3;',
'}',
'',
'input:focus + .slider {',
'  box-shadow: 0 0 1px #2196F3;',
'}',
'',
'input:checked + .slider:before {',
'  -webkit-transform: translateX(26px);',
'  -ms-transform: translateX(26px);',
'  transform: translateX(26px);',
'}',
'',
'/* Rounded sliders */',
'.slider.round {',
'  border-radius: 34px;',
'}',
'',
'.slider.round:before {',
'  border-radius: 50%;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39844210017931128633)
,p_plug_name=>'On/Off Toggle Switch'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<label class="switch">',
'  <input type="checkbox" id="myCheck" onclick="myFunction()">',
'  <span class="slider round"></span>',
'</label>',
'',
'<div id= "result" > </div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39844210203783128635)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(39844210017931128633)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39844210162793128634)
,p_name=>'P42_CHECKBOX_VALUE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(39844210203783128635)
,p_prompt=>'Checkbox Value'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="font-size: 2vw" '
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp.component_end;
end;
/
