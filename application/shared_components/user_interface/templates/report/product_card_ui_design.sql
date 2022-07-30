prompt --application/shared_components/user_interface/templates/report/product_card_ui_design
begin
--   Manifest
--     ROW TEMPLATE: PRODUCT_CARD_UI_DESIGN
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(26037435492843164126)
,p_row_template_name=>'Product Card UI Design'
,p_internal_name=>'PRODUCT_CARD_UI_DESIGN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="containers #CONTAINER_CLASS#">',
'        <div class="card">',
'                <div style="width: 200px; margin: 5px; box-shadow: 5px 5px 15px rgba(0,0,0,0.9); transition: 0.5s ease; cursor: pointer; border-radius: 30px; margin: 15px;">',
'                    <div style="width: 100%; height: 150px; justify-content: center; align-items: center; background: #fa782e; background: -moz-linear-gradient(-45deg, #fa782e 8%, #c82930 83%); background: -webkit-linear-gradient(-45deg, #fa782e 8%, '
||'#c82930 83%); background: linear-gradient(135deg, #fa782e 8%, #c82930 83%); filter: progid: DXImageTransform.Microsoft.gradient( startColorstr=#fa782e, endColorstr=#c82930, GradientType=1); border-radius: 25px 25px 0 0;">',
'                        #CARD_IMAGE#',
'                    </div>',
'',
'                <div style=" width: 100%; background: #fff; border-radius: 0 0 25px 25px;">',
'',
'                        <div class="product-desc">',
'                            <span style="padding: 0px 0px 10px 10px; display: inline-block; font-size: 16px; letter-spacing: 1px; text-align: left; margin-top: 58px;">',
'                                <b>#CARD_TEXT#</b>',
'                            <span style="padding: 0px 5px; font-size: 11px; text-align: center; display: block;">',
'                                <i class="fa fa-star"></i>',
'                                <i class="fa fa-star"></i>',
'                                <i class="fa fa-star"></i>',
'                                <i class="fa fa-star"></i>',
'                                <i class="fa fa-star grey"></i>',
'                            </span>',
'                        </div>',
'                            <div style="width: 100%; padding: 0px 0px 15px 10px; text-align: center;">',
'                                <span class="product-size">',
'                                    <ul class="ul-size">',
'                                        <li><a href="#" style="background: #f35e3d; color: #fff;">S</a></li>',
'                                        <li><a href="#" style="background: #f35e3d; color: #fff;">M</a></li>',
'                                        <li><a href="#" style="background: #f35e3d; color: #fff;">L</a></li>',
'                                        <li><a href="#" style="background: #f35e3d; color: #fff;">XL</a></li>',
'                                        <li><a href="#" style="background: #f35e3d; color: #fff;">XXL</a></li>',
'                                    </ul>',
'                                </span>',
'                            </div>',
'',
'                            <div style="display: inline-block; padding: 10px 0px 8px 10px;"><span style="text-align: left; font-size: 15px; padding: 10px 10px 10px 10px;">TK-<b>#PRICE#</b></span>',
'                                <span style="text-align: left; font-size: 12px; text-decoration: line-through;"><b>#SELLPRICE#</b></span>',
'                                <span style="font-size: 12px;"<b>#DISPRICE#</b></span>',
'                            </div>',
'',
'                            <div style="padding: 5px 0px 15px 15px;"> ',
'                                <a href="#LINK#"><div <span style="background-color: #f44336; color: white; width: 90%; font-size: 1.8rem; padding: 0.6rem; font-weight: 600; border-radius: 20px 20px; text-align: center; fa-shopping-cart: before {;con'
||'tent: "\f07a"; margin-top: 8px;"> <i class="fa fa-shopping-cart" aria-hidden="true"></i> Add Cart</div></a>',
'                            </div>           ',
'',
'',
'        </div>',
'    </div>',
'</div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
);
wwv_flow_imp.component_end;
end;
/
