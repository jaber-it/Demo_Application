prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
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
 p_id=>22
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Copy To Clipboard With JavaScript'
,p_alias=>'COPY-TO-CLIPBOARD-WITH'
,p_step_title=>'Copy To Clipboard With JavaScript'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'  function copyFunction() {',
'      let copyText = document.querySelector(".copy-text");',
'      copyText.querySelector("button").addEventListener("click",function(){',
'          let input = copyText.querySelector ("input.text");',
'          input.select();',
'          document.execCommand("copy");',
'          copyText.classList.add("active");',
'          window.getSelection().removeAllRanges();',
'          setTimeout (function(){',
'              copyText.classList.remove("active");',
'          }2500);',
'      });',
'  }',
'',
'  */'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'',
'/*',
'.pre_code_css {',
'	position: relative;',
'	background: #13052e;',
'	display: block;',
'	direction: ltr;',
'	unicode-bidi: bidi-override;',
'	color: #fff;',
'	word-break: normal;',
'	border: none;',
'	border-left: 7px solid #F9BC00;',
'	width: 100%;',
'	//margin: 1em auto;',
'	background-color: #13052e;',
'	border-radius: 8px;',
'}',
'',
'.code_css {',
'	font-size: 14px;',
'	font-family: source code pro,Inconsolata,lucida console,Terminal,courier new,Courier;',
'	line-height: 1.3;',
'	white-space: pre-wrap;',
'	padding: 1em;',
'    width: 100%;',
'}',
'',
'',
'*/',
'',
'',
'div.code-toolbar>.toolbar button {',
'    padding: 10px;',
'    background: #5784f5;',
'    color: #fff;',
'    font-size: 18px;',
'    border: none;',
'    outline: none;',
'    border-radius: 10px;',
'    cursor: pointer;',
'    display: flex;',
'    height: fit-content;',
'}',
'',
'div.code-toolbar>.toolbar button:active {',
'    background: #809ce2;',
'}',
'div.code-toolbar>.toolbar button:before {',
'    content: "Copied";',
'    position: absolute;',
'    top: 50px;',
'    right: 0px;',
'    background: #5c81dc;',
'    padding: 8px 10px;',
'    border-radius: 20px;',
'    font-size: 15px;',
'    display: none;',
'}',
'div.code-toolbar>.toolbar buttonr:after {',
'    content: "";',
'    position: absolute;',
'    top: 20px;',
'    right: 25px;',
'    width: 10px;',
'    height: 10px;',
'    background: #5c81dc;',
'    transform: rotate(45deg);',
'    display: none;',
'}',
'div.code-toolbar>.toolbar.active button:before,',
'div.code-toolbar>.toolbar.active button:after {',
'    display: block;',
'}',
'',
'div.code-toolbar {',
'	position: relative',
'}',
'',
'div.code-toolbar>.toolbar {',
'	position: absolute;',
'	top: 1em;',
'    right: 1.5em;',
'	transition: opacity .3s ease-in-out;',
'	//opacity: 0',
'}',
'',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'10'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38844962798111427116)
,p_plug_name=>'Copy To Clipboard - 1'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<link href=''https://fonts.googleapis.com/css?family=Oswald'' rel=''stylesheet'' type=''text/css''> ',
'<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>',
'',
'<div class="code-toolbar">',
'    <pre class=" language-javascript">',
'        <code class=" language-javascript">',
'            <div id="text2">',
'111111111111111111',
'    body: ''This is my notification'',',
'    icon: ''ICON_URL'',',
'    image: ''IMAGE_URL''',
'});',
'            </div>',
'            </code></pre>',
'	<div class="toolbar">',
'		<div class="toolbar-item">',
'			<button class="copy-to-clipboard-button" type="button" onclick="copy(''text2'')">',
'                <span> Copy </span>',
'            </button>',
'		</div>',
'	</div>',
'</div>',
'',
'<script>',
'function copy(copyId){',
'    let inputElement = document.createElement("input");',
'    inputElement.type = "text";',
'    let copyText = document.getElementById(copyId).innerHTML;',
'    inputElement.value = copyText;',
'    document.body.appendChild(inputElement);',
'    inputElement.select();',
'    document.execCommand(''copy'');',
'     console.log("copyText");',
'    document.body.removeChild(inputElement);',
'}',
'</script>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53679344375505983807)
,p_plug_name=>'Copy To Clipboard - 2'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<link href=''https://fonts.googleapis.com/css?family=Oswald'' rel=''stylesheet'' type=''text/css''> ',
'<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>',
'',
'',
'<div class="code-toolbar">',
'<pre>',
'    <code id="markup">',
'111111111111111111',
'    body: ''This is my notification'',',
'    icon: ''ICON_URL'',',
'    image: ''IMAGE_URL''',
'});',
'    </code>',
'</pre>',
'</div>',
'',
'',
'<script>',
'function selectElementContents(el) {',
'    if (document.body.createTextRange) {',
'        var textRange = document.body.createTextRange();',
'        textRange.moveToElementText(el);',
'        textRange.select();',
'        textRange.execCommand("Copy");',
'    }',
'    else if (window.getSelection && document.createRange) {',
'        var range = document.createRange();',
'        range.selectNodeContents(el);',
'        var sel = window.getSelection();',
'        sel.removeAllRanges();',
'        sel.addRange(range);',
'        try {',
'            var successful = document.execCommand(''copy'');',
'            var msg = successful ? ''successful'' : ''unsuccessful'';',
'            console.log(''Copy command was '' + msg);',
'        }',
'        catch (err) {',
'            console.log(''Oops, unable to copy'');',
'        }',
'    }',
'} ',
'',
'',
'function make_copy_button(el) {',
'    var copy_btn = document.createElement(''input'');',
'    copy_btn.type = "button";',
'    el.parentNode.insertBefore(copy_btn, el.nextSibling);',
'    copy_btn.onclick = function() {',
'        selectElementContents(el);',
'    };',
'',
'    if (document.queryCommandSupported("copy") || parseInt(navigator.userAgent.match(/Chrom(e|ium)\/([0-9]+)\./)[2]) >= 42) {',
'        copy_btn.value = "Copy to Clipboard";',
'    }',
'    else {',
'        copy_btn.value = "Select All (then press Ctrl + C to Copy)";',
'    }',
'}',
'make_copy_button(document.getElementById("markup"));',
'</script>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53679345231890983816)
,p_plug_name=>'Fast Finial Code  '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.p(''',
'<span class="class">',
'<button class="C_box_main" id="copy1" type="button"><i class="CBox_icn"></i></button>',
'       <pre class="prettyprint lang-scm highlight" style="position:relative;background:#13052e;display:block;direction:ltr;unicode-bidi:bidi-override;color:#fff;word-break:normal;border:none;border-left:7px solid #F9BC00;width:100%;margin:1em auto;ba'
||'ckground-color:#13052e;border-radius:8px">',
'             <code style="font-size:14px;font-family:source code pro,Inconsolata,lucida console,Terminal,courier new,Courier;line-height:1.3;white-space:pre-wrap;padding:1em">',
'',
' 111111111111111',
'    body: "This is my notification",',
'    icon: "ICON_URL",',
'    image: "IMAGE_URL"',
'});</code>',
'    </pre>',
'</span> </br> </br> ',
'<span class="class">',
'<button class="C_box_main" id="copy1" type="button"><i class="CBox_icn"></i></button>',
'       <pre class="prettyprint lang-scm highlight" style="position:relative;background:#13052e;display:block;direction:ltr;unicode-bidi:bidi-override;color:#fff;word-break:normal;border:none;border-left:7px solid #F9BC00;width:100%;margin:1em auto;ba'
||'ckground-color:#13052e;border-radius:8px">',
'             <code style="font-size:14px;font-family:source code pro,Inconsolata,lucida console,Terminal,courier new,Courier;line-height:1.3;white-space:pre-wrap;padding:1em">',
'',
' 222222222',
'    body: "This is my notification",',
'    icon: "ICON_URL",',
'    image: "IMAGE_URL"',
'});</code>',
'    </pre>',
'</span></br> </br> ',
'<span class="class">',
'    <button class="C_box_main" id="copy1" type="button"><i class="CBox_icn"></i></button>',
'       <pre class="prettyprint lang-scm highlight" style="position:relative;background:#13052e;display:block;direction:ltr;unicode-bidi:bidi-override;color:#fff;word-break:normal;border:none;border-left:7px solid #F9BC00;width:100%;margin:1em auto;ba'
||'ckground-color:#13052e;border-radius:8px">',
'             <code style="font-size:14px;font-family:source code pro,Inconsolata,lucida console,Terminal,courier new,Courier;line-height:1.3;white-space:pre-wrap;padding:1em">',
'',
' 333333333333',
'    body: "This is my notification",',
'    icon: "ICON_URL",',
'    image: "IMAGE_URL"',
'});</code>',
'    </pre>',
'</span>',
'	<div class="tNtf" id="toastNotif"></div>',
''');',
'htp.p(''',
'<script>',
'spans = document.querySelectorAll(".class");',
'for (const span of spans) {',
'  span.onclick = function() {',
'    document.execCommand("copy");',
'    document.getElementById("toastNotif").innerHTML = "<span>Copied to Clipboard!</span>";',
'  }',
'',
'  span.addEventListener("copy", function(event) {',
'    event.preventDefault();',
'    if (event.clipboardData) {',
'      event.clipboardData.setData("text/plain", span.textContent);',
'      console.log(event.clipboardData.getData("text"))',
'    }',
'  });',
'}',
'  </script>',
''');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53679345542774983819)
,p_plug_name=>'Copy To Clipboard Finial Code'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'',
'  .highlight {',
'  position: relative;',
'}',
'.copy-code-button {',
'  color: #767676;',
'  background-color: #ededed;',
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
'</style>',
'',
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
'	<div class="tNtf" id="toastNotif"></div>',
'',
'',
'<script>',
'const svgCopy = ''<svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true"><path fill-rule="evenodd" d="M0 6.75C0 5.784.784 5 1.75 5h1.5a.75.75 0 010 1.5h-1.5a.25.25 0 00-.25.25v7.5c0 .138.112.25.25.2'
||'5h7.5a.25.25 0 00.25-.25v-1.5a.75.75 0 011.5 0v1.5A1.75 1.75 0 019.25 16h-7.5A1.75 1.75 0 010 14.25v-7.5z"></path><path fill-rule="evenodd" d="M5 1.75C5 .784 5.784 0 6.75 0h7.5C15.216 0 16 .784 16 1.75v7.5A1.75 1.75 0 0114.25 11h-7.5A1.75 1.75 0 015 '
||'9.25v-7.5zm1.75-.25a.25.25 0 00-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 00.25-.25v-7.5a.25.25 0 00-.25-.25h-7.5z"></path></svg>'';',
'const svgCheck = ''<svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true"><path fill-rule="evenodd" fill="rgb(63, 185, 80)" d="M13.78 4.22a.75.75 0 010 1.06l-7.25 7.25a.75.75 0 01-1.06 0L2.22 9.28a.'
||'75.75 0 011.06-1.06L6 10.94l6.72-6.72a.75.75 0 011.06 0z"></path></svg>'';',
'const addCopyButtons = (clipboard)=>{',
'    document.querySelectorAll("pre > code").forEach((codeBlock)=>{',
'        // Create button DOM element',
'        const button = document.createElement("button");',
'        button.className = "copy-code-button";',
'        button.type = "button";',
'        button.innerHTML = svgCopy;',
'        button.addEventListener("click", ()=>{',
'            clipboard.writeText(codeBlock.innerText).then(()=>{',
'                button.blur();',
'                button.innerHTML = svgCheck;',
'                setTimeout(()=>(button.innerHTML = svgCopy), 2000);',
'            }',
'            , (error)=>(button.innerHTML = "Error"));',
'        }',
'        );',
'        // Attach button to DOM (.highlight > button > pre > code)',
'        const pre = codeBlock.parentNode;',
'        pre.parentNode.insertBefore(button, pre);',
'    }',
'    );',
'}',
';',
'',
'if (navigator && navigator.clipboard) {',
'    addCopyButtons(navigator.clipboard);',
'} else {',
'    const script = document.createElement("script");',
'    script.src = "https://cdnjs.cloudflare.com/ajax/libs/clipboard-polyfill/2.7.0/clipboard-polyfill.promise.js";',
'    script.integrity = "sha256-waClS2re9NUbXRsryKoof+F9qc1gjjIhc2eT7ZbIv94=";',
'    script.crossOrigin = "anonymous";',
'    script.onload = ()=>addCopyButtons(clipboard);',
'    document.body.appendChild(script);',
'}',
'</script>',
'',
'',
'',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56130390410488849726)
,p_plug_name=>'Copy To Clipboard - 3'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'      .K2_CBox{position:relative;background:#fff;width:100%;border-radius:6px;box-shadow: rgba(0, 0, 0, 0.15) 1.95px 1.95px 2.6px;padding:8px 8px 1px;}',
'  .K2_CBox .CB_Heading{display:flex;justify-content:space-between;align-items:center;margin-bottom:15px}',
'  .K2_CBox .CB_Heading span{margin:0;font-weight:700;font-family:inherit;font-size:1.1rem}',
'  .K2_CBox .C_box_main{cursor:pointer;display:inline-flex;align-items:center;padding:12px;outline:0;border:0;border-radius:50%;background:#004cbd;transition:all .3s ease;-webkit-transition:all .3s ease}.K2_CBox .C_box_main:hover{opacity:.8}.K2_CBox .'
||'C_box_main .CBox_icn{flex-shrink:0;display:inline-block;width:18px;height:18px;background-image:url("data:image/svg+xml,<svg xmlns=''http://www.w3.org/2000/svg'' fill=''none'' stroke=''%23fefefe'' stroke-linecap=''round'' stroke-linejoin=''round'' stroke-width'
||'=''1.5'' viewBox=''0 0 24 24''><rect x=''5.54615'' y=''5.54615'' width=''16.45385'' height=''16.45385'' rx=''4''/><path d=''M171.33311,181.3216v-8.45385a4,4,0,0,1,4-4H183.787'' transform=''translate(-169.33311 -166.86775)''/></svg>");background-size:cover;background-r'
||'epeat:no-repeat;background-position:center}',
'  .K2_CBox .C_box_main.copied{background:#2dcda7}',
'  .K2_CBox .C_box_main.copied .CBox_icn{background-image:url("data:image/svg+xml,<svg xmlns=''http://www.w3.org/2000/svg'' fill=''none'' stroke=''%23fefefe'' stroke-linecap=''round'' stroke-linejoin=''round'' stroke-width=''1.5'' viewBox=''0 0 24 24''><path d=''M22'
||' 11.07V12a10 10 0 1 1-5.93-9.14''/><polyline points=''23 3 12 14 9 11''/></svg>")}',
'  .tNtf span{position:fixed;left:24px;bottom:-70px;display:inline-flex;align-items:center;text-align:center;justify-content:center;margin-bottom:20px;z-index:99981;background:#323232;color:rgba(255,255,255,.8);font-size:14px;font-family:inherit;borde'
||'r-radius:3px;padding:13px 24px; box-shadow:0 5px 35px rgba(149,157,165,.3);opacity:0;transition:all .1s ease;animation:slideinwards 2s ease forwards;-webkit-animation:slideinwards 2s ease forwards}',
'  @media screen and (max-width:500px){.tNtf span{margin-bottom:20px;left:20px;right:20px;font-size:13px}}',
'  @keyframes slideinwards{0%{opacity:0}20%{opacity:1;bottom:0}50%{opacity:1;bottom:0}80%{opacity:1;bottom:0}100%{opacity:0;bottom:-70px;visibility:hidden}}',
'  @-webkit-keyframes slideinwards{0%{opacity:0}20%{opacity:1;bottom:0}50%{opacity:1;bottom:0}80%{opacity:1;bottom:0}100%{opacity:0;bottom:-70px;visibility:hidden}}',
'  .darkMode .tNtf span{box-shadow:0 10px 40px rgba(0,0,0,.2)}',
'',
'.pre_code_css {',
'	position: relative;',
'	background: #13052e;',
'	display: block;',
'	direction: ltr;',
'	unicode-bidi: bidi-override;',
'	color: #fff;',
'	word-break: normal;',
'	border: none;',
'	border-left: 7px solid #F9BC00;',
'	width: 100%;',
'	//margin: 1em auto;',
'	background-color: #13052e;',
'	border-radius: 8px;',
'}',
'',
'.code_css {',
'	font-size: 14px;',
'	font-family: source code pro,Inconsolata,lucida console,Terminal,courier new,Courier;',
'	line-height: 1.3;',
'	white-space: pre-wrap;',
'	padding: 1em;',
'    width: 100%;',
'}',
'</style>',
'<!--[ Code Box 1 ]-->',
'<div class=''K2_CBox''>',
'		<div class=''CB_Heading''>',
'			<span>Paste The Following Code</span> ',
'            <button class=''C_box_main'' id=''copy1'' type=''button''>',
'                <i class=''CBox_icn''></i>',
'            </button>',
'		</div>',
'		<div id=''code1''>',
'			<pre class=''pre_code_css''> ',
'            <code class=''code_css''> ',
'    ',
'    111111111111111',
'    body: ''This is my notification'',',
'    icon: ''ICON_URL'',',
'    image: ''IMAGE_URL''',
'});',
'',
'     </code></pre>',
'		</div>',
'	</div>',
'	<div class=''tNtf'' id=''toastNotif''></div>',
'',
'',
'<script>',
'function copyC(e,t){',
'    var o=document.getElementById(e),',
'    n=document.getElementById(t),',
'    e=getSelection(),',
'    t=document.createRange();',
'    e.removeAllRanges(),',
'    t.selectNodeContents(n),',
'    e.addRange(t),',
'    document.execCommand("copy"),',
'    e.removeAllRanges(),',
'    o.classList.add("copied"),',
'    document.getElementById("toastNotif").innerHTML="<span>Copied to Clipboard!</span>",',
'    setTimeout(()=>{o.classList.remove("copied")},3e3)',
'}',
'</script>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56139981924726077401)
,p_plug_name=>'Last'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">',
'</style>',
'',
'<div class="code-toolbar">',
'    <blockquote id="myInput">',
'        <pre>',
'            <code class=" language-js">',
'',
'',
'22222222222222',
'    body: ''This is my notification'',',
'    icon: ''ICON_URL'',',
'    image: ''IMAGE_URL''',
'});',
'        </code>',
'    </pre>',
'    </blockquote>',
'',
'    <div class="toolbar">',
'		<div class="toolbar-item">',
'			<button type="button" id="k2button" > <i class="fa fa-copy "></i> </button>',
'		</div>',
'	</div>',
'</div>',
'',
'',
'',
'',
'<script>',
'  function copyFunction() {',
'  const copyText = document.getElementById("myInput").textContent;',
'  const textArea = document.createElement(''textarea'');',
'  textArea.textContent = copyText;',
'  document.body.append(textArea);',
'  textArea.select();',
'  document.execCommand("copy");',
'  k2button.innerText = ("Text copied");    ',
'};',
'',
'          ',
'document.getElementById(''k2button'').addEventListener(''click'', copyFunction);',
'',
'  </script>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(56139982134864077403)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#k2button'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56139982281010077404)
,p_event_id=>wwv_flow_imp.id(56139982134864077403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#bpid'').addClass(''green'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56139982343823077405)
,p_event_id=>wwv_flow_imp.id(56139982134864077403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#bpid'').addClass(''red'');'
);
wwv_flow_imp.component_end;
end;
/
