prompt --application/pages/page_10000
begin
--   Manifest
--     PAGE: 10000
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
 p_id=>10000
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Administration'
,p_alias=>'ADMIN'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(33247303328318359155)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(33247301480692359151)
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20200807105037'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33247447853391359407)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247222071648359080)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(33247158648895359034)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(33247276183996359121)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33247453984461359412)
,p_plug_name=>'Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(33247185461156359055)
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33247454350728359413)
,p_plug_name=>'Configuration'
,p_parent_plug_id=>wwv_flow_imp.id(33247453984461359412)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(33247448431071359407)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(33247259563297359108)
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(33247299142105359147)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33247454747088359413)
,p_plug_name=>'User Interface'
,p_parent_plug_id=>wwv_flow_imp.id(33247453984461359412)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(33247449150671359408)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(33247259563297359108)
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(33247299596209359147)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33247455152021359413)
,p_plug_name=>'Activity Reports'
,p_parent_plug_id=>wwv_flow_imp.id(33247453984461359412)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(33247449869349359409)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(33247259563297359108)
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(33247298847568359147)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33247455599687359414)
,p_plug_name=>'Column 2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(33247185461156359055)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33247455992468359414)
,p_plug_name=>'Access Control'
,p_parent_plug_id=>wwv_flow_imp.id(33247455599687359414)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(33247298762292359147)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33247456794547359415)
,p_plug_name=>'ACL Information'
,p_parent_plug_id=>wwv_flow_imp.id(33247455992468359414)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(33247181542231359052)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope   varchar2(45);',
'begin',
'    l_acl_scope   := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        sys.htp.p( apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'') );',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        sys.htp.p( apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'') );',
'    else',
'        sys.htp.p( apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope) );',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(33247457135341359415)
,p_name=>'User Counts Report'
,p_parent_plug_id=>wwv_flow_imp.id(33247455992468359414)
,p_template=>wwv_flow_imp.id(33247212693934359074)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name, (select count(*) from apex_appl_acl_user_roles ur where r.role_id = ur.role_id) user_count, r.role_id',
'from  APEX_APPL_ACL_ROLES r',
'where r.application_id = :APP_ID',
'group by r.role_name, r.role_id',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(33247246590859359099)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33247457818024359417)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33247458205800359417)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33247458632969359418)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33247461726822359422)
,p_plug_name=>'Access Control Actions'
,p_parent_plug_id=>wwv_flow_imp.id(33247455992468359414)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(33247185261157359055)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(33247452152026359411)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(33247259563297359108)
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33247462127940359422)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(33247455599687359414)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(33247298966743359147)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(33247462559617359423)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(33247462127940359422)
,p_template=>wwv_flow_imp.id(33247212693934359074)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value feedback_status, ',
'(select count(*) from apex_team_feedback f where f.application_id = :APP_ID and f.feedback_status = l.return_value) feedback_count ',
'from apex_application_lov_entries l',
'where l.application_id = :APP_ID',
'and l.list_of_values_name = ''FEEDBACK_STATUS''',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(33247246590859359099)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33247463285902359424)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33247463679129359424)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33247465511514359427)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(33247462127940359422)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(33247185261157359055)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(33247453247672359412)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(33247259563297359108)
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33247456310467359414)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(33247455992468359414)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(33247274854578359121)
,p_button_image_alt=>'Add'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&SESSION.::&DEBUG.:RP,10042::'
,p_icon_css_classes=>'fa-user-plus'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33247460824045359421)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33247456310467359414)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33247461372161359421)
,p_event_id=>wwv_flow_imp.id(33247460824045359421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33247457135341359415)
);
wwv_flow_imp.component_end;
end;
/
