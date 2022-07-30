prompt --application/pages/page_00091
begin
--   Manifest
--     PAGE: 00091
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
 p_id=>91
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Product Details'
,p_alias=>'PRODUCT-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Product Details'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'10'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38883580125314109535)
,p_plug_name=>'Product Details'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.p(''<!DOCTYPE html>'');',
'htp.p(''<html lang="en">'');',
'htp.p(''<meta charset="UTF-8">'');',
'htp.p(''<TITLE>My Shop, Feni</TITLE>'');',
'htp.p(''<style type="text/css">',
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
'htp.p(''</head>'');',
'',
'',
'htp.p(''<body>'');',
'',
'for u in (select a.PRODUCT_ID,',
'           CASE WHEN NVL(dbms_lob.getlength(a.PRODUCT_IMAGE),0) = 0',
'    THEN NULL ',
'    ELSE CASE WHEN a.MIME_TYPE like ''image%''',
'    THEN ''<img style="max-width:250px" height="275px" width="350px" src="''||apex_util.get_blob_file_src(''P26_PRODUCT_IMAGE'',a.PRODUCT_ID)||''" />'' ',
'    ELSE ',
'    ''<a href="''||apex_util.get_blob_file_src(''P26_PRODUCT_IMAGE'',a.PRODUCT_ID)||''">Download</a>''',
'end',
'    END as pic,a.PRODUCT_CODE,a.PRODUCT_NAME,a.PRODUCT_DESCRIPTION,b.SELLING_PRICE,b.DISCOUNT,b.ORIGINAL_PRICE from PRODUCT a, PRODUCT_PRICE b ',
'          where a.PRODUCT_ID = b.PRODUCT_ID and a.PRODUCT_ID=:P91_ID)',
'loop',
'htp.p(''<table id="table_2" width="100%" style="padding-bottom: 5px;">',
'      <tr><td colspan="5">''||u.pic||''</td><td colspan="5" style="text-align:left;padding-left:50px;font-size:17px;line-height:1.4em">Product Code : ''||u.PRODUCT_CODE||'',    ',
'      <br>Product Name : ''||u.PRODUCT_NAME||'', ',
'      <br><br>Product Description : ''||u.PRODUCT_DESCRIPTION||'', ',
'      <br><br> Price : <b>''||u.SELLING_PRICE||''</b>, &nbsp&nbsp&nbsp Discount : <b>''||u.DISCOUNT||'',',
'      <br><b>Current Price : ''||u.ORIGINAL_PRICE||''',
'      </b></td>',
'            </tr>',
'</table><br>'');',
'end loop;',
'',
'htp.p(''<table id="table_3" width="100%" cellpadding="5px" style="text-align: center;">',
'      <tr>',
'      <th width="5%"></th>',
'      <th width="5%"></th>',
'    </tr>'');',
'',
'for x in (select c.COLOR,c.FABRIC,c.GENDER,STYLE,c.BRAND,c.PRODUCT_TYPE,c.OTHERS,c.PRODUCT_ID from PRODUCT_DETELS c, PRODUCT d',
'          where c.PRODUCT_ID = d.PRODUCT_ID and c.PRODUCT_ID=:P91_ID)',
'loop',
'htp.p(''<tr>',
'      <td style="text-align:left;font-size:17px;line-height:1.4em;width="50%";colspan="1";>Color : ''||x.COLOR|| ''</td>',
'      <td style="text-align:left;font-size:17px;line-height:1.4em;width="50%";colspan="1";>Fabric : ''||x.FABRIC|| ''</td>',
'      </tr>',
'      <tr>',
'      <td style="text-align:left;font-size:17px;line-height:1.4em;width="50%";colspan="1";>Gender : ''||x.GENDER|| ''</td>',
'      <td style="text-align:left;font-size:17px;line-height:1.4em;width="50%";colspan="1";>Style : ''||x.STYLE|| ''</td>',
'      </tr>',
'      <tr>',
'      <td style="text-align:left;font-size:17px;line-height:1.4em;width="50%";colspan="1";>Brand : ''||x.BRAND|| ''</td>',
'      <td style="text-align:left;font-size:17px;line-height:1.4em;width="50%";colspan="1";>Product Type : ''||x.PRODUCT_TYPE|| ''</td>',
'      </tr>',
'      <tr>',
'      <td style="text-align:left;font-size:17px;line-height:1.4em;width="50%";colspan="1";>Others : ''||x.OTHERS||''</td>',
'   </tr>'');',
'   ',
'end loop;',
'  ',
'htp.p(''</table>'');',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38883580257875109536)
,p_name=>'P91_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38883580125314109535)
,p_prompt=>'Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp.component_end;
end;
/
