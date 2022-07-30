prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'InteractiveGrid Report Sales Page'
,p_alias=>'INTERACTIVEGRID-REPORT-SALES-PAGE'
,p_step_title=>'InteractiveGrid Report Sales Page'
,p_html_page_onload=>'onchange="PageStart();fnc_hide();"'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'',
'function PageStart(){',
'     if ($x(''P14_ITEM_SIZE'').value == "") {',
'          $x_disableItem(''P14_QTY'',true);',
'          $(''label[for=P14_QTY_TOTAL],#P14_QTY_TOTAL'').hide();',
'          }',
'     else {',
'          $x_disableItem(''P14_QTY'',false);',
'          $(''label[for=P14_QTY_TOTAL],#P14_QTY_TOTAL'').hide();',
'          }',
' }',
'',
'',
'',
'',
'function fnc_hide(){',
'    if ($x(''P14_DUE'').value == 0) {',
'        $(''label[for=P14_DUE],#P14_DUE'').hide();',
'        }',
'     else {',
'         $(''label[for=P14_DUE],#P14_DUE'').show();',
'         }',
' }',
'',
'',
'</script>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'function addToOrder(pProductId) {',
'    // "emp" is IG region static ID',
'    var $widget = apex.region(''emp'').widget();',
'    var $grid = $widget.interactiveGrid(''getViews'', ''grid'');',
'    var $model = $grid.model;',
'',
'    //insert new record on a model',
'    var newRecordId = $model.insertNewRecord();',
'    ',
'    //get the new record',
'    var $newRecord = $model.getRecord(newRecordId);',
'',
'    // PRODUCT_ID and ORDER_QUANTITY are column names in IG SQL query',
'    //update record values',
'    $model.setValue($newRecord, ''PRODUCT_ID'', pProductId);',
'    $model.setValue($newRecord, ''INVNO'', ($v("P14_INVNO")));',
'',
'    //set default quantity to 1',
'',
'    $model.setValue($newRecord, ''PRODUCT_ID'', ($v("P14_ITEM_NO")));',
'    $model.setValue($newRecord, ''ITEM_NAME'', ($v("P14_ITEM_NO")));',
'    $model.setValue($newRecord, ''PROOUCT_SIZE'', ($v("P14_ITEM_SIZE")));',
'    $model.setValue($newRecord, ''RATE'', ($v("P14_RPU")));',
'    $model.setValue($newRecord, ''QTY'', ($v("P14_QTY")));',
'    $model.setValue($newRecord, ''DISCOUNT'', ''0'');',
'    $model.setValue($newRecord, ''TOTAL'', ($v("P14_QTY_TOTAL")));    ',
'',
'  }',
'  ',
'function qtyrputotal() {',
'    if (apex.item("P14_QTY").isEmpty()) {',
'    ($x(''P14_QTY_TOTAL'') == ''isEmpty'');',
'    } ',
'    else {',
'        $s("P14_QTY_TOTAL", ($v("P14_QTY")*($v("P14_RPU"))));',
'   }',
'',
'}',
'',
'',
'',
'',
'function fnc_calcTotalSal() {',
'    var Total, Cash_Paid, Due, Changes;',
'      ',
'      Total = parseFloat($v("P14_TOTAL"), 10) ? parseFloat($v("P14_TOTAL"), 10) : 0;',
'      Cash_Paid = parseFloat($v("P14_PAYMENT"), 10) ? parseFloat($v("P14_PAYMENT"), 10) : 0;',
'          if (Cash_Paid > Total)',
'      {',
'          Changes = Cash_Paid - Total;',
'          Due = 0;                     ',
'    }',
'      else {',
'          Due = Total - Cash_Paid;',
'          Changes = 0;',
'         ',
'      }',
'      $s("P14_CHANGE_AMOUNT", parseFloat(Changes, 10));',
'      $s("P14_DUE", parseFloat(Due, 10));',
'     ',
'}',
'',
'',
'',
'(function($) {',
'    function update(model) {',
'        var TOTALKey = model.getFieldKey("TOTAL"), ',
'            total = 0;',
'',
'        console.log(">> starting sum TOTAL column")',
'        model.forEach(function(record, index, id) {',
'            var TOTAL = parseFloat(record[TOTALKey]),',
'                meta = model.getRecordMetadata(id);',
'',
'            if (!isNaN(TOTAL) && !meta.deleted && !meta.agg) {',
'                total += TOTAL;',
'            }',
'        });',
'        console.log(">> setting sum TOTAL column to " + total)',
'        $s("P14_TOTAL", total);',
'    }',
'',
'    $(function() {',
'        $("#emp").on("interactivegridviewmodelcreate", function(event, ui) {',
'            var sid,',
'                model = ui.model;',
'            if ( ui.viewId === "grid" ) {',
'                sid = model.subscribe( {',
'                    onChange: function(type, change) {',
'                        console.log(">> model changed ", type, change);',
'                        if ( type === "set" ) {',
'                            // don''t bother to recalculate if other columns change',
'                            if (change.field === "TOTAL" ) {',
'                                update( model );',
'                            }',
'                        } else if (type !== "move" && type !== "metaChange") {',
'                            update( model );',
'                        }',
'                    },',
'                    progressView: $("#P14_TOTAL") ',
'                } );',
'                update( model ); ',
'                model.fetchAll(function() {});',
'            }',
'        });',
'',
'    });',
'',
'})(apex.jQuery);',
'',
'',
'(function($) {',
'    function discountupdate(model) {',
'        var DISCOUNTKey = model.getFieldKey("DISCOUNT"), ',
'            total = 0;',
'',
'        console.log(">> starting sum DISCOUNT column")',
'        model.forEach(function(record, index, id) {',
'            var DISCOUNT = parseFloat(record[DISCOUNTKey]),',
'                meta = model.getRecordMetadata(id);',
'',
'            if (!isNaN(DISCOUNT) && !meta.deleted && !meta.agg) {',
'                total += DISCOUNT;',
'            }',
'        });',
'        console.log(">> setting sum DISCOUNT column to " + total)',
'        $s("P14_DISCOUNT", total);',
'    }',
'',
'    $(function() {        ',
'        $("#emp").on("interactivegridviewmodelcreate", function(event, ui) {',
'            var sid,',
'                model = ui.model;',
'            if ( ui.viewId === "grid" ) {',
'                sid = model.subscribe( {',
'                    onChange: function(type, change) {',
'                        console.log(">> model changed ", type, change);',
'                        if ( type === "set" ) {',
'                            // don''t bother to recalculate if other columns change',
'                            if (change.field === "DISCOUNT" ) {',
'                                discountupdate( model );',
'                            }',
'                        } else if (type !== "move" && type !== "metaChange") {',
'                            discountupdate( model );',
'                        }',
'                    },',
'                    progressView: $("#P14_DISCOUNT")',
'                } );',
'                discountupdate( model ); ',
'                model.fetchAll(function() {});',
'            }',
'        });',
'',
'    });',
'',
'})(apex.jQuery);',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".allow-decimal").keypress(function (e) {',
'    if(e.which == 46){',
'        if($(this).val().indexOf(''.'') != null) {',
'            return false;',
'        }',
'    }',
'',
'    if (e.which != 8 && e.which != null && e.which != 46 && (e.which < 48 || e.which > 57)) {',
'        return false;',
'    }',
'});',
'',
''))
,p_css_file_urls=>'<link rel="stylesheet" href="#WORKSPACE_IMAGES#theme_4_0.css" type="text/css">'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#emp .a-GV-table tr td:nth-child(7).a-GV-cell,',
'#emp .a-GV-table tr td:nth-child(8).a-GV-cell,',
'#emp .a-GV-table tr td:nth-child(9).a-GV-cell {',
'    background: #ffffff !important;',
'    white-space: nowrap;',
'    color: red !important;',
'    text-align: inherit;',
'    font-size: 20px;',
'    border-radius: 15px;',
'    border-style:inset;',
'    border-collapse:initial;',
'    ',
'}',
'',
'#emp .a-GV-table th:nth-child(1),',
'#emp .a-GV-table th:nth-child(2),',
'#emp .a-GV-table th:nth-child(3),',
'#emp .a-GV-table th:nth-child(4),',
'#emp .a-GV-table th:nth-child(5),',
'#emp .a-GV-table th:nth-child(6),',
'#emp .a-GV-table th:nth-child(7),',
'#emp .a-GV-table th:nth-child(8),',
'#emp .a-GV-table th:nth-child(9){',
'    background: #fff !important;',
'    color: red !important;',
'     font-size: 15px;',
'}',
'',
'',
'',
'#claqty {',
'    background: #ffffff !important;',
'    white-space: nowrap;',
'    color: red !important;',
'    text-align: inherit;',
'    font-size: 20px;',
'    border-radius: 15px;',
'    border-style:inset;',
'    border-collapse:initial;',
'}',
'',
'#cladis {',
'    background: #ffffff !important;',
'    white-space: nowrap;',
'    color: red !important;',
'    text-align: inherit;',
'    font-size: 20px;',
'    border-radius: 15px;',
'    border-style:inset;',
'    border-collapse:initial;',
'}',
'',
'',
'',
'#emp .a-GV-table tr .a-GV-cell {',
'    font-size: 16px;',
'}',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210110131027'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46045679259743446412)
,p_plug_name=>'<span style="margin-left:400Px;font-size:23px;">Sales Detalis </span>'
,p_region_name=>'Sales'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent9:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--large:t-Form--stretchInputs:margin-bottom-sm'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>9
,p_query_type=>'TABLE'
,p_query_table=>'SALES_MST'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46047086279328493681)
,p_plug_name=>'Payment Mode'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--noPadding:t-Form--large:t-Form--stretchInputs:t-Form--labelsAbove:margin-top-none'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_source=>'<link rel="stylesheet" href="##WORKSPACE_IMAGES#theme_4_0.css" type="text/css">'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46047086575569493684)
,p_plug_name=>'Produact Report'
,p_region_name=>'emp'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247210767798359072)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OID,',
'       INVNO,',
'       PRODUCT_ID,',
'       ITEM_NAME,',
'       PROOUCT_SIZE,',
'       RATE,',
'       QTY,',
'       DISCOUNT,',
'       TOTAL',
'',
'  from SALES_DTLS',
'  where INVNO = :P14_INVNO',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P14_INVNO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Produact Report'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47358989364756251026)
,p_name=>'OID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47385569295099326577)
,p_name=>'INVNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVNO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Invno'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47385569446408326578)
,p_name=>'PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct PRODUCT_CODE d, PRODUCT_ID r',
' from PRODUCT',
' ',
'/* ',
' a, PURCHASE_DETALIS b',
'where a.PRODUCT_ID=b.PRODUCT_ID',
'order by a.PRODUCT_ID',
'*/'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47385569488262326579)
,p_name=>'ITEM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct PRODUCT_NAME d, PRODUCT_ID r',
' from PRODUCT'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47385569572809326580)
,p_name=>'PROOUCT_SIZE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROOUCT_SIZE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Size'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SIZE_NAME, OID',
' from ITEM_SIZE'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47385569687634326581)
,p_name=>'RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_03=>'center'
,p_item_attributes=>'readonly=true'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47385569764252326582)
,p_name=>'QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_03=>'center'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'claqty'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47385569909135326583)
,p_name=>'DISCOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Discount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_03=>'center'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'cladis'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47385570026656326584)
,p_name=>'TOTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attribute_03=>'center'
,p_item_attributes=>'readonly=true'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47385570139539326585)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47385570157452326586)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(47358989278852251025)
,p_internal_uid=>47358989278852251025
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.toolbarData = [',
'',
' ];',
'    return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(47385575178912326856)
,p_interactive_grid_id=>wwv_flow_imp.id(47358989278852251025)
,p_static_id=>'224635175'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(47385575424216326856)
,p_report_id=>wwv_flow_imp.id(47385575178912326856)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47385575940981326858)
,p_view_id=>wwv_flow_imp.id(47385575424216326856)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(47358989364756251026)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47385576821577326861)
,p_view_id=>wwv_flow_imp.id(47385575424216326856)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(47385569295099326577)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>58
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47385577654581326864)
,p_view_id=>wwv_flow_imp.id(47385575424216326856)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(47385569446408326578)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82.6
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47385578629523326866)
,p_view_id=>wwv_flow_imp.id(47385575424216326856)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(47385569488262326579)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>292.6
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47385579545358326868)
,p_view_id=>wwv_flow_imp.id(47385575424216326856)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(47385569572809326580)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>71.4
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47385580394769326870)
,p_view_id=>wwv_flow_imp.id(47385575424216326856)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(47385569687634326581)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47385581304667326873)
,p_view_id=>wwv_flow_imp.id(47385575424216326856)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(47385569764252326582)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47385582244909326875)
,p_view_id=>wwv_flow_imp.id(47385575424216326856)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(47385569909135326583)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47385583065848326877)
,p_view_id=>wwv_flow_imp.id(47385575424216326856)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(47385570026656326584)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47385605832863329454)
,p_view_id=>wwv_flow_imp.id(47385575424216326856)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(47385570139539326585)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22640365508595446805)
,p_plug_name=>'Button Region'
,p_parent_plug_id=>wwv_flow_imp.id(46047086575569493684)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--accent1:t-Region--textContent:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--labelsAbove:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46047086438543493682)
,p_plug_name=>'All Button'
,p_parent_plug_id=>wwv_flow_imp.id(46047086575569493684)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--large:t-Form--stretchInputs:margin-top-sm'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65950386322596434757)
,p_plug_name=>'<span style="margin-left:70Px;font-size:23px;">Item Information</span>'
,p_region_template_options=>'#DEFAULT#:t-Region--accent9:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--noPadding:t-Form--large:t-Form--stretchInputs:t-Form--labelsAbove:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24922071333936034008)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_button_name=>'Add_New_Customer'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(33247274058984359120)
,p_button_image_alt=>'Add Customer'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:14::'
,p_icon_css_classes=>'fa-plus-circle-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24922068887420034002)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(22640365508595446805)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P14_OID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24922069270583034003)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(22640365508595446805)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24922068494292034002)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(22640365508595446805)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P14_OID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24922068049648034002)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(22640365508595446805)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Delete'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P14_OID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24922067627920034001)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(22640365508595446805)
,p_button_name=>'Print'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Print'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:window.open(''f?p=&APP_ID.:96:&SESSION.::NO:96:P96_INVOICE_NO:''+$v("P14_INVNO")+'''');'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(24923000845969034038)
,p_branch_name=>'Go To Page 12'
,p_branch_action=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:14::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24922058776984033982)
,p_name=>'P14_PROOUCT_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(65950386322596434757)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct a.PRODUCT_CODE d, a.PRODUCT_ID r',
' from PRODUCT a',
'order by a.PRODUCT_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Proouct Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style=''color: MIDNIGHTBLUE;text-align: center;font-size: 18px;text-transform:uppercase;'''
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24922059116505033983)
,p_name=>'P14_BARCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(65950386322596434757)
,p_prompt=>'Barcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style=''color: MIDNIGHTBLUE;text-align: center;font-size: 18px;'''
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24922059564178033983)
,p_name=>'P14_ITEM_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(65950386322596434757)
,p_prompt=>'Proouct '
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct a.PRODUCT_CODE||'', ''||a.PRODUCT_NAME d, a.PRODUCT_ID r',
' from PRODUCT a, PURCHASE_DETALIS b',
'where a.PRODUCT_ID=b.PRODUCT_ID',
'order by a.PRODUCT_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select List-'
,p_cHeight=>1
,p_tag_attributes=>'style=''color: MIDNIGHTBLUE;text-align: center;font-size: 16px;'''
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24922059937048033984)
,p_name=>'P14_RPU'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(65950386322596434757)
,p_prompt=>'Price'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true style=''color: red;text-align: center;font-size: 25px;'''
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24922060361799033984)
,p_name=>'P14_ITEM_SIZE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(65950386322596434757)
,p_prompt=>'Size'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c.SIZE_NAME, d.PROOUCT_SIZE ',
' from ITEM_SIZE c, PURCHASE_DETALIS d',
' where d.PROOUCT_SIZE=c.OID and d.PRODUCT_ID=:P14_ITEM_NO'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P14_ITEM_NO'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>' style=''color: MIDNIGHTBLUE;text-align: center;font-size: 18px;'''
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>13501875225360637847
,p_default_application_id=>78259
,p_default_id_offset=>0
,p_default_owner=>'FLMPJGAZDYSOYO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24922060793604033984)
,p_name=>'P14_QTY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(65950386322596434757)
,p_prompt=>'Qty'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style=" float: right; margin-left: 4px;">',
'    <a href = "#" id="Refresh" class="t-Button t-Button--danger t-Button--normal t-Button--stretch" style=" padding: 6px 6px; margin-top: 2px;"title="Refresh">',
'        <i class="fa fa-refresh fa-spin" aria-hidden="true"></i>',
'        </a>',
'</div>',
'',
''))
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow-decimal'
,p_tag_attributes=>'onchange="qtyrputotal();" style=''color: red;text-align: center;font-size: 20px;background-color: #42BE31;'''
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24922061171168033985)
,p_name=>'P14_QTY_TOTAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(65950386322596434757)
,p_prompt=>'Qty Total'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onchange="addToOrder();"'
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24922069634583034003)
,p_name=>'P14_PAYMENT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(46047086438543493682)
,p_item_source_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_prompt=>unistr('Cash Paid \09F3 -')
,p_source=>'PAYMENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cattributes_element=>'style="background-color: rgb(225, 225, 225);"'
,p_tag_attributes=>'onchange="fnc_calcTotalSal();" onfocusout="this.value=Number(this.value)" style=''color: red;text-align: center;font-size: 25px;'''
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'center'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24922070096979034004)
,p_name=>'P14_CHANGE_AMOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(46047086438543493682)
,p_item_source_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_prompt=>unistr('Changes\09F3-')
,p_source=>'CHANGE_AMOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cattributes_element=>'style="background-color: rgb(225, 225, 225);"'
,p_tag_attributes=>'readonly=true  style=''color: red;text-align: center;font-size: 25px;background-color: bisque;'''
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'center'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24922071763739034008)
,p_name=>'P14_CURRENT_STOCK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_prompt=>'Stock'
,p_post_element_text=>unistr('<div style=" float: right; margin-left: 4px; font-size:16px; color:red"">\099F\09BF</div>')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cattributes_element=>'style="background-color: rgb(225, 225, 225);"'
,p_tag_attributes=>'readonly=true style=''color: red;text-align: center;font-size: 30px;'''
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24922072118427034009)
,p_name=>'P14_OID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_item_source_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_source=>'OID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24922072578337034010)
,p_name=>'P14_INVNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_item_source_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_prompt=>'No : '
,p_source=>'INVNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_cattributes_element=>'style="background-color: rgb(225, 225, 225);"'
,p_tag_attributes=>'readonly=true style=''color: MIDNIGHTBLUE;text-align: center;font-size: 18px;'''
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24922072935481034010)
,p_name=>'P14_CUST_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_item_source_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_prompt=>'Customer:'
,p_source=>'CUST_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select CUSTOMER_NAME d, OID r from CUSTOMER'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select List-'
,p_cHeight=>1
,p_cattributes_element=>'style="background-color: rgb(225, 225, 225);"'
,p_tag_attributes=>'style=''color: MIDNIGHTBLUE;text-align: center;font-size: 18px;'''
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>6
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24922073337679034010)
,p_name=>'P14_INVIO_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_item_source_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Date'
,p_source=>'INVIO_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cattributes_element=>'style="background-color: rgb(225, 225, 225);"'
,p_tag_attributes=>'readonly=true style=''color: MIDNIGHTBLUE;text-align: center;font-size: 16px;'''
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24922073774428034011)
,p_name=>'P14_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_item_source_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24922074112151034011)
,p_name=>'P14_CREATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_item_source_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_source=>'CREATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24922074517094034012)
,p_name=>'P14_UPDATE_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_item_source_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_source=>'UPDATE_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24922074937706034012)
,p_name=>'P14_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_item_source_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24922075358495034013)
,p_name=>'P14_IP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_item_source_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_source=>'IP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24922080164395034018)
,p_name=>'P14_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(46047086279328493681)
,p_item_source_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_prompt=>'Total'
,p_source=>'TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'readonly=true style=''color: red;text-align: center;font-size: 25px;'''
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24922080500637034019)
,p_name=>'P14_DUE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(46047086279328493681)
,p_item_source_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_prompt=>'Due'
,p_source=>'DUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'readonly=true style=''color: red;text-align: center;font-size: 25px;background-color: bisque;'''
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24922080905049034020)
,p_name=>'P14_DISCOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(46047086279328493681)
,p_item_source_plug_id=>wwv_flow_imp.id(46045679259743446412)
,p_prompt=>'Discount'
,p_source=>'DISCOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'readonly=true style=''color: red;text-align: center;font-size: 25px;background-color: bisque;'''
,p_field_template=>wwv_flow_imp.id(33247273437634359119)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24922097506139034035)
,p_name=>'Invoice No'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24922098035651034035)
,p_event_id=>wwv_flow_imp.id(24922097506139034035)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    function get_pk return varchar2',
'    is',
'    begin',
'        DECLARE',
'   L_PRIMARY_KEY NUMBER;',
'BEGIN',
'   SELECT NVL(MAX(OID),0) + 1',
'   INTO   L_PRIMARY_KEY',
'   FROM   SALES_DTLS;',
'',
'   RETURN L_PRIMARY_KEY;',
'END;',
'    end; ',
'begin',
'--    :P14_OID := get_pk;',
'    :P14_INVNO := TO_CHAR (''I'') || ''''|| CUST_NUMBER.GET_32_BASE_NUMBER(get_pk);',
'end;'))
,p_attribute_03=>'P14_INVNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24922098567901034036)
,p_event_id=>wwv_flow_imp.id(24922097506139034035)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_BARCODE,P14_ITEM_NO,P14_PROOUCT_CODE,P14_RPU,P14_QTY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24922089203233034029)
,p_name=>'Change Size Item'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_ITEM_SIZE'
,p_condition_element=>'P14_ITEM_SIZE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24922089723364034029)
,p_event_id=>wwv_flow_imp.id(24922089203233034029)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_ME.VMORNEAU.ANIMAPEX'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_QTY'
,p_attribute_01=>'zoomIn'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24922090242194034030)
,p_event_id=>wwv_flow_imp.id(24922089203233034029)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_ME.VMORNEAU.ANIMAPEX'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#Refresh'
,p_attribute_01=>'pulse'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24922086598879034027)
,p_name=>'Post Refresh Button'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#Refresh'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24922087095162034027)
,p_event_id=>wwv_flow_imp.id(24922086598879034027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("emp").refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24922084278654034024)
,p_name=>'Selection Change Update'
,p_event_sequence=>130
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(46047086575569493684)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24922084774736034025)
,p_event_id=>wwv_flow_imp.id(24922084278654034024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region( "emp" ).widget().interactiveGrid( "getActions" ).invoke( "save" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24922087412469034028)
,p_name=>'Add Customer'
,p_event_sequence=>150
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24922087979359034028)
,p_event_id=>wwv_flow_imp.id(24922087412469034028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_APEX.ITEMS.WITH.BUTTONS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(24922071333936034008)
,p_attribute_01=>'P14_CUST_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24922098931606034036)
,p_name=>'Add_Customer'
,p_event_sequence=>160
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(46045679259743446412)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24922099457557034036)
,p_event_id=>wwv_flow_imp.id(24922098931606034036)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_CUST_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24922094840250034033)
,p_name=>'Pro ID Detels'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_ITEM_NO'
,p_condition_element=>'P14_ITEM_NO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24922095387902034033)
,p_event_id=>wwv_flow_imp.id(24922094840250034033)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process ("procode",   ',
'',
'{',
'    x01: $v(''P14_ITEM_NO''),',
'    x02: ''P14_BARCODE'',',
'    x03: ''P14_RPU'',',
'},',
' { ',
'  dataType: ''xml'',',
'  loadingIndicator: ''#P14_BARCODE,#P14_RPU'',',
'  success: function(gReturn)',
'    {',
'            var l_Count = gReturn.getElementsByTagName("item").length;',
'            for(var i = 0;i<l_Count;i++){',
'            var l_Opt_Xml = gReturn.getElementsByTagName("item")[i];',
'            var l_ID = l_Opt_Xml.getAttribute(''id'');',
'            var l_El = apex.item(l_ID);',
'                if(l_Opt_Xml.firstChild){',
'                var l_Value = l_Opt_Xml.firstChild.nodeValue;',
'            }else{',
'                var l_Value = '''';',
'            }',
'            if(l_El){',
'                if(l_El.tagName == ''INPUT''){',
'                    $s(l_ID,l_Value);',
'                }else if(l_El.tagName == ''SPAN'' && ',
'                l_El.className == ''grabber''){',
'                    l_El.parentNode.innerHTML = l_Value;',
'                    l_El.parentNode.id = l_ID;',
'                }else{',
'                    $s(l_ID,l_Value);',
'                }            ',
'            }        ',
'         }    ',
'  }',
'});',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24922090690856034030)
,p_name=>'Disable P14_ITEM_NO'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_PROOUCT_CODE'
,p_condition_element=>'P14_PROOUCT_CODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24922091115285034030)
,p_event_id=>wwv_flow_imp.id(24922090690856034030)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24922091699592034031)
,p_event_id=>wwv_flow_imp.id(24922090690856034030)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_ITEM_NO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24922092058252034031)
,p_name=>'Change Qty Column'
,p_event_sequence=>200
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(46047086575569493684)
,p_triggering_element=>'QTY'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'QTY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#emp'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24922092561666034032)
,p_event_id=>wwv_flow_imp.id(24922092058252034031)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'NVL((:QTY),0) * NVL((:RATE),0) - NVL((:DISCOUNT),0)',
'',
''))
,p_attribute_07=>'RATE,QTY,DISCOUNT'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24922095736613034034)
,p_name=>'Change Discount Column'
,p_event_sequence=>210
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(46047086575569493684)
,p_triggering_element=>'DISCOUNT'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'DISCOUNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#emp'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24922096296007034034)
,p_event_id=>wwv_flow_imp.id(24922095736613034034)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'NVL((:TOTAL),0) - NVL((:DISCOUNT),0)'
,p_attribute_07=>'TOTAL,DISCOUNT'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24922096673079034034)
,p_name=>'Edite Mode'
,p_event_sequence=>220
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24922097129358034035)
,p_event_id=>wwv_flow_imp.id(24922096673079034034)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region( "emp" ).widget().interactiveGrid( "getActions" ).set("edit", true);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24922088378185034028)
,p_name=>'update save options'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_SAVE_OPTIONS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24922088882425034029)
,p_event_id=>wwv_flow_imp.id(24922088378185034028)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_PROOUCT_CODE,P14_BARCODE,P14_ITEM_NO,P14_RPU,P14_QTY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24922099859409034037)
,p_name=>'Stock Valu'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_ITEM_SIZE'
,p_condition_element=>'P14_ITEM_SIZE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24923000311148034037)
,p_event_id=>wwv_flow_imp.id(24922099859409034037)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_CURRENT_STOCK'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select STK_QNTY from STOCK',
'where PRODUCT_ID = :P14_ITEM_NO',
'and PROOUCT_SIZE = :P14_ITEM_SIZE'))
,p_attribute_07=>'P14_ITEM_NO,P14_ITEM_SIZE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24922092959396034032)
,p_name=>'Qty Total Value'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_QTY'
,p_condition_element=>'P14_QTY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24922093426202034032)
,p_event_id=>wwv_flow_imp.id(24922092959396034032)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_QTY_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P14_RPU * :P14_QTY'
,p_attribute_07=>'P14_RPU,P14_QTY'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24922093938167034032)
,p_event_id=>wwv_flow_imp.id(24922092959396034032)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_QTY_TOTAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24922094470747034033)
,p_event_id=>wwv_flow_imp.id(24922092959396034032)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_QTY_TOTAL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24922085148099034026)
,p_name=>'New'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_QTY_TOTAL'
,p_condition_element=>'P14_QTY_TOTAL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24922085697174034026)
,p_event_id=>wwv_flow_imp.id(24922085148099034026)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region( "emp" ).widget().interactiveGrid( "getActions" ).invoke( "save" );'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24922086190830034026)
,p_event_id=>wwv_flow_imp.id(24922085148099034026)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item( "P14_RPU" ).setValue( null, true )',
'apex.item( "P14_BARCODE" ).setValue( null, true )',
'apex.item( "P14_ITEM_NO" ).setValue( null, true )',
'apex.item( "P14_PROOUCT_CODE" ).setValue( null, true )',
'apex.item( "P14_QTY" ).setValue( null, true )'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(24922082232897034022)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get pk'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    function get_pk return varchar2',
'    is',
'    begin',
'        DECLARE',
'   L_PRIMARY_KEY NUMBER;',
'BEGIN',
'   SELECT NVL(MAX(OID),0) + 1',
'   INTO   L_PRIMARY_KEY',
'   FROM   SALES_MST;',
'',
'   RETURN L_PRIMARY_KEY;',
'END;',
'    end; ',
'begin',
'    :P14_OID := get_pk;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(24922079414168034017)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(46045679259743446412)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Sales Produact Page interactiveGrid 24-12-2020'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(24922066961446034000)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(46047086575569493684)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Produact Report - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(24922083805226034023)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Submit Colume Null'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete SALES_DTLS',
'where SUBMIT is null;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(24922079032141034017)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(46045679259743446412)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Sales Produact Page interactiveGrid 24-12-2020'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(24922083015598034023)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'onlycode'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'      v_proid   number;',
'      v_procode   VARCHAR2 (250);',
'      v_price   VARCHAR2 (250);',
'',
'   CURSOR cur_c',
'   IS',
'      SELECT d.PRODUCT_CODE, b.ORIGINAL_PRICE from PRODUCT_PRICE b,',
'    PURCHASE_DETALIS a, PRODUCT d',
'    where a.PRODUCT_ID=b.PRODUCT_ID',
'    and a.PRODUCT_ID=d.PRODUCT_ID',
'    and a.PRODUCT_ID = APEX_APPLICATION.g_x01;',
'',
'BEGIN',
'   FOR c IN cur_c',
'   LOOP',
'        v_procode := c.PRODUCT_CODE;',
'        v_price := c.ORIGINAL_PRICE;',
'   END LOOP;',
'',
'   OWA_UTIL.mime_header (''text/xml'', FALSE);',
'   HTP.p (''Cache-Control: no-cache'');',
'   HTP.p (''Pragma: no-cache'');',
'   OWA_UTIL.http_header_close;',
'   HTP.prn (''<body>'');',
'   HTP.prn (''<desc>this xml genericly sets multiple items</desc>'');',
'   HTP.prn (''<item id="''||APEX_APPLICATION.g_x02||''">''|| v_procode || ''</item>'');',
'   HTP.prn (''<item id="''||APEX_APPLICATION.g_x03||''">''|| v_price || ''</item>'');',
'   HTP.prn (''</body>'');',
'',
'',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      OWA_UTIL.mime_header (''text/xml'', FALSE);',
'      HTP.p (''Cache-Control: no-cache'');',
'      HTP.p (''Pragma: no-cache'');',
'      OWA_UTIL.http_header_close;',
'      HTP.prn (''<body>'');',
'      HTP.prn (''<desc>this xml genericly sets multiple items</desc>'');',
'      HTP.prn (''<item id="''||APEX_APPLICATION.g_x02||''">''|| SQLERRM || ''</item>'');',
'      HTP.prn (''</body>'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(24922082674374034022)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'procode'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'      v_proid   number;',
'      v_procode   VARCHAR2 (250);',
'      v_price   VARCHAR2 (250);',
'',
'   CURSOR cur_c',
'   IS',
'      SELECT d.PRODUCT_CODE, b.ORIGINAL_PRICE from PRODUCT_PRICE b,',
'    PURCHASE_DETALIS a, PRODUCT d',
'    where a.PRODUCT_ID=b.PRODUCT_ID',
'    and a.PRODUCT_ID=d.PRODUCT_ID',
'    and a.PRODUCT_ID = APEX_APPLICATION.g_x01;',
'',
'BEGIN',
'   FOR c IN cur_c',
'   LOOP',
'        v_procode := c.PRODUCT_CODE;',
'        v_price := c.ORIGINAL_PRICE;',
'   END LOOP;',
'',
'   OWA_UTIL.mime_header (''text/xml'', FALSE);',
'   HTP.p (''Cache-Control: no-cache'');',
'   HTP.p (''Pragma: no-cache'');',
'   OWA_UTIL.http_header_close;',
'   HTP.prn (''<body>'');',
'   HTP.prn (''<desc>this xml genericly sets multiple items</desc>'');',
'   HTP.prn (''<item id="''||APEX_APPLICATION.g_x02||''">''|| v_procode || ''</item>'');',
'   HTP.prn (''<item id="''||APEX_APPLICATION.g_x03||''">''|| v_price || ''</item>'');',
'   HTP.prn (''</body>'');',
'',
'',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      OWA_UTIL.mime_header (''text/xml'', FALSE);',
'      HTP.p (''Cache-Control: no-cache'');',
'      HTP.p (''Pragma: no-cache'');',
'      OWA_UTIL.http_header_close;',
'      HTP.prn (''<body>'');',
'      HTP.prn (''<desc>this xml genericly sets multiple items</desc>'');',
'      HTP.prn (''<item id="''||APEX_APPLICATION.g_x02||''">''|| SQLERRM || ''</item>'');',
'      HTP.prn (''</body>'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>13501875225360637847
,p_default_application_id=>78259
,p_default_id_offset=>0
,p_default_owner=>'FLMPJGAZDYSOYO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(24922083456328034023)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Updet Submit Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE SALES_DTLS',
'SET SUBMIT = 1',
'where INVNO = :P14_INVNO;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(24922068887420034002)
);
null;
wwv_flow_imp.component_end;
end;
/
