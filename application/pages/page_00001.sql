prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'All Test Page'
,p_welcome_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="slideshow">',
'  <li><span></span></li>',
'  <li><span></span></li>',
'  <li><span></span></li>',
'  <li><span></span></li>',
'</ul>'))
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'   function closeDialogClickOutside(elem){',
'                        $(''.ui-widget-overlay'').click(function(){',
'                            $(elem).dialog(''close'');',
'                            });',
'                        }'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var timerModule = (function() {',
'  var startElmtId = ''START'';',
'  var miliSecElmtId = ''milisec'';',
'  var secElmtId = ''sec'';',
'  var minElmtId = ''min'';',
'  var hourElmtId = ''hour'';',
'  var $startBtn = $(''#'' + startElmtId);',
'  var timerRef;',
'  var milisec = 0;',
'  var sec = 0;',
'  var min = 0;',
'  var hour = 0;',
'  var miliSecOut = 0;',
'  var miliSecElmt = document.getElementById(miliSecElmtId);',
'  var secOut = 0;',
'  var secElmt = document.getElementById(secElmtId);',
'  var minOut = 0;',
'  var minElmt = document.getElementById(minElmtId);',
'  var hourOut = 0;',
'  var hourElmt = document.getElementById(hourElmtId);',
'  function startStop() {',
'    if (timerRef === undefined) {',
'      $startBtn.children(''span'').text("Stop");',
'      start();',
'    } else {',
'      $startBtn.children(''span'').text("Start");',
'      stop();',
'    }',
'  }',
'  function start() {',
'    timerRef = setInterval(timer, 10);',
'  }',
'  function stop() {',
'    clearInterval(timerRef);',
'    timerRef = undefined;',
'  }',
'  function timer() {',
'    miliSecOut = checkTime(milisec);',
'    secOut = checkTime(sec);',
'    minOut = checkTime(min);',
'    hourOut = checkTime(hour);',
'    milisec = ++milisec;',
'    if (milisec === 100) {',
'      milisec = 0;',
'      sec = ++sec;',
'    }',
'    if (sec == 60) {',
'      min = ++min;',
'      sec = 0;',
'    }',
'    if (min == 60) {',
'      min = 0;',
'      hour = ++hour;',
'    }',
'    miliSecElmt.innerHTML = miliSecOut;',
'    secElmt.innerHTML = secOut;',
'    minElmt.innerHTML = minOut;',
'    hourElmt.innerHTML = hourOut;',
'  }',
'  /* Adds 0 when value is <10 */',
'  function checkTime(i) {',
'    if (i < 10) {',
'      i = "0" + i;',
'    }',
'    return i;',
'  }',
'  function reset() {',
'    milisec = 0;',
'    sec = 0;',
'    min = 0',
'    hour = 0;',
'    miliSecElmt.innerHTML = "00";',
'    secElmt.innerHTML = "00";',
'    minElmt.innerHTML = "00";',
'    hourElmt.innerHTML = "00";',
'  }',
'  return {',
'    startStop: startStop,',
'    reset: reset',
'  };',
'})();',
'window.startStop = timerModule.startStop;',
'window.reset = timerModule.reset;       ',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Login-logo.fa {',
'	color: rgb(30, 30, 30);',
'}',
'',
'.t-Login-header {',
'	padding: 0px 0;',
'}',
'',
'.t-Login-region,',
'.t-MediaList {',
'	background: rgba(255, 255, 255, 0.65) !important;',
'}',
'',
'.slideshow {',
'	list-style: none;',
'	margin: 0px;',
'}',
'',
'.slideshow li span {',
'	width: 100%;',
'	height: 100%;',
'	position: absolute;',
'	top: 0px;',
'	left: 0px;',
'	color: transparent;',
'	background-size: cover;',
'	background-position: 50% 50%;',
'	background-repeat: none;',
'	opacity: 0;',
'	z-index: 0;',
'	-webkit-backface-visibility: hidden;',
'	backface-visibility: hidden;',
'	-webkit-animation: imageAnimation 28s linear infinite 0s;',
'	-moz-animation: imageAnimation 28s linear infinite 0s;',
'	animation: imageAnimation 28s linear infinite 0s;',
'}',
'',
'.slideshow li:nth-child(1) span {',
'	background-image: url(#APP_IMAGES#01.jpg);',
'}',
'',
'.slideshow li:nth-child(2) span {',
'	background-image: url(#APP_IMAGES#02.jpg);',
'	-webkit-animation-delay: 8s;',
'	-moz-animation-delay: 8s;',
'	animation-delay: 8s;',
'}',
'',
'.slideshow li:nth-child(3) span {',
'	background-image: url(#APP_IMAGES#03.jpg);',
'	-webkit-animation-delay: 16s;',
'	-moz-animation-delay: 16s;',
'	animation-delay: 16s;',
'}',
'',
'.slideshow li:nth-child(4) span {',
'	background-image: url(#APP_IMAGES#04.jpg);',
'	-webkit-animation-delay: 24s;',
'	-moz-animation-delay: 24s;',
'	animation-delay: 24s;',
'}',
'',
'.slideshow li:nth-child(5) span {',
'	background-image: url(#APP_IMAGES#05.jpg);',
'	-webkit-animation-delay: 32s;',
'	-moz-animation-delay: 32s;',
'	animation-delay: 32s;',
'}',
'',
'.slideshow li:nth-child(6) span {',
'	background-image: url(#APP_IMAGES#06.jpg);',
'	-webkit-animation-delay: 20s;',
'	-moz-animation-delay: 20s;',
'	animation-delay: 20s;',
'}',
'',
'@-webkit-keyframes imageAnimation {',
'	0% {',
'		opacity: 0;',
'		-webkit-animation-timing-function: ease-in;',
'	}',
'	12.5% {',
'		opacity: 1;',
'		-webkit-animation-timing-function: ease-out;',
'	}',
'	25% {',
'		opacity: 1;',
'	}',
'	37.5% {',
'		opacity: 0;',
'	}',
'	100% {',
'		opacity: 0;',
'	}',
'}',
'',
'@-moz-keyframes imageAnimation {',
'	0% {',
'		opacity: 0;',
'		-moz-animation-timing-function: ease-in;',
'	}',
'	12.5% {',
'		opacity: 1;',
'		-moz-animation-timing-function: ease-out;',
'	}',
'	25% {',
'		opacity: 1;',
'	}',
'	37.5% {',
'		opacity: 0;',
'	}',
'	100% {',
'		opacity: 0;',
'	}',
'}',
'',
'@keyframes imageAnimation {',
'	0% {',
'		opacity: 0;',
'		-webkit-animation-timing-function: ease-in;',
'		-moz-animation-timing-function: ease-in;',
'		animation-timing-function: ease-in;',
'	}',
'	12.5% {',
'		opacity: 1;',
'		-webkit-animation-timing-function: ease-out;',
'		-moz-animation-timing-function: ease-out;',
'		animation-timing-function: ease-out;',
'	}',
'	25% {',
'		opacity: 1;',
'	}',
'	37.5% {',
'		opacity: 0;',
'	}',
'	100% {',
'		opacity: 0;',
'	}',
'}',
'',
'.no-cssanimations .slideshow li span {',
'	opacity: 1;',
'}',
'',
'.t-Login-logo {',
'	background-image: url("#APP_IMAGES#app-82667-logo.png");',
'	background-size: cover;',
'	border-radius: 50%;',
'	width: 100px;',
'	height: 100px;',
'	background-image: url("#APP_IMAGES#app-82667-logo.png");',
'        cursor: pointer;',
'}',
'',
'',
'.field-icon {',
'    right : 5px;',
'    margin-left: -25px;',
'    margin-top: 14px;',
'    position: relative;',
'    z-index: 2;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'13'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20211211162419'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14523610241538786408)
,p_plug_name=>'How to implement countdown timer in Oracle Apex use javascript Function'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <center>',
'            <div style="line-height: 1.5; font-size: 3.2rem; font-weight: 500">',
'            <span id="hour">00</span> :',
'            <span id="min">00</span> :',
'            <span id="sec">00</span> :',
'            <span id="milisec">00</span>',
'            </div>',
'       </center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21191328171683830310)
,p_plug_name=>'Modal Page Close When Clicking Outside'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33247311098139359168)
,p_plug_name=>'All Test Page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(33247185261157359055)
,p_plug_display_sequence=>10
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14523610353857786409)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14523610241538786408)
,p_button_name=>'START'
,p_button_static_id=>'START'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--pillEnd:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Start'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14523610425731786410)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14523610241538786408)
,p_button_name=>'RESET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--stretch:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Reset'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21191328235628830311)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(21191328171683830310)
,p_button_name=>'Open_Modal_Page'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(33247274762605359120)
,p_button_image_alt=>'Open Modal Page'
,p_button_redirect_url=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:49::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14523610503443786411)
,p_name=>'Smart Watch startStop '
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14523610353857786409)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14523610629260786412)
,p_event_id=>wwv_flow_imp.id(14523610503443786411)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'startStop();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14523610766830786413)
,p_name=>'Smart Watch Reset'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14523610425731786410)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14523610807514786414)
,p_event_id=>wwv_flow_imp.id(14523610766830786413)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'reset();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21191328380780830312)
,p_name=>'Modal Close'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(33247311098139359168)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21191328420981830313)
,p_event_id=>wwv_flow_imp.id(21191328380780830312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>' console.log(''dialog closed''`);'
);
wwv_flow_imp.component_end;
end;
/
