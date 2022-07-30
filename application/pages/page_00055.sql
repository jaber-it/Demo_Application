prompt --application/pages/page_00055
begin
--   Manifest
--     PAGE: 00055
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
 p_id=>55
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Preview PDF into a Region'
,p_alias=>'PREVIEW-PDF-INTO-A-REGION'
,p_step_title=>'Preview PDF into a Region'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//cdnjs.cloudflare.com/ajax/libs/pdf.js/2.0.550/pdf.min.js',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'		                    var pdfdoc = {',
'                      canvas: null,',
'                      document: null,',
'                      nextButton: null,',
'                      previousButton: null,',
'                      numPages: function() {',
'                        if(document) {',
'                          return document.numPages;}',
'                        else { return null;} },',
'                      currentPage: 1,',
'                      getNextPage: function() {',
'                        var nextPage;',
'                        var currentPage = pdfdoc.currentPage;',
'                        var document = pdfdoc.document;',
'                        ',
'                        if(currentPage) {',
'                          nextPage = currentPage < document.numPages ? currentPage + 1 : null;}',
'                        return nextPage;},',
'                      getPreviousPage: function() {',
'                        var previousPage;',
'                        var currentPage = pdfdoc.currentPage;',
'                        var document = pdfdoc.document;',
'                        ',
'                        if(currentPage) {previousPage = currentPage > 1 ? currentPage - 1 : null; }',
'                        return previousPage;},',
'                      renderPage: function(pageNumber) {',
'                        if(!pdfdoc.document) {',
'                          console.error(''Document not loaded.'');',
'                          return;} ',
'                        ',
'                        pdfdoc.document.getPage(pageNumber).then(function(page) {',
'                          console.log(''Page loaded'');',
'                          pdfdoc.currentPage = pageNumber;',
'                        ',
'                          var scale = 1.5;',
'                          var viewport = page.getViewport(scale);',
'                    ',
'                          // Prepare canvas using PDF page dimensions',
'                          var canvas = pdfdoc.canvas;',
'                          var context = canvas.getContext(''2d'');',
'                          canvas.height = viewport.height;',
'                          canvas.width = viewport.width;',
'                    ',
'                          // Render PDF page into canvas context',
'                          var renderContext = {',
'                            canvasContext: context,',
'                            viewport: viewport',
'                          };',
'                          var renderTask = page.render(renderContext);',
'                          renderTask.then(function () {',
'                            console.log(''Page rendered'');',
'                            $(pdfdoc.nextButton).attr(''disabled'', (pdfdoc.currentPage >= pdfdoc.document.numPages));',
'                            $(pdfdoc.previousButton).attr(''disabled'', (pdfdoc.currentPage <= 1));',
'                          });',
'                        });',
'                      }',
'                    };'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#region-pdf{',
'    direction: ltr;',
'}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9651651348773164615)
,p_name=>'File List'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders:t-Report--hideNoPagination'
,p_grid_column_span=>3
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT OID,',
'       FILE_NAME,',
'       MIME_TYPE',
'  FROM SLIDESHOW_IMG',
' WHERE     OID IS NOT NULL',
'       AND MIME_TYPE IS NOT NULL',
'       AND UPPER (MIME_TYPE) LIKE ''%PDF%'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14551694827812634439)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9651651438018164616)
,p_query_column_id=>1
,p_column_alias=>'OID'
,p_column_display_sequence=>50
,p_column_heading=>'View'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'View '
,p_column_link_attr=>'class="btn-preview-pdf button6" data-id="#OID#"'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9651652899155164630)
,p_query_column_id=>2
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>40
,p_column_heading=>'File Name'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9651651642987164618)
,p_query_column_id=>3
,p_column_alias=>'MIME_TYPE'
,p_column_display_sequence=>30
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9651651871244164620)
,p_plug_name=>'Preview PDF'
,p_region_name=>'region-pdf'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_source=>'<canvas id="preview-pane"></canvas>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9651652148615164623)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9651651871244164620)
,p_button_name=>'NEXT_PAGE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Next Page'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'button3'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9651652305426164625)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9651651871244164620)
,p_button_name=>'PREVIOUS_PAGE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Previous Page'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'button3'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9651651945128164621)
,p_name=>'onClickPreviewButton'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.btn-preview-pdf'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9651652060386164622)
,p_event_id=>wwv_flow_imp.id(9651651945128164621)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#preview-pane'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var fileId = $(this.triggeringElement).data(''id'');',
'                    var docUrl = ''https://apex.oracle.com/pls/apex/my_stock/get/view/'' + fileId;',
'                    ',
'                    console.log(docUrl);',
'                    pdfjsLib.getDocument(docUrl).then(function(pdf) {',
'                      console.log(''pdf loaded'');',
'                      pdfdoc.document = pdf;',
'                      pdfdoc.currentPage = 1;',
'                      pdfdoc.renderPage(pdfdoc.currentPage);',
'                    }, function(reason) {',
'                      console.error(reason);',
'                    });'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9651653314436164635)
,p_name=>'Refress'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.btn-preview-pdf'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9651653490861164636)
,p_event_id=>wwv_flow_imp.id(9651653314436164635)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9651651871244164620)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9651652434931164626)
,p_name=>'onClickNextPage'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9651652148615164623)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9651652563249164627)
,p_event_id=>wwv_flow_imp.id(9651652434931164626)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'		   if(pdfdoc) {',
'                      var nextPage = pdfdoc.getNextPage();',
'                      console.log(''next page'', nextPage);',
'                      if(nextPage) {',
'                        pdfdoc.renderPage(nextPage);',
'                      }',
'                    }',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9651652678474164628)
,p_name=>'onClickPreviousPage'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9651652305426164625)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9651652769553164629)
,p_event_id=>wwv_flow_imp.id(9651652678474164628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                if(pdfdoc) {',
'                  var previousPage = pdfdoc.getPreviousPage();',
'                  console.log(''previous page'', previousPage);',
'                  if(previousPage) {',
'                    pdfdoc.renderPage(previousPage);',
'                  }',
'                }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9651652922251164631)
,p_name=>'onPageLoad'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9651653094018164632)
,p_event_id=>wwv_flow_imp.id(9651652922251164631)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#preview-pane'
,p_attribute_01=>'pdfdoc.canvas = this.affectedElements[0];'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9651653198842164633)
,p_event_id=>wwv_flow_imp.id(9651652922251164631)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9651652148615164623)
,p_attribute_01=>'pdfdoc.nextButton = this.affectedElements[0];'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9651653287685164634)
,p_event_id=>wwv_flow_imp.id(9651652922251164631)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9651652305426164625)
,p_attribute_01=>'pdfdoc.previousButton = this.affectedElements[0];'
);
wwv_flow_imp.component_end;
end;
/
