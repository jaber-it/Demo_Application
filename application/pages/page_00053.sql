prompt --application/pages/page_00053
begin
--   Manifest
--     PAGE: 00053
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
 p_id=>53
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Product Details'
,p_alias=>'PRODUCT-DETAILS'
,p_step_title=>'Product Details'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function product_report(){',
'    apex.server.process("PRODUCT_DETAILS", ',
'    {x01:apex.item(''P53_PRODUCT_ID'').getValue()},',
'    {dataType: ''text'',',
'    success: function(pData){',
'        $("#product_det").html(pData);',
'    }});',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'10'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220218164453'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40816553643677693001)
,p_plug_name=>'Product Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.p(''<span id="product_det"></span>'');',
'',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40816553725942693002)
,p_plug_name=>'Product List'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>3
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40816553879144693003)
,p_name=>'P53_PRODUCT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(40816553725942693002)
,p_prompt=>'Product Id'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRODUCT_CODE || '',''  || PRODUCT_NAME d, PRODUCT_ID r',
'from PRODUCT '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40801679340530353509)
,p_name=>'Product Report Refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P53_PRODUCT_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40801679458351353510)
,p_event_id=>wwv_flow_imp.id(40801679340530353509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#product_det'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'product_report(); '
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40801679227174353508)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRODUCT_DETAILS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    HTP.p (''<!DOCTYPE html>'');',
'    HTP.p (''<html lang="en">'');',
'    HTP.p (''<meta charset="UTF-8">'');',
'    HTP.p (''<TITLE>My Shop, Feni</TITLE>'');',
'    HTP.p (''<style type="text/css">',
'      body{',
'          width: auto;',
'      }',
'      /*header table 1 css*/',
'      #table_1 h3{',
'          font-size: 30px;',
'          margin:0px;',
'      }',
'      #table_1 tr td{',
'          font-size: 20px;',
'          margin:0px;',
'      }',
'      #table_3,',
'      #table_3 tr td{',
'          font-size: 15px;',
'          margin:0px;',
'      }',
'      #table_3 th,',
'      #table_3 td{',
'        border: 0px;',
'      }',
'      ',
'th {',
'  padding-top: 2px;',
'  padding-bottom: 0px;',
'  text-align: center;',
'  background-color: #4CAF50;',
'  color: white;',
'}',
'    </style>'');',
'    HTP.p (''</head>'');',
'',
'',
'    HTP.p (''<body>'');',
'',
'    FOR u',
'        IN (SELECT a.PRODUCT_ID,',
'                   CASE',
'                       WHEN NVL (DBMS_LOB.getlength (a.PRODUCT_IMAGE), 0) = 0',
'                       THEN',
'                           NULL',
'                       ELSE',
'                           CASE',
'                               WHEN a.MIME_TYPE LIKE ''image%''',
'                               THEN',
'                                      ''<img src="''',
'                                   || APEX_UTIL.get_blob_file_src (',
'                                          ''P55_PRODUCT_IMAGE'',',
'                                          a.PRODUCT_ID)',
'                                   || ''" style="border: 4px solid #CCC; -moz-border-radius: 4px; -webkit-border-radius: 4px;" ''',
'                                   || ''"',
'        width = "350" height="275" />''',
'                               ELSE',
'                                      ''<a href="''',
'                                   || APEX_UTIL.get_blob_file_src (',
'                                          ''P55_PRODUCT_ID'',',
'                                          a.PRODUCT_ID)',
'                                   || ''">Download</a>''',
'                           END',
'                   END    AS pic,',
'                   a.PRODUCT_CODE,',
'                   a.PRODUCT_NAME,',
'                   a.PRODUCT_DESCRIPTION,',
'                   b.SELLING_PRICE,',
'                   b.DISCOUNT,',
'                   b.ORIGINAL_PRICE',
'              FROM PRODUCT a, PRODUCT_PRICE b',
'             WHERE     a.PRODUCT_ID = b.PRODUCT_ID',
'                   AND a.PRODUCT_ID = apex_application.g_x01)',
'    LOOP',
'        HTP.p (',
'               ''<table id="table_2" width="100%" style="padding-bottom: 5px;">',
'      <tr><td colspan="5">''',
'            || u.pic',
'            || ''</td><td colspan="5" style="text-align:left;padding-left:50px;font-size:17px;line-height:1.4em">Product Code : ''',
'            || u.PRODUCT_CODE',
'            || '',    ',
'      <br>Product Name : ''',
'            || u.PRODUCT_NAME',
'            || '', ',
'      <br><br>Product Description : ''',
'            || u.PRODUCT_DESCRIPTION',
'            || '', ',
'      <br><br> Price : <b>''',
'            || u.SELLING_PRICE',
'            || ''</b>, &nbsp&nbsp&nbsp Discount : <b>''',
'            || u.DISCOUNT',
'            || '',',
'      <br><b>Current Price : ''',
'            || u.ORIGINAL_PRICE',
'            || ''',
'      </b></td>',
'            </tr>',
'</table><br>'');',
'    END LOOP;',
'',
'    HTP.p (',
'        ''<table id="table_3" width="100%" cellpadding="5px" style="text-align: center;">',
'      <tr>',
'      <th width="5%"></th>',
'      <th width="5%"></th>',
'    </tr>'');',
'',
'    FOR x',
'        IN (SELECT c.COLOR,',
'                   c.FABRIC,',
'                   c.GENDER,',
'                   STYLE,',
'                   c.BRAND,',
'                   c.PRODUCT_TYPE,',
'                   c.OTHERS,',
'                   c.PRODUCT_ID',
'              FROM PRODUCT_DETELS c, PRODUCT d',
'             WHERE     c.PRODUCT_ID = d.PRODUCT_ID',
'                   AND c.PRODUCT_ID = apex_application.g_x01)',
'    LOOP',
'        HTP.p (',
'               ''<tr>',
'      <td style="text-align:left;font-size:17px;line-height:1.4em;width="50%";colspan="1";>Color : ''',
'            || x.COLOR',
'            || ''</td>',
'      <td style="text-align:left;font-size:17px;line-height:1.4em;width="50%";colspan="1";>Fabric : ''',
'            || x.FABRIC',
'            || ''</td>',
'      </tr>',
'      <tr>',
'      <td style="text-align:left;font-size:17px;line-height:1.4em;width="50%";colspan="1";>Gender : ''',
'            || x.GENDER',
'            || ''</td>',
'      <td style="text-align:left;font-size:17px;line-height:1.4em;width="50%";colspan="1";>Style : ''',
'            || x.STYLE',
'            || ''</td>',
'      </tr>',
'      <tr>',
'      <td style="text-align:left;font-size:17px;line-height:1.4em;width="50%";colspan="1";>Brand : ''',
'            || x.BRAND',
'            || ''</td>',
'      <td style="text-align:left;font-size:17px;line-height:1.4em;width="50%";colspan="1";>Product Type : ''',
'            || x.PRODUCT_TYPE',
'            || ''</td>',
'      </tr>',
'      <tr>',
'      <td style="text-align:left;font-size:17px;line-height:1.4em;width="50%";colspan="1";>Others : ''',
'            || x.OTHERS',
'            || ''</td>',
'   </tr>'');',
'    END LOOP;',
'',
'    HTP.p (''</table>'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
