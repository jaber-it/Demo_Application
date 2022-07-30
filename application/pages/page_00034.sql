prompt --application/pages/page_00034
begin
--   Manifest
--     PAGE: 00034
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
 p_id=>34
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Elegant Switch On Interactive Report'
,p_alias=>'ELEGANT-SWITCH-ON-INTERACTIVE-REPORT'
,p_step_title=>'Elegant Switch On Interactive Report'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(function() { ',
'  $("#movie_ig").on("interactivegridviewchange", function(event, data) { ',
'    if (data.view === "grid" && data.created) { ',
'      $("#movie_ig_ig_grid_vc").grid("hideColumn", "STATUS_ID");   ',
'    } ',
'  }); ',
'})'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'a-GV-headerLabel {',
'    white-space: normal;',
'}',
' ',
'#movie_ig .a-GV-cell {',
'    height: 41px;',
'}',
'/* by removing the height the edit fields will be centered */',
'#movie_ig .a-GV-cell .a-GV-columnItem {',
'    height: auto;',
'}',
' ',
'.wrap-cell {',
'    max-height: 128px;',
'    white-space: normal;',
'    overflow: hidden;',
'}',
' ',
'#movie_ig .a-IconList-item {',
'    width: 142px;',
'    height: 164px;',
'    text-align: center;',
'}',
'/* fix icon view styles */',
'.a-TMV .a-IconList-item.is-selected,',
'.a-TMV .a-IconList-item.is-selected.is-focused {',
'    background-color: #ecf3ff;',
'}',
'.a-TMV .a-IconList-item.is-focused {',
'   box-shadow: 0 0 0 1px #4696fc inset, 0 1px 2px rgba(0,0,0,.1);',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'21'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210604141932'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7144308190515501122)
,p_plug_name=>'Elegant Switch On Interactive Report'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent4:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247195628587359062)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <b>Function and Global Variable Declaration</b>',
'<div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%">$(<span style="color: #0000ff">function</span>() { ',
'  $(<span style="color: #a31515">&quot;#movie_ig&quot;</span>).on(<span style="color: #a31515">&quot;interactivegridviewchange&quot;</span>, <span style="color: #0000ff">function</span>(event, data) { ',
'    <span style="color: #0000ff">if</span> (data.view === <span style="color: #a31515">&quot;grid&quot;</span> &amp;&amp; data.created) { ',
'      $(<span style="color: #a31515">&quot;#movie_ig_ig_grid_vc&quot;</span>).grid(<span style="color: #a31515">&quot;hideColumn&quot;</span>, <span style="color: #a31515">&quot;SHOW_DATA&quot;</span>);   ',
'    } ',
'  }); ',
'})',
'</pre></div><br>',
'',
'<b>Inline CSS</b>',
'<div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%">a-GV-headerLabel {',
'    <span style="color: #0000ff">white-space</span>: <span style="color: #0000ff">normal</span>;',
'}',
' ',
'#movie_ig <span style="color: #2b91af">.a-GV-cell</span> {',
'    <span style="color: #0000ff">height</span>: 41px;',
'}',
'<span style="color: #008000">/* by removing the height the edit fields will be centered */</span>',
'#movie_ig <span style="color: #2b91af">.a-GV-cell</span> <span style="color: #2b91af">.a-GV-columnItem</span> {',
'    <span style="color: #0000ff">height</span>: <span style="color: #0000ff">auto</span>;',
'}',
' ',
'<span style="color: #2b91af">.wrap-cell</span> {',
'    <span style="color: #0000ff">max-height</span>: 128px;',
'    <span style="color: #0000ff">white-space</span>: <span style="color: #0000ff">normal</span>;',
'    <span style="color: #0000ff">overflow</span>: <span style="color: #0000ff">hidden</span>;',
'}',
' ',
'#movie_ig <span style="color: #2b91af">.a-IconList-item</span> {',
'    <span style="color: #0000ff">width</span>: 142px;',
'    <span style="color: #0000ff">height</span>: 164px;',
'    <span style="color: #0000ff">text-align</span>: <span style="color: #0000ff">center</span>;',
'}',
'<span style="color: #008000">/* fix icon view styles */</span>',
'<span style="color: #2b91af">.a-TMV</span> <span style="color: #2b91af">.a-IconList-item.is-selected</span>,',
'<span style="color: #2b91af">.a-TMV</span> <span style="color: #2b91af">.a-IconList-item.is-selected.is-focused</span> {',
'    <span style="color: #0000ff">background-color</span>: #ecf3ff;',
'}',
'<span style="color: #2b91af">.a-TMV</span> <span style="color: #2b91af">.a-IconList-item.is-focused</span> {',
'   box-shadow: 0 0 0 1px #4696fc <span style="color: #0000ff">inset</span>, 0 1px 2px rgba(0,0,0,.1);',
'}',
'</pre></div></br>',
'<b>IG - SQL Query</b>',
'<div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%"><span style="color: #0000ff">select</span> ID,',
'       NAME,',
'       <span style="color: #0000ff">YEAR</span>,',
'       <span style="color: #0000ff">SHOW</span> SHOW_DATA,',
'       <span style="color: #a31515">&#39;&lt;span style=&quot;white-space: nowrap;&quot;&gt;&#39;</span>',
'       ||<span style="color: #a31515">&#39;&lt;a href=&quot;javascript:void(0);&quot; &#39;</span>',
'       ||<span style="color: #a31515">&#39; class=&quot;high t-Button t-Button--success &#39;</span>|| decode(<span style="color: #0000ff">show</span>,<span style="color: #a31515">&#39;N&#39;</span>,<span style="color: #a31515">&#39;t-Button--simple&'
||'#39;</span>,<span style="color: #a31515">&#39;t-Button--success&#39;</span>)||<span style="color: #a31515">&#39; t-Button--pillStart&quot;&gt;Yes&lt;/a&gt;&#39;</span>',
'       ||<span style="color: #a31515">&#39;&lt;a href=&quot;javascript:void(0);&quot; &#39;</span>',
'       ||<span style="color: #a31515">&#39; class=&quot;medium t-Button t-Button--danger &#39;</span>|| decode(<span style="color: #0000ff">show</span>,<span style="color: #a31515">&#39;Y&#39;</span>,<span style="color: #a31515">&#39;t-Button--simple'
||'&#39;</span>,<span style="color: #a31515">&#39;t-Button--danger&#39;</span>)||<span style="color: #a31515">&#39; t-Button--pill&quot;&gt;No&lt;/a&gt;&#39;</span>',
'       ||<span style="color: #a31515">&#39;&lt;/span&gt;&#39;</span> SHOW_DISPLAY',
'<span style="color: #0000ff">from</span> movie',
'</pre></div></br>',
'<b>Create 2 DA</b>',
'<p><img alt="" src="ericsacramento/r/111708/files/static/v59/page43_ig_elegant_swtich.png" /></p></br>',
'<b>when click Yes</b>',
'<div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%"><span style="color: #0000ff">var</span> view = apex.region(<span style="color: '
||'#a31515">&quot;movie_ig&quot;</span>).widget().interactiveGrid(<span style="color: #a31515">&quot;getViews&quot;</span>, <span style="color: #a31515">&quot;grid&quot;</span>);',
' record = view.model.getRecord($(<span style="color: #0000ff">this</span>.triggeringElement).closest(<span style="color: #a31515">&#39;tr&#39;</span>).data(<span style="color: #a31515">&#39;id&#39;</span>));',
' view.model.setValue(record, <span style="color: #a31515">&quot;SHOW_DATA&quot;</span>, <span style="color: #a31515">&#39;Y&#39;</span>); ',
'$(<span style="color: #0000ff">this</span>.triggeringElement).removeClass(<span style="color: #a31515">&quot;t-Button--simple&quot;</span>);',
'$(<span style="color: #0000ff">this</span>.triggeringElement).parent().find(<span style="color: #a31515">&#39;.t-Button--danger&#39;</span>).addClass(<span style="color: #a31515">&quot;t-Button--simple&quot;</span>)',
'</pre></div>',
'<b>when click No</b>',
'<div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%"><span style="color: #0000ff">var</span> view = apex.region(<span style="color: '
||'#a31515">&quot;movie_ig&quot;</span>).widget().interactiveGrid(<span style="color: #a31515">&quot;getViews&quot;</span>, <span style="color: #a31515">&quot;grid&quot;</span>);',
' record = view.model.getRecord($(<span style="color: #0000ff">this</span>.triggeringElement).closest(<span style="color: #a31515">&#39;tr&#39;</span>).data(<span style="color: #a31515">&#39;id&#39;</span>)); ',
' view.model.setValue(record, <span style="color: #a31515">&quot;SHOW_DATA&quot;</span>, <span style="color: #a31515">&#39;N&#39;</span>); ',
'$(<span style="color: #0000ff">this</span>.triggeringElement).removeClass(<span style="color: #a31515">&quot;t-Button--simple&quot;</span>);',
'$(<span style="color: #0000ff">this</span>.triggeringElement).parent().find(<span style="color: #a31515">&#39;.t-Button--success&#39;</span>).addClass(<span style="color: #a31515">&quot;t-Button--simple&quot;</span>)',
'</pre></div></br>',
'<b>Create a Dynamic Action</b><br></br>',
'<p>When Press Add Row<br>',
'Event: Row Innitialization [Interactive Grid]<br>',
'Select Type: Region<br>',
'Region: YOUR IG<br>',
'when True<br>',
'Execute JavaScript Code</p>',
'<div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%"> $(<span style="color: #a31515">&quot;#movie_ig&quot;</span>).find(<span style='
||'"color: #a31515">&quot;tr.is-selected td.SHOW_DISPLAY&quot;</span>).html(<span style="color: #a31515">&#39;&lt;span style=&quot;white-space: nowrap;&quot;&gt;&lt;a href=&quot;javascript:void(0);&quot; class=&quot;high t-Button t-Button--success t-But'
||'ton--simple t-Button--pillStart&quot; tabindex=&quot;0&quot;&gt;Yes&lt;/a&gt;&lt;a href=&quot;javascript:void(0);&quot; class=&quot;medium t-Button t-Button--danger t-Button--danger t-Button--pill&quot; tabindex=&quot;0&quot;&gt;No&lt;/a&gt;&lt;/span'
||'&gt;&#39;</span>)',
'</pre></div></br>',
'Go to SHOW_DISPLAY column properties</br>',
'and then Appearance and set SHOW_DISPLAY on CSS Classes',
'     ',
'     ',
'   </div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7144309434605501135)
,p_plug_name=>'How to display corresponding texts on code multiple values columns.'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247210767798359072)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     <div style="background: #000000; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%"><span style="color: #cdcd00">select</span> <span style="color: #cccccc">pa'
||'ge_name,</span>',
'       <span style="color: #cccccc">(</span><span style="color: #cdcd00">select</span> ',
'          <span style="color: #cccccc">listagg(r.</span><span style="color: #cdcd00">role</span><span style="color: #cccccc">,</span> <span style="color: #cd0000">&#39;, &#39;</span><span style="color: #cccccc">)</span> <span style="color: #cccccc">w'
||'ithin</span> <span style="color: #cdcd00">group</span> <span style="color: #cccccc">(</span><span style="color: #cdcd00">order</span> <span style="color: #cdcd00">by</span> <span style="color: #cccccc">r.</span><span style="color: #cdcd00">role</span'
||'><span style="color: #cccccc">)</span>',
'        <span style="color: #cdcd00">from</span> <span style="color: #cccccc">roles</span> <span style="color: #cccccc">r,</span>',
'        <span style="color: #cdcd00">table</span><span style="color: #cccccc">(apex_string.split(p.condition,</span> <span style="color: #cd0000">&#39;:&#39;</span><span style="color: #cccccc">))</span> <span style="color: #cccccc">split</span>',
'        <span style="color: #cdcd00">where</span> <span style="color: #cccccc">r.code</span> <span style="color: #3399cc">=</span> <span style="color: #cccccc">split.column_value)</span> <span style="color: #cccccc">roles</span>',
'<span style="color: #cdcd00">from</span> <span style="color: #cccccc">page_access</span> <span style="color: #cccccc">p;</span>',
'</pre></div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7161487911998945419)
,p_plug_name=>'Elegant Switch On Report'
,p_region_name=>'movie_ig'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247210767798359072)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       OID,',
'       CAT_NAME_ENG,',
'       CAT_NAME_BANGLA,',
'       STATUS_ID,',
'              ''<span style="white-space: nowrap;">''',
'       ||''<a href="javascript:void(0);" ''',
'       ||'' class="high t-Button t-Button--success ''|| decode(STATUS_ID,''2'',''t-Button--simple'',''t-Button--success'')||'' t-Button--pillStart">Yes</a>''',
'       ||''<a href="javascript:void(0);" ''',
'       ||'' class="medium t-Button t-Button--danger ''|| decode(STATUS_ID,''1'',''t-Button--simple'',''t-Button--danger'')||'' t-Button--pill">No</a>''',
'       ||''</span>'' SHOW_DISPLAY',
'  from CATEGORY'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Elegant Switch On Report'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7144309768794501138)
,p_name=>'SHOW_DISPLAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHOW_DISPLAY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Show Display'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'SHOW_DISPLAY'
,p_attribute_05=>'MARKDOWN'
,p_format_mask=>'html'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7144309804552501139)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7144309931332501140)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7161489251994945420)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7161491782468945464)
,p_name=>'OID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Oid'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7161492718012945465)
,p_name=>'CAT_NAME_ENG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAT_NAME_ENG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cat Name Eng'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7161493891950945465)
,p_name=>'CAT_NAME_BANGLA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAT_NAME_BANGLA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Cat Name Bangla'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7161494971731945466)
,p_name=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Status Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(7161488498383945419)
,p_internal_uid=>7161488498383945419
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(7161488878506945420)
,p_interactive_grid_id=>wwv_flow_imp.id(7161488498383945419)
,p_static_id=>'71614889'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(7161489026822945420)
,p_report_id=>wwv_flow_imp.id(7161488878506945420)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7161489613924945421)
,p_view_id=>wwv_flow_imp.id(7161489026822945420)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(7161489251994945420)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7161492054563945464)
,p_view_id=>wwv_flow_imp.id(7161489026822945420)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(7161491782468945464)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7161493119784945465)
,p_view_id=>wwv_flow_imp.id(7161489026822945420)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(7161492718012945465)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7161494279098945466)
,p_view_id=>wwv_flow_imp.id(7161489026822945420)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(7161493891950945465)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7161495345321945466)
,p_view_id=>wwv_flow_imp.id(7161489026822945420)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(7161494971731945466)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7172447511752278608)
,p_view_id=>wwv_flow_imp.id(7161489026822945420)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(7144309768794501138)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7173922885869314089)
,p_view_id=>wwv_flow_imp.id(7161489026822945420)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(7144309804552501139)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7144308581534501126)
,p_name=>'when click Yes'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'span .t-Button--success'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7144308641971501127)
,p_event_id=>wwv_flow_imp.id(7144308581534501126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var view = apex.region("movie_ig").widget().interactiveGrid("getViews", "grid");',
' record = view.model.getRecord($(this.triggeringElement).closest(''tr'').data(''id''));',
' view.model.setValue(record, "STATUS_ID", ''1''); ',
'$(this.triggeringElement).removeClass("t-Button--simple");',
'$(this.triggeringElement).parent().find(''.t-Button--danger'').addClass("t-Button--simple")'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7144308724252501128)
,p_name=>'when click No'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'span .t-Button--danger'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7144308897513501129)
,p_event_id=>wwv_flow_imp.id(7144308724252501128)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var view = apex.region("movie_ig").widget().interactiveGrid("getViews", "grid");',
' record = view.model.getRecord($(this.triggeringElement).closest(''tr'').data(''id'')); ',
' view.model.setValue(record, "STATUS_ID", ''2''); ',
'$(this.triggeringElement).removeClass("t-Button--simple");',
'$(this.triggeringElement).parent().find(''.t-Button--success'').addClass("t-Button--simple")'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7144308996691501130)
,p_name=>'When Press Add Row'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(7161487911998945419)
,p_bind_type=>'live'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|apexbeginrecordedit'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7144309012896501131)
,p_event_id=>wwv_flow_imp.id(7144308996691501130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#movie_ig").find("tr.is-selected td.SHOW_DISPLAY").html(''<span style="white-space: nowrap;"><a href="javascript:void(0);" class="high t-Button t-Button--success t-Button--simple t-Button--pillStart" tabindex="0">Yes</a><a href="javascript:void(0);'
||'" class="medium t-Button t-Button--danger t-Button--danger t-Button--pill" tabindex="0">No</a></span>'')'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7144310058551501141)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7161487911998945419)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Elegant Switch On Report - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_only_for_changed_rows=>'N'
);
wwv_flow_imp.component_end;
end;
/
