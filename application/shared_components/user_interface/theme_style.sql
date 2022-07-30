prompt --application/shared_components/user_interface/theme_style
begin
--   Manifest
--     THEME STYLE: 95068
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(7483438108118182223)
,p_theme_id=>42
,p_name=>'Red Theme'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Accent-BG":"#7c3010","@g_Nav-BG":"#7b1f08","@g_Nav-FG":"#dedede","@g_Nav-Active-BG":"#45190a","@g_Nav-Active-FG":"#f2f2f2","@g_NavBarMenu-Active-BG":"#b91728","@g_NavBarMenu-Active-FG":"#ffffff","@g_Nav-Icon":"#090201","@g_N'
||'av-Icon-Active":"#f2f2f2","@g_NavBarMenu-BG":"#3f1808","@g_NavBarMenu-FG":"#ffffff","@g_Nav_Style":"light","@g_Nav-Accent-BG":"#be3906","@g_Nav-Accent-FG":"#ffffff","@g_Nav-Badge-BG":"#b91728","@g_Nav-Badge-FG":"#ffffff"},"customCSS":"body{\n    back'
||'ground: #360808;\n}\n","useCustomLess":"Y"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#7483438108118182223.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(9709431773943436542)
,p_theme_id=>42
,p_name=>'Vita - Dark (copy_1)'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Accent-BG":"#14293c","@g_Accent-OG":"#e3dede","@g_Focus":"#e3dede","@g_Container-BorderRadius":"26px","@g_Button-BorderRadius":"4px","@g_Form-BorderRadius":"10px","@Head-Height":"48px","@Nav-Exp":"260px","@Actions-Exp":"310p'
||'x","@Side-Exp":"290px","@irrBg":"#b3bbc4","@g_Link-Base":"#4d86b9","@g_Nav_Style":"dark","@g_Nav-BG":"#14293c","@g_Nav-FG":"#cccccc","@g_Nav-Active-BG":"#031124","@g_Nav-Active-FG":"#f2f2f2","@g_Nav-Accent-BG":"#300808","@g_Nav-Accent-FG":"#dbe8f3","'
||'@g_Nav-Badge-BG":"#751010","@g_Nav-Badge-FG":"#dbe8f3","@g_Form-Label":"#000000"},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#9709431773943436542.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(21429880221693163656)
,p_theme_id=>42
,p_name=>'Parsley Theme'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Accent-BG":"#7e2a1d","@g_Nav-BG":"#a4412d","@g_Nav-FG":"#dedede","@g_Nav-Active-BG":"#632a12","@g_Nav-Active-FG":"#f2f2f2","@g_NavBarMenu-Active-BG":"#4f1e05","@g_NavBarMenu-Active-FG":"#ffffff","@g_Nav-Icon":"#042c02","@g_N'
||'av-Icon-Active":"#f2f2f2","@g_NavBarMenu-BG":"#1a0602","@g_NavBarMenu-FG":"#ffffff","@g_Nav_Style":"light","@g_Link-Base":"#7e3c28","@g_Focus":"#5d2a16","@g_Header-BG":"#31832c","@g_Header-FG":"#ffffff","@g_Nav-Accent-BG":"#2f0704","@g_Nav-Accent-FG"'
||':"#ffffff","@g_Nav-Badge-BG":"#462823","@g_Nav-Badge-FG":"#ffffff"},"customCSS":"body{\n    background: #360808;\n}\n","useCustomLess":"Y"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#21429880221693163656.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(32124643981296306665)
,p_theme_id=>42
,p_name=>'Redwood Light (copy_1)'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_IMAGES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_css_classes=>' rw-mode-header--pillar rw-mode-body--dark rw-layout--edge-to-edge rw-mode-body-header--dark rw-pillar--ocean rw-mode-nav--pillar'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Redwood-Theme.less'
,p_theme_roller_config=>'{"classes":["rw-layout--fixed t-PageBody--scrollTitle","rw-mode-header--pillar","rw-mode-body--dark","rw-layout--fixed t-PageBody--scrollTitle","rw-layout--edge-to-edge","rw-mode-body-header--dark","rw-pillar--ocean","rw-mode-nav--pillar"],"vars":{},'
||'"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(35878389065032543555)
,p_theme_id=>42
,p_name=>'Redwood Light'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Redwood-Theme#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2596426436825065489
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(35878389427858543555)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(35878389837924543555)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(35878390282262543556)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(35878390669567543556)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
wwv_flow_imp.component_end;
end;
/
