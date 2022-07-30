prompt --application/pages/page_00050
begin
--   Manifest
--     PAGE: 00050
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
 p_id=>50
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Overlay Side Menu (No Video Created)'
,p_alias=>'OVERLAY-SIDE-MENU-NO-VIDEO-CREATED'
,p_step_title=>'Overlay Side Menu (No Video Created)'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function initOverlayMenu() {',
'    var  NAV_CONTROL_BUTTON = "#t_Button_navControl",',
'         page_body_sel      = ''#t_PageBody'';',
'    ',
'    //override the left navigation menu styling',
'    $(page_body_sel)',
'        .removeClass(''apex-side-nav t-PageBody--leftNav'')',
'        .addClass(''t-PageBody--overlayNav'');',
'',
'    //fix the state if the navmenu was previously expanded',
'    if ($(NAV_CONTROL_BUTTON).hasClass(''is-active'')) {',
'        $(NAV_CONTROL_BUTTON).click();',
'    }',
'};',
'',
'/*',
' * Document ready logic',
' */',
'$( function() {',
'    //initialize the overlay menu',
'    initOverlayMenu();',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-PageBody--overlayNav .t-Body-nav {',
'    display: block;',
'    position: fixed;',
'    top: 48px;',
'    bottom: 0;',
'    z-index: 1000; ',
'}',
'',
'.t-PageBody--overlayNav .t-TreeNav {',
'    height: 100%; ',
'}',
'',
'.t-PageBody--overlayNav .t-Body-title {',
'    left: 0;',
'    right: 0; ',
'}',
'',
'.t-PageBody--overlayNav.js-navCollapsed .t-Body-nav {',
'    left: -100%; ',
'}',
'',
'.t-PageBody--overlayNav.js-navExpanded .t-Body-nav {',
'    left: 0; ',
'}',
'',
'@media only screen and (max-width: 480px) {',
'    .t-PageBody--overlayNav .t-Body-nav {',
'        width: 100%; ',
'    }',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8787526751524874101)
,p_plug_name=>'Overlay Navmenu'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<p>Displays the side navigation menu as an overlay instead of as an element of the body that pushes everything aside.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8787526889956874102)
,p_plug_name=>'How-to'
,p_parent_plug_id=>wwv_flow_imp.id(8787526751524874101)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551645193068634419)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8787526949529874103)
,p_plug_name=>'Tabs Container'
,p_parent_plug_id=>wwv_flow_imp.id(8787526889956874102)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(14551671528873634430)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8787527093664874104)
,p_plug_name=>'CSS'
,p_parent_plug_id=>wwv_flow_imp.id(8787526949529874103)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre class="line-numbers language-css"><code>.t-PageBody--overlayNav .t-Body-nav {',
'    display: block;',
'    position: fixed;',
'    top: 48px;',
'    bottom: 0;',
'    z-index: 1000; ',
'}',
'',
'.t-PageBody--overlayNav .t-TreeNav {',
'    height: 100%; ',
'}',
'',
'.t-PageBody--overlayNav .t-Body-title {',
'    left: 0;',
'    right: 0; ',
'}',
'',
'.t-PageBody--overlayNav.js-navCollapsed .t-Body-nav {',
'    left: -100%; ',
'}',
'',
'.t-PageBody--overlayNav.js-navExpanded .t-Body-nav {',
'    left: 0; ',
'}',
'',
'@media only screen and (max-width: 480px) {',
'    .t-PageBody--overlayNav .t-Body-nav {',
'        width: 100%; ',
'    }',
'}',
'</code></pre>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8787527151246874105)
,p_plug_name=>'JS'
,p_parent_plug_id=>wwv_flow_imp.id(8787526949529874103)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre class="line-numbers language-js"><code>',
'function initOverlayMenu() {',
'    var  NAV_CONTROL_BUTTON = "#t_Button_navControl",',
'         page_body_sel      = ''#t_PageBody'';',
'    ',
'    //override the left navigation menu styling',
'    $(page_body_sel)',
'        .removeClass(''apex-side-nav t-PageBody--leftNav'')',
'        .addClass(''t-PageBody--overlayNav'');',
'',
'    //fix the state if the navmenu was previously expanded',
'    if ($(NAV_CONTROL_BUTTON).hasClass(''is-active'')) {',
'        $(NAV_CONTROL_BUTTON).click();',
'    }',
'};',
'',
'/*',
' * Document ready logic',
' */',
'$( function() {',
'    //initialize the overlay menu',
'    initOverlayMenu();',
'});',
'</code></pre>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp.component_end;
end;
/
