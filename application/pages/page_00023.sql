prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
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
 p_id=>23
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Templates 1'
,p_alias=>'TEMPLATES-1'
,p_step_title=>'Templates 1'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	$(''#nav_id'').keyup(function() ',
'	{',
'	apex.item( "P23_SEARCH2" ).setValue(apex.item( "nav_id" ).getValue())',
'	});',
'	//or please use one of this',
'	$(''#nav_id'').keyup(function() ',
'	{',
'	var searchVal = document.getElementById("nav_id").value ;',
'	$s("P23_SEARCH2", searchVal);});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#nav_id {',
'    height: 33px;',
'    width: 377px;',
'    border-radius: 10px;',
'    color: black;',
'    font-size: 17px;',
'}',
'',
'#navbtnid {',
'    margin-right: 34px;',
'    height: 29px;',
'    padding-top: 4px;',
'    padding-left: 7px;',
'    background: chocolate;',
'}',
'==================================',
'.t-Cards {',
'    justify-content: center;',
'    align-items: center;',
'    align-content: center;',
'    align-self: center;',
'    text-align: center;',
'    transition: 0.5s ease; ',
'    cursor: pointer; ',
'}',
'',
'section{',
'    padding: 20px 0px;',
'    margin: 0px 0px;',
'}',
'',
'.max-width {',
'    padding: 5px 20px 5px 20px;',
'    margin: auto;',
'}',
'',
'.teams{',
'    font-family: ''Poppins'', sans-serif;',
'}',
'',
'section .title {',
'    position: relative;',
'    text-align: center;',
'    font-size: 25px;',
'    font-weight: 500;',
'    margin-bottom: 16px;',
'    padding-bottom: 16px;',
'    font-family: ''Ubuntu'', sans-serif;',
'}',
'',
' section .title::before{',
'    content: " ";',
'    position: absolute;',
'    bottom: 0px;',
'    left: 50%;',
'    width: 180px;',
'    height: 3px;',
'    background:#111;',
'    transform: translateX(-50%);',
' }',
'  section .title::after{',
'    position: absolute;',
'    bottom: -8px;',
'    left: 50%;',
'    font-size: 17px;',
'    color: crimson;',
'    padding: 0 5px;',
'    background:#fff;',
'    transform: translateX(-50%);',
'  }',
'',
'.teams {',
'    border-radius: 20px 20px 20px 20px;',
'    color: #fff;',
'    background: #111;',
'    margin: 6px;',
'}',
'',
'  .teams .title::before{',
'    background:#fff;',
'  }',
'  .teams .title::after{',
'    background:#111;',
'  }',
'  .teams .title::after{',
'    content: "who with us";',
'  }',
'',
'.teams .carousel .card {',
'    width: 230px;',
'    height: 315px;',
'    background: #222;',
'    border-radius: 20px;',
'    padding: 0px 0px;',
'    text-align: center;',
'    overflow: hidden;',
'    transition: all 0.3s ease;',
'}',
'',
'  .teams .carousel .card:hover{',
'    background:crimson;',
'',
'  }',
'',
'.teams .carousel .card .box{',
'      padding: 10px 0px 10px 0px;',
'    display: flex;',
'    flex-direction: column;',
'    align-items: center;',
'    justify-content: center;transition: all 0.3s ease;',
'  }',
'  .teams .carousel .card::hover .box{',
'    transform: scale(1.05);',
'  }',
'',
'.teams .carousel .card .text {',
'    font-size: 20px;',
'    font-weight: 500;',
'    margin: 10px 0 23px 0;',
'}',
'',
'  .teams .carousel .card img{',
'    height: 150px;',
'    width: 150px;',
'    object-fit: cover;',
'    border-radius: 50%;',
'    border:5px solid crimson;',
'    transition: all 0.3s ease;',
'  }',
'  .teams .carousel .card:hover img{',
'    border-color: #fff;',
'  }',
'  .owl-dots{',
'    text-align: center;',
'    margin-top: 20px;',
'  }',
'  .owl-dot{',
'    height: 13px;',
'    width: 13px;',
'    margin:0 5px;',
'    outline: none !important;',
'    border-radius: 50%;',
'    border:2px solid crimson !important;',
'    transition: all 0.3s ease;',
'  }',
'',
'  .owl-dot.active{',
'    width: 35px;',
'    border-radius: 14px;',
'  }',
'',
'  .owl-dot.active,',
'  .owl-dot:hover{',
'    background:crimson !important;',
'  }',
'',
'.t-Body-contentInner {',
'    background-color: brown;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(26049288141710909819)
,p_name=>'Product Card, Templates - 1'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'Search_Button'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--basic:t-Cards--5cols:t-Cards--animColorFill'
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
'      from PRODUCT a',
'      where upper(a.PRODUCT_NAME) like upper (''%''||:P23_SEARCH2||''%'');',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P23_SEARCH2'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(26142712854067845265)
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
 p_id=>wwv_flow_imp.id(26049288217389909820)
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
 p_id=>wwv_flow_imp.id(26049288354166909821)
,p_query_column_id=>2
,p_column_alias=>'CARD_IMAGE'
,p_column_display_sequence=>20
,p_column_heading=>'Card Image'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:PRODUCT:PRODUCT_IMAGE:PRODUCT_ID:::PRODUCT_NAME:UPDATE_DATE::::'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26049288456406909822)
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
 p_id=>wwv_flow_imp.id(26049288532516909823)
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
 p_id=>wwv_flow_imp.id(26049288661121909824)
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
 p_id=>wwv_flow_imp.id(26049288728476909825)
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
 p_id=>wwv_flow_imp.id(26049288899495909826)
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
 p_id=>wwv_flow_imp.id(26049288923109909827)
,p_query_column_id=>8
,p_column_alias=>'DISPRICE'
,p_column_display_sequence=>80
,p_column_heading=>'Disprice'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30269634613386952724)
,p_name=>'P23_SEARCH2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26049288141710909819)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
