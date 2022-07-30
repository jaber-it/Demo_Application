prompt --application/pages/page_00033
begin
--   Manifest
--     PAGE: 00033
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
 p_id=>33
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Rich Text Counter'
,p_alias=>'RICH-TEXT-COUNTER'
,p_step_title=>'Rich Text Counter'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var lEditor1=CKEDITOR.instances.P27_RICH_TEXT_EDITOR;  ',
'lEditor1.on(''contentDom'', function() {    ',
' lEditor1.document.on(''keyup'', function(event) {  ',
'  /* get editor length */  ',
'  var lLen   = lEditor1.getData().replace(/<[^>]*>/g, '''').replace(/\s+/g, '' '').replace(/&\w+;/g ,''X'').replace(/^\s*/g, '''').replace(/\s*$/g, '''').length;   ',
'  /* get keycode */  ',
'  var lKey=event.data.getKey();  ',
'  if(lKey>=48 || lKey == 8 || lKey == 32 || lKey == 46){  ',
'   $x(''P27_COUNT'').value = lLen;   ',
'  }  ',
' });    ',
'});'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210522144609'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7144307977594501120)
,p_plug_name=>'Count the Character of the Rich Text item in Oracle Apex'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7144308096363501121)
,p_name=>'P33_RICH_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7144307977594501120)
,p_prompt=>'Rich Text'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options){',
'  options.executeOnInitialization = function(editor)',
'  {',
'    const plugin = editor.plugins.get(''WordCount'');',
'    editor.sourceElement.parentElement.parentElement.appendChild(plugin.wordCountContainer);',
'  };',
'return options;',
'}'))
,p_attribute_07=>'180'
,p_attribute_09=>'MARKDOWN'
);
wwv_flow_imp.component_end;
end;
/
