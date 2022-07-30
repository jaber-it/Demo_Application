prompt --application/pages/page_00060
begin
--   Manifest
--     PAGE: 00060
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
 p_id=>60
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Set Alarm In Oracle Apex Using HTML, CSS, JavaScript'
,p_alias=>'SET-ALARM-IN-ORACLE-APEX-USING-HTML-CSS-JAVASCRIPT'
,p_step_title=>'Set Alarm In Oracle Apex Using HTML, CSS, JavaScript'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'',
'var ac = {',
'  // (A) INITIALIZE ALARM CLOCK',
'  init : function () {',
'    // (A1) GET THE CURRENT TIME - HOUR, MIN, SECONDS',
'    ac.chr = document.getElementById("chr");',
'    ac.cmin = document.getElementById("cmin");',
'    ac.csec = document.getElementById("csec");',
'',
'    // (A2) CREATE TIME PICKER - HR, MIN, SEC',
'    ac.thr = ac.createSel(23);',
'    document.getElementById("tpick-h").appendChild(ac.thr);',
'    ac.thm = ac.createSel(59);',
'    document.getElementById("tpick-m").appendChild(ac.thm);',
'    ac.ths = ac.createSel(59);',
'    document.getElementById("tpick-s").appendChild(ac.ths);',
'',
'    // (A3) CREATE TIME PICKER - SET, RESET',
'    ac.tset = document.getElementById("tset");',
'    ac.tset.addEventListener("click", ac.set);',
'    ac.treset = document.getElementById("treset");',
'    ac.treset.addEventListener("click", ac.reset);',
'',
'    // (A4) GET ALARM SOUND',
'    ac.sound = document.getElementById("alarm-sound");',
'',
'    // (A5) START THE CLOCK',
'    ac.alarm = null;',
'    setInterval(ac.tick, 1000);',
'  },',
'',
'  // (B) SUPPORT FUNCTION - CREATE SELECTOR FOR HR, MIN, SEC',
'  createSel : function (max) {',
'    var selector = document.createElement("select");',
'    for (var i=0; i<=max; i++) {',
'      var opt = document.createElement("option");',
'      i = ac.padzero(i);',
'      opt.value = i;',
'      opt.innerHTML = i;',
'      selector.appendChild(opt);',
'    }',
'    return selector',
'  },',
'',
'  // (C) SUPPORT FUNCTION - PREPEND HR, MIN, SEC WITH 0 (IF < 10)',
'  padzero : function (num) {',
'    if (num < 10) { num = "0" + num; }',
'    else { num = num.toString(); }',
'    return num;',
'  },',
'',
'  // (D) UPDATE CURRENT TIME',
'  tick : function () {',
'    // (D1) CURRENT TIME',
'    var now = new Date();',
'    var hr = ac.padzero(now.getHours());',
'    var min = ac.padzero(now.getMinutes());',
'    var sec = ac.padzero(now.getSeconds());',
'',
'    // (D2) UPDATE HTML CLOCK',
'    ac.chr.innerHTML = hr;',
'    ac.cmin.innerHTML = min;',
'    ac.csec.innerHTML = sec;',
'',
'    // (D3) CHECK AND SOUND ALARM',
'    if (ac.alarm != null) {',
'      now = hr + min + sec;',
'      if (now == ac.alarm) {',
'        if (ac.sound.paused) { ac.sound.play(); }',
'      }',
'    }',
'  },',
'',
'  // (E) SET ALARM',
'  set : function () {',
'    ac.alarm = ac.thr.value + ac.thm.value + ac.ths.value;',
'    ac.thr.disabled = true;',
'    ac.thm.disabled = true;',
'    ac.ths.disabled = true;',
'    ac.tset.disabled = true;',
'    ac.treset.disabled = false;',
'  },',
'',
'  // (F) RESET ALARM',
'  reset : function () {',
'    if (!ac.sound.paused) { ac.sound.pause(); }',
'    ac.alarm = null;',
'    ac.thr.disabled = false;',
'    ac.thm.disabled = false;',
'    ac.ths.disabled = false;',
'    ac.tset.disabled = false;',
'    ac.treset.disabled = true;',
'  }',
'};',
'',
'// (G) START CLOCK ON PAGE LOAD',
'window.addEventListener("load", ac.init);',
'</script>'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function($) {',
'    ',
'$(window).on(''theme42ready'', function() {',
'    /* Make sure that the navigation menu is collapsed on page load */',
'    if ($(''.t-PageBody'').hasClass(''js-navExpanded'')) {',
'        $(''#t_Button_navControl'').click();',
'    }',
'',
'    /* Expand on mouse over, collapse on mouse out */',
'    $(''.apex-side-nav .t-Body-nav'').hover(',
'        function(){',
'            //only expand if the side menu is collapsed',
'            $(''.t-PageBody:not(.js-navExpanded) #t_Button_navControl'').click();',
'        },',
'        function() {',
'            $(''#t_Button_navControl'').click();',
'        }',
'    );',
'});',
'',
'})(apex.jQuery);'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    .js-navCollapsed .t-TreeNav .a-TreeView-node--topLevel>.a-TreeView-content.is-hover .a-TreeView-label {',
' visibility: visible;',
' left: 48px;',
' padding: 0 16px;',
' width: auto; ',
' background-color: #0459a1; /* This would be your primary color */',
'}',
'',
'.apex-side-nav.js-navCollapsed .t-Body-nav',
', .apex-side-nav.js-navCollapsed .t-Body-nav .t-TreeNav {',
'    z-index: 1100; /* Make it appear on top of the page content */',
'}',
'',
'',
'',
'#ctime, #tpick {',
'  font-family: Impact, sans-serif;',
'}',
'.header {',
'  text-align: center;',
'  font-weight: normal;',
'  margin: 5px 0 10px 0;',
'}',
'',
'/* (B) CURRENT TIME */',
'#ctime {',
'  margin: 0 auto;',
'  max-width: 350px;',
'  padding: 10px;',
'  background: #000;',
'  text-align: center;',
'}',
'#ctime .header {',
'  color: #c61d1d;',
'}',
'#ctime .square {',
'  display: inline-block;',
'  padding: 10px;',
'  margin: 5px;',
'}',
'#ctime .digits {',
'  font-size: 24px;',
'  background: #fff;',
'  color: #000;',
'  padding: 20px 10px;',
'  border-radius: 5px;',
'}',
'#ctime .text {',
'  margin-top: 10px;',
'  color: #ddd;',
'}',
'',
'/* (C) TIME PICKER */',
'#tpick {',
'  margin: 0 auto;',
'  max-width: 350px;',
'  padding: 10px;',
'  background: #f2f2f2;',
'  white-space: nowrap;',
'}',
'#tpick-h, #tpick-m, #tpick-s {',
'  display: inline-block;',
'  width: 32%;',
'}',
'#tpick select {',
'  box-sizing: padding-box;',
'  width: 100%;',
'  font-size: 1.2em;',
'  font-weight: bold;',
'  margin: 20px 0;',
'}',
'#tset, #treset {',
'  box-sizing: padding-box;',
'  width: 50%;',
'  background: #3368b2;',
'  color: #fff;',
'  padding: 10px;',
'  border: 0;',
'  cursor: pointer;',
'}',
'#tset:disabled, #treset:disabled {',
'  background: #aaa;',
'  color: #888;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51139774413189782711)
,p_plug_name=>'Set Alarm In Oracle Apex'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!-- (A) CURRENT TIME -->',
'<div id="ctime">',
'  <h1 class="header">THE CURRENT TIME</h1>',
'  <div class="square">',
'    <div class="digits" id="chr">00</div>',
'    <div class="text">HR</div>',
'  </div>',
'  <div class="square">',
'    <div class="digits" id="cmin">00</div>',
'    <div class="text">MIN</div>',
'  </div>',
'  <div class="square">',
'    <div class="digits" id="csec">00</div>',
'    <div class="text">SEC</div>',
'  </div>',
'</div>',
'',
'<!-- (B) SET ALARM -->',
'<div id="tpick">',
'  <h1 class="header">',
'    SET ALARM',
'  </h1>',
'  <div id="tpick-h"></div>',
'  <div id="tpick-m"></div>',
'  <div id="tpick-s"></div>',
'  <div>',
'    <input type="button" value="Set" id="tset"/>',
'    <input type="button" value="Reset" id="treset" disabled/>',
'  </div>',
'</div>',
'',
'<!-- (C) ALARM SOUND -->',
'<audio id="alarm-sound" loop>',
'  <source src="#APP_FILES#iphone_xr.mp3" type="audio/mp3">',
'</audio>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51139774505176782712)
,p_plug_name=>'How to Side Navigation Menu Expand and Collapse'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551645193068634419)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    code, pre {',
'    font-size: 1.0rem;',
'    line-height: 1.0;',
'}',
'</style>',
'',
'',
'<div>',
'    <pre>',
'        <code>',
'1. Paste Below Code you page level execute when page loads section',
'',
'(function($) {',
'$(window).on(''theme42ready'', function() {',
'    /* Make sure that the navigation menu is collapsed on page load */',
'    if ($(''.t-PageBody'').hasClass(''js-navExpanded'')) {',
'        $(''#t_Button_navControl'').click();',
'    }',
'',
'    /* Expand on mouse over, collapse on mouse out */',
'    $(''.apex-side-nav .t-Body-nav'').hover(',
'        function(){',
'            //only expand if the side menu is collapsed',
'            $(''.t-PageBody:not(.js-navExpanded) #t_Button_navControl'').click();',
'        },',
'        function() {',
'            $(''#t_Button_navControl'').click();',
'        }',
'    );',
'});',
'',
'})(apex.jQuery);',
'',
'',
'',
'above for auto expand and collapse',
'',
'</div>',
'',
'<div>',
'2. Below CSS code are used to show title on hover on icon',
'',
'',
'   /* menu collapse show hover*/',
'   ',
'    .js-navCollapsed .t-TreeNav .a-TreeView-node--topLevel>.a-TreeView-content.is-hover .a-TreeView-label {',
' visibility: visible;',
' left: 48px;',
' padding: 0 16px;',
' width: auto; ',
' background-color: #0459a1; /* This would be your primary color */',
'}',
'',
'.apex-side-nav.js-navCollapsed .t-Body-nav',
', .apex-side-nav.js-navCollapsed .t-Body-nav .t-TreeNav {',
'    z-index: 1100; /* Make it appear on top of the page content */',
'}',
'',
'</div></pre></code>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51139774624300782713)
,p_plug_name=>'Overlap Region And Chat box Button'
,p_region_css_classes=>'a-DevToolbar a-DevToolbar a-DevToolbar--right'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'#id{',
'  z-index:100;',
'  position:fixed;',
'  width:60px;',
'  height:60px;',
'  bottom:40px;',
'  right:45px;',
'  background-color: rgba(55, 76, 139, 0.81);',
'  color:#FFF;',
'  border-radius:50px;',
'  text-align:center;',
'  box-shadow: 2px 2px 3px #999;',
'}',
'.a-DevToolbar--right {',
'    top: 16%;',
'}',
'.a-DevToolbar--right {',
'    right: 11px;',
'}',
'.my-id{',
'  margin-top:12px;',
'}',
'',
'</style>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51139774832151782715)
,p_plug_name=>'Check Digit eAN13'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html>',
'<body>',
'',
'<h2>JavaScript Class</h2>',
'',
'<p>Check Digit eAN13</p>',
'<input type="text" id="eAN13" onchange="eanCheckDigit(this.value);">',
'<p id="demo"></p>',
'',
'<script>',
'function eanCheckDigit(s){',
'    var result = 0;',
'    for (counter = s.length-1; counter >=0; counter--){',
'        result = result + parseInt(s.charAt(counter)) * (1+(2*(counter % 2)));',
'    }',
'    document.getElementById("demo").innerHTML = (10 - (result % 10)) % 10;',
'',
'}',
'</script>',
'',
'</body>',
'</html>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51139774741726782714)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(51139774624300782713)
,p_button_name=>'Chat-box-Button'
,p_button_static_id=>'ID'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Chat-box-button'
,p_grid_new_row=>'Y'
);
wwv_flow_imp.component_end;
end;
/
