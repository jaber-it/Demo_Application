prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Click on the button to print'
,p_alias=>'CLICK-ON-THE-BUTTON-TO-PRINT'
,p_step_title=>'Click on the button to print'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210619160559'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(33265509386071429329)
,p_name=>'Click on the button to print'
,p_region_name=>'content'
,p_template=>wwv_flow_imp.id(33247212693934359074)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LOG_ID,',
'       IP_ADDRESS,',
'       LOGIN_USER,',
'       LOGIN_TIME,',
'       LOGOUT_TIME,',
'       LOG_DATE,',
'       CREATED,',
'       CREATED_BY,',
'       UPDATED_BY,',
'       UPDATED',
'  from USERS_LOG'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(33247241596394359095)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32480604972593506245)
,p_query_column_id=>1
,p_column_alias=>'LOG_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Log Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32480605081089506246)
,p_query_column_id=>2
,p_column_alias=>'IP_ADDRESS'
,p_column_display_sequence=>2
,p_column_heading=>'Ip Address'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32480605143262506247)
,p_query_column_id=>3
,p_column_alias=>'LOGIN_USER'
,p_column_display_sequence=>3
,p_column_heading=>'Login User'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32480605225832506248)
,p_query_column_id=>4
,p_column_alias=>'LOGIN_TIME'
,p_column_display_sequence=>4
,p_column_heading=>'Login Time'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32480605333718506249)
,p_query_column_id=>5
,p_column_alias=>'LOGOUT_TIME'
,p_column_display_sequence=>5
,p_column_heading=>'Logout Time'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32480605486833506250)
,p_query_column_id=>6
,p_column_alias=>'LOG_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Log Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14714482294131986607)
,p_query_column_id=>7
,p_column_alias=>'CREATED'
,p_column_display_sequence=>16
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14714482371824986608)
,p_query_column_id=>8
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>26
,p_column_heading=>'Created By'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14714482406332986609)
,p_query_column_id=>9
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>36
,p_column_heading=>'Updated By'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14714482589327986610)
,p_query_column_id=>10
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>46
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32480604618734506242)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(33265509386071429329)
,p_button_name=>'Print'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(33247274854578359121)
,p_button_image_alt=>'Print'
,p_button_position=>'ABOVE_BOX'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32480604704001506243)
,p_name=>'Ptint classic Report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(32480604618734506242)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32480604896276506244)
,p_event_id=>wwv_flow_imp.id(32480604704001506243)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//// Collapse Left Navigation Bar If It Was Expanded ////',
'var navCollapsed = 0;',
'if ($("body").hasClass("js-navExpanded")) {',
'    $("#t_Button_navControl").click();',
'    navCollapsed = 1;',
'};',
'setTimeout(3000);',
'',
'',
'',
'//////// Hide ////////',
'',
'//Hide Navigation Bar List',
'$("#t_Header").hide();',
'',
'//Hide Navigation Menu',
'$("#t_Body_nav").hide();',
'',
'//Hide Breadcrumb',
'$("#t_Body_title").hide();',
'',
'//Hide Content Offset',
'$("#t_Body_content_offset").hide();',
'',
'//Hide Report Column Edit Link',
'$(".apex-edit-page").hide();',
'',
'//Hide Report Download Links',
'$(".t-Report-links").hide();',
'',
'//Hide Buttons',
'$(".t-Button").hide();',
'',
'//Hide Footer',
'$(".t-Footer").hide();',
'',
'',
'',
'//////// Browser Print ////////',
'window.print();',
'',
'',
'',
'//////// Show ////////',
'',
'//Show Navigation Bar List',
'$("#t_Header").show();',
'',
'//Show Navigation Menu',
'$("#t_Body_nav").show();',
'',
'//Show Breadcrumb',
'$("#t_Body_title").show();',
'',
'//Show Content Offset',
'$("#t_Body_content_offset").show();',
'',
'//Show Report Column Edit Link',
'$(".apex-edit-page").show();',
'',
'//Show Report Download Links',
'$(".t-Report-links").show();',
'',
'//Show Buttons',
'$(".t-Button").show();',
'',
'//Show Footer',
'$(".t-Footer").show();',
'',
'',
'',
'//// Expand Left Navigation Bar If It Was Colapsed ////',
'if ( navCollapsed == 1 ) {',
'    $("#t_Button_navControl").click();',
'}'))
);
wwv_flow_imp.component_end;
end;
/
