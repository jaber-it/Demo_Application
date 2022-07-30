prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Profile List View '
,p_alias=>'PROFILE-LIST-VIEW'
,p_step_title=>'Profile List View '
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'li.a-ListView-divider.ui-bar-inherit {',
'    background-color: rgba(0,0,0,.55);',
'    color: white;',
'}li.a-ListView-divider.ui-bar-inherit {',
'    background-color: rgba(0,0,0,.55);',
'    color: white;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'10'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210227164309'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38012293676793407605)
,p_plug_name=>'List View'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.p(''<!DOCTYPE html>'');',
'htp.p(''<html>'');',
'htp.p(''<head>'');',
'htp.p(''<meta name="viewport" content="width=device-width, initial-scale=1">'');',
'htp.p(''<style>',
'*{',
'    margin: 0;',
'    padding: 0;',
'}',
'.container{',
'',
'    font-family: sans-serif;',
'}',
'a{',
'    text-decoration: none;',
'}',
'.team-member{',
'    border: 1px solid rgba(42, 175, 192, 0.3);',
'    position: relative;',
'    overflow: hidden;',
'    border-radius: 100px;',
'    margin-bottom: 50px;',
'}',
'',
'.team-member .info{',
'    margin-left: 200px;',
'    padding: 15px 15px 15px 0;',
'}',
'.team-member .info h2{',
'    font-size: 16px;',
'    font-weight: 700;',
'    letter-spacing: 1px;',
'    margin-bottom: 5px;',
'}',
'.team-member .info span{',
'    font-size: 14px;',
'    margin-bottom: 10px;',
'    color: #2aafc0;',
'}',
'.team-member .info p{',
'    margin: 10px 0;',
'    font-size: 15px;',
'    font-weight: 300;',
'    color: #7f7f7f7f;',
'    line-height: 1.6;',
'}',
'',
'.team-member .img{',
'    width: 170px;',
'    height: 170px;',
'    border-radius: 50%;',
'    float: left;',
'    border: 5px solid #fff;',
'    outline: 0;',
'    vertical-align: middle;',
'    margin: 0;',
'}',
'',
'.team-member .icons .icon i{',
'    margin: 5px 10px;',
'    color: #333;',
'}',
'.team-member:hover{',
'    background: linear-gradient(to right, #2AAFC0, #6976c5);',
'    color: #fff;',
'}',
'.team-member:hover span{',
'    color: #fff;',
'}',
'.team-member:hover p{',
'    color: #ccc;',
'}',
'.team-member:hover .icons .icon i{',
'    color: #fff;',
'}',
'.team-member:hover img{',
'    border-color: #2AAFC0;',
'}',
'',
'@media only screen and (max-width: 100%) {',
'    img{',
'        padding: 15px 10px 10px 0;',
'    }',
'}',
'@media screen and (max-width: 100%) {',
'',
'  ',
'    .team-member {',
'      text-align: center;',
'      padding: 20px;',
'    }',
'    ',
'    .team-member .info {',
'      margin-top: 30px;',
'      margin-left: 0;',
'    }',
'}',
'.img {',
'    width: 100%;',
'    height: 165PX;',
'}',
'</style>'');',
'',
'for u in (select a.PRODUCT_ID, ',
'            dbms_lob.getlength(PRODUCT_IMAGE) IMAGE,',
'       a.PRODUCT_DESCRIPTION,',
'     a.PRODUCT_NAME,',
'     a.PRODUCT_CODE,',
'     (select p.ORIGINAL_PRICE from PRODUCT_PRICE p where a.PRODUCT_ID = p.PRODUCT_ID) ORIGINAL_PRICE,',
'     (select p.SELLING_PRICE from PRODUCT_PRICE p where a.PRODUCT_ID = p.PRODUCT_ID) SELLPRICE,',
'     (select p.DISCOUNT from PRODUCT_PRICE p where a.PRODUCT_ID = p.PRODUCT_ID) DISPRICE',
'      from PRODUCT a)',
'',
'loop',
'htp.p(''<body>',
'    <div class="container">',
'',
'            <div class="team-member">',
'                    ''||u.IMAGE||''',
'                    <div class="info">',
'                        <h2>''||u.PRODUCT_NAME||''</h2>',
'                        <span>''||u.PRODUCT_CODE||''</span>',
'                        <p>''||u.PRODUCT_DESCRIPTION||''</p>',
'                      <div class="icons">',
'                        <a href="#" class="icon">',
'                            <i class="fab fa-facebook-f"></i>',
'                        </a>',
'                        <a href="#" class="icon">',
'                            <i class="fab fa-twitter"></i>',
'                        </a>',
'                        <a href="#" class="icon">',
'                            <i class="fab fa-youtube"></i>',
'                        </a>',
'                      </div>',
'                   </div>',
'            </div>',
'            ',
'    </div>'');',
'',
'    end loop;',
'    ',
'htp.p(''</body>'');',
'htp.p(''</html>'');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp.component_end;
end;
/
