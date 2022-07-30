prompt --application/pages/page_00045
begin
--   Manifest
--     PAGE: 00045
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
 p_id=>45
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Region Auto Refresh'
,p_alias=>'REGION-AUTO-REFRESH'
,p_step_title=>'Region Auto Refresh'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function myfnc(){',
'    var region =apex.region("Refresh_Function");',
'    region.refresh();',
'     }'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
' setInterval(function(){',
'     myfnc()',
'      }, 5000) ',
'',
'',
'setInterval("jQuery(''#Refresh_JavaScript'').trigger(''apexrefresh'');", 10000);'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20211210152846'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(16753117764535609326)
,p_name=>'Region auto refresh use function'
,p_region_name=>'Refresh_Function'
,p_template=>wwv_flow_imp.id(33247212693934359074)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OID,',
'       CAT_NAME_ENG,',
'       CAT_NAME_BANGLA,',
'       STATUS_ID',
'  from CATEGORY'))
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
 p_id=>wwv_flow_imp.id(16753117862261609327)
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
 p_id=>wwv_flow_imp.id(16753117976946609328)
,p_query_column_id=>2
,p_column_alias=>'CAT_NAME_ENG'
,p_column_display_sequence=>20
,p_column_heading=>'Cat Name Eng'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16753118000121609329)
,p_query_column_id=>3
,p_column_alias=>'CAT_NAME_BANGLA'
,p_column_display_sequence=>30
,p_column_heading=>'Cat Name Bangla'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16753118101134609330)
,p_query_column_id=>4
,p_column_alias=>'STATUS_ID'
,p_column_display_sequence=>40
,p_column_heading=>'Status Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(16753118506441609334)
,p_name=>'Region auto refresh use JavaScript'
,p_region_name=>'Refresh_JavaScript'
,p_template=>wwv_flow_imp.id(33247212693934359074)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OID,',
'       CAT_NAME_ENG,',
'       CAT_NAME_BANGLA,',
'       STATUS_ID',
'  from CATEGORY'))
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
 p_id=>wwv_flow_imp.id(16753118679702609335)
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
 p_id=>wwv_flow_imp.id(16753118752582609336)
,p_query_column_id=>2
,p_column_alias=>'CAT_NAME_ENG'
,p_column_display_sequence=>20
,p_column_heading=>'Cat Name Eng'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16753118898543609337)
,p_query_column_id=>3
,p_column_alias=>'CAT_NAME_BANGLA'
,p_column_display_sequence=>30
,p_column_heading=>'Cat Name Bangla'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16753118952513609338)
,p_query_column_id=>4
,p_column_alias=>'STATUS_ID'
,p_column_display_sequence=>40
,p_column_heading=>'Status Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp.component_end;
end;
/
