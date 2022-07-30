prompt --application/pages/page_00029
begin
--   Manifest
--     PAGE: 00029
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
 p_id=>29
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Product Card, Templates 3'
,p_alias=>'PRODUCT-CARD-TEMPLATES-3'
,p_step_title=>'Product Card, Templates 3'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'10'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26049289947574909837)
,p_plug_name=>'Product Card, Templates 3'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.p(''<!DOCTYPE html>'');',
'htp.p(''<html>'');',
'htp.p(''<title>W3.CSS Template</title>'');',
'htp.p(''<meta charset="UTF-8">'');',
'htp.p(''<meta name="viewport" content="width=device-width, initial-scale=1">'');',
'htp.p(''<head>',
'  <meta charset="utf-8">',
'  <meta name="viewport" content="width=device-width, initial-scale=1">',
'  <title>Material Card Example</title>',
'  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">',
'  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700">',
'  <link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">',
'  <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>',
'</head>'');',
'htp.p(''<style>',
'',
'.t-Region--scrollBody>.t-Region-bodyWrap>.t-Region-body {',
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
'.mdc-card {',
'  width: 250px;',
'  margin: 20px;',
'  cursor: pointer;',
'  background: white;',
'  box-shadow: 5px 5px 15px rgba(0,0,0,0.9);',
'  font-family: roboto;',
'      transition: 0.5s ease; ',
'    cursor: pointer; ',
'    border-radius: 20px;',
'}',
'',
'.mdc-card:hover {',
'    transform: scale(1.10);',
'}',
'',
'.card-header {',
'  margin: 1.3rem 0;',
'  padding: 6px;',
'  display: flex;',
'  align-items: center;',
'}',
'',
'.card-header h2,',
'.card-header h3 {',
'  margin: 0;',
'}',
'',
'.card-icon {',
'  padding-right: 8px;',
'}',
'',
'.mdc-card__media {',
'  background: repeating-linear-gradient( 45deg, rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2) 10px, rgba(0, 0, 0, 0.3) 10px, rgba(0, 0, 0, 0.3) 20px), url(https://via.placeholder.com/100)',
'}',
'',
'.card-body {',
'  padding: 16px;',
'}',
'img {',
'    width: 100%;',
'    height: 100%;',
'}',
'',
'@media only screen and (max-width:990px){',
'    .mdc-card{',
'        margin-bottom:30px',
'    }',
'}',
'.cart {',
'    background-color: #f44336;',
'    color: white;',
'/*',
'    font-size: 16px;',
'    border-radius: 20px;',
'    text-align: center;',
'    .fa-shopping-cart: before {;',
'    content: "\f07a";',
'    margin-top: 8px; */',
'}',
'',
'    </style>'');',
'htp.p(''<body>'');',
'',
'',
'for u in (select a.PRODUCT_ID, ',
'            decode(nvl(dbms_lob.getlength(a.PRODUCT_IMAGE),0),0,null, ',
'       ''<img src="'' ',
'       ||apex_util.get_blob_file_src(''26_PRODUCT_IMAGE'',a.PRODUCT_ID)||''"height="200" width="300"/>'') PRODUCT_IMAGE,',
'    a.PRODUCT_DESCRIPTION,',
'     a.PRODUCT_NAME,',
'     a.PRODUCT_CODE,',
'     (select p.ORIGINAL_PRICE from PRODUCT_PRICE p where a.PRODUCT_ID = p.PRODUCT_ID) ORIGINAL_PRICE,',
'     (select p.SELLING_PRICE from PRODUCT_PRICE p where a.PRODUCT_ID = p.PRODUCT_ID) SELLPRICE,',
'     (select p.DISCOUNT from PRODUCT_PRICE p where a.PRODUCT_ID = p.PRODUCT_ID) DISPRICE',
'      from PRODUCT a)',
'',
'    ',
'loop',
'htp.p(''<div class="mdc-card">',
'    <div class="mdc-card__primary-action" tabindex="0">',
'      <div class="card-header">',
'        <div class="card-icon material-icons">android</div>',
'        <div class="card-title">',
'          <h2 class="mdc-typography--headline6">''||u.PRODUCT_CODE||''</h2>',
'          <h3 class="mdc-typography--subtitle2">''||u.PRODUCT_NAME||''</h3>',
'        </div>',
'      </div>',
'      <div class="mdc-card__media mdc-card__media--square">',
'        <div class="mdc-card__media-content">''||u.PRODUCT_IMAGE||''</div>',
'      </div>',
'    </div>',
'    <div class="card-body mdc-typography--body2">',
'      ''||u.PRODUCT_DESCRIPTION||''',
'    </div>',
'    <div class="mdc-card__actions">',
'      <div>',
'        <a href="#CARD_LINK#" class="mdc-button mdc-card__action mdc-card__action--button"> <span                     ',
'                    class="mdc-button__ripple"> View </span>',
'          </a>',
'        <a href="#LINK#" class="mdc-button mdc-card__action mdc-card__action--button"> ',
'            <span class="cart">',
'                    <i class="fa fa-shopping-cart" aria-hidden="true"></i> Add Cart </span>',
'        </a>',
'      </div>',
'      <div class="mdc-card__action-icons">',
'        <button class="material-icons mdc-icon-button mdc-card__action mdc-card__action--icon" title="Share">share</button>',
'        <button class="material-icons mdc-icon-button mdc-card__action mdc-card__action--icon" title="More options">more_vert</button>',
'      </div>',
'    </div>',
'  </div>'');',
'end loop;',
'',
'htp.p(''</body>'');',
'',
'htp.p(''</html>'');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp.component_end;
end;
/
