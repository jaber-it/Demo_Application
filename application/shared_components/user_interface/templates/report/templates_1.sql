prompt --application/shared_components/user_interface/templates/report/templates_1
begin
--   Manifest
--     ROW TEMPLATE: TEMPLATES_1
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
 p_id=>wwv_flow_imp.id(26142712854067845265)
,p_row_template_name=>'Templates 1'
,p_internal_name=>'TEMPLATES_1'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="containers #CONTAINER_CLASS#">',
'        <section class="teams" id="teams">',
'        <div class="max-width">',
'           <h2 class="title">TK- #ORIGINAL_PRICE# </h2>',
'           <div class="carousel owl-carousel">',
'               <div class="card">',
'                   <div class="box">',
'                       #CARD_IMAGE#',
'                       <div class="text">#CARD_TEXT#</div>',
'                       <p>#DESCRIPTION#</p>',
'                   </div>',
'               </div>',
'           </div>',
'        </div>',
'    </section>',
'</li> '))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="containers #CONTAINER_CLASS#">',
'        <section class="teams" id="teams">',
'        <div class="max-width">',
'           <h2 class="title">TK- #ORIGINAL_PRICE# </h2>',
'           <div class="carousel owl-carousel">',
'               <div class="card">',
'                   <div class="box">',
'                       #CARD_IMAGE#',
'                       <div class="text">#CARD_TEXT#</div>',
'                       <p>#DESCRIPTION#</p>',
'                   </div>',
'               </div>',
'           </div>',
'        </div>',
'    </section>',
'</li> '))
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
