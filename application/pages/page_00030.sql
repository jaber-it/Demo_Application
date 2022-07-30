prompt --application/pages/page_00030
begin
--   Manifest
--     PAGE: 00030
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
 p_id=>30
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Product Card, Templates 4'
,p_alias=>'PRODUCT-CARD-TEMPLATES-4'
,p_step_title=>'Product Card, Templates 4'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'10'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26049290009022909838)
,p_plug_name=>'Product Card'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.p(''<!DOCTYPE html>'');',
'htp.p(''<html>'');',
'htp.p(''<head>'');',
'htp.p(''<meta name="viewport" content="width=device-width, initial-scale=1">'');',
'htp.p(''<style>',
'',
'',
'html {',
'  box-sizing: border-box;',
'}',
'',
'*, *:before, *:after {',
'  box-sizing: inherit;',
'}',
'',
'.column {',
'    max-width: 205px;',
'  float: left;',
'  width: 33.3%;',
'  margin-bottom: 16px;',
'  padding: 0 8px;',
'}',
'',
'@media screen and (max-width: 650px) {',
'  .column {',
'    width: 100%;',
'    display: block;',
'  }',
'}',
'',
'.card {',
'  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);',
'}',
'',
'.container {',
'    display: inline;',
'    flex-wrap: wrap;',
'    flex-wrap: wrap;',
'    justify-content: center;',
'    align-items: center;',
'    align-content: center;',
'    align-self: center;',
'    text-align: center;',
'    transition: 0.5s ease; ',
'    cursor: pointer; ',
'  padding: 0 16px;',
'}',
'',
'.row {',
'    display: contents;',
'    flex-wrap: wrap;',
'}',
'',
'.container::after, .row::after {',
'  content: "";',
'  clear: both;',
'',
'}',
'',
'',
'.title {',
'  color: grey;',
'}',
'',
'.button {',
'  border: none;',
'  outline: 0;',
'  display: inline-block;',
'  padding: 8px;',
'  color: white;',
'  background-color: #000;',
'  text-align: center;',
'  cursor: pointer;',
'  width: 100%;',
'}',
'',
'.button:hover {',
'  background-color: #555;',
'}',
'',
'img {',
'    width: 100%;',
'    height: 160px;',
'}',
'</style>'');',
'htp.p(''</head>'');',
'htp.p(''<body>'');',
'',
'for u in (select a.PRODUCT_ID, ',
'       decode(nvl(dbms_lob.getlength(PRODUCT_IMAGE),0),0,null, ',
'       ''<img src="'' ',
'       ||apex_util.get_blob_file_src(''P9_PRODUCT_IMAGE'',PRODUCT_ID)||''"/>'') PRODUCT_IMAGE,',
'       a.PRODUCT_DESCRIPTION,',
'     a.PRODUCT_NAME,',
'     a.PRODUCT_CODE,',
'     (select p.ORIGINAL_PRICE from PRODUCT_PRICE p where a.PRODUCT_ID = p.PRODUCT_ID) ORIGINAL_PRICE,',
'     (select p.SELLING_PRICE from PRODUCT_PRICE p where a.PRODUCT_ID = p.PRODUCT_ID) SELLPRICE,',
'     (select p.DISCOUNT from PRODUCT_PRICE p where a.PRODUCT_ID = p.PRODUCT_ID) DISPRICE',
'      from PRODUCT a',
'      where a.PRODUCT_NAME=nvl(:P30_MYINPUT, a.PRODUCT_NAME)',
'      )',
'',
'loop',
'htp.p(''<div class="row" >',
'  <div class="column">',
'    <div class="card">',
'      ''||u.PRODUCT_IMAGE||''',
'      <div class="container">',
'        <h2>''||u.PRODUCT_NAME||''</h2>',
'        <p class="title">CEO & Founder</p>',
'        <p>Some text that describes me lorem ipsum ipsum lorem.</p>',
'        <p>example@example.com</p>',
'        <p><button class="button">Contact</button></p>',
'      </div>',
'    </div>',
'  </div>'');',
'',
'end loop;',
'',
'htp.p(''</body>'');',
'htp.p(''</html>'');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27489894411363502343)
,p_name=>'P30_MYINPUT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26049290009022909838)
,p_prompt=>'Myinput'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp.component_end;
end;
/
