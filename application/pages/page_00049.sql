prompt --application/pages/page_00049
begin
--   Manifest
--     PAGE: 00049
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
 p_id=>49
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Profile View In Navigation Bar'
,p_alias=>'PROFILE-VIEW-IN-NAVIGATION-BAR'
,p_step_title=>'Profile View In Navigation Bar'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14934457715100379565)
,p_plug_name=>'Profile View In Navigation Bar'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22402039647756051229)
,p_plug_name=>'Documentation'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent15:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="margin-left: 88px;">',
'<p>',
'    <h3>',
'        <b>Other Video Tutorial:</b> <a href="https://www.youtube.com/apexlessons">Click Here for Video Tutorial</a> <br>',
'        <b>Documentation: </b> <a href="http://www.apexlessons.com/tabular-form-insert-data-using-loop">Click Here for Documentation</a><br>',
'        <b>Facebook: </b> <a href="https://www.facebook.com/apexlessons/">Like Facebook Page</a><br>',
'    </h3>',
'        <h1>',
'            Do not forget to Subscribe',
'        </h1>',
'</p>',
'</div>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7463952010314592307)
,p_name=>'Profile View In Navigation Bar'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7463952104147592308)
,p_event_id=>wwv_flow_imp.id(7463952010314592307)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_APEX_PROFILER'
,p_attribute_01=>'{"isActiveColor": "#F44336","isInctiveColor": "#F4bc36", "panelHeight": "216px", "panelWIdth": "401px", "marginRight": "0px", "marginTop": "48px"}'
,p_attribute_02=>'open-apex-profile'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Ashish'' FIRST_NAME,''Sahay'' LAST_NAME ,',
'''https://1.bp.blogspot.com/-V1JkM-D5VY4/XmCZuNHGytI/AAAAAAAAdec/RsZXgr11hHM8TXuWiLyns_4L9DJ4LPD2QCK4BGAYYCw/s113/0%253Fe%253D1586390400%2526v%253Dbeta%2526t%253DrDhapAPOdu3qco8WpAs1kTxVPf0533bNvx92guVCyVw'' IMAGE_SRC,',
'''https://avatars0.githubusercontent.com/u/13847003?s=60&v=4'' USER_LOGO,',
'''https://blogs.ontoorsolutions.com'' EDIT_LINK_SRC,',
'''ashishk392@gmail.com'' EMAIL,',
'''INCEDO INC.''  ORG_NAME,',
'''Company'' ORG_LABEL,',
'''Oracle Apex Developer'' DESIGNATION,',
'''Github'' LEFT_BUTTON_LABEL,',
'''Blogs'' RIGHT_BUTTON_LABEL,',
'''https://github.com/ashishtheapexian'' LEFT_BUTTON_LINK,',
'''https://www.ashishsahay.com'' RIGHT_BUTTON_LINK,',
'''true'' LEFT_BUTTON_HOT,',
'''true'' RIGHT_BUTTON_HOT,',
'''left'' LEFT_BTN_ICON_POS,',
'''right'' RIGHT_BTN_ICON_POS,',
'''fa fa-github'' LEFT_BTN_ICON,',
'''fa fa-google'' RIGHT_BTN_ICON,',
'''See My Blogs'' EDIT_LINK_LABEL',
'FROM EMP WHERE ROWNUM<2'))
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_07=>'N'
);
wwv_flow_imp.component_end;
end;
/
