prompt --application/pages/page_00069
begin
--   Manifest
--     PAGE: 00069
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
 p_id=>69
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Region Refresh Using JavaScript In Apex'
,p_alias=>'REGION-REFRESH-USING-JAVASCRIPT-IN-APEX'
,p_step_title=>'Region Refresh Using JavaScript In Apex'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                    function myfnc(){',
'                        var region =apex.region("Refresh_Function");',
'                        region.refresh();',
'                    }'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setInterval(function(){',
' myfnc()',
'}, 5000)',
'',
'',
'setInterval("jQuery(''#Refresh_JavaScript'').trigger(''apexrefresh'');", 6000);'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'img {',
'    width: 100px;',
'    height: 12100px0px;',
'    padding: 10px 10px 10px 10px;',
'    border-radius: 20px;',
'/*    margin-top: 10px;  */',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16753115486576609303)
,p_plug_name=>'Region Refresh Using JavaScript In Apex'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html>',
'<head>',
'  <meta charset="utf-8">',
'  <meta name="viewport" content="width=device-width, initial-scale=1">',
'<script src="https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js?lang=css&amp;skin=sunburst"></script>',
'  <style type="text/css">',
'</head>',
'  ',
'<style>',
'body {',
'  font-family: ''apex-5-icon-font'';',
'  margin: 0;',
'}',
'html {',
'  box-sizing: border-box;',
'}',
'.about-section {',
'  line-height: 1.5;',
'  font-family: ''apex-5-icon-font'';',
'  font-size: 17px;',
'  color: black;',
'  padding: 7px 30px 7px 15px;',
'}',
'pre, code {',
'    position: relative;',
'    background: #13052e;		',
'  	border-radius: 15px 15px 15px 15px;',
'    display: block;',
'    margin-top: 0;',
'    margin-bottom: 1rem;',
'    overflow: auto;',
'    font-size: 14px;',
'      font-family: ''apex-5-icon-font'';',
'    direction: ltr;',
'    unicode-bidi: bidi-override;  ',
'      color: #fff;',
'}',
'.post-img {',
'    width: 100%;',
'    height: 370px;',
'  }',
' iframe { width: 100%; border-style: none; margin: 0; padding: 0; }',
'.attribution { padding-left: 1em; }  ',
'</style>',
'',
'<body>',
'  ',
'    <div class="about-section" font-size="16px"> ',
'            <h1>',
'               How To Region Auto Refresh After 3 Seconds, Using JavaScript And Functions, Oracle Apex Application.',
'            </h1><br>',
'        <p>',
'            In today''s post I will try to show you how your Oracle Apex application will Region auto refresh after 3 seconds using JavaScript and functions. <br>',
'        </p>',
'            <iframe allowfullscreen="" class="BLOG_video_class" height="348" src="https://www.youtube.com/embed/Ozoc4cpjBKY" width="619" youtube-src-id="Ozoc4cpjBKY"></iframe>',
'        <h2> ',
'            <b> Some discussion about Region Auto Refresh After 3 Seconds, Using JavaScript And Functions. </b> ',
'        </h2>',
'        <p> ',
'            Today I will try to show and discuss in detail how the region or report used in your Oracle Apex application will be auto refreshed from time to time in 2 ways.',
'             The use of Region auto refresh is especially useful in applications created through Oracle Apex. ',
'             Region auto refresh will play an important role in a variety of activities, including live chats created via Oracle Apex, live orders on e-commerce sites,',
'              and live sales of shopping applications. ',
'            Region auto refresh will be used in 2 ways, Region 1 will refresh through auto function and Region 2 will refresh using JavaScript. <br>',
'        </p>',
'        <h2> ',
'            <b>Steps to Region Auto Refresh After 3 Seconds, Using JavaScript And Functions. </b> ',
'        </h2>',
'        <p>',
'            1. In the first method, I will show you how to do Region auto refresh using function. <br>',
'            2. I will show you how to auto refresh Region using JavaScript in the second method.',
'             I hope you can easily use Region auto refresh for your Oracle Apex application using the SQL code provided by me. <br/><br>',
'        </p>',
'        <p>',
'            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<b> </h3> First Method, Region Auto Refresh Using Function </h3> </b> <br><br>',
'            <b> 1.  Create a classic report..................... </b> <br>',
'                    Name- Region auto refresh use function <br>',
'            <b> 2. Goto Classic Report Properties >>  </b><br> ',
'                 Advanced >> Static ID - Refresh_Function <br>',
'            <b> 3. Goto Page Properties >> </b> Function and Global Variable Declaration >> Paste the following code- <br> ',
'                <pre class="prettyprint lang-scm">',
'                    function myfnc(){',
'                        var region =apex.region("Refresh_Function");',
'                        region.refresh();',
'                    }',
'                </pre>',
'            <b> 4. Goto Page Properties >> </b> Execute when Page Loads >> Paste the following code- <br> ',
'                <pre class="prettyprint lang-scm">',
'                    setInterval(function(){',
'                     myfnc()',
'                    }, 5000) ',
'                </pre> <br> <br> ',
'',
'            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<b> </h3> Second Method, Region Auto Refresh Using JavaScript </h3> </b> <br><br>',
'            <b> 1.  Create a Classic Report..................... </b> <br>',
'                    Name- Region auto refresh use JavaScript <br>',
'            <b>   2. Goto Classic Report Properties >>  </b><br> ',
'                 Advanced >> Static ID - Refresh_JavaScript',
'            <b> 3. Goto Page Properties >> </b> <br> Execute when Page Loads Paste the following code- <br> ',
'                <pre class="prettyprint lang-scm">',
'                   setInterval("jQuery(''#Refresh_JavaScript'').trigger(''apexrefresh'');", 10000);',
'                </pre>',
'        </p>',
'        <p>',
'            <b>',
'                If there is any problem with the SQL code provided by me then you can definitely let me know by mail or mobile number and comment. I must give you any SQL code. User Authorization',
'            </b>',
'        </p>',
'        <p styel="font-size: 20px;"> ',
'            <b> See My Demo Application. </b><br/>',
'            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Url- <a href="https://apex.oracle.com/pls/apex/f?p=95068" target="_blank"><b> Demo Application </b></a><br/>',
'            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Username- demo, Pass- demo <br/><br/>',
'        </p>',
'        <p> ',
'            <img alt="Region Auto Refresh, Using JavaScript And Functions In Apex" border="2" class="post-img" ',
'            src="https://lh3.googleusercontent.com/-nEAcZFUiA-4/YbNohB-tz9I/AAAAAAAABmM/uK7DjxCeCWQ44oApY4NRfg9glpzDyVUawCEwYBhgLKtMDABHVOhzLm9lLsxpUNXhLZ3GCsKISJ4iOTEBDZhDRA644PY9Tl9F0rA_6nHdbsniXmkarieKJaDu0ZUTTyr4fOzioWSfkeLtdVregkhyysnVi-QB4eF07i'
||'b4VN2ORFBWkZj3Rrmfk30z8QELUixKeBkTB4PiGIRi4iYGM5JyO6Zz-Z9GWVaue6VfitHpn9NvshLTOO3BL-kUed1NO7eLoFn9T4kuKa78H4RzF2Z7RFsY5hTp276AJ6j4J5kuB8tqS6euAwoLkEeigVNTFHT3mllQIsgDvKwCd7_Z_QdrhQtGHfgGh2iK2oEFjq4i_kcyTjx-vp89k9_jDuFOJt-EqBNAXJ6mFWX6gP7gezWQ6qVxH8yx'
||'WTOISbfXgekVSKJI8ACBFb82jvsBkhDJFQklhWdU1chJHRfo8g7GHJSHhPKrpwnMl_Feuk1sL2kGtNgug-LK9zXoBiZ4rrYYoKfV08hneTEN4GAWGPMwTSfSEQWTJt2WDfdQWdgoaKd5Od5vGQNgImlmb7LelCHwECHnVLA9Xc37FmPXF06JlZ0A4rQWW1lDaWuhoUU7TTvMBJP4d5Qt3ABq3vn3jtUBuDciT7P_zA2LXt4DM7YjVBb2r-'
||'6Ilk9swi9bNjQY/w140-h54-p/Refresh%2BRegion%2BAfter%2B3%2BSeconds%252C%2BUsing%2BJavaScript%2BAnd%2BFunctions.jpg" ',
'            title="Region Auto Refresh, Using JavaScript And Functions In Apex" /> <br>',
'',
'            <h3> ',
'                <b>Links to all the parts related to User Authorization will be given below. </b><br>',
'            </h3>',
'            1. User Authorization Schemes, Part-1 Video Url- <a href="https://youtu.be/vSdzwnkFDRs" target="_blank"><b> https://youtu.be/vSdzwnkFDRs </b></a><br/>',
'            2. Add Create New Account button on the login page, User Authorization, Part-2 Video Url- <a href="https://youtu.be/IajwZ5dp6Qc" target="_blank"><b> https://youtu.be/IajwZ5dp6Qc </b></a><br/>',
'            3. Create a ChangePassword Page, User Authorization, Part-3 Video Url- <a href="https://youtu.be/iRXsO0MTOuM" target="_blank"><b> https://youtu.be/iRXsO0MTOuM </b></a><br/>',
'            4. Reset Password,  User Authorization, Part-4 Video Url- <a href="https://youtu.be/IK3PjyWGQIA" target="_blank"><b> https://youtu.be/IK3PjyWGQIA </b></a><br/>',
'            5. Dynamic Navigation Menu, User Authorization, Part-5 Video Url- <a href="https://youtu.be/Ozoc4cpjBKY" target="_blank"><b> https://youtu.be/Ozoc4cpjBKY </b></a><br/>',
'            6. Set Menu According To User Access Role, User Authorization Part-6 Video URL- <a href="https://youtu.be/X407N_N2HNM" target="_blank"><b> https://youtu.be/X407N_N2HNM </b></a><br/>',
'            7. Add Edit Button in Report According to User Access Role || Oracle APEX? User Authentication, Part-7.User Authorization Video URL- <a href="https://youtu.be/n9W64qUoS1E" target="_blank"><b> https://youtu.be/n9W64qUoS1E </b></a><br/>',
'            8. Access google authentication in Oracle Apex | Google Authentication. User Authorization Video URL- <a href="https://youtu.be/X407N_N2HNM" target="_blank"><b> https://youtu.be/X407N_N2HNM </b></a><br/>',
'            9. Change Password in Email Verification if you Forget Your Password. User Authorization Video URL- <a href="https://youtu.be/MPZQuraig7w" target="_blank"><b> https://youtu.be/MPZQuraig7w </b></a><br/><br/>',
'',
'',
'            Hope you find this post helpful User Authorization. To see more about Oracle Apex User Authorization, you can visit my website. <br/>',
'            You can also visit my youtube channel. I try my best to share my education with everyone. I will always try to give you something new. Please help by subscribing to my youtube channel. <br/><br/>',
'            <b>Many thanks for visiting the site. </b>',
'        </p>',
'        <h2>',
'            <b> Then Enjoy......................... </b> <br> Custom and Dynamic Navigation Menu, User Authentication, Part-5 ',
'        </h2>',
'    </div>',
'</body>',
'</html>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(16753115528086609304)
,p_name=>'Region auto refresh use function'
,p_region_name=>'Refresh_Function'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRODUCT_ID,',
'       PRODUCT_CODE,',
'       PRODUCT_NAME,',
'        substr(PRODUCT_DESCRIPTION,1,70) PRODUCT_DESCRIPTION,',
'       DBMS_LOB.getlength (PRODUCT_IMAGE) AS PRODUCT_IMAGE,',
'       CATEGORY,',
'       GROUP_NAME',
'  from PRODUCT'))
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
 p_id=>wwv_flow_imp.id(16753115664831609305)
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
 p_id=>wwv_flow_imp.id(16753115729997609306)
