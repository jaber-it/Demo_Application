prompt --application/pages/page_00029
begin
--   Manifest
--     PAGE: 00029
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
 p_id=>29
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'PDF Report on'
,p_alias=>'PDF-REPORT-ON'
,p_step_title=>'PDF Report on'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'        function Export() {',
'            html2canvas(document.getElementById("PDF"), {',
'                onrendered: function (canvas) {',
'                    var data = canvas.toDataURL();',
'                    var docDefinition = {',
'                        content: [{',
'                            image: data,',
'                            width: 500',
'                        }]',
'                    };',
'                    pdfMake.createPdf(docDefinition).download("Downlode_Report.pdf");',
'                }',
'            });',
'        }',
'    </script>'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210625110637'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(14714484193799986626)
,p_name=>'Download and Print PDF Classic Report'
,p_region_name=>'PDF'
,p_template=>wwv_flow_imp.id(33247212693934359074)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'PRODUCT'
,p_include_rowid_column=>false
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<input type="button" id="btnExport" value="Export" onclick="Export()" />',
'    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>',
'    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>',
''))
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
 p_id=>wwv_flow_imp.id(14714486256282986647)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>90
,p_column_heading=>'Product Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14714486326694986648)
,p_query_column_id=>2
,p_column_alias=>'PRODUCT_CODE'
,p_column_display_sequence=>100
,p_column_heading=>'Product Code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14714486497747986649)
,p_query_column_id=>3
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>110
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14714486599991986650)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT_DESCRIPTION'
,p_column_display_sequence=>120
,p_column_heading=>'Product Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp.component_end;
end;
/
