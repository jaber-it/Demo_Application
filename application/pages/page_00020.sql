prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Animated Slider Blog Card'
,p_alias=>'ANIMATED-SLIDER-BLOG-CARD'
,p_step_title=>'Animated Slider Blog Card'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'10'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210130103503'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30721020069074880802)
,p_plug_name=>'Animated Slider Blog Card'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h480:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.p(''<!DOCTYPE html>'');',
'htp.p(''<html lang="en" dir="ltr">'');',
'htp.p(''<head>'');',
'htp.p(''<meta charset="utf-8">'');',
'htp.p(''<link rel="stylesheet" href="style.css">'');',
'htp.p(''</head>'');',
'',
'htp.p(''<style type="text/css">',
'*{',
'  margin: 0;',
'  padding: 0;',
'  box-sizing: border-box;',
'}',
'body2{',
'  display: flex;',
'  height: 100vh;',
'  text-align: center;',
'  align-items: center;',
'  justify-content: center;',
'}',
'.center{',
'  position: relative;',
'  width: 770px;',
'  left: -70px;',
'  perspective: 1200px;',
'}',
'.center .img-card{',
'  position: relative;',
'  height: 350px;',
'  width: 400px;',
'  transform-style: preserve-3d;',
'  transition: transform .5s ease-in;',
'}',
'.img-card img{',
'  position: absolute;',
'  height: 100%;',
'  width: 100%;',
'  object-fit: cover;',
'}',
'.img-card img:nth-child(1){',
'  transform: rotateX(-270deg) translateY(-175px);',
'  transform-origin: top left;',
'}',
'.img-card img:nth-child(2){',
'  transform: translateZ(175px);',
'}',
'.img-card img:nth-child(3){',
'  transform: rotateX(-90deg) translateY(175px);',
'  transform-origin: bottom center;',
'}',
'.img-card img:nth-child(4){',
'  transform: rotateX(-180deg) translateY(350px) translateZ(175px);',
'  transform-origin: bottom right;',
'}',
'#tab-1:checked ~ .img-card{',
'  transform: rotateX(-90deg);',
'}',
'#tab-2:checked ~ .img-card{',
'  transform: rotateX(0deg);',
'}',
'#tab-3:checked ~ .img-card{',
'  transform: rotateX(90deg);',
'}',
'#tab-4:checked ~ .img-card{',
'  transform: rotateX(180deg);',
'}',
'.sliders{',
'  position: absolute;',
'  display: block;',
'  right: 0;',
'  top: -30px;',
'}',
'.sliders label{',
'  height: 98px;',
'  width: 110px;',
'  display: flex;',
'  overflow: hidden;',
'  cursor: pointer;',
'  margin: 6px 0;',
'  border: 2px solid #2d4052;',
'}',
'.sliders label:nth-child(1){',
'  margin-top: 0;',
'}',
'label img{',
'  height: 100%;',
'  width: 100%;',
'  object-fit: cover;',
'  filter: grayscale(1);',
'  opacity: .9;',
'}',
'label img:hover,',
'#tab-1:checked ~ .sliders label:nth-child(1) img,',
'#tab-2:checked ~ .sliders label:nth-child(2) img,',
'#tab-3:checked ~ .sliders label:nth-child(3) img,',
'#tab-4:checked ~ .sliders label:nth-child(4) img{',
'  filter: grayscale(0);',
'  opacity: 1;',
'}',
'input{',
'  display: none;',
'}',
'',
'</style>'');',
'',
'',
'',
'htp.p(''<body2>',
'    <div class="center">',
'      <input type="radio" checked name="active" id="tab-1">',
'      <input type="radio" name="active" id="tab-2">',
'      <input type="radio" name="active" id="tab-3">',
'      <input type="radio" name="active" id="tab-4">',
'    <div class="sliders">',
'        <label for="tab-1"><img src="#APP_IMAGES#01.jpg"></label>',
'        <label for="tab-2"><img src="#APP_IMAGES#02.jpg"></label>',
'        <label for="tab-3"><img src="#APP_IMAGES#03.jpg"></label>',
'        <label for="tab-4"><img src="#APP_IMAGES#04.jpg"></label>',
'    </div>',
'<div class="img-card">',
'        <img src="#APP_IMAGES#01.jpg">',
'        <img src="#APP_IMAGES#02.jpg">',
'        <img src="#APP_IMAGES#03.jpg">',
'        <img src="#APP_IMAGES#04.jpg">',
'    </div>',
'</div>'');',
'htp.p(''</body>'');',
'htp.p(''</html>'');',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp.component_end;
end;
/
