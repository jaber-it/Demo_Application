prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
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
 p_id=>19
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Digital Clock with Colorful Glowing'
,p_alias=>'DIGITAL-CLOCK-WITH-COLORFUL-GLOWING'
,p_step_title=>'Digital Clock with Colorful Glowing'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'*{',
'  margin: 0;',
'  padding: 0;',
'  font-family: ''Poppins'', sans-serif;',
'}',
'html,body{',
'  display: grid;',
'  height: 100%;',
'  place-items: center;',
'  background: #000;',
'}',
'.wrapper{',
'  height: 100px;',
'  width: 360px;',
'  position: relative;',
'  background: linear-gradient(135deg, #14ffe9, #ffeb3b, #ff00e0);',
'  border-radius: 10px;',
'  cursor: default;',
'  animation: animate 1.5s linear infinite;',
'}',
'.wrapper .display,',
'.wrapper span{',
'  position: absolute;',
'  top: 50%;',
'  left: 50%;',
'  transform: translate(-50%, -50%);',
'}',
'.wrapper .display{',
'  z-index: 999;',
'  height: 85px;',
'  width: 345px;',
'  background: #1b1b1b;',
'  border-radius: 6px;',
'  text-align: center;',
'}',
'.display #time{',
'  line-height: 85px;',
'  color: #fff;',
'  font-size: 50px;',
'  font-weight: 600;',
'  letter-spacing: 1px;',
'  background: linear-gradient(135deg, #14ffe9, #ffeb3b, #ff00e0);',
'  -webkit-background-clip: text;',
'  -webkit-text-fill-color: transparent;',
'  animation: animate 1.5s linear infinite;',
'}',
'@keyframes animate {',
'  100%{',
'    filter: hue-rotate(360deg);',
'  }',
'}',
'.wrapper span{',
'  height: 100%;',
'  width: 100%;',
'  border-radius: 10px;',
'  background: inherit;',
'}',
'.wrapper span:first-child{',
'  filter: blur(7px);',
'}',
'.wrapper span:last-child{',
'  filter: blur(20px);',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'11'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210611134559'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30721019936972880801)
,p_plug_name=>'Digital Clock '
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<!-- Created By CodingNepal -->',
'<html lang="en" dir="ltr">',
'  <head>',
'    <meta charset="utf-8">',
'    <!-- Somehow I got an error, so I comment the title, just uncomment to show -->',
'    <!-- <title>Digital Clock with Glowing Effect | CodingNepal</title> -->',
'    <link rel="stylesheet" href="style.css">',
'  </head>',
'  <body>',
'    <div class="wrapper">',
'      <div class="display">',
'        <div id="time">',
'</div>',
'</div>',
'<span></span>',
'      <span></span>',
'    </div>',
'<script>',
'      setInterval(()=>{',
'        const time = document.querySelector(".display #time");',
'        let date = new Date();',
'        let hours = date.getHours();',
'        let minutes = date.getMinutes();',
'        let seconds = date.getSeconds();',
'        let day_night = "AM";',
'        if(hours > 12){',
'          day_night = "PM";',
'          hours = hours - 12;',
'        }',
'        if(seconds < 10){',
'          seconds = "0" + seconds;',
'        }',
'        if(minutes < 10){',
'          minutes = "0" + minutes;',
'        }',
'        if(hours < 10){',
'          hours = "0" + hours;',
'        }',
'        time.textContent = hours + ":" + minutes + ":" + seconds + " "+ day_night;',
'      });',
'    </script>',
'',
'  </body>',
'</html>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp.component_end;
end;
/
