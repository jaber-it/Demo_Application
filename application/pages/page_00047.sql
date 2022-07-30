prompt --application/pages/page_00047
begin
--   Manifest
--     PAGE: 00047
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
 p_id=>47
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'How to Get Device ID Use  JavaScript Code'
,p_alias=>'HOW-TO-GET-DEVICE-ID-USE-JAVASCRIPT-CODE'
,p_step_title=>'How to Get Device ID Use  JavaScript Code'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="application/javascript">',
'function getIP(json) {',
'    document.write("My public IP address is: ", json.ip);',
'    $s(''P47_GET_USER_IP'',(json.ip));',
'  }',
'</script>',
'',
'<script type="application/javascript" src="https://api.ipify.org?format=jsonp&callback=getIP"></script>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function GetUserIP(){',
'  var ret_ip;',
'  $.ajaxSetup({async: false});',
'  $.get(''http://jsonip.com/'', function(r){ ',
'    ret_ip = r.ip; ',
'  });',
'  return ret_ip;',
'}',
'',
'',
'',
'',
'function ip_local()',
'{',
' var ip = false;',
' window.RTCPeerConnection = window.RTCPeerConnection || window.mozRTCPeerConnection || window.webkitRTCPeerConnection || false;',
'',
' if (window.RTCPeerConnection)',
' {',
'  ip = [];',
'  var pc = new RTCPeerConnection({iceServers:[]}), noop = function(){};',
'  pc.createDataChannel('''');',
'  pc.createOffer(pc.setLocalDescription.bind(pc), noop);',
'',
'  pc.onicecandidate = function(event)',
'  {',
'   if (event && event.candidate && event.candidate.candidate)',
'   {',
'    var s = event.candidate.candidate.split(''\n'');',
'    ip.push(s[0].split('' '')[4]);',
'    apex.item( "P47_GET_LOCAL_IP" ).setValue(ip);',
'   }',
'  }',
' }',
' return ip;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7463939285265589675)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14551674142650634431)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(14551607125351634402)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14551731209409634454)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7463951496234592301)
,p_plug_name=>'Get Device ID'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50872907189624172631)
,p_plug_name=>'Get local IP'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50872907667422172636)
,p_plug_name=>'Get User IP'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="en">',
'<head>',
'    <title>Jquery - get ip address</title>',
'    <script type="text/javascript" src="//cdn.jsdelivr.net/jquery/1/jquery.min.js"></script>',
'</head>',
'<body>',
'',
'<h1>Your Ip Address : <span class="ip"></span></h1>',
'',
'',
'<script type="text/javascript">',
'    $.getJSON("https://api.ipify.org/?format=json", function(e) {',
'        $(".ip").text(e.ip);',
'         $("P47_GET_USER_IP").text(e.ip);',
'        //$s(''P47_GET_USER_IP''.text(e.ip);',
'    console.log(e.ip);',
'});',
'</script>',
'<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>',
'</body>',
'</html>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50872907267474172632)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(50872907189624172631)
,p_button_name=>'Get_Local_IP'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_image_alt=>'Get Local IP'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50872906766640172628)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7463951496234592301)
,p_button_name=>'Get_Device_ID'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Get Device Id'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7463951562459592302)
,p_name=>'P47_GET_DEVICE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7463951496234592301)
,p_prompt=>'Get Device Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50872907342667172633)
,p_name=>'P47_GET_LOCAL_IP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(50872907189624172631)
,p_prompt=>'Get Local IP'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50872906983449172629)
,p_name=>'Get Device ID'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50872906766640172628)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50872907045959172630)
,p_event_id=>wwv_flow_imp.id(50872906983449172629)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function getCookie(name) {',
'		    var cookieValue = null;',
'		  if (document.cookie && document.cookie !== '''') {',
'		      var cookies = document.cookie.split('';'');',
'		       for (var i = 0; i < cookies.length; i++) {',
'		           var cookie = cookies[i].trim();',
'		            // Does this cookie string begin with the name we want?',
'		          if (cookie.substring(0, name.length + 1) === (name + ''='')) {',
'		              cookieValue = decodeURIComponent(cookie.substring(name.length + 1));',
'		              break;',
'		           }',
'		      }',
'		 }',
'		    return cookieValue;',
'	}',
'		function uuidv4() {',
'		  return ''xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx''.replace(/[xy]/g, function(c) {',
'		    var r = Math.random() * 16 | 0, v = c == ''x'' ? r : (r & 0x3 | 0x8);',
'		    return v.toString(16);',
'		  });',
'		}',
'		let device = getCookie(''device'')',
'',
'		if (device == null || device == undefined){',
'			device = uuidv4()',
'		}',
'',
'		document.cookie =''device='' + device + ";domain=;path=/"',
'        apex.item( "P47_GET_DEVICE_ID" ).setValue( device);',
'     //apex.item( "P47_GET_DEVICE_ID" ).getValue(device) ;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50872907486287172634)
,p_name=>'Get Local IP'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50872907267474172632)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50872907563470172635)
,p_event_id=>wwv_flow_imp.id(50872907486287172634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'ip_local();'
);
wwv_flow_imp.component_end;
end;
/
