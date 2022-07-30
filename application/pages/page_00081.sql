prompt --application/pages/page_00081
begin
--   Manifest
--     PAGE: 00081
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
 p_id=>81
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Highlight Text Based On Voice Input'
,p_alias=>'HIGHLIGHT-TEXT-BASED-ON-VOICE-INPUT'
,p_step_title=>'Highlight Text Based On Voice Input'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script src="https:static.oracle.com/cdn/apex/21.2.0/libraries/apex/minified/interactiveGrid.min.js?v=21.2.0"></script>',
'<script src="workspace_akil/r/91177/files/plugin/14445594011374436268/v4/speechToText.js"></script>',
'',
'<script type="text/javascript">',
' var speech = {',
'           ',
'         searchText: function doSearch(text,color) {',
'             if (window.find && window.getSelection) {',
'                 document.designMode = "on";',
'                 var sel = window.getSelection();',
'                 sel.collapse(document.body, 0);',
'                ',
'                 while (window.find(text)) {',
'                     document.execCommand("HiliteColor", false, color);',
'                     sel.collapseToEnd();',
'                 }',
'                 document.designMode = "off";',
'             }',
'         },',
'',
'         findText: function(text) {',
'             speech.searchText($v("P81_SEARCHED_TEXT"),"transparent");',
'             speech.searchText(text,"yellow");',
'             $s("P81_SEARCHED_TEXT",text);',
'         }, ',
'',
'         recognize: function(){',
'             var recordButton = $(''#P81_RECORD_BTN'');',
'             var language = $v(''P81_LANGUAGE'');',
'',
'             speech recognition object',
'             var SpeechRecognition = webkitSpeechRecognition;',
'             var recognition = new SpeechRecognition();',
'',
'             recognition.lang = language;navigator.languages;',
'             recognition.interimResults = false;',
'             recognition.continuous = false;',
'',
'              This runs when the speech recognition service starts',
'             recognition.onstart = function() {',
'                 console.log("We are listening. Try speaking into the microphone.");',
'                 recordButton.prop(''disabled'', true);',
'                 recordButton.removeClass("inactive").addClass("active");',
'             };',
'',
'              This runs when the speech recognition service has error',
'             recognition.onerror = function(event) {',
'             console.log(''Error occurred in recognition: '' + event.error);',
'             };',
'                        ',
'              This runs when the speech recognition service returns result',
'             recognition.onresult = function(event) {',
'                 var result = event.results[0][0].transcript;',
'                 speech.findText(result);',
'             };     ',
'            ',
'              This runs when the speech recognition service ends',
'             recognition.onspeechend = function() {',
'                 recognition.stop();',
'                 recordButton.prop(''disabled'', false);',
'                 recordButton.removeClass("active").addClass("inactive");',
'             };           ',
'',
'              start recognition',
'             recognition.start();',
'         }',
' };',
'</script>  ',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27883505729521340916)
,p_plug_name=>'Select Language'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26499718359528402749)
,p_plug_name=>'Voice Input'
,p_parent_plug_id=>wwv_flow_imp.id(27883505729521340916)
,p_icon_css_classes=>'fa-assistive-listening-systems'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--customIcons:t-Alert--success:t-Form--large:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(14551630061846634413)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>7
,p_plug_display_column=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27883504552415340904)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26499718359528402749)
,p_button_name=>'Rec'
,p_button_static_id=>'rec'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14551729993831634454)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rec'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-microphone'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26499718417779402750)
,p_name=>'P81_LANGUAGE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27883505729521340916)
,p_prompt=>'Language'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  language || '' ('' || code || '')'' as d,',
'  code as r',
'from ',
'  ALL_languages',
'order by ',
'  1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>7
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_icon_css_classes=>'fa-language'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27883504695563340905)
,p_name=>'P81_SEARCHED_TEXT_DISPLAY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26499718359528402749)
,p_prompt=>'Searched Text Display'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_css_classes=>'font-size: 1.5rem; '
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27883504244050340901)
,p_name=>'Voice Input'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27883504552415340904)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27883504395686340902)
,p_event_id=>wwv_flow_imp.id(27883504244050340901)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_HIGHLIGHT.TEXT.BASED.ON.VOICE.INPUT'
,p_attribute_01=>'P81_LANGUAGE'
,p_attribute_02=>'#ffff00'
,p_attribute_03=>'P81_SEARCHED_TEXT_DISPLAY'
,p_attribute_04=>'rec'
);
wwv_flow_imp.component_end;
end;
/