,p_query_column_id=>2
,p_column_alias=>'PRODUCT_CODE'
,p_column_display_sequence=>20
,p_column_heading=>'Product Code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16753115857319609307)
,p_query_column_id=>3
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16753115955772609308)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT_DESCRIPTION'
,p_column_display_sequence=>40
,p_column_heading=>'Product Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16753116082213609309)
,p_query_column_id=>5
,p_column_alias=>'PRODUCT_IMAGE'
,p_column_display_sequence=>50
,p_column_heading=>'Product Image'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:PRODUCT:PRODUCT_IMAGE:PRODUCT_ID::MIME_TYPE::::::'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16753116194601609310)
,p_query_column_id=>6
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>60
,p_column_heading=>'Category'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16753116280859609311)
,p_query_column_id=>7
,p_column_alias=>'GROUP_NAME'
,p_column_display_sequence=>70
,p_column_heading=>'Group Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(16753116939825609318)
,p_name=>'Region auto refresh use JavaScript'
,p_region_name=>'Refresh_JavaScript'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRODUCT_ID,',
'       PRODUCT_CODE,',
'       PRODUCT_NAME,',
'        substr(PRODUCT_DESCRIPTION,1,70) PRODUCT_DESCRIPTION,',
'       DBMS_LOB.getlength (PRODUCT_IMAGE) AS PRODUCT_IMAGE,',
'       CATEGORY,',
'       GROUP_NAME',
'  from PRODUCT'))
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
 p_id=>wwv_flow_imp.id(16753117044446609319)
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
 p_id=>wwv_flow_imp.id(16753117155495609320)
,p_query_column_id=>2
,p_column_alias=>'PRODUCT_CODE'
,p_column_display_sequence=>20
,p_column_heading=>'Product Code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16753117201195609321)
,p_query_column_id=>3
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16753117344504609322)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT_DESCRIPTION'
,p_column_display_sequence=>40
,p_column_heading=>'Product Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16753117492838609323)
,p_query_column_id=>5
,p_column_alias=>'PRODUCT_IMAGE'
,p_column_display_sequence=>50
,p_column_heading=>'Product Image'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:PRODUCT:PRODUCT_IMAGE:PRODUCT_ID::MIME_TYPE::::::'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16753117518877609324)
,p_query_column_id=>6
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>60
,p_column_heading=>'Category'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16753117613830609325)
,p_query_column_id=>7
,p_column_alias=>'GROUP_NAME'
,p_column_display_sequence=>70
,p_column_heading=>'Group Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp.component_end;
end;
/
