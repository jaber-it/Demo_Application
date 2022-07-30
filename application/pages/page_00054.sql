prompt --application/pages/page_00054
begin
--   Manifest
--     PAGE: 00054
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
 p_id=>54
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Preview PDF/Image into a Region (No Video Created) '
,p_alias=>'PREVIEW-PDF-IMAGE-INTO-A-REGION-NO-VIDEO-CREATED'
,p_step_title=>'Preview PDF/Image into a Region (No Video Created) '
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'//cdnjs.cloudflare.com/ajax/libs/pdf.js/2.0.550/pdf.min.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var pdfdoc = {',
'  canvas: null,',
'  document: null,',
'  nextButton: null,',
'  previousButton: null,',
'  numPages: function() {',
'    if(document) {',
'      return document.numPages;',
'    }',
'    else {',
'      return null;',
'    }',
'  },',
'  currentPage: 1,',
'  getNextPage: function() {',
'    var nextPage;',
'    var currentPage = pdfdoc.currentPage;',
'    var document = pdfdoc.document;',
'    ',
'    if(currentPage) {',
'      nextPage = currentPage < document.numPages ? currentPage + 1 : null;',
'    }',
'    ',
'    return nextPage;',
'  },',
'  getPreviousPage: function() {',
'    var previousPage;',
'    var currentPage = pdfdoc.currentPage;',
'    var document = pdfdoc.document;',
'    ',
'    if(currentPage) {',
'      previousPage = currentPage > 1 ? currentPage - 1 : null;',
'    }',
'    ',
'    return previousPage;',
'  },',
'  renderPage: function(pageNumber) {',
'    if(!pdfdoc.document) {',
'      console.error(''Document not loaded.'');',
'      return;',
'    } ',
'    ',
'    pdfdoc.document.getPage(pageNumber).then(function(page) {',
'      console.log(''Page loaded'');',
'      pdfdoc.currentPage = pageNumber;',
'    ',
'      var scale = 1.5;',
'      var viewport = page.getViewport(scale);',
'',
'      // Prepare canvas using PDF page dimensions',
'      var canvas = pdfdoc.canvas;',
'      var context = canvas.getContext(''2d'');',
'      canvas.height = viewport.height;',
'      canvas.width = viewport.width;',
'',
'      // Render PDF page into canvas context',
'      var renderContext = {',
'        canvasContext: context,',
'        viewport: viewport',
'      };',
'      var renderTask = page.render(renderContext);',
'      renderTask.then(function () {',
'        console.log(''Page rendered'');',
'        $(pdfdoc.nextButton).attr(''disabled'', (pdfdoc.currentPage >= pdfdoc.document.numPages));',
'        $(pdfdoc.previousButton).attr(''disabled'', (pdfdoc.currentPage <= 1));',
'      });',
'    });',
'  }',
'};'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.img {',
'    /* height: 50%; */',
'    width: 100%;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9254477351098143724)
,p_name=>'PDF/Image Report'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>4
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'OID,',
'SLIDER_TEXT ,',
'MIME_TYPE,',
' OID as REMOVE',
'from SLIDESHOW_IMG',
'where OID is not null',
'and MIME_TYPE is not null',
'--and upper(MIME_TYPE) like ''%IMAGE%'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14551694827812634439)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9254477420189143725)
,p_query_column_id=>1
,p_column_alias=>'OID'
,p_column_display_sequence=>10
,p_column_heading=>'Oid'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9254477559619143726)
,p_query_column_id=>2
,p_column_alias=>'SLIDER_TEXT'
,p_column_display_sequence=>20
,p_column_heading=>'Slider Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9254477635230143727)
,p_query_column_id=>3
,p_column_alias=>'MIME_TYPE'
,p_column_display_sequence=>30
,p_column_heading=>'Mime Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9254477777062143728)
,p_query_column_id=>4
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>40
,p_column_heading=>'Remove'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-eye delete-note" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#REMOVE#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9254477805106143729)
,p_plug_name=>'View PDF/Images '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(200):=:P54_PDF_URL;',
'begin',
'htp.p(''<embed src="''||v_url||''" width="700" height="800">'');',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9254478772239143738)
,p_name=>'New'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>4
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    OID, OID as id',
'    , FILE_NAME',
'from SLIDESHOW_IMG',
'--where application_id = :APP_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14551694827812634439)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9254479748717143748)
,p_query_column_id=>1
,p_column_alias=>'OID'
,p_column_display_sequence=>10
,p_column_heading=>'Oid'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9651649947299164601)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>30
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<button type="button" class="btn-preview-pdf button5" data-id="#OID#">Preview</button>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9254479862693143749)
,p_query_column_id=>3
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'File Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9254479039923143741)
,p_plug_name=>'Preview PDF'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_source=>'<canvas id="preview-pane"></canvas> '
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9651650440956164606)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9254479039923143741)
,p_button_name=>'NEXT_PAGE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Next Page'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9651650557811164607)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9254479039923143741)
,p_button_name=>'PREVIOUS_PAGE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Previous Page'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9254477995939143730)
,p_name=>'P54_PDF_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9254477351098143724)
,p_prompt=>'Pdf Url'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9254478220469143733)
,p_name=>'P54_OID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9254477351098143724)
,p_prompt=>'Oid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9254478076222143731)
,p_name=>'Set Item Value And Preview'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-note'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9254478154164143732)
,p_event_id=>wwv_flow_imp.id(9254478076222143731)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P54_OID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9254478399450143734)
,p_event_id=>wwv_flow_imp.id(9254478076222143731)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var str = apex.item( "P54_OID" ).getValue();',
' console.log(str);',
'var str1=''https://apex.oracle.com/pls/apex/my_stock/get/view/''+str;',
'apex.item( "P54_PDF_URL" ).setValue(str1);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9254478410829143735)
,p_event_id=>wwv_flow_imp.id(9254478076222143731)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9254479197006143742)
,p_name=>'onClickPreviewButton'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.btn-preview-pdf'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9254479213919143743)
,p_event_id=>wwv_flow_imp.id(9254479197006143742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#preview-pane'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'var fileId = $(this.triggeringElement).data(''id'');',
'var docUrl = ''https://apex.oracle.com/pls/apex/my_stock/get/view/'' + fileId;',
'',
'console.log(docUrl);',
'',
'pdfjsLib.getDocument(docUrl).then(function(pdf) {',
'  console.log(''pdf loaded'');',
'  pdfdoc.document = pdf;',
'  pdfdoc.currentPage = 1;',
'  pdfdoc.renderPage(pdfdoc.currentPage);',
'}, function(reason) {',
'  console.error(reason);',
'});',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9651650885122164610)
,p_event_id=>wwv_flow_imp.id(9254479197006143742)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9254479039923143741)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9651650070999164602)
,p_name=>'onPageLoad'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9651650143553164603)
,p_event_id=>wwv_flow_imp.id(9651650070999164602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#preview-pane'
,p_attribute_01=>'pdfdoc.canvas = this.affectedElements[0];'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9651650261131164604)
,p_event_id=>wwv_flow_imp.id(9651650070999164602)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9651650440956164606)
,p_attribute_01=>'pdfdoc.nextButton = this.affectedElements[0];'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9651650376951164605)
,p_event_id=>wwv_flow_imp.id(9651650070999164602)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9651650557811164607)
,p_attribute_01=>'pdfdoc.previousButton = this.affectedElements[0];'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9651650991472164611)
,p_name=>'onClickPreviousPage'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9651650557811164607)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9651651037557164612)
,p_event_id=>wwv_flow_imp.id(9651650991472164611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(pdfdoc) {',
'  var previousPage = pdfdoc.getPreviousPage();',
'  console.log(''previous page'', previousPage);',
'  if(previousPage) {',
'    pdfdoc.renderPage(previousPage);',
'  }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9651651159550164613)
,p_name=>'onClickNextPage'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9651650440956164606)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9651651235659164614)
,p_event_id=>wwv_flow_imp.id(9651651159550164613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(pdfdoc) {',
'  var nextPage = pdfdoc.getNextPage();',
'  console.log(''next page'', nextPage);',
'  if(nextPage) {',
'    pdfdoc.renderPage(nextPage);',
'  }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9651653604521164638)
,p_name=>'Clear All Item'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9651653711442164639)
,p_event_id=>wwv_flow_imp.id(9651653604521164638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P54_PDF_URL,P54_OID'
);
wwv_flow_imp.component_end;
end;
/
