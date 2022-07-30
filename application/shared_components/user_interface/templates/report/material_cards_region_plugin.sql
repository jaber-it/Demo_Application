prompt --application/shared_components/user_interface/templates/report/material_cards_region_plugin
begin
--   Manifest
--     ROW TEMPLATE: MATERIAL_CARDS_REGION_PLUGIN
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
 p_id=>wwv_flow_imp.id(25282274803471930265)
,p_row_template_name=>'Material Cards region plugin'
,p_internal_name=>'MATERIAL_CARDS_REGION_PLUGIN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="mdc-card demo-card demo-basic-with-text-over-media">',
'  <div class="mdc-card__primary-action demo-card__primary-action" tabindex="0">',
'    <div class="mdc-card__media mdc-card__media--16-9 demo-card__media" style="background-image: url(&quot;https://material-components.github.io/material-components-web-catalog/static/media/photos/3x2/2.jpg&quot;);">',
'      <div class="mdc-card__media-content demo-card__media-content">',
'        <div class="demo-card__primary">',
'          <h2 class="demo-card__title mdc-typography mdc-typography--headline6">#Title#</h2>',
'          <h3 class="demo-card__subtitle mdc-typography mdc-typography--subtitle2">#Title_subtitle#</h3>',
'        </div>',
'      </div>',
'    </div>',
'    <div class="demo-card__secondary mdc-typography mdc-typography--body2">#secondary_card#</div>',
'  </div>',
'  <div class="mdc-card__actions">',
'    <div class="mdc-card__action-buttons">',
'      <button class="mdc-button mdc-card__action mdc-card__action--button">  <span class="mdc-button__ripple"></span>#Read# </button>',
'      <button class="mdc-button mdc-card__action mdc-card__action--button">  <span class="mdc-button__ripple"></span>#Bookmark# </button>',
'    </div>',
'    <div class="mdc-card__action-icons">',
'      <button class="mdc-icon-button mdc-card__action mdc-card__action--icon--unbounded" aria-pressed="false" aria-label="Add to favorites" title="Add to favorites">',
'        <i class="material-icons mdc-icon-button__icon mdc-icon-button__icon--on">#favorite#</i>',
'        <i class="material-icons mdc-icon-button__icon">#favorite_border#</i>',
'      </button>',
'      <button class="mdc-icon-button material-icons mdc-card__action mdc-card__action--icon--unbounded" title="Share" data-mdc-ripple-is-unbounded="true">#share#</button>',
'      <button class="mdc-icon-button material-icons mdc-card__action mdc-card__action--icon--unbounded" title="More options" data-mdc-ripple-is-unbounded="true">#more_vert#</button>',
'    </div>',
'  </div>',
'</div>'))
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
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
);
wwv_flow_imp.component_end;
end;
/
