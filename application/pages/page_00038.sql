prompt --application/pages/page_00038
begin
--   Manifest
--     PAGE: 00038
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
 p_id=>38
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Upload, Show and Zoom in/out Image'
,p_alias=>'UPLOAD-SHOW-AND-ZOOM-IN-OUT-IMAGE'
,p_step_title=>'Upload, Show and Zoom in/out Image'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function getURL(input) {',
' if (input.files && input.files[0])',
' {',
' var reader=new FileReader();',
' reader.onload = function(e){',
' $(''#upimag'')',
' .attr(''src'',e.target.result);',
' };',
' reader.readAsDataURL(input.files[0]);',
' }',
'}',
'',
'function zoom(){',
' var divlClass=$(''#imgdiv'').attr(''class'');',
' if (divlClass==="ex"){',
' $(''#imgdiv'').css(''cursor'',''zoom-in'');}else',
' if ( divlClass=== "exZoom" ) {',
' $(''#imgdiv'').css(''cursor'',''zoom-out'');}',
' }',
'',
'',
'function my_class(){',
' var divlClass= $(''#imgdiv'').attr(''class'');',
' if(divlClass=== "ex"){',
' $("#imgdiv").removeClass("ex");',
' $("#upimag").removeClass("ex");',
' $("#imgdiv").addClass("exZoom");',
' $("#upimag").addClass("exZoom");} else',
' if(divlClass==="exZoom"){',
' $("#imgdiv").removeClass("exZoom");',
' $("#upimag").removeClass("exZoom");',
' $("#imgdiv").addClass("ex");',
' $("#upimag").addClass("ex");}',
' }'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.ex',
'    {',
'    height:120px ;',
'    width:150px;',
'    padding:2px ;',
'    }',
'',
'.exZoom ',
'    {',
'    height:1000px;',
'    width:1000px;',
'    padding:0px;',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220401162330'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51139777231751782739)
,p_plug_name=>'Upload Image'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51139777430948782741)
,p_plug_name=>'Show Image'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div align="center">',
'    <div id="imgdiv" class="ex">',
'    <img id="upimag" class="ex" onmouseover="zoom();" onClick="my_class(); zoom();" src="#" alt="" />',
' </div> </div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51139777364157782740)
,p_name=>'P38_UPLODE_IMAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51139777231751782739)
,p_prompt=>'Uplode Image'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_tag_attributes=>'onchange="getURL(this);" onload="getURL(this);"'
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'INLINE'
);
wwv_flow_imp.component_end;
end;
/
