prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'New Design Profile Card'
,p_alias=>'NEW-DESIGN-PROFILE-CARD'
,p_step_title=>'New Design Profile Card'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">  ',
'           window.onbeforeunload = function (e) {                               e = e || window.event;',
'           if (e) {',
'            e.returnValue = ''?'';',
'              }',
'       // For Safari',
'         return ''?'';',
'                };',
'    </script>'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'10'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210625104238'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25433895450675703544)
,p_plug_name=>'New Design Profile Card'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>7
,p_plug_display_column=>2
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.p(''<!DOCTYPE html>'');',
'htp.p(''<style>',
'*{',
'    margin: 0;',
'    padding: 0;',
'}',
'.container{',
'',
'    font-family: sans-serif;',
'}',
'a{',
'    text-decoration: none;',
'}',
'.team-member{',
'    border: 1px solid rgba(42, 175, 192, 0.3);',
'    position: relative;',
'    overflow: hidden;',
'    border-radius: 100px;',
'    margin-bottom: 50px;',
'}',
'.team-member .mem-img img{',
'    width: 170px;',
'    height: 170px;',
'    border-radius: 50%;',
'    float: left;',
'    border: 5px solid #fff;',
'    outline: 0;',
'    vertical-align: middle;',
'    margin: 0;',
'}',
'.team-member .info{',
'    margin-left: 200px;',
'    padding: 15px 15px 15px 0;',
'}',
'.team-member .info h2{',
'    font-size: 16px;',
'    font-weight: 700;',
'    letter-spacing: 1px;',
'    margin-bottom: 5px;',
'}',
'.team-member .info span{',
'    font-size: 14px;',
'    margin-bottom: 10px;',
'    color: #2aafc0;',
'}',
'.team-member .info p{',
'    margin: 10px 0;',
'    font-size: 15px;',
'    font-weight: 300;',
'    color: #7f7f7f7f;',
'    line-height: 1.6;',
'}',
'.team-member .icons .icon i{',
'    margin: 5px 10px;',
'    color: #333;',
'}',
'.team-member:hover{',
'    background: linear-gradient(to right, #2AAFC0, #6976c5);',
'    color: #fff;',
'}',
'.team-member:hover span{',
'    color: #fff;',
'}',
'.team-member:hover p{',
'    color: #ccc;',
'}',
'.team-member:hover .icons .icon i{',
'    color: #fff;',
'}',
'.team-member:hover img{',
'    border-color: #2AAFC0;',
'}',
'',
'@media only screen and (max-width: 100%) {',
'    img{',
'        padding: 15px 10px 10px 0;',
'    }',
'}',
'@media screen and (max-width: 100%) {',
'',
'  ',
'    .team-member {',
'      text-align: center;',
'      padding: 20px;',
'    }',
'    .team-member .mem-img img {',
'      float: none;',
'      width: 170px;',
'      height: 170px;',
'      margin: auto;',
'      padding: 0ch;',
'    }',
'    .team-member .info {',
'      margin-top: 30px;',
'      margin-left: 0;',
'    }',
'}',
'</style>'');',
'',
'',
'htp.p(''<html lang="en">'');',
'htp.p(''<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=, initial-scale=1.0">',
'    <title>Document</title>',
'    <link rel="stylesheet" href="style.css">',
'    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">',
'</head>'');',
'htp.p(''<body>',
'    <div class="container">',
'',
'            <div class="team-member">',
'                    <div class="mem-img">',
'                        <img src="#APP_IMAGES#06.jpg" alt="">',
'                    </div>',
'                    <div class="info">',
'                        <h2>Alex Smith</h2>',
'                        <span>Project Manager</span>',
'                        <p>Lorem Ipsum is simply dummy text of the printing and type setting industry.</p>',
'                      <div class="icons">',
'                        <a href="#" class="icon">',
'                            <i class="fab fa-facebook-f"></i>',
'                        </a>',
'                        <a href="#" class="icon">',
'                            <i class="fab fa-twitter"></i>',
'                        </a>',
'                        <a href="#" class="icon">',
'                            <i class="fab fa-youtube"></i>',
'                        </a>',
'                      </div>',
'                   </div>',
'            </div>',
'            ',
'    </div>'');',
'    ',
'htp.p(''</body>'');',
'htp.p(''</html>'');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp.component_end;
end;
/
