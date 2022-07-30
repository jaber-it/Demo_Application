prompt --application/pages/page_00082
begin
--   Manifest
--     PAGE: 00082
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
 p_id=>82
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Image Elevate Zoom'
,p_alias=>'IMAGE-ELEVATE-ZOOM'
,p_step_title=>'Image Elevate Zoom'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#jquery.elevateZoom-3.0.8.min.js',
'#APP_FILES#jquery.magnific-popup.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'  $(''.rep-popup-link'').magnificPopup({type:''image''});',
'});',
'',
'$("#zoom_01").elevateZoom({tint:true, tintColour:''#F90'', tintOpacity:0.5});',
''))
,p_css_file_urls=>'#APP_FILES#magnific-popup.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img {',
'    width: 45%;',
'}',
'',
'',
'.white-popup {',
'  position: relative;',
'  background: #FFF;',
'  padding: 20px;',
'  width: auto;',
'  max-width: 200px;',
'  text-align: center;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28307625145234708310)
,p_plug_name=>'Image Elevate Zoom'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<img id="zoom_01" src="#APP_FILES#01.jpg" data-zoom-image="#APP_FILES#01.jpg">'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp.component_end;
end;
/
