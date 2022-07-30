prompt --application/pages/page_00041
begin
--   Manifest
--     PAGE: 00041
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
 p_id=>41
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Preview PDF into a Region '
,p_alias=>'PREVIEW-PDF-INTO-A-REGION'
,p_step_title=>'Preview PDF into a Region '
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'//cdnjs.cloudflare.com/ajax/libs/pdf.js/2.0.550/pdf.min.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var pdfdoc = {',
'                      canvas: null,',
'                      document: null,',
'                      nextButton: null,',
'                      previousButton: null,',
'                      numPages: function() {',
'                        if(document) {',
'                          return document.numPages;',
'                        }',
'                        else {',
'                          return null;',
'                        }',
'                      },',
'                      currentPage: 1,',
'                      getNextPage: function() {',
'                        var nextPage;',
'                        var currentPage = pdfdoc.currentPage;',
'                        var document = pdfdoc.document;',
'                        ',
'                        if(currentPage) {',
'                          nextPage = currentPage < document.numPages ? currentPage + 1 : null;',
'                        }',
'                        ',
'                        return nextPage;',
'                      },',
'                      getPreviousPage: function() {',
'                        var previousPage;',
'                        var currentPage = pdfdoc.currentPage;',
'                        var document = pdfdoc.document;',
'                        ',
'                        if(currentPage) {',
'                          previousPage = currentPage > 1 ? currentPage - 1 : null;',
'                        }',
'                        ',
'                        return previousPage;',
'                      },',
'                      renderPage: function(pageNumber) {',
'                        if(!pdfdoc.document) {',
'                          console.error(''Document not loaded.'');',
'                          return;',
'                        } ',
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
'#preview-pane {',
'    margin-top: -210px;',
'    height: 100%;',
'    width: 100%;',
'    display: inline-block;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20211107172525'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9822537078374747304)
,p_name=>'Pdf File Report'
,p_template=>wwv_flow_imp.id(33247212693934359074)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent5:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>3
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT OID,',
'                       SLIDER_TEXT,',
'                       MIME_TYPE',
'                  FROM SLIDESHOW_IMG',
'                 WHERE     OID IS NOT NULL',
'                       AND MIME_TYPE IS NOT NULL'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(33247241596394359095)
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
 p_id=>wwv_flow_imp.id(9822537159313747305)
,p_query_column_id=>1
,p_column_alias=>'OID'
,p_column_display_sequence=>30
,p_column_heading=>'View'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'View '
,p_column_link_attr=>'class="btn-preview-pdf button6" data-id="#OID#"'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9822537250588747306)
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
 p_id=>wwv_flow_imp.id(9822537357264747307)
,p_query_column_id=>3
,p_column_alias=>'MIME_TYPE'
,p_column_display_sequence=>40
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9822537489607747308)
,p_plug_name=>'Preview PDF'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent5:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_source=>'<canvas id="preview-pane"></canvas> '
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9822537566966747309)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9822537489607747308)
,p_button_name=>'NEXT_PAGE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Next Page'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9822537662307747310)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9822537489607747308)
,p_button_name=>'PREVIOUS_PAGE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Previous Page'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9822537772053747311)
,p_name=>'onClickPreviewButton'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.btn-preview-pdf'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9822537886247747312)
,p_event_id=>wwv_flow_imp.id(9822537772053747311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#preview-pane'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var fileId = $(this.triggeringElement).data(''id'');',
'                    var docUrl = ''https://apex.oracle.com/pls/apex/mystock/get/view/'' + fileId;',
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
 p_id=>wwv_flow_imp.id(9822537915706747313)
,p_name=>'onClickNextPage '
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9822537566966747309)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9822538051059747314)
,p_event_id=>wwv_flow_imp.id(9822537915706747313)
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
'                    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9822538118456747315)
,p_name=>'onClickPreviousPage '
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9822537662307747310)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9822538215811747316)
,p_event_id=>wwv_flow_imp.id(9822538118456747315)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(pdfdoc) {',
'                  var previousPage = pdfdoc.getPreviousPage();',
'                  console.log(''previous page'', previousPage);',
'                  if(previousPage) {',
'                    pdfdoc.renderPage(previousPage);',
'                  }',
'                }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9822538353079747317)
,p_name=>'onPageLoad '
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9822538464132747318)
,p_event_id=>wwv_flow_imp.id(9822538353079747317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>' #preview-pane'
,p_attribute_01=>'pdfdoc.canvas = this.affectedElements[0];'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9822538507466747319)
,p_event_id=>wwv_flow_imp.id(9822538353079747317)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9822537566966747309)
,p_attribute_01=>'pdfdoc.nextButton = this.affectedElements[0];'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9822538693882747320)
,p_event_id=>wwv_flow_imp.id(9822538353079747317)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9822537662307747310)
,p_attribute_01=>'pdfdoc.previousButton = this.affectedElements[0];'
);
wwv_flow_imp.component_end;
end;
/
