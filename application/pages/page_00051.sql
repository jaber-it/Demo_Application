prompt --application/pages/page_00051
begin
--   Manifest
--     PAGE: 00051
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
 p_id=>51
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'How to Set and Get Item Value Using JavaScript (Not on YouTube)'
,p_alias=>'HOW-TO-SET-AND-GET-ITEM-VALUE-USING-JAVASCRIPT-NOT-ON-YOUTUBE'
,p_step_title=>'How to Set and Get Item Value Using JavaScript (Not on YouTube)'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item( "P51_NAME" ).getValue();',
'$( "#P51_NAME" ).val();',
'$v( "P51_NAME" );',
'$x("P51_NAME").value;',
'',
'',
'apex.item( "P51_NAME" ).setValue(''Vikas'');',
'$x("P51_NAME").value=''Vikas'';',
'$("#P51_NAME" ).val(''Vikas'');',
'$s(''P51_NAME'',''Vikas'');',
'',
'',
'$("#P51_NAME_LABEL").text(); //to get lable text',
'$("#P51_NAME_LABEL").text(''Vikas Pandey''); //to Set lable text',
'',
'',
'	apex.debug.info(''text'');'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14950742684380960977)
,p_plug_name=>'How to Set and Get Item Value Using JavaScript (Not on YouTube)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'<div style="margin-left: 88px;">',
'<p>',
'    ',
'1. Get Item Value In Oracle APEX Using Javascript API.<br>',
'apex.item( "P51_NAME" ).getValue();<br>',
'$( "#P51_NAME" ).val();<br>',
'',
'$v( "P51_NAME" );<br>',
'',
'$x("P51_NAME").value;<br><br><br>',
'2. Set Item Value In Oracle APEX Using Javascript API.<br>',
'apex.item( "P51_NAME" ).setValue(''Vikas'');<br>',
'',
'$x("P51_NAME").value=''Vikas'';<br>',
'',
'$("#P51_NAME" ).val(''Vikas'');<br>',
'',
'$s(''P51_NAME'',''Vikas'');<br>',
'3. In case You want to Get or Set label text.<br><br><br>',
'$("#P51_NAME_LABEL").text(); //to get lable text<br>',
'',
'$("#P51_NAME_LABEL").text(''Vikas Pandey''); //to Set lable text<br>',
'',
unistr('4. apex.debug.info(\2018text\2019);<br><br><br>'),
'Enable the debug mode and check the console log.<br>',
'',
'	apex.debug.info(''text'');<br>',
'',
'<br><br>   ',
'',
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22418324617036632641)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7463952596290592312)
,p_name=>'P51_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14950742684380960977)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp.component_end;
end;
/
