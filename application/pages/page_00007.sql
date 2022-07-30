prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'How to use the colorful button in the report'
,p_alias=>'HOW-TO-USE-THE-COLORFUL-BUTTON-IN-THE-REPORT'
,p_step_title=>'How to use the colorful button in the report'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'button:active {',
'  top: 1px;',
'  box-shadow: none;',
'}',
'',
'.icon {',
'    position: absolute;',
'    left: 20px;',
'}',
'.btn-green {',
'    background: #1abc9c;',
'    border-bottom: 2px solid #12ab8d;',
'    box-shadow: inset 0 -2px #12ab8d;',
'}',
'.btn-green .icon {',
'    width: 24px;',
'    height: 24px;',
'    transition: all 0.4s ease-in-out;',
'}',
'.btn-green:hover .icon {',
'    transform: rotate(360deg) scale(1.2);',
'}',
'',
'#background{',
'         background-size: cover;     ',
'         background-image: url(#APP_IMAGES#06.jpg);     ',
'         font-family:SolaimanLipi,Times New Roman; ',
'         }',
'',
'.button {',
'    background-color: #4CAF50; /* Green */',
'    border: none;',
'    color: white;',
'    padding: 5px;',
'    text-align: center;',
'    text-decoration: none;',
'    display: inline-block;',
'    font-size: 15px;',
'    margin: 4px 2px;',
'    -webkit-transition-duration: 0.4s; /* Safari */',
'    transition-duration: 0.4s;',
'    cursor: pointer;',
'    width:10%;',
'    border-radius: 5px;',
'}',
'',
'.button1 {',
'    background-color: white;',
'    color: black;',
'    border: 2px solid #325930;',
'}',
'.button1:hover {',
'    background-color: #325930;',
'    color: white;',
'}',
'',
'',
'.button3 {',
'    background-color: white;',
'    color: black;',
'    border: 2px solid #f44336;',
'}',
'',
'.button3:hover {',
'    background-color: #f44336;',
'    color: white;',
'}',
'',
'.button4 {',
'    background-color: white;',
'    color: black;',
'    border: 2px solid #325930;',
'}',
'',
'.button4:hover {',
'    background-color: #325930;',
'    color: white;',
'}',
'.button5 {',
'    background-color: white;',
'    color: black;',
'    border: 2px solid #000000;',
'}',
'',
'.button5:hover {',
'    background-color: #81BB5F;',
'    color: white;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(16661679329709380612)
,p_name=>'New'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OID,',
'       ''<a  href="f?p=''|| V(''APP_ID'') ||'':46:''|| V(''SESSION'') ||''::NO:46:P46_OID:''||OID||''":P46_INVNO:''|| COURT_ID ||''" <span style="width:100%; font-size: 1.6rem; "class="button button5"  type="button" target="_blank"</span>Retern</a>'' COURT_ID,',
'       COURT_NM,',
'       ''<a  href="f?p=''|| V(''APP_ID'') ||'':92:''|| V(''SESSION'') ||''::NO:92:P92_PRODUCT_ID:''||OID||''"',
unistr('       <span style="background-color:#325930; color:white; font-size: 1.6rem; line-height: 1.5rem; " class="t-Button t-Button\2013small t-Button\2013noLabel t-Button\2013icon add-favorite trans_status" target="_blank"</span>Edit</a>'' SQLButt,'),
'       OID But1,',
'       OID But2,',
'       OID But3,',
'       OID But4',
'',
'       ',
'',
'',
'  from COURT'))
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
 p_id=>wwv_flow_imp.id(18385610370651071548)
,p_query_column_id=>1
,p_column_alias=>'OID'
,p_column_display_sequence=>80
,p_column_heading=>'Oid'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18385610481247071549)
,p_query_column_id=>2
,p_column_alias=>'COURT_ID'
,p_column_display_sequence=>90
,p_column_heading=>'Court Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18385610570885071550)
,p_query_column_id=>3
,p_column_alias=>'COURT_NM'
,p_column_display_sequence=>100
,p_column_heading=>'Court Nm'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16661679791194380616)
,p_query_column_id=>4
,p_column_alias=>'SQLBUTT'
,p_column_display_sequence=>40
,p_column_heading=>'Sqlbutt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16661679803621380617)
,p_query_column_id=>5
,p_column_alias=>'BUT1'
,p_column_display_sequence=>50
,p_column_heading=>'But1'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7::'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash fa-1x"></span>'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16661679959943380618)
,p_query_column_id=>6
,p_column_alias=>'BUT2'
,p_column_display_sequence=>60
,p_column_heading=>'But2'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7::'
,p_column_linktext=>unistr('<span style="background-color:#f44336; color:white; font-size: 1.6rem; line-height: 1.5rem; " class="t-Button t-Button\2013small t-Button\2013noLabel t-Button\2013icon add-favorite trans_status"> <i class="fa fa-indent-o fa-1x" aria-hidden="true"></i>  Detels</s')
||'pan>'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16661680008509380619)
,p_query_column_id=>7
,p_column_alias=>'BUT3'
,p_column_display_sequence=>70
,p_column_heading=>'But3'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7::'
,p_column_linktext=>'<img src="/i/edit.gif" alt="">'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18548679297838089201)
,p_query_column_id=>8
,p_column_alias=>'BUT4'
,p_column_display_sequence=>110
,p_column_heading=>'But4'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp.component_end;
end;
/
