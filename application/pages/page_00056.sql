prompt --application/pages/page_00056
begin
--   Manifest
--     PAGE: 00056
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
 p_id=>56
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Check Password Strength and Generate Auto Strength Password'
,p_alias=>'CHECK-PASSWORD-STRENGTH-AND-GENERATE-AUTO-STRENGTH-PASSWORD'
,p_step_title=>'Check Password Strength and Generate Auto Strength Password'
,p_html_page_onload=>'onload="auto_pass_generator();"'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function CheckPassStrength(password) {',
'        var password_strength = document.getElementById("password_strength");',
'        if (password.length == 0) {',
'            password_strength.innerHTML = "";',
'            return;',
'        }',
'        var regex = new Array();',
'        regex.push("[A-Z]"); //Uppercase Alphabet.',
'        regex.push("[a-z]"); //Lowercase Alphabet.',
'        regex.push("[0-9]"); //Digit.',
'        regex.push("[$@$!%*#?&]"); //Special Character.',
'',
'        var passed = 0;',
'        for (var i = 0; i < regex.length; i++) {',
'            if (new RegExp(regex[i]).test(password)) {',
'                passed++;',
'            }',
'        }',
'        if (passed > 2 && password.length > 8) {',
'            passed++;',
'        }',
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
'function auto_pass_generator( len ) {',
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
'    new_password.innerHTML = (password.substr(0,len));',
'    return password.substr(0,len);',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220402173729'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51139778091729782747)
,p_plug_name=>'Check Password And Generate Password'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51139778142568782748)
,p_name=>'P56_PASSWORD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51139778091729782747)
,p_prompt=>'Password'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="background-color: rgb(221 251 255); border-radius: 20px; ',
'        color : white ; font-size: 15px ; margin-left: 5px ;',
'        align - items: center ; align-self: center ; padding: 0px 8px ; "',
'        ID="password_strength">',
'    </span>'))
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onkeyup="CheckPassStrength(this.value)"'
,p_field_template=>wwv_flow_imp.id(33247273645904359119)
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
wwv_flow_imp.component_end;
end;
/
