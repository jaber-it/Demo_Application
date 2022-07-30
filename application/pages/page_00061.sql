prompt --application/pages/page_00061
begin
--   Manifest
--     PAGE: 00061
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
 p_id=>61
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Copy To Clipboard Finial Code'
,p_alias=>'COPY-TO-CLIPBOARD-FINIAL-CODE'
,p_step_title=>'Copy To Clipboard Finial Code'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.highlight {',
'  position: relative;',
'}',
'.copy-code-button {',
'  color: #767676;',
' // background-color: #ededed;',
'  border-color: #767676;',
'  border: 1px solid;',
'  border-radius: 6px;',
'  padding: 2px 7px 5px 7px;',
'  font-size: .8em;',
'  position: absolute;',
'  z-index: 1;',
'  right: 0;',
'  margin: 5px;',
'  transition: .1s;',
' // opacity: 0;',
'}',
'',
'.copy-code-button > svg {',
'  fill: #767676;',
'}',
'.copy-code-button:hover > svg {',
'  fill: #696969;',
'}',
'.copy-code-button:hover {',
'  cursor: pointer;',
'  background-color: #e0e0e0;',
'  border-color: #696969;',
'}',
'',
'.copy-code-button:focus {',
'  /* Avoid an ugly focus outline on click in Chrome,',
'     but darken the button for accessibility.',
'     See https://stackoverflow.com/a/25298082/1481479 */',
'  outline: 0;',
'}',
'',
'.highlight:hover > .copy-code-button {',
'  opacity: 1;',
'  transition: .2s;',
'}',
'',
'<div class="highlight">',
'    <pre><code>    111111111111111',
'    body: "This is my notification",',
'    icon: "ICON_URL",',
'    image: "IMAGE_URL"',
'});</code></pre></div>',
'<div class="highlight">',
'    <pre><code>    222222222222222',
'    body: "This is my notification",',
'    icon: "ICON_URL",',
'    image: "IMAGE_URL"',
'});</code></pre></div>',
'<div class="highlight">',
'    <pre><code>    33333333333333333333',
'    body: "This is my notification",',
'    icon: "ICON_URL",',
'    image: "IMAGE_URL"',
'});</code></pre></div>',
'<div class="highlight">',
'    <pre><code>    44444444444444444444',
'    body: "This is my notification",',
'    icon: "ICON_URL",',
'    image: "IMAGE_URL"',
'});</code></pre></div>',
'<div class="highlight">',
'    <pre><code>    111111111111111',
'    body: "This is my notification",',
'    icon: "ICON_URL",',
'    image: "IMAGE_URL"',
'});</code></pre></div>',
'',
'<script>',
'const svgCopy =',
'  ''<svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true"><path fill-rule="evenodd" d="M0 6.75C0 5.784.784 5 1.75 5h1.5a.75.75 0 010 1.5h-1.5a.25.25 0 00-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0'
||' 00.25-.25v-1.5a.75.75 0 011.5 0v1.5A1.75 1.75 0 019.25 16h-7.5A1.75 1.75 0 010 14.25v-7.5z"></path><path fill-rule="evenodd" d="M5 1.75C5 .784 5.784 0 6.75 0h7.5C15.216 0 16 .784 16 1.75v7.5A1.75 1.75 0 0114.25 11h-7.5A1.75 1.75 0 015 9.25v-7.5zm1.7'
||'5-.25a.25.25 0 00-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 00.25-.25v-7.5a.25.25 0 00-.25-.25h-7.5z"></path></svg>'';',
'const svgCheck =',
'  ''<svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true"><path fill-rule="evenodd" fill="rgb(63, 185, 80)" d="M13.78 4.22a.75.75 0 010 1.06l-7.25 7.25a.75.75 0 01-1.06 0L2.22 9.28a.75.75 0 011.06-'
||'1.06L6 10.94l6.72-6.72a.75.75 0 011.06 0z"></path></svg>'';',
'const addCopyButtons = (clipboard) => {',
'  document.querySelectorAll("pre > code").forEach((codeBlock) => {',
'    // Create button DOM element',
'    const button = document.createElement("button");',
'    button.className = "copy-code-button";',
'    button.type = "button";',
'    button.innerHTML = svgCopy;',
'    button.addEventListener("click", () => {',
'      clipboard.writeText(codeBlock.innerText).then(',
'        () => {',
'          button.blur();',
'          button.innerHTML = svgCheck;',
'          setTimeout(() => (button.innerHTML = svgCopy), 2000);',
'        },',
'        (error) => (button.innerHTML = "Error")',
'      );',
'    });',
'    // Attach button to DOM (.highlight > button > pre > code)',
'    const pre = codeBlock.parentNode;',
'    pre.parentNode.insertBefore(button, pre);',
'  });',
'};',
'',
'if (navigator && navigator.clipboard) {',
'  addCopyButtons(navigator.clipboard);',
'} else {',
'  const script = document.createElement("script");',
'  script.src =',
'    "https://cdnjs.cloudflare.com/ajax/libs/clipboard-polyfill/2.7.0/clipboard-polyfill.promise.js";',
'  script.integrity = "sha256-waClS2re9NUbXRsryKoof+F9qc1gjjIhc2eT7ZbIv94=";',
'  script.crossOrigin = "anonymous";',
'  script.onload = () => addCopyButtons(clipboard);',
'  document.body.appendChild(script);',
'}',
'',
'</script>'))
,p_page_component_map=>'11'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(673619566639540226)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551674142650634431)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(14551607125351634402)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14551731209409634454)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53679345628088983820)
,p_plug_name=>'Copy_To_Clipboard_Complete_Code'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="K2_CBox"><pre class="prettyprint lang-scm highlight"><code>',
'333333333333333333',
'    body: "This is my notification",',
'    icon: "ICON_URL",',
'    image: "IMAGE_URL"',
'});',
'333333333333333333',
'    body: "This is my notification",',
'    icon: "ICON_URL",',
'    image: "IMAGE_URL"',
'});',
'333333333333333333',
'    body: "This is my notification",',
'    icon: "ICON_URL",',
'    image: "IMAGE_URL"',
'});',
'',
'pre {',
'  counter-reset: line-numbering;',
'  background: #2c3e50;',
'  padding: 12px 0px 14px 0;',
'  width: 600px;',
'  color: #ecf0f1;',
'  line-height: 100%;',
'}',
'',
'pre .line::before {',
'  content: counter(line-numbering);',
'  counter-increment: line-numbering;',
'  padding-right: 1em;',
'  /* space after numbers */',
'  padding-left: 8px;',
'  width: 1.5em;',
'  text-align: right;',
'  opacity: 0.5;',
'  color: white;',
'}',
'</code></pre>',
'<div class="lNotf" id="LefttNotif"></div></div>',
'',
'    <script src=''https://cdn.jsdelivr.net/gh/jABER-IT/BlogSite-All-Host-File/script.js''></script>',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53679345862560983822)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'<body>',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <meta http-equiv="X-UA-Compatible" content="ie=edge">',
'    <title>Password Generator</title>',
'</head>',
'',
'<pre class="prettyprint" id="quine">',
'',
'</pre>',
' ',
'<script type="text/javascript">//<![CDATA[',
'(function () {',
'  function htmlEscape(s) {',
'    return s',
'      .replace(/&/g, ''&amp;'')',
'      .replace(/</g, ''&lt;'')',
'      .replace(/>/g, ''&gt;'');',
'  }',
' ',
'  // this page''s own source code',
'',
'  // Highlight the operative parts:',
'  quineHtml = quineHtml.replace(',
'    /&lt;script src[\s\S]*?&gt;&lt;\/script&gt;|&lt;!--\?[\s\S]*?--&gt;|&lt;pre\b[\s\S]*?&lt;\/pre&gt;/g,',
'    ''<span class="operative">$&<\/span>'');',
' ',
'  // insert into PRE',
'  document.getElementById("quine").innerHTML = htmlEscape(document.getElementById("quine1"));',
'})();',
'//]]>',
'</script></body>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'<head>',
'<meta charset="utf-8">',
'<title>Making Quines Prettier</title>',
'<!-- The defer attribute is not necessary for autoloading, but is necessary',
'     for the script at the bottom to work as a Quine. -->',
'<script src="https://cdn.jsdelivr.net/gh/google/code-prettify@master/loader/run_prettify.js?autoload=true&amp;skin=sunburst&amp;lang=css" defer=""></script>',
'<style type="text/css">',
'.operative { font-weight: bold; border: 1px solid yellow; }',
'#quine { border: 4px solid #88c; }',
'li.L1, li.L3, li.L5, li.L7, li.L9 {',
'    background: transparent;',
'}',
'</style>',
'</head>',
' ',
'<body>',
'<h1>Making Quines Prettier</h1>',
' ',
'<p>',
'Below is the content of this page prettified.  The <code>&lt;pre&gt;</code>',
'element is prettified because it has <code>class="prettyprint"</code> and',
'because the sourced script loads a JavaScript library that styles source',
'code.',
'</p>',
' ',
'<p>',
'The line numbers to the left appear because the preceding comment',
'<code>&lt;?prettify lang=html linenums=true?&gt;</code> turns on',
'line-numbering and the',
'<a href="https://raw.githack.com/google/code-prettify/master/styles/index.html">stylesheet</a>',
'(see <code>skin=sunburst</code> in the <code>&lt;script src&gt;</code>)',
'specifies that every fifth line should be numbered.',
'</p>',
' ',
'<!-- Language hints can be put in XML application directive style comments. -->',
'<!--?prettify lang=html linenums=true?-->',
'<pre class="prettyprint" id="quine"></pre>',
' ',
'<script type="text/javascript">//<![CDATA[',
'(function () {',
'  function htmlEscape(s) {',
'    return s',
'      .replace(/&/g, ''&amp;'')',
'      .replace(/</g, ''&lt;'')',
'      .replace(/>/g, ''&gt;'');',
'  }',
' ',
'  // this page''s own source code',
'  var quineHtml = htmlEscape(',
'    ''<!DOCTYPE html>\n<html>\n'' +',
'    document.documentElement.innerHTML +',
'    ''\n<\/html>\n'');',
' ',
'  // Highlight the operative parts:',
'  quineHtml = quineHtml.replace(',
'    /&lt;script src[\s\S]*?&gt;&lt;\/script&gt;|&lt;!--\?[\s\S]*?--&gt;|&lt;pre\b[\s\S]*?&lt;\/pre&gt;/g,',
'    ''<span class="operative">$&<\/span>'');',
' ',
'  // insert into PRE',
'  document.getElementById("quine").innerHTML = quineHtml;',
'})();',
'//]]>',
'</script></body>',
'</html>'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56130391651304849738)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <script src=''https://cdn.jsdelivr.net/gh/jABER-IT/BlogSite-All-Host-File/1.run_prettify.js?lang=css&amp;skin=sunburst''></script>',
'<link href=''https://cdn.jsdelivr.net/gh/jABER-IT/BlogSite-All-Host-File/10.style.css'' rel=''stylesheet''/>  ',
'            ',
'',
'',
'',
'',
'',
'<div class="K2_CBox"> <pre class="prettyprint lang-scm highlight" ><code>',
'      <div class="result__title field-title">Generated Password</div>',
'            <div class="result__info right">click to copy</div>',
'            <div class="result__info left">copied</div>',
'            <div class="result__viewbox" id="result">CLICK GENERATE</div>',
'            <button id="copy-btn" ><i class="far fa-copy"></i></button>          ',
'</code></pre><div class="lNotf" id="LefttNotif"></div></div>',
'',
'',
'',
'<div class="lNotf" id="LefttNotif"></div></div>',
'<script src=''https://cdn.jsdelivr.net/gh/jABER-IT/BlogSite-All-Host-File/script.js''></script>        '))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp.component_end;
end;
/
