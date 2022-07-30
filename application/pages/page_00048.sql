prompt --application/pages/page_00048
begin
--   Manifest
--     PAGE: 00048
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
 p_id=>48
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Change The Background Color of a Button with JavaScript'
,p_alias=>'CHANGE-THE-BACKGROUND-COLOR-OF-A-BUTTON-WITH-JAVASCRIPT'
,p_step_title=>'Change The Background Color of a Button with JavaScript'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7463951939891592306)
,p_plug_name=>'Change The Background Color'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html>  ',
'  ',
'     <head>  ',
'          <title> New Document </title>  ',
'          <meta name="Generator" content="EditPlus">  ',
'          <meta name="Author" content="">  ',
'          <meta name="Keywords" content="">  ',
'          <meta name="Description" content="">  ',
'          <script language="javascript">  ',
'               function ChangeColor()  ',
'               {  ',
'                    document.getElementById(''btn1'').style.backgroundColor=''Red'';  ',
'                    setTimeout("ChangeColor2()",2000);  ',
'               }  ',
'               function ChangeColor2()  ',
'               {  ',
'                    document.getElementById(''btn1'').style.backgroundColor=''Pink'';  ',
'                    setTimeout("ChangeColor3()",2000);  ',
'               }  ',
'               function ChangeColor3()  ',
'               {  ',
'                    document.getElementById(''btn1'').style.backgroundColor=''Green'';  ',
'                    setTimeout("ChangeColor4()",2000);  ',
'               }  ',
'               function ChangeColor4()  ',
'               {  ',
'                    document.getElementById(''btn1'').style.backgroundColor=''Red'';  ',
'               }  ',
'          </script>  ',
'     </head>  ',
'  ',
'     <body>  ',
'          <input type="button" onmouseover="ChangeColor()" value="Button" id="btn1" />  ',
'     </body>  ',
'  ',
'</html>  ',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14931533872547263970)
,p_plug_name=>'Documentation'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
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
wwv_flow_imp.component_end;
end;
/
