prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Change background picture'
,p_alias=>'CHANGE-BACKGROUND-PICTURE'
,p_step_title=>'Change background picture'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body{',
'    background-size: cover;',
'    background-image: url(#APP_IMAGES#06.jpg);',
'    font-family:SolaimanLipi,Times New Roman;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'11'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20201016102149'
);
wwv_flow_imp.component_end;
end;
/
