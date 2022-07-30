prompt --application/pages/page_00066
begin
--   Manifest
--     PAGE: 00066
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
 p_id=>66
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Check Password Strength and Generate Password'
,p_alias=>'CHECK-PASSWORD-STRENGTH-AND-GENERATE-PASSWORD'
,p_step_title=>'Check Password Strength and Generate Password'
,p_html_page_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'onload="password_generator();"',
''))
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'',
'<script>',
'function readURL(input) {',
' if (input.files && input.files[0])',
' {',
' var reader=new FileReader();',
' reader.onload = function(e){',
' $(''#myImg'')',
' .attr(''src'',e.target.result);',
' };',
' reader.readAsDataURL(input.files[0]);',
' }',
'}',
'',
'</script>',
'',
'<head>',
'<script>',
'',
'function zoom(){',
' var divlClass=$(''#myDiv'').attr(''class'');',
' if (divlClass==="ex"){',
' $(''#myDiv'').css(''cursor'',''zoom-in'');}else',
' if ( divlClass=== "exZoom" ) {',
' $(''#myDiv'').css(''cursor'',''zoom-out'');}',
' }',
'',
'',
'function my_class(){',
' var divlClass= $(''#myDiv'').attr(''class'');',
' if(divlClass=== "ex"){',
' $("#myDiv").removeClass("ex");',
' $("#myImg").removeClass("ex");',
' $("#myDiv").addClass("exZoom");',
' $("#myImg").addClass("exZoom");} else',
' if(divlClass==="exZoom"){',
' $("#myDiv").removeClass("exZoom");',
' $("#myImg").removeClass("exZoom");',
' $("#myDiv").addClass("ex");',
' $("#myImg").addClass("ex");}',
' }',
' </script>',
'',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function CheckPasswordStrength(password) {',
'        var password_strength = document.getElementById("password_strength");',
'',
'        //TextBox left blank.',
'        if (password.length == 0) {',
'            password_strength.innerHTML = "";',
'            return;',
'        }',
'',
'        //Regular Expressions.',
'        var regex = new Array();',
'        regex.push("[A-Z]"); //Uppercase Alphabet.',
'        regex.push("[a-z]"); //Lowercase Alphabet.',
'        regex.push("[0-9]"); //Digit.',
'        regex.push("[$@$!%*#?&]"); //Special Character.',
'',
'        var passed = 0;',
'',
'        //Validate for each Regular Expression.',
'        for (var i = 0; i < regex.length; i++) {',
'            if (new RegExp(regex[i]).test(password)) {',
'                passed++;',
'            }',
'        }',
'        //Validate for length of Password.',
'        if (passed > 2 && password.length > 8) {',
'            passed++;',
'        }',
'        //Display status.',
'        var color = "";',
'        var strength = "";',
'        switch (passed) {',
'            case 0:',
'            case 1:',
'                strength = "Weak";',
'                color = "red";',
'                break;',
'            case 2:',
'                strength = "Good";',
'                color = "darkorange";',
'                break;',
'            case 3:',
'            case 4:',
'                strength = "Strong";',
'                color = "green";',
'                break;',
'            case 5:',
'                strength = "Very Strong";',
'                color = "darkgreen";',
'                break;',
'        }',
'        password_strength.innerHTML = strength;',
'        password_strength.style.color = color;',
'    }',
'',
'',
'',
'function password_generator( len ) {',
'    var length = (len)?(len):(10);',
'    var string = "abcdefghijklmnopqrstuvwxyz"; //to upper ',
'    var numeric = ''0123456789'';',
'    var punctuation = ''!@#$%^&*()_+~`|}{[]\:;?><,./-='';',
'    var password = "";',
'    var character = "";',
'    var crunch = true;',
'    while( password.length<length ) {',
'        entity1 = Math.ceil(string.length * Math.random()*Math.random());',
'        entity2 = Math.ceil(numeric.length * Math.random()*Math.random());',
'        entity3 = Math.ceil(punctuation.length * Math.random()*Math.random());',
'        hold = string.charAt( entity1 );',
'        hold = (password.length%2==0)?(hold.toUpperCase()):(hold);',
'        character += hold;',
'        character += numeric.charAt( entity2 );',
'        character += punctuation.charAt( entity3 );',
'        password = character;',
'    }',
'    password=password.split('''').sort(function(){return 0.5-Math.random()}).join('''');',
'    document.getElementById(''new_password'').value =  0;',
'    //alert (password.substr(0,len));',
'    new_password.innerHTML = (password.substr(0,len));',
'    return password.substr(0,len);',
'}',
'',
'',
'',
'',
'/*',
'function generatePassword(type, plen){',
'    var lwrAlph = "abcdefghijklmnopqrstuvwxyz",',
'        uprAlph = "ABCDEFGHIJKLMNOPQRSTUVWXYZ",',
'        nums = "0123456789",',
'        spl = "~!@#$%^&*()-_=+|<>,.;:[]{}",',
'        passwd = [],',
'        maxLen = 32,        ',
'        defLen = 8,',
'        minLen = 5;     ',
' ',
'    type = type || "all";',
'    type = isNaN(type)?type.toLowerCase():"all";    ',
'    plen = plen || defLen;',
'    plen = (plen < 0?defLen:(plen <= maxLen? (plen < minLen?defLen:plen): maxLen));',
'     ',
'    src = type === "alpha"? [lwrAlph, uprAlph]:type === "alphanum"?[lwrAlph, uprAlph, nums]:[lwrAlph, uprAlph, nums, spl];',
'   ',
'    for (var i = 0; i < plen; i++) {',
'        var rnd = Math.floor(Math.random() * src.length),',
'            charBuild = src[rnd].split("");          ',
'        rnd = Math.floor(Math.random() * charBuild.length);',
'        passwd.push(charBuild[rnd]);',
'        //$s(''P61_PASSWORD'', (passwd.join("")));',
'        alert (passwd.join(""));',
'    }',
'    return passwd.join("");',
'}',
'*/ ',
'    ',
'',
'',
'',
'',
'//console.log( password_generator() );'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104911057528181682697)
,p_plug_name=>'Password Strength Check'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104911057642773682698)
,p_plug_name=>'Details Code'
,p_parent_plug_id=>wwv_flow_imp.id(104911057528181682697)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre><code>',
'',
'Step 1:- Post Text',
'',
'<span id="password_strength"></span>',
'',
'Step 2:- Custom Attributes',
'',
'onkeyup="CheckPasswordStrength(this.value)" ',
'',
'Step 3:- Function and Global Variable Declaration',
'',
'function CheckPasswordStrength(password) {',
'        var password_strength = document.getElementById("password_strength");',
'',
'        //TextBox left blank.',
'        if (password.length == 0) {',
'            password_strength.innerHTML = "";',
'            return;',
'        }',
'',
'        //Regular Expressions.',
'        var regex = new Array();',
'        regex.push("[A-Z]"); //Uppercase Alphabet.',
'        regex.push("[a-z]"); //Lowercase Alphabet.',
'        regex.push("[0-9]"); //Digit.',
'        regex.push("[$@$!%*#?&]"); //Special Character.',
'',
'        var passed = 0;',
'',
'        //Validate for each Regular Expression.',
'        for (var i = 0; i < regex.length; i++) {',
'            if (new RegExp(regex[i]).test(password)) {',
'                passed++;',
'            }',
'        }',
'',
'        //Validate for length of Password.',
'        if (passed > 2 && password.length > 8) {',
'            passed++;',
'        }',
'',
'        //Display status.',
'        var color = "";',
'        var strength = "";',
'        switch (passed) {',
'            case 0:',
'            case 1:',
'                strength = "Weak";',
'                color = "red";',
'                break;',
'            case 2:',
'                strength = "Good";',
'                color = "darkorange";',
'                break;',
'            case 3:',
'            case 4:',
'                strength = "Strong";',
'                color = "green";',
'                break;',
'            case 5:',
'                strength = "Very Strong";',
'                color = "darkgreen";',
'                break;',
'        }',
'        password_strength.innerHTML = strength;',
'        password_strength.style.color = color;',
'    }',
'',
'',
'',
'',
'</pre></code>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104911058874073682710)
,p_plug_name=>'Upload, Show and Zoom in/out Image in Oracle Apex 5.1 step by step.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104911059040305682712)
,p_plug_name=>'Image Show'
,p_parent_plug_id=>wwv_flow_imp.id(104911058874073682710)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    .ex',
'    {',
'    height:273px ;',
'    width:343px;',
'    padding:2px ;',
'    }',
'    .exZoom ',
'    {',
'    height:1000px;',
'    width:1000px;',
'    padding:0px;',
'    }',
'',
'    </style>',
'    </head>',
'    <div align="center">',
'    <div id="myDiv" class="ex">',
'    <img id="myImg" class="ex" onmouseover="zoom();" onClick="my_class(); zoom();" src="#" alt="" />',
'',
'    </div> </div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53771284893655903009)
,p_name=>'P66_IMAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(104911058874073682710)
,p_prompt=>'Image'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_tag_attributes=>'onchange="readURL(this);" onload="readURL(this);"'
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53771285820785903010)
,p_name=>'P66_PASSWORD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(104911057528181682697)
,p_prompt=>'Password'
,p_post_element_text=>'<span style="background-color: rgb(221 251 255);  border-radius: 20px; color: white; font-size: 15px; margin-left: 5px; align-items: center; align-self: center; padding: 0px 8px;"  id="password_strength"></span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onkeyup="CheckPasswordStrength(this.value)"'
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_inline_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="font-size: 15px; margin-left: 10px;" >',
'    Strong Password : ',
'        <span style="font-weight: 900;" id="new_password">',
'        </span>',
'</span>'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53771286835258903012)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEW_API'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_param_list      VARCHAR2 (512);',
'   l_http_request    UTL_HTTP.req;',
'   l_http_response   UTL_HTTP.resp;',
'   l_response_text   VARCHAR2 (32767);',
'   l_response        VARCHAR2 (32767);',
'',
'   v_url             VARCHAR (500);',
'   url_param_list    VARCHAR2 (512);',
'',
'   p_userid          VARCHAR2 (500) := ''100140'';',
'   p_sessionid       VARCHAR2 (500) := ''123456'';',
'   p_companyid       VARCHAR2 (500) := ''101'';',
'   p_executionmode   VARCHAR2 (500) := ''S'';',
'   p_studentid       VARCHAR2 (500) := ''9005'';',
'   p_authkey         VARCHAR2 (500) := 123456;',
'   ts                VARCHAR2 (32000)',
'      := ''{"std_info_node":[{"errormessage":"Invalid ID . Please input valid ID","studentname":"Qaium","accountno":"0487878778","mobileno":"01234","errorcode":"1"}]}'';',
'',
'   l_data_count      NUMBER := 0;',
'   l_values          apex_json.t_values;',
'',
'   t_timeout         INTEGER;',
'BEGIN',
'   v_url := ''https://apex.oracle.com/pls/apex/my_stock/report/allreport?'';',
'   url_param_list :=',
'         ''userid=''',
'      || p_userid',
'      || ''&sessionid=''',
'      || p_sessionid',
'      || ''&companyid=''',
'      || p_companyid',
'      || ''&executionmode=''',
'      || p_executionmode',
'      || ''&studentid=''',
'      || :P66_STUDENT_ID                                        ',
'      || ''&authkey=''',
'      || p_authkey;',
'',
'   /*begin',
'   l_http_request :=  UTL_HTTP.begin_request (v_url, ''GET'', ''HTTP/1.1'');',
'   UTL_HTTP.write_text (l_http_request, l_param_list);',
'   --  raise_application_error(-20007,''1'');',
'   l_http_response := UTL_HTTP.get_response (l_http_request);',
'   raise_application_error(-20007,''2 : ''||l_http_response.status_code);',
'   end ; */',
'',
'   UTL_HTTP.get_transfer_timeout (t_timeout);',
'   UTL_HTTP.set_transfer_timeout (10);',
'   UTL_HTTP.get_transfer_timeout (t_timeout);',
'',
'   l_param_list := NULL;',
'   l_http_request :=',
'      UTL_HTTP.begin_request (v_url || url_param_list, ''GET'', ''HTTP/1.1'');',
'   UTL_HTTP.write_text (l_http_request, l_param_list);',
'   l_http_response := UTL_HTTP.get_response (l_http_request);',
'',
'   UTL_HTTP.read_text (l_http_response, l_response_text);',
'',
'   IF l_response_text IS NULL',
'   THEN',
'      raise_application_error (-20003,',
'                               ''Request Does Not Get Any Response !!!'');',
'   END IF;',
'',
'   apex_json.parse (l_response_text);',
'',
'   SELECT    ''DCMC''',
'          || REPLACE (TO_CHAR (SYSDATE, ''DD-MM-YY''), ''-'', '''')',
'          || ACL_USER_GROUP_PID_SEQ.NEXTVAL',
'     INTO :P66_REF_NO',
'     FROM DUAL;',
'',
'   :P66_NAME :=',
'      apex_json.get_varchar2 (p_path => ''std_info_node[1].oid'');',
'   :P66_MOBILE :=',
'      apex_json.get_varchar2 (p_path => ''std_info_node[1].unit_nm'');',
'   :P66_AC_NUMBER :=',
'      apex_json.get_varchar2 (p_path => ''std_info_node[1].court_oid'');',
'   --raise_application_error(-20003,:P66_MOBILE);',
'',
'   /*',
'    FOR i IN 1 ..3',
'',
'    LOOP',
'   :P66_NAME:= apex_json.get_varchar2 (p_path => ''std_info_node['' || i || ''].studentname'') ;',
'   :P66_MOBILE:= apex_json.get_varchar2 (p_path => ''std_info_node['' || i || ''].mobileno'') ;',
'   :P66_AC_NUMBER :=apex_json.get_varchar2 (p_path => ''std_info_node['' || i || ''].accountno'') ;',
'',
'    -- DBMS_OUTPUT.put_line (''a is ''|| apex_json.get_varchar2 (p_path => ''std_info_node['' || i || ''].studentname'')|| l_data_count);',
'',
'    END LOOP; */',
'',
'   UTL_HTTP.end_response (l_http_response);',
'EXCEPTION',
'   WHEN UTL_HTTP.end_of_body',
'   THEN',
'      UTL_HTTP.end_response (l_http_response);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
