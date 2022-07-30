prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 78259
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>13501875225360637847
,p_default_application_id=>78259
,p_default_id_offset=>0
,p_default_owner=>'FLMPJGAZDYSOYO'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(33247277543361359124)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(33247177518621359049)
,p_default_dialog_template=>wwv_flow_imp.id(33247173202939359045)
,p_error_template=>wwv_flow_imp.id(33247165363905359040)
,p_printer_friendly_template=>wwv_flow_imp.id(33247177518621359049)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(33247165363905359040)
,p_default_button_template=>wwv_flow_imp.id(33247274762605359120)
,p_default_region_template=>wwv_flow_imp.id(33247212693934359074)
,p_default_chart_template=>wwv_flow_imp.id(33247212693934359074)
,p_default_form_template=>wwv_flow_imp.id(33247212693934359074)
,p_default_reportr_template=>wwv_flow_imp.id(33247212693934359074)
,p_default_tabform_template=>wwv_flow_imp.id(33247212693934359074)
,p_default_wizard_template=>wwv_flow_imp.id(33247212693934359074)
,p_default_menur_template=>wwv_flow_imp.id(33247222071648359080)
,p_default_listr_template=>wwv_flow_imp.id(33247212693934359074)
,p_default_irr_template=>wwv_flow_imp.id(33247210767798359072)
,p_default_report_template=>wwv_flow_imp.id(33247241596394359095)
,p_default_label_template=>wwv_flow_imp.id(33247273645904359119)
,p_default_menu_template=>wwv_flow_imp.id(33247276183996359121)
,p_default_calendar_template=>wwv_flow_imp.id(33247276210218359122)
,p_default_list_template=>wwv_flow_imp.id(33247257969509359107)
,p_default_nav_list_template=>wwv_flow_imp.id(33247269308007359116)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(33247269308007359116)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(33247264362932359112)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(33247186221494359056)
,p_default_dialogr_template=>wwv_flow_imp.id(33247185261157359055)
,p_default_option_label=>wwv_flow_imp.id(33247273645904359119)
,p_default_required_label=>wwv_flow_imp.id(33247273962000359120)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_imp.id(33247263910943359111)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.6/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
