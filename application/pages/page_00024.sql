prompt --application/pages/page_00024
begin
--   Manifest
--     PAGE: 00024
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
 p_id=>24
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Purchase New Item Tabular Form'
,p_alias=>'PURCHASE-NEW-ITEM-TABULAR-FORM'
,p_step_title=>'Purchase New Item Tabular Form'
,p_html_page_onload=>'onchange="addTotal();PageStart();"'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'  function sumItems(){',
'    function getVal(item){',
'   if($x(item).value != "")',
'     return parseFloat($x(item).value);',
'   else',
'     return 0;',
'    }',
'    $x(''P24_SUB_TOTAL'').value = ',
'  getVal(''P24_TOTAL'') - (getVal(''P24_DISCOUNT_PAECENT'')/100 * getVal(''P24_TOTAL''));',
'  }',
'</script>',
'',
'',
'<script language="JavaScript" type="text/javascript">',
'',
'    function PageStart(){',
'     if ($x(''P24_ITEM_SIZE'').value == "") ',
'     { $x_disableItem(''P24_QTY'',true);}',
'     else { $x_disableItem(''P24_QTY'',false);}',
' }',
'',
'    function regionrefresh(){',
'     if ($x(''P24_QTY'').value == 0) ',
'     {apex.region("Product_Sales_Page").refresh(false);}',
'     else ',
'     {apex.region("Product_Sales_Page").refresh(true);}',
' }',
'',
'    function getVal(pNd){',
'return ($v(pNd)!="")?parseFloat($v(pNd)):0;',
'}',
'    function calcItems(){',
'        $s(''P24_SUB_TOTAL'',getVal(''P24_TOTAL'')-getVal(''P24_DISCOUNT'')+getVal(''P24_VAT''));',
'}',
'',
'',
'    function addTotal()',
' {',
'  var items = document.getElementsByName("f05"); // Tabular form column to add up',
' ',
'  $total = 0;',
'  $itemValue = 0;',
'  for (var i = 0; i < items.length; i++)',
'  { ',
'   // if non-numeric character was entered, it will be considered as 0,',
'   // isNaN returns true if anything but number was entered',
'   if(isNaN(items[i].value) || items[i].value == null || items[i].value == "")',
'    $itemValue = 0;',
'   else',
'    $itemValue = parseFloat(items[i].value); // convert to number',
' ',
'   $total =$total+ $itemValue; // add up',
'  }',
' ',
'  // $x sets the text field to be updated to the column total just calculated',
'  $x(''P24_TOTAL'').value = $total;',
' }',
'',
'',
'</script>',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'function closeDialogClickOutside(elem){',
'   $(''.ui-widget-overlay'').click(function(){',
'      $(elem).dialog(''close'');',
'   });',
'}',
'',
'function getSumRows(){',
' $(''input[name="f05"]'').each(function (){',
' var rowId = this.id.substr(4);',
' var price= $(''#f03_''+rowId).val();',
' var qty= $(''#f04_''+rowId).val();',
' var calc =(price*qty);',
' ',
' //set value',
' $(''#f05_''+rowId).val(calc);',
'}); ',
'}'))
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
'});'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'02'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16469794511439972156)
,p_plug_name=>'&nbsp'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551662801852634426)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"OID",',
'"OID" OID_DISPLAY,',
'"VOUCHER_NO",',
'"PRODUCT_ID",',
'"ITEM_NAME",',
'"PROOUCT_SIZE",',
'"CPU",',
'"QTY",',
'"TOTAL",',
'"OID" del',
'from "#OWNER#"."PURCHASE_DETALIS"',
'where VOUCHER_NO = :P24_VOUCHER_NO'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'&nbsp'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16469795754682972160)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16469796256658972161)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16469797210217972165)
,p_name=>'OID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>true
,p_is_primary_key=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16469798205112972166)
,p_name=>'OID_DISPLAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OID_DISPLAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'OID'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16469799205438972167)
,p_name=>'VOUCHER_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VOUCHER_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Voucher'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_enable_pivot=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16469800218070972169)
,p_name=>'PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16469801234255972170)
,p_name=>'ITEM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Product Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_is_required=>false
,p_max_length=>250
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(25987669330223383243)
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_enable_pivot=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16469802279476972171)
,p_name=>'PROOUCT_SIZE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROOUCT_SIZE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Size'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_is_required=>false
,p_max_length=>50
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(25987668713897383238)
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16469803390985972172)
,p_name=>'CPU'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CPU'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_width=>5
,p_item_attributes=>'readonly=true onchange="getSumRows();"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16469804331079972173)
,p_name=>'QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_width=>3
,p_item_attributes=>'readonly=true onchange="getSumRows();"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16469805371724972174)
,p_name=>'TOTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Total'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_width=>5
,p_item_attributes=>'readonly=true onchange="getSumRows();"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16469806330585972175)
,p_name=>'DEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'&nbsp'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_link_target=>'javascript:$s(''P68_NEW'',''#DEL#'');'
,p_link_text=>'<span aria-hidden="true" class="fa fa-trash fa-1x"></span>'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(16469794949472972158)
,p_internal_uid=>16469794949472972158
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
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
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(16469795376029972160)
,p_interactive_grid_id=>wwv_flow_imp.id(16469794949472972158)
,p_static_id=>'164697954'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(16469795584642972160)
,p_report_id=>wwv_flow_imp.id(16469795376029972160)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16469796634992972162)
,p_view_id=>wwv_flow_imp.id(16469795584642972160)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(16469796256658972161)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16469797649931972166)
,p_view_id=>wwv_flow_imp.id(16469795584642972160)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(16469797210217972165)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16469798691006972167)
,p_view_id=>wwv_flow_imp.id(16469795584642972160)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(16469798205112972166)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16469799648942972168)
,p_view_id=>wwv_flow_imp.id(16469795584642972160)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(16469799205438972167)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16469800691338972169)
,p_view_id=>wwv_flow_imp.id(16469795584642972160)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(16469800218070972169)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16469801607179972170)
,p_view_id=>wwv_flow_imp.id(16469795584642972160)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(16469801234255972170)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16469802627934972171)
,p_view_id=>wwv_flow_imp.id(16469795584642972160)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(16469802279476972171)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16469803720579972172)
,p_view_id=>wwv_flow_imp.id(16469795584642972160)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(16469803390985972172)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16469804776744972173)
,p_view_id=>wwv_flow_imp.id(16469795584642972160)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(16469804331079972173)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16469805733317972174)
,p_view_id=>wwv_flow_imp.id(16469795584642972160)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(16469805371724972174)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16469806770230972176)
,p_view_id=>wwv_flow_imp.id(16469795584642972160)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(16469806330585972175)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(92855474487397000868)
,p_plug_name=>'<span style="margin-left:70Px;font-size:23px;">Item Information</span>'
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--hiddenOverflow:t-Form--noPadding:t-Form--large:t-Form--stretchInputs:t-Form--labelsAbove:margin-bottom-sm'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>3
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(92855475343414000877)
,p_plug_name=>'<span style="margin-left:350Px;font-size:23px;">Purchase New Item </span>'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent5:t-Region--hiddenOverflow:t-Form--large:t-Form--stretchInputs:margin-bottom-sm'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OID,',
'       VOUCHER_NO,',
'       SUPPLIER_NAME,',
'       DATE1,',
'       TOTAL,',
'       DISCOUNT,',
'       CREATED_BY,',
'       CREATED_NO,',
'       VAT,',
'       SUB_TOTAL',
'from PURCHASE_MASTER'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(92855477520697000898)
,p_plug_name=>'<span style="margin-left:100Px;font-size:23px;">Payment  </span>'
,p_region_template_options=>'#DEFAULT#:t-Region--accent9:t-Region--hiddenOverflow:t-Form--noPadding:t-Form--large:t-Form--stretchInputs:t-Form--labelsAbove:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25987643637771383218)
,p_button_sequence=>10
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Delete'
,p_button_position=>'BELOW_BOX'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P24_OID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25987644051735383219)
,p_button_sequence=>20
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25987644480850383219)
,p_button_sequence=>30
,p_button_name=>'SUBMIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconRight:t-Button--hoverIconSpin:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(14551729993831634454)
,p_button_image_alt=>'Submit'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-sign-in'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25987644826531383219)
,p_button_sequence=>40
,p_button_name=>'Print'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14551729993831634454)
,p_button_image_alt=>'Print'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'javascript:window.open(''f?p=&APP_ID.:96:&SESSION.::NO:96:P96_VOUCHER_NO:'' +$v("P24_VOUCHER_NO")+'''');'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25987626584548383205)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(92855475343414000877)
,p_button_name=>'Add_New_Sup'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(14551729169018634453)
,p_button_image_alt=>'Add New Sup'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:9::'
,p_icon_css_classes=>'fa-plus-circle-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25987626964690383205)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(92855475343414000877)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25987627300936383206)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(92855475343414000877)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_condition_type=>'NEVER'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25987627785039383206)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(92855475343414000877)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Add'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(25987668003003383230)
,p_branch_name=>'Go To Page 68'
,p_branch_action=>'f?p=&APP_ID.:68:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(25987644480850383219)
,p_branch_sequence=>1
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(25987668463712383230)
,p_branch_name=>'Go To Page 26'
,p_branch_action=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:26::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(25987643637771383218)
,p_branch_sequence=>11
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(25987667648340383230)
,p_branch_name=>'Go To Page 26'
,p_branch_action=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:26::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(25987644051735383219)
,p_branch_sequence=>21
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25987624683681383203)
,p_name=>'P24_ITEM_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(92855474487397000868)
,p_prompt=>'Item No'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRODUCT_CODE||''-''|| PRODUCT_NAME, PRODUCT_ID ',
'from PRODUCT',
'order by PRODUCT_ID',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select List-'
,p_cHeight=>1
,p_tag_attributes=>'style=''color: MIDNIGHTBLUE;text-align: center;font-size: 18px;'''
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25987625054232383204)
,p_name=>'P24_COST_PRICE_UNTI'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(92855474487397000868)
,p_prompt=>'Cost Price'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.COST_PRICE d,a.COST_PRICE r from PRODUCT_PRICE a, PRODUCT b',
'where a.PRODUCT_ID = b.PRODUCT_ID ',
'and a.PRODUCT_ID = :P24_ITEM_NO'))
,p_lov_cascade_parent_items=>'P24_ITEM_NO'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'style=''color: MIDNIGHTBLUE;text-align: center;font-size: 18px;'''
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25987625429865383204)
,p_name=>'P24_ITEM_SIZE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(92855474487397000868)
,p_prompt=>'Item Size'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select SIZE_NAME, OID from ITEM_SIZE'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style=''color: MIDNIGHTBLUE;text-align: center;font-size: 18px;'''
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25987625892101383204)
,p_name=>'P24_QTY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(92855474487397000868)
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
,p_tag_attributes=>'onchange="regionrefresh();" onfocusout="this.value=Number(this.value)" style=''color: red; text-align: center;font-size: 18px; background-color: #42BE31;'''
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25987628183292383206)
,p_name=>'P24_OID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(92855475343414000877)
,p_item_source_plug_id=>wwv_flow_imp.id(92855475343414000877)
,p_source=>'OID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25987628547620383206)
,p_name=>'P24_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(92855475343414000877)
,p_item_source_plug_id=>wwv_flow_imp.id(92855475343414000877)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25987628980615383207)
,p_name=>'P24_VOUCHER_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(92855475343414000877)
,p_item_source_plug_id=>wwv_flow_imp.id(92855475343414000877)
,p_prompt=>'Voucher No: '
,p_source=>'VOUCHER_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_tag_attributes=>'style=''color: MIDNIGHTBLUE;text-align: center;font-size: 18px;'''
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25987629329882383207)
,p_name=>'P24_SUPPLIER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(92855475343414000877)
,p_item_source_plug_id=>wwv_flow_imp.id(92855475343414000877)
,p_prompt=>'Supplier: '
,p_source=>'SUPPLIER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select SUPPLIER_NAME, OID  from SUPPLIER'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style=''color: MIDNIGHTBLUE;font-size: 18px;'''
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25987629714832383207)
,p_name=>'P24_DATE1'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(92855475343414000877)
,p_item_source_plug_id=>wwv_flow_imp.id(92855475343414000877)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Date: '
,p_format_mask=>'DD-Mon-YY'
,p_source=>'DATE1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_tag_attributes=>'style=''color: MIDNIGHTBLUE;text-align: center;font-size: 18px;'' '
,p_begin_on_new_line=>'N'
,p_grid_column=>10
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14551727117048634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
,p_attribute_15=>'FOCUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25987630185745383207)
,p_name=>'P24_CREATED_NO'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(92855475343414000877)
,p_item_source_plug_id=>wwv_flow_imp.id(92855475343414000877)
,p_source=>'CREATED_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25987633440746383209)
,p_name=>'P24_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(92855477520697000898)
,p_item_source_plug_id=>wwv_flow_imp.id(92855475343414000877)
,p_item_default=>'700'
,p_prompt=>'Total'
,p_source=>'TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'reftotal'
,p_tag_attributes=>'readonly=true onchange="calcItems();"style=''color: red;text-align: center;font-size: 20px;background-color: bisque;'''
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25987633862149383209)
,p_name=>'P24_DISCOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(92855477520697000898)
,p_item_source_plug_id=>wwv_flow_imp.id(92855475343414000877)
,p_item_default=>'0'
,p_prompt=>'Discount Taka'
,p_source=>'DISCOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow-decimal'
,p_tag_attributes=>'onfocusout="this.value=Number(this.value)" onchange="calcItems();"style=''color: red;text-align: center;font-size: 20px;'''
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25987634202794383210)
,p_name=>'P24_VAT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(92855477520697000898)
,p_item_source_plug_id=>wwv_flow_imp.id(92855475343414000877)
,p_item_default=>'0'
,p_prompt=>'Vat'
,p_source=>'VAT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow-decimal'
,p_tag_attributes=>'onfocusout="this.value=Number(this.value)" onchange="calcItems();"style=''color: red;text-align: center;font-size: 20px;'''
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25987634608359383210)
,p_name=>'P24_SUB_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(92855477520697000898)
,p_item_source_plug_id=>wwv_flow_imp.id(92855475343414000877)
,p_prompt=>'Total payment'
,p_source=>'SUB_TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style=''color: red;text-align: center;font-size: 20px;background-color: bisque;'''
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25987640532850383216)
,p_name=>'P24_NEW'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34330771233298124407)
,p_name=>'P24_DISCOUNT_PAECENT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(92855477520697000898)
,p_item_source_plug_id=>wwv_flow_imp.id(92855475343414000877)
,p_item_default=>'0'
,p_prompt=>'Discount %'
,p_source=>'DISCOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow-decimal'
,p_tag_attributes=>'onBlur="javascript:sumItems()" onfocusout="this.value=Number(this.value)" onchange="calcItems();" style=''color: red;text-align: center;font-size: 20px;'''
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(25987641017764383217)
,p_tabular_form_region_id=>wwv_flow_imp.id(16469794511439972156)
,p_validation_name=>'RATE must be numeric'
,p_validation_sequence=>40
,p_validation=>'RPU'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_associated_column=>'RPU'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(25987642274165383217)
,p_tabular_form_region_id=>wwv_flow_imp.id(16469794511439972156)
,p_validation_name=>'Cost Price must be numeric_1'
,p_validation_sequence=>50
,p_validation=>'CPU'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_associated_column=>'CPU'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(25987641490456383217)
,p_tabular_form_region_id=>wwv_flow_imp.id(16469794511439972156)
,p_validation_name=>'QTY must be numeric'
,p_validation_sequence=>60
,p_validation=>'QTY'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_associated_column=>'QTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(25987641842756383217)
,p_tabular_form_region_id=>wwv_flow_imp.id(16469794511439972156)
,p_validation_name=>'Total must be numeric'
,p_validation_sequence=>70
,p_validation=>'TOTAL'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_associated_column=>'TOTAL'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25987647291555383220)
,p_name=>'Chang QTY'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_QTY'
,p_condition_element=>'P24_QTY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987647789867383221)
,p_event_id=>wwv_flow_imp.id(25987647291555383220)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P24_ITEM_NO is not null and ',
'   :P24_COST_PRICE_UNTI is not null and ',
'   :P24_ITEM_SIZE is not null and ',
'   :P24_QTY is not null then',
'insert into PURCHASE_DETALIS (OID,VOUCHER_NO,PRODUCT_ID,ITEM_NAME,PROOUCT_SIZE,CPU,QTY,TOTAL,CREATE_DATE) ',
'            values (PUR_DTL_SEQ.NEXTVAL,:P24_VOUCHER_NO,:P24_ITEM_NO,',
'            :P24_ITEM_NO,:P24_ITEM_SIZE,:P24_COST_PRICE_UNTI,:P24_QTY,',
'            (:P24_COST_PRICE_UNTI*:P24_QTY),sysdate);',
'      ELSE',
unistr('  raise_application_error(-20111,''Please \09AA\09CD\09B0\09CB\09A1\09BE\0995\09CD\099F\09C7\09B0 \09A8\09BE\09AE, \0986\0995\09BE\09B0 \098F\09AC\0982 Quantity \09AA\09C2\09B0\09A3 \0995\09B0\09C1\09A8'');'),
'END if;',
''))
,p_attribute_02=>'P24_VOUCHER_NO,P24_ITEM_NO,P24_ITEM_SIZE,P24_COST_PRICE_UNTI,P24_QTY'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987648273411383221)
,p_event_id=>wwv_flow_imp.id(25987647291555383220)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_ITEM_NO,P24_COST_PRICE_UNTI,P24_ITEM_SIZE,P24_QTY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25987648615590383222)
,p_name=>'delete activity'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_NEW'
,p_condition_element=>'P24_NEW'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987649187018383222)
,p_event_id=>wwv_flow_imp.id(25987648615590383222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'delete from PURCHASE_DETALIS where oid=:P24_NEW;'
,p_attribute_02=>'P24_NEW'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987649638527383222)
,p_event_id=>wwv_flow_imp.id(25987648615590383222)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("Product_Sales_Page").refresh(); '
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987650156286383222)
,p_event_id=>wwv_flow_imp.id(25987648615590383222)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_TOTAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987650684908383222)
,p_event_id=>wwv_flow_imp.id(25987648615590383222)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_NEW'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25987651098701383223)
,p_name=>'Return Total'
,p_event_sequence=>70
,p_condition_element=>'P24_OID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987651557700383223)
,p_event_id=>wwv_flow_imp.id(25987651098701383223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_TOTAL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select sum (TOTAL) from PURCHASE_DETALIS where VOUCHER_NO=:P24_VOUCHER_NO'
,p_attribute_07=>'P24_VOUCHER_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987652077592383223)
,p_event_id=>wwv_flow_imp.id(25987651098701383223)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_ITEM_NO,P24_COST_PRICE_UNTI,P24_ITEM_SIZE,P24_QTY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25987652464498383223)
,p_name=>'VOUCHER_NO'
,p_event_sequence=>90
,p_condition_element=>'P24_VOUCHER_NO'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987652919016383224)
,p_event_id=>wwv_flow_imp.id(25987652464498383223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    :P24_VOUCHER_NO := TO_CHAR (''I'') || ''''|| CUST_NUMBER.GET_32_BASE_NUMBER(PURCHASE_MST_SEQ.nextval);',
'end;'))
,p_attribute_03=>'P24_VOUCHER_NO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25987653393353383224)
,p_name=>'New_1'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987653804120383224)
,p_event_id=>wwv_flow_imp.id(25987653393353383224)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_TOTAL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select sum(TOTAL) a from PURCHASE_DETALIS where VOUCHER_NO = :P24_VOUCHER_NO'
,p_attribute_07=>'P24_VOUCHER_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987654316855383224)
,p_event_id=>wwv_flow_imp.id(25987653393353383224)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_TOTAL,P24_SUB_TOTAL,P24_DISCOUNT,P24_VAT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25987654797914383224)
,p_name=>'Add_New_Customer'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987655200942383225)
,p_event_id=>wwv_flow_imp.id(25987654797914383224)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_APEX.ITEMS.WITH.BUTTONS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(25987626584548383205)
,p_attribute_01=>'P24_SUPPLIER_NAME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25987655641805383225)
,p_name=>'delete all'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25987643637771383218)
,p_condition_element=>'P24_OID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987656111609383225)
,p_event_id=>wwv_flow_imp.id(25987655641805383225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from PURCHASE_MASTER where oid=:P24_OID;',
''))
,p_attribute_02=>'P24_OID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987656602108383225)
,p_event_id=>wwv_flow_imp.id(25987655641805383225)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( $( ''#selectUnselectAll'' ).is('':checked'') ) {',
'    $(''input[type=checkbox][name=f01]'').attr(''checked'',true);',
'}',
'else {',
'    $(''input[type=checkbox][name=f01]'').attr(''checked'',false);    ',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987657194818383225)
,p_event_id=>wwv_flow_imp.id(25987655641805383225)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'DELETE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25987657500571383226)
,p_name=>'Please select the product name1'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_QTY'
,p_condition_element=>'P24_ITEM_NO'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987658054881383226)
,p_event_id=>wwv_flow_imp.id(25987657500571383226)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Please select the product name..?'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25987658489424383226)
,p_name=>'Please Select the Product Size'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_QTY'
,p_condition_element=>'P24_ITEM_SIZE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987658927477383226)
,p_event_id=>wwv_flow_imp.id(25987658489424383226)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Please select the product Size..?'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25987659388467383226)
,p_name=>'Static Value 1'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_DISCOUNT'
,p_condition_element=>'P24_DISCOUNT'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987659834815383227)
,p_event_id=>wwv_flow_imp.id(25987659388467383226)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_DISCOUNT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25987660215708383227)
,p_name=>'Updet Submit Data'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25987644480850383219)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987660716381383227)
,p_event_id=>wwv_flow_imp.id(25987660215708383227)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE PURCHASE_DETALIS',
'SET SUBMIT = 1',
'where VOUCHER_NO = :P24_VOUCHER_NO;'))
,p_attribute_02=>'P24_VOUCHER_NO'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987661247485383227)
,p_event_id=>wwv_flow_imp.id(25987660215708383227)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'SUBMIT'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25987661636762383227)
,p_name=>'New_2'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_SELL_PRICE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987662127241383228)
,p_event_id=>wwv_flow_imp.id(25987661636762383227)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_ITEM_NO,P24_COST_PRICE_UNTI,P24_ITEM_SIZE,P24_QTY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25987662520025383228)
,p_name=>'Static Value 2'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_VAT'
,p_condition_element=>'P24_VAT'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987663042432383228)
,p_event_id=>wwv_flow_imp.id(25987662520025383228)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_VAT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25987663423378383228)
,p_name=>'Change Size Item'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_ITEM_SIZE'
,p_condition_element=>'P24_ITEM_SIZE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987663916881383228)
,p_event_id=>wwv_flow_imp.id(25987663423378383228)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_ME.VMORNEAU.ANIMAPEX'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_QTY'
,p_attribute_01=>'zoomIn'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987664466372383229)
,p_event_id=>wwv_flow_imp.id(25987663423378383228)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_ME.VMORNEAU.ANIMAPEX'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#Refresh'
,p_attribute_01=>'rotateIn'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25987664843105383229)
,p_name=>'Post Refresh Button'
,p_event_sequence=>230
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#Refresh'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987665366778383229)
,p_event_id=>wwv_flow_imp.id(25987664843105383229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("Product_Sales_Page").refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25987665740799383229)
,p_name=>'Post Supplier Button'
,p_event_sequence=>240
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#supplier'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987666227495383229)
,p_event_id=>wwv_flow_imp.id(25987665740799383229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_CA.MAXIMET.APEXDIALOGOPEN'
,p_attribute_01=>'PAGE'
,p_attribute_02=>'9'
,p_attribute_05=>'N'
,p_attribute_09=>'TRIG_ELEM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25987666658788383230)
,p_name=>'New'
,p_event_sequence=>270
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(92855475343414000877)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25987667189067383230)
,p_event_id=>wwv_flow_imp.id(25987666658788383230)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_SUPPLIER_NAME'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16469807347511972177)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(16469794511439972156)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'&nbsp - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25987632746088383209)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(92855475343414000877)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'New'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25987646807287383220)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete All'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FOR I in 1..APEX_APPLICATION.G_F01.COUNT LOOP',
'DELETE PURCHASE_DETALIS',
'WHERE OID=APEX_APPLICATION.G_F01(i);',
'END LOOP;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(25987643637771383218)
,p_process_when=>'P24_OID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25987645225693383219)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Submit Item Null'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete PURCHASE_DETALIS',
'where SUBMIT is null;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25987645699817383220)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'New_1'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25987632304724383208)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(92855475343414000877)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Product Sales Page Tabular Form'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25987646460155383220)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert All Valu'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'insert into PURCHASE_MASTER (OID,',
'       VOUCHER_NO,',
'       SUPPLIER_NAME,',
'       DATE1,',
'       TOTAL,',
'       DISCOUNT,',
'       CREATED_BY,',
'       CREATED_NO,',
'       VAT,',
'       SUB_TOTAL)',
' values ',
' (PURCHASE_MST_SEQ.nextval,',
'  :P24_VOUCHER_NO,',
'  :P24_SUPPLIER_NAME,',
'  sysdate,',
'  :P24_TOTAL,',
'  :P24_DISCOUNT,',
'  :APP_USER,',
'  sysdate,',
'  :P24_VAT,',
'  :P24_SUB_TOTAL);',
'  ',
'  ',
'  ',
'  END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(25987644480850383219)
,p_process_when=>'P24_OID'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25987646074743383220)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update All Valu'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update ',
'PURCHASE_MASTER set',
'VOUCHER_NO=:P24_VOUCHER_NO,',
'SUPPLIER_NAME=:P24_SUPPLIER_NAME,',
'DATE1=sysdate,',
'TOTAL=:P24_TOTAL,',
'DISCOUNT=:P24_DISCOUNT,',
'VAT=:P24_VAT,',
'SUB_TOTAL=:P24_SUB_TOTAL',
'',
'WHERE ',
'OID = :P24_OID;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(25987644480850383219)
,p_process_when=>'P24_OID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp.component_end;
end;
/
