prompt --application/pages/page_00034
begin
--   Manifest
--     PAGE: 00034
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
 p_id=>34
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'PRODUCT_RATING'
,p_alias=>'PRODUCT-RATING'
,p_step_title=>'PRODUCT_RATING'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27465723753663512401)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551662801852634426)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PRODUCT_ID, ',
'       PRODUCT_NAME, ',
'       to_char(start_date, ''DD-Mon-RRRR'') START_DATE, ',
'       GET_PRODUCT_RATING(PRODUCT_RATING) PRODUCT_RATING,',
'       get_user_ratings(PRODUCT_RATING) user_rating',
'',
'  FROM PRODUCT_RATING'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(27465723883677512402)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JABER0181@GMAIL.COM'
,p_internal_uid=>27465723883677512402
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27465723904023512403)
,p_db_column_name=>'PRODUCT_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Product Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27465724056944512404)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27465724197536512405)
,p_db_column_name=>'START_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Start Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27465724238607512406)
,p_db_column_name=>'PRODUCT_RATING'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Product Rating'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34330770683928124401)
,p_db_column_name=>'USER_RATING'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'User Rating'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(27465488609043157787)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'274654887'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCT_ID:PRODUCT_NAME:START_DATE:PRODUCT_RATING'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34736343478690988119)
,p_plug_name=>'like/unlike with button using toggleclass'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'<body>',
'    <form>',
'     <input type="text" id="number" value="0"/>',
'     <input type="button" onclick="incrementValue()" value="Increase" />',
' </form>',
'',
' <script>',
'    function incrementValue()',
'    {',
'        var value = parseInt(document.getElementById(''number'').value, 10);',
'        value = isNaN(value) ? 0 : value;',
'        value++;',
'        document.getElementById(''number'').value = value;',
'    }',
'</script>',
'</body>',
'</html>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34736343763030988122)
,p_plug_name=>'Creating a Countdown Timer'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE HTML>',
'<html>',
'<head>',
'<meta name="viewport" content="width=device-width, initial-scale=1">',
'<style>',
'p {',
'  text-align: center;',
'  font-size: 60px;',
'  margin-top: 0px;',
'}',
'</style>',
'</head>',
'<body>',
'',
'<p id="demo"></p>',
'',
'<script>',
'// Set the date we''re counting down to',
'var countDownDate = new Date("sep 14, 2022 11:50:00").getTime();',
'',
'// Update the count down every 1 second',
'var x = setInterval(function() {',
'',
'  // Get today''s date and time',
'  var now = new Date().getTime();',
'    ',
'  // Find the distance between now and the count down date',
'  var distance = countDownDate - now;',
'    ',
'  // Time calculations for days, hours, minutes and seconds',
'  var days = Math.floor(distance / (1000 * 60 * 60 * 24));',
'  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));',
'  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));',
'  var seconds = Math.floor((distance % (1000 * 60)) / 1000);',
'    ',
'  // Output the result in an element with id="demo"',
'  document.getElementById("demo").innerHTML = days + "d " + hours + "h "',
'  + minutes + "m " + seconds + "s ";',
'    ',
'  // If the count down is over, write some text ',
'  if (distance < 0) {',
'    clearInterval(x);',
'    document.getElementById("demo").innerHTML = "EXPIRED";',
'  }',
'}, 1000);',
'</script>',
'',
'</body>',
'</html>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34736343984802988124)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'<head>',
'',
'<div class="like">',
'    <span> <button onclick="clickCounter()" type="button"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></button></span>',
'    <div id="result"></div>',
'</div>',
'',
'',
'</head>',
'<body>',
'',
'<script>',
'function clickCounter() {',
'  if (typeof(Storage) !== "undefined") {',
'    if (localStorage.clickcount) {',
'      localStorage.clickcount = Number(localStorage.clickcount)+1;',
'    } else {',
'      localStorage.clickcount = 1;',
'    }',
'    document.getElementById("result").innerHTML = "(" + localStorage.clickcount + ")";',
'  } else {',
'    document.getElementById("result").innerHTML = "Sorry, your browser does not support web storage...";',
'  }',
'}',
'</script>',
'</body>',
'</html>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp.component_end;
end;
/
