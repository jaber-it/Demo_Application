prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
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
 p_id=>28
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Product Card, Templates - 2'
,p_alias=>'PRODUCT-CARD-TEMPLATES-2'
,p_step_title=>'Product Card, Templates - 2'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Body-contentInner {',
'    padding: 0px;',
'    flex-grow: 1;',
'    width: 100%;',
'}',
'',
'',
'.t-Cards {',
'    /* list-style: none; */',
'    /* padding: 0; ',
'    margin: -8px;*/',
'    /* overflow: hidden; */',
'    flex-wrap: wrap;',
'    display: flex;',
'    flex-wrap: wrap;',
'    justify-content: center;',
'    align-items: center;',
'    align-content: center;',
'    align-self: center;',
'    text-align: center;',
'    transition: 0.5s ease; ',
'    cursor: pointer; ',
'}',
'',
'.product-grid{',
'    text-align:center;',
'    padding:0 0 72px;',
'    border:1px solid rgba(0,0,0,.1);',
'    overflow:hidden;',
'    position:relative;',
'    z-index:1;',
'    box-shadow: 0 3px 20px rgba(0,0,0,0.08);',
'    margin: 10px;',
'}',
'',
'.product-grid .product-image{',
'    width: 150px;',
'    height: 150px;',
'    position:relative;',
'    transition:all .3s ease 0s',
'}',
'.product-grid .product-image a{',
'    display:block',
'}',
'.product-grid .product-image img{',
'    width:100%;',
'    height:auto',
'}',
'.product-grid .pic-1{',
'    opacity:1;',
'    transition:all .3s ease-out 0s',
'}',
'.product-grid:hover .pic-1{',
'    opacity:1',
'}',
'.product-grid .pic-2{',
'    opacity:0;',
'    position:absolute;',
'    top:0;',
'    left:0;',
'    transition:all .3s ease-out 0s',
'}',
'.product-grid:hover .pic-2{',
'    opacity:1',
'}',
'.product-grid .social{',
'    width:130px;',
'    padding:0;',
'    margin:0;',
'    list-style:none;',
'    opacity:0;',
'    transform:translateY(-50%) translateX(-50%);',
'    position:absolute;',
'    top:60%;',
'    left:50%;',
'    z-index:1;',
'    transition:all .3s ease 0s',
'}',
'.product-grid:hover .social{',
'    opacity:1;',
'    top:50%',
'}',
'.product-grid .social li{',
'    display:inline-block',
'}',
'.product-grid .social li a{',
'    color:#fff;',
'    background-color:#333;',
'    font-size:16px;',
'    line-height:40px;',
'    text-align:center;',
'    height:27px;',
'    width:40px;',
'    margin:0 2px;',
'    display:block;',
'    position:relative;',
'    justify-content: center;',
'    align-items: center;',
'    transition:all .3s ease-in-out',
'}',
'.product-grid .social li a:hover{',
'    color:#fff;',
'    background-color:#ef5777',
'}',
'.product-grid .social li a:after,',
'.product-grid .social li a:before{',
'    content:attr(data-tip);',
'    color:#fff;',
'    background-color:#000;',
'    font-size:12px;',
'    letter-spacing:1px;',
'    line-height:20px;',
'    padding:1px 5px;',
'    white-space:nowrap;',
'    opacity:0;',
'    transform:translateX(-50%);',
'    position:absolute;',
'    left:50%;',
'    top: 32px;',
'}',
'.product-grid .social li a:after{',
'    content:'''';',
'    height:15px;',
'    width:15px;',
'    border-radius:0;',
'    transform:translateX(-50%) rotate(45deg);',
'    top:-20px;',
'    z-index:-1',
'}',
'.product-grid .social li a:hover:after,',
'.product-grid .social li a:hover:before{',
'    opacity:1',
'}',
'',
'.fa {',
'    margin: 6px;',
'}',
'.product-grid .product-discount-label,',
'.product-grid .product-new-label{',
'    color:#fff;',
'    background-color:#ef5777;',
'    font-size:12px;',
'    text-transform:uppercase;',
'    padding:2px 7px;',
'    display:block;',
'    position:absolute;',
'    top:10px;',
'    left:0',
'}',
'.product-grid .product-discount-label{',
'    background-color:#333;',
'    left:auto;',
'    right:0',
'}',
'.product-grid .rating{',
'    color:#FFD200;',
'    font-size:12px;',
'    padding:12px 0 0;',
'    margin:0;',
'    list-style:none;',
'    position:relative;',
'    z-index:-1',
'}',
'.product-grid .rating li.disable{',
'    color:rgba(0,0,0,.2)',
'}',
'.product-grid .product-content{',
'    background-color:#fff;',
'    text-align:center;',
'    padding:12px 0;',
'    margin:0 auto;',
'    position:absolute;',
'    left:0;',
'    right:0;',
'    bottom:-30px;',
'    z-index:1;',
'    transition:all .3s',
'}',
'.product-grid:hover .product-content{',
'    bottom:0',
'}',
'.product-grid .title{',
'    font-size:13px;',
'    font-weight:400;',
'    letter-spacing:.5px;',
'    text-transform:capitalize;',
'    margin:0 0 10px;',
'    transition:all .3s ease 0s',
'}',
'.product-grid .title a{',
'    color:#828282',
'}',
'.product-grid .title a:hover,',
'.product-grid:hover .title a{',
'    color:#ef5777',
'}',
'.product-grid .price{',
'    color:#333;',
'    font-size:17px; ',
'    font-weight:700;',
'    letter-spacing:.6px;',
'    margin-bottom:8px;',
'    text-align:center;',
'    transition:all .3s',
'}',
'.product-grid .price span{',
'    color:#999;',
'    font-size:13px;',
'    font-weight:400;',
'    text-decoration:line-through;',
'    margin-left:3px;',
'    display:inline-block',
'}',
'.product-grid .add-to-cart{',
'    color:#000;',
'    font-size:13px;',
'    font-weight:600',
'}',
'@media only screen and (max-width:990px){',
'    .product-grid{',
'        margin-bottom:30px',
'    }',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(26049289083171909828)
,p_name=>'Product Card, Templates 2'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.PRODUCT_ID,            ',
'       dbms_lob.getlength(a.PRODUCT_IMAGE) AS CARD_IMAGE,',
'    a.PRODUCT_DESCRIPTION AS DESCRIPTION,',
'     a.PRODUCT_NAME CARD_TEXT,',
'     a.PRODUCT_CODE,',
'     (select p.ORIGINAL_PRICE from PRODUCT_PRICE p where a.PRODUCT_ID = p.PRODUCT_ID) AS ORIGINAL_PRICE,',
'     (select p.SELLING_PRICE from PRODUCT_PRICE p where a.PRODUCT_ID = p.PRODUCT_ID) AS SELLPRICE,',
'     (select p.DISCOUNT from PRODUCT_PRICE p where a.PRODUCT_ID = p.PRODUCT_ID) AS DISPRICE',
'',
'      from PRODUCT a'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(26143078564851873934)
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
 p_id=>wwv_flow_imp.id(26049289129230909829)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Product Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26049289285858909830)
,p_query_column_id=>2
,p_column_alias=>'CARD_IMAGE'
,p_column_display_sequence=>20
,p_column_heading=>'Card Image'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:PRODUCT:PRODUCT_IMAGE:PRODUCT_ID::MIME_TYPE:PRODUCT_NAME:UPDATE_DATE::::'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26049289359984909831)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>30
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26049289486467909832)
,p_query_column_id=>4
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>40
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26049289599856909833)
,p_query_column_id=>5
,p_column_alias=>'PRODUCT_CODE'
,p_column_display_sequence=>50
,p_column_heading=>'Product Code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26049289661885909834)
,p_query_column_id=>6
,p_column_alias=>'ORIGINAL_PRICE'
,p_column_display_sequence=>60
,p_column_heading=>'Original Price'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26049289765988909835)
,p_query_column_id=>7
,p_column_alias=>'SELLPRICE'
,p_column_display_sequence=>70
,p_column_heading=>'Sellprice'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26049289870095909836)
,p_query_column_id=>8
,p_column_alias=>'DISPRICE'
,p_column_display_sequence=>80
,p_column_heading=>'Disprice'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp.component_end;
end;
/
