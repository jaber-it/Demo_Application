prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Specify Region Print'
,p_alias=>'SPECIFY-REGION-PRINT'
,p_step_title=>'Specify Region Print'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function printInfo(ele){',
'		var openWindow = window.open("", "title", "attributes");',
'    	openWindow.document.write(ele.previousSibling.innerHTML);',
'    	openWindow.document.close();',
'        openWindow.focus();',
'        openWindow.print();',
'		}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'11'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210514182248'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4932198075290705416)
,p_plug_name=>'New1'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="post-body entry-content" id="post-body-8988753844314926072" itemprop="description articleBody">',
'',
'<br>',
unistr('1. Create a blank page (\09AA\09CD\09B0\09A5\09AE\09C7 \098F\0995\099F\09BF \09AC\09CD\09B2\09CD\09AF\09BE\0982\0995 \09AA\09C7\0987\099C \0995\09CD\09B0\09BF\09DF\09C7\099F \0995\09B0\09C1\09A8)<br>'),
unistr('2. Create a HTML report (\098F\0995\099F\09BF HTML \09B0\09BF\09AA\09CB\09B0\09CD\099F \0995\09CD\09B0\09BF\09DF\09C7\099F \0995\09B0\09C1\09A8)<br>'),
unistr('3. Goto Function and Global Variable Declaration \098F\09B0 \09AD\09BF\09A4\09B0 \09AA\09C7\09B7\09CD\099F \0995\09B0\09C1\09A8\2026\2026\2026.<br><br>'),
'    &nbsp; <span style="font-family: &quot;courier new&quot; , &quot;courier&quot; , monospace;">&nbsp;function printInfo(ele){</span><br>',
'    &nbsp; <span style="font-family: &quot;courier new&quot; , &quot;courier&quot; , monospace;">&nbsp;&nbsp;&nbsp;var openWindow = window.open("", "title", "attributes");</span><br>',
'    &nbsp; <span style="font-family: &quot;courier new&quot; , &quot;courier&quot; , monospace;">&nbsp;&nbsp;&nbsp;var openWindow = window.open("", "title", "attributes");</span><br>',
'    &nbsp; <span style="font-family: &quot;courier new&quot; , &quot;courier&quot; , monospace;">&nbsp;&nbsp;&nbsp;openWindow.document.write(ele.previousSibling.innerHTML);</span><br>',
'    &nbsp; <span style="font-family: &quot;courier new&quot; , &quot;courier&quot; , monospace;">&nbsp;&nbsp;&nbsp;openWindow.document.close();</span><br>',
'    &nbsp; <span style="font-family: &quot;courier new&quot; , &quot;courier&quot; , monospace;">&nbsp;&nbsp;&nbsp;openWindow.focus();</span><br>',
'    &nbsp; <span style="font-family: &quot;courier new&quot; , &quot;courier&quot; , monospace;">&nbsp;&nbsp;&nbsp;openWindow.print();</span><br>',
'    &nbsp; <span style="font-family: &quot;courier new&quot; , &quot;courier&quot; , monospace;">&nbsp;&nbsp;&nbsp;openWindow.close();</span><br>',
'    &nbsp; <span style="font-family: &quot;courier new&quot; , &quot;courier&quot; , monospace;">&nbsp;&nbsp;&nbsp;}</span><br>',
'',
unistr('4. Goto Region \098F\09B0 \09AE\09A7\09CD\09AF\09C7 HTML \09B0\09BF\09AA\09CB\09B0\09CD\099F\09BF <div> \098F\09B0 \09AE\09A7\09CD\09AF\09C7 \09B0\09BE\0996\09C1\09A8<br>'),
'    &nbsp; <span style="font-family: &quot;courier new&quot; , &quot;courier&quot; , monospace;">&nbsp;<div id = "div1"></span><br>',
'    &nbsp;&nbsp;&nbsp; <span style="font-family: &quot;courier new&quot; , &quot;courier&quot; , monospace;">&nbsp;<center><p><h1>Titulo del reporte</h1> </p></center></span><br>',
'    &nbsp; <span style="font-family: &quot;courier new&quot; , &quot;courier&quot; , monospace;">&nbsp;</div><a href="#" onclick="printInfo(this)">Print</a>  </span><br>',
'',
'    ',
'Then Enjoy',
'<div style="clear: both;"></div>',
'</div>',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4932198652616705422)
,p_plug_name=>'Specify Region Print'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="div1"> ',
'    ',
'<h3 style="text-align: center;"><span style="color: #ff0000;"><strong>How to Print Specify Region Print Oracle Apex?</strong></span></h3>',
unistr('<h3 style="text-align: center;"><span style="color: #ff0000;"><strong>( </strong><strong>\0995\09C0\09AD\09BE\09AC\09C7</strong> <strong>\09A8\09BF\09B0\09CD\09A6\09BF\09B7\09CD\099F</strong><strong> Region </strong><strong>\09AA\09CD\09B0\09BF\09A8\09CD\099F</strong> <strong>\0995\09B0\09AC\09C7\09A8</strong><strong>?)</strong></span></h3>'),
'<p>&nbsp;</p>',
'<blockquote>',
unistr('<p><strong>\09E7) First create a blank page (\09AA\09CD\09B0\09A5\09AE\09C7 \098F\0995\099F\09BF \09AC\09CD\09B2\09CD\09AF\09BE\0982\0995 \09AA\09C7\0987\099C \0995\09CD\09B0\09BF\09DF\09C7\099F \0995\09B0\09C1\09A8)</strong></p>'),
unistr('<p><strong>\09E8) Create a HTML report (\098F\0995\099F\09BF HTML \09B0\09BF\09AA\09CB\09B0\09CD\099F \0995\09CD\09B0\09BF\09DF\09C7\099F \0995\09B0\09C1\09A8)</strong></p>'),
unistr('<p><strong>\09E9) Function and Global Variable Declaration \098F\09B0 \09AD\09BF\09A4\09B0 \09AA\09C7\09B7\09CD\099F \0995\09B0\09C1\09A8&hellip;&hellip;&hellip;.</strong></p>'),
'<p><strong>&nbsp;&nbsp;&nbsp; function printInfo(ele){</strong></p>',
'<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; var openWindow = window.open("", "title", "attributes");</strong></p>',
'<p><strong>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; openWindow.document.write(ele.previousSibling.innerHTML);</strong></p>',
'<p><strong>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; openWindow.document.close();</strong></p>',
'<p><strong>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; openWindow.focus();</strong></p>',
'<p><strong>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; openWindow.print();</strong></p>',
'<p><strong>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; openWindow.close();</strong></p>',
'<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</strong></p>',
unistr('<p><strong>\09EA) Region \098F\09B0 \09AE\09A7\09CD\09AF\09C7 HTML \09B0\09BF\09AA\09CB\09B0\09CD\099F\09BF &lt;div&gt; \098F\09B0 \09AE\09A7\09CD\09AF\09C7 \09B0\09BE\0996\09C1\09A8</strong></p>'),
'<p><strong>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div id = "div1"&gt;</strong></p>',
'<p><strong>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;center&gt;&lt;p&gt;&lt;h1&gt;Titulo del reporte&lt;/h1&gt; &lt;/p&gt;&lt;/center&gt;</strong></p>',
'<p><strong>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;&lt;a href="#" onclick="printInfo(this)"&gt;Print&lt;/a&gt;&nbsp;</strong></p>',
'<p><strong>&nbsp;</strong></p>',
'</blockquote>',
'<div id="gtx-trans" style="position: absolute; left: 158px; top: -13.2625px;">&nbsp;</div>',
'',
'',
'</div><a  href="#"',
'<input type="button1" class="button button1"  class="t-Icon t-Icon--right fa fa-print" id="print" type="button" onclick="printInfo(this)">Print</a> '))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4932198752071705423)
,p_plug_name=>'New3'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <div id = "div3">',
'    ',
'<p class="MsoNoSpacing" align="center" style="text-align:center"><span style="font-size:12.0pt;mso-bidi-font-size:18.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">How',
'to Print Specify Region Print Oracle Apex?<o:p></o:p></span></p>',
'',
'<p class="MsoNoSpacing" align="center" style="text-align:center"><span style="font-size:12.0pt;mso-bidi-font-size:18.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">(',
'</span><span style="font-size:12.0pt;mso-bidi-font-size:18.0pt;font-family:',
'&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:',
unistr('&quot;Times New Roman&quot;">\0995\09C0\09AD\09BE\09AC\09C7</span><span style="font-size:12.0pt;mso-bidi-font-size:'),
'18.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"> </span><span style="font-size:',
'12.0pt;mso-bidi-font-size:18.0pt;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;',
unistr('mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;">\09A8\09BF\09B0\09CD\09A6\09BF\09B7\09CD\099F</span><span style="font-size:12.0pt;mso-bidi-font-size:18.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">'),
'Region </span><span style="font-size:12.0pt;mso-bidi-font-size:18.0pt;',
'font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;mso-ascii-font-family:&quot;Times New Roman&quot;;',
unistr('mso-bidi-font-family:&quot;Times New Roman&quot;">\09AA\09CD\09B0\09BF\09A8\09CD\099F</span><span style="font-size:'),
'12.0pt;mso-bidi-font-size:18.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"> </span><span style="font-size:12.0pt;mso-bidi-font-size:18.0pt;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;',
unistr('mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;">\0995\09B0\09AC\09C7\09A8</span><span style="font-size:12.0pt;mso-bidi-font-size:18.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">?)</span></p>'),
'',
'<p class="MsoNoSpacing" align="center" style="text-align:center"><span style="font-size:12.0pt;mso-bidi-font-size:18.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p>&nbsp;</o:p></span></p>',
'',
'<p class="MsoNoSpacing"><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;',
'font-family:Bangla;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:',
unistr('&quot;Times New Roman&quot;">\09E7</span><span style="font-size:10.0pt;mso-bidi-font-size:'),
'16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">) First create a blank page (</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:Bangla;',
unistr('mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;">\09AA\09CD\09B0\09A5\09AE\09C7</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">'),
'</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:',
unistr('Bangla;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;">\098F\0995\099F\09BF</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">'),
'</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:',
unistr('Bangla;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;">\09AC\09CD\09B2\09CD\09AF\09BE\0982\0995</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">'),
'</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:',
unistr('Bangla;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;">\09AA\09C7\0987\099C</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">'),
'</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:',
unistr('Bangla;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;">\0995\09CD\09B0\09BF\09DF\09C7\099F</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">'),
'</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:',
unistr('Bangla;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;">\0995\09B0\09C1\09A8</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">)<o:p></o:p></spa')
||'n></p>',
'',
'<p class="MsoNoSpacing"><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;',
'font-family:Bangla;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:',
unistr('&quot;Times New Roman&quot;">\09E8</span><span style="font-size:10.0pt;mso-bidi-font-size:'),
'16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">) Create a HTML report (</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:Bangla;',
unistr('mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;">\098F\0995\099F\09BF</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">'),
'HTML </span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:',
unistr('Bangla;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;">\09B0\09BF\09AA\09CB\09B0\09CD\099F</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">'),
'</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:',
unistr('Bangla;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;">\0995\09CD\09B0\09BF\09DF\09C7\099F</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">'),
'</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:',
unistr('Bangla;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;">\0995\09B0\09C1\09A8</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">)<o:p></o:p></spa')
||'n></p>',
'',
'<p class="MsoNoSpacing"><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;',
'font-family:Bangla;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:',
unistr('&quot;Times New Roman&quot;">\09E9</span><span style="font-size:10.0pt;mso-bidi-font-size:'),
'16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">) Function and Global Variable',
'Declaration </span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;',
'font-family:Bangla;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:',
unistr('&quot;Times New Roman&quot;">\098F\09B0</span><span style="font-size:10.0pt;mso-bidi-font-size:'),
'16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"> </span><span style="font-size:',
'10.0pt;mso-bidi-font-size:16.0pt;font-family:Bangla;mso-ascii-font-family:&quot;Times New Roman&quot;;',
unistr('mso-bidi-font-family:&quot;Times New Roman&quot;">\09AD\09BF\09A4\09B0</span><span style="font-size:10.0pt;'),
'mso-bidi-font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"> </span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:Bangla;',
unistr('mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;">\09AA\09C7\09B7\09CD\099F</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">'),
'</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:',
unistr('Bangla;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;">\0995\09B0\09C1\09A8</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">\2026\2026\2026.<o:p></o:p></')
||'span></p>',
'',
'<p class="MsoNoSpacing"><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;',
'font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>function',
'printInfo(ele){<o:p></o:p></span></p>',
'',
'<p class="MsoNoSpacing"><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;',
'font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp'
||';&nbsp;&nbsp; </span>var',
'openWindow = window.open("", "title",',
'"attributes");<o:p></o:p></span></p>',
'',
'<p class="MsoNoSpacing"><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;',
'font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;',
'</span><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>openWindow.document.write(ele.previousSibling.innerHTML);<o:p></o:p></span></p>',
'',
'<p class="MsoNoSpacing"><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;',
'font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;',
'</span><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>openWindow.document.close();<o:p></o:p></span></p>',
'',
'<p class="MsoNoSpacing"><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;',
'font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;',
'</span><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>openWindow.focus();<o:p></o:p></span></p>',
'',
'<p class="MsoNoSpacing"><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;',
'font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;',
'</span><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>openWindow.print();<o:p></o:p></span></p>',
'',
'<p class="MsoNoSpacing"><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;',
'font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;',
'</span><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>openWindow.close();<o:p></o:p></span></p>',
'',
'<p class="MsoNoSpacing"><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;',
'font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp'
||';&nbsp;&nbsp; </span>}<o:p></o:p></span></p>',
'',
'<p class="MsoNoSpacing"><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;',
'font-family:Bangla;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:',
unistr('&quot;Times New Roman&quot;">\09EA</span><span style="font-size:10.0pt;mso-bidi-font-size:'),
'16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">) Region </span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:Bangla;',
unistr('mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;">\098F\09B0</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">'),
'</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:',
unistr('Bangla;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;">\09AE\09A7\09CD\09AF\09C7</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">'),
'HTML </span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:',
unistr('Bangla;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;">\09B0\09BF\09AA\09CB\09B0\09CD\099F\09BF</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">'),
'&lt;div&gt; </span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;',
'font-family:Bangla;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:',
unistr('&quot;Times New Roman&quot;">\098F\09B0</span><span style="font-size:10.0pt;mso-bidi-font-size:'),
'16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"> </span><span style="font-size:',
'10.0pt;mso-bidi-font-size:16.0pt;font-family:Bangla;mso-ascii-font-family:&quot;Times New Roman&quot;;',
unistr('mso-bidi-font-family:&quot;Times New Roman&quot;">\09AE\09A7\09CD\09AF\09C7</span><span style="font-size:'),
'10.0pt;mso-bidi-font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"> </span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:Bangla;',
unistr('mso-ascii-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;">\09B0\09BE\0996\09C1\09A8</span><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p></o:p></span></p>'),
'',
'<p class="MsoNoSpacing"><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;',
'font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;',
'</span><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>&lt;div id =',
'"div1"&gt;<o:p></o:p></span></p>',
'',
'<p class="MsoNoSpacing"><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;',
'font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;',
'</span><span style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>&lt;center&gt;&lt;p&gt;&lt;h1&gt;Titulo',
'del reporte&lt;/h1&gt; &lt;/p&gt;&lt;/center&gt;<o:p></o:p></span></p>',
'',
'<p class="MsoNoSpacing"><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;',
'font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;',
'</span><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>&lt;/div&gt;&lt;a',
'href="#" onclick="printInfo(this)"&gt;Print&lt;/a&gt;<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></p>',
'',
'<p class="MsoNoSpacing"><span style="font-size:10.0pt;mso-bidi-font-size:16.0pt;',
'font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p>&nbsp;</o:p></span></p>',
'',
'',
'',
'    </div><a href="#" onclick="printInfo(this)">Print</a>    ',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4932198858525705424)
,p_plug_name=>'New4'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <div id = "div4">',
'    ',
'<p class=MsoNoSpacing align=center style=''text-align:center''><span',
'style=''font-size:12.0pt;font-family:"Times New Roman","serif"''>How to Print',
'Specify Region Print Oracle Apex?</span></p>',
'',
'<p class=MsoNoSpacing align=center style=''text-align:center''><span',
'style=''font-size:12.0pt;font-family:"Times New Roman","serif"''>( </span><span',
'style=''font-size:12.0pt;font-family:"Nirmala UI","sans-serif"''>&#2453;&#2496;&#2477;&#2494;&#2476;&#2503;</span><span',
'style=''font-size:12.0pt;font-family:"Times New Roman","serif"''> </span><span',
'style=''font-size:12.0pt;font-family:"Nirmala UI","sans-serif"''>&#2472;&#2495;&#2480;&#2509;&#2470;&#2495;&#2487;&#2509;&#2463;</span><span',
'style=''font-size:12.0pt;font-family:"Times New Roman","serif"''> Region </span><span',
'style=''font-size:12.0pt;font-family:"Nirmala UI","sans-serif"''>&#2474;&#2509;&#2480;&#2495;&#2472;&#2509;&#2463;</span><span',
'style=''font-size:12.0pt;font-family:"Times New Roman","serif"''> </span><span',
'style=''font-size:12.0pt;font-family:"Nirmala UI","sans-serif"''>&#2453;&#2480;&#2476;&#2503;&#2472;</span><span',
'style=''font-size:12.0pt;font-family:"Times New Roman","serif"''>?)</span></p>',
'',
'<p class=MsoNoSpacing align=center style=''text-align:center''><span',
'style=''font-size:12.0pt;font-family:"Times New Roman","serif"''>&nbsp;</span></p>',
'',
'<p class=MsoNoSpacing align=center style=''text-align:center''><span',
'style=''font-size:12.0pt;font-family:"Times New Roman","serif"''>&nbsp;</span></p>',
'',
'<p class=MsoNoSpacing><span style=''font-size:10.0pt;font-family:Bangla''>&#2535;</span><span',
'style=''font-size:10.0pt;font-family:"Times New Roman","serif"''>) First create a',
'blank page (</span><span style=''font-size:10.0pt;font-family:Bangla''>&#2474;&#2509;&#2480;&#2469;&#2478;&#2503;</span><span',
'style=''font-size:10.0pt;font-family:"Times New Roman","serif"''> </span><span',
'style=''font-size:10.0pt;font-family:Bangla''>&#2447;&#2453;&#2463;&#2495;</span><span',
'style=''font-size:10.0pt;font-family:"Times New Roman","serif"''> </span><span',
'style=''font-size:10.0pt;font-family:Bangla''>&#2476;&#2509;&#2482;&#2509;&#2479;&#2494;&#2434;&#2453;</span><span',
'style=''font-size:10.0pt;font-family:"Times New Roman","serif"''> </span><span',
'style=''font-size:10.0pt;font-family:Bangla''>&#2474;&#2503;&#2439;&#2460;</span><span',
'style=''font-size:10.0pt;font-family:"Times New Roman","serif"''> </span><span',
'style=''font-size:10.0pt;font-family:Bangla''>&#2453;&#2509;&#2480;&#2495;&#2527;&#2503;&#2463;</span><span',
'style=''font-size:10.0pt;font-family:"Times New Roman","serif"''> </span><span',
'style=''font-size:10.0pt;font-family:Bangla''>&#2453;&#2480;&#2497;&#2472;</span><span',
'style=''font-size:10.0pt;font-family:"Times New Roman","serif"''>)</span></p>',
'',
'<p class=MsoNoSpacing><span style=''font-size:10.0pt;font-family:Bangla''>&#2536;</span><span',
'style=''font-size:10.0pt;font-family:"Times New Roman","serif"''>) Create a HTML',
'report (</span><span style=''font-size:10.0pt;font-family:Bangla''>&#2447;&#2453;&#2463;&#2495;</span><span',
'style=''font-size:10.0pt;font-family:"Times New Roman","serif"''> HTML </span><span',
'style=''font-size:10.0pt;font-family:Bangla''>&#2480;&#2495;&#2474;&#2507;&#2480;&#2509;&#2463;</span><span',
'style=''font-size:10.0pt;font-family:"Times New Roman","serif"''> </span><span',
'style=''font-size:10.0pt;font-family:Bangla''>&#2453;&#2509;&#2480;&#2495;&#2527;&#2503;&#2463;</span><span',
'style=''font-size:10.0pt;font-family:"Times New Roman","serif"''> </span><span',
'style=''font-size:10.0pt;font-family:Bangla''>&#2453;&#2480;&#2497;&#2472;</span><span',
'style=''font-size:10.0pt;font-family:"Times New Roman","serif"''>)</span></p>',
'',
'<p class=MsoNoSpacing><span style=''font-size:10.0pt;font-family:Bangla''>&#2537;</span><span',
'style=''font-size:10.0pt;font-family:"Times New Roman","serif"''>) Function and',
'Global Variable Declaration </span><span style=''font-size:10.0pt;font-family:',
'Bangla''>&#2447;&#2480;</span><span style=''font-size:10.0pt;font-family:"Times New Roman","serif"''>',
'</span><span style=''font-size:10.0pt;font-family:Bangla''>&#2477;&#2495;&#2468;&#2480;</span><span',
'style=''font-size:10.0pt;font-family:"Times New Roman","serif"''> </span><span',
'style=''font-size:10.0pt;font-family:Bangla''>&#2474;&#2503;&#2487;&#2509;&#2463;</span><span',
'style=''font-size:10.0pt;font-family:"Times New Roman","serif"''> </span><span',
'style=''font-size:10.0pt;font-family:Bangla''>&#2453;&#2480;&#2497;&#2472;</span><span',
unistr('style=''font-size:10.0pt;font-family:"Times New Roman","serif"''>\2026\2026\2026.</span></p>'),
'',
unistr('<p class=MsoNoSpacing><span style=''font-size:10.0pt;font-family:"Times New Roman","serif"''>\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0 function'),
'printInfo(ele){</span></p>',
'',
unistr('<p class=MsoNoSpacing><span style=''font-size:10.0pt;font-family:"Times New Roman","serif"''>\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0 var'),
'openWindow = window.open(&quot;&quot;, &quot;title&quot;,',
'&quot;attributes&quot;);</span></p>',
'',
unistr('<p class=MsoNoSpacing><span style=''font-size:10.0pt;font-family:"Times New Roman","serif"''>\00A0\00A0\00A0'),
unistr('\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0 openWindow.document.write(ele.previousSibling.innerHTML);</span></p>'),
'',
unistr('<p class=MsoNoSpacing><span style=''font-size:10.0pt;font-family:"Times New Roman","serif"''>\00A0\00A0\00A0'),
unistr('\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0 openWindow.document.close();</span></p>'),
'',
unistr('<p class=MsoNoSpacing><span style=''font-size:10.0pt;font-family:"Times New Roman","serif"''>\00A0\00A0\00A0'),
unistr('\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0 openWindow.focus();</span></p>'),
'',
unistr('<p class=MsoNoSpacing><span style=''font-size:10.0pt;font-family:"Times New Roman","serif"''>\00A0\00A0\00A0'),
unistr('\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0 openWindow.print();</span></p>'),
'',
unistr('<p class=MsoNoSpacing><span style=''font-size:10.0pt;font-family:"Times New Roman","serif"''>\00A0\00A0\00A0'),
unistr('\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0 openWindow.close();</span></p>'),
'',
unistr('<p class=MsoNoSpacing><span style=''font-size:10.0pt;font-family:"Times New Roman","serif"''>\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0 }</span></p>'),
'',
'<p class=MsoNoSpacing><span style=''font-size:10.0pt;font-family:Bangla''>&#2538;</span><span',
'style=''font-size:10.0pt;font-family:"Times New Roman","serif"''>) Region </span><span',
'style=''font-size:10.0pt;font-family:Bangla''>&#2447;&#2480;</span><span',
'style=''font-size:10.0pt;font-family:"Times New Roman","serif"''> </span><span',
'style=''font-size:10.0pt;font-family:Bangla''>&#2478;&#2471;&#2509;&#2479;&#2503;</span><span',
'style=''font-size:10.0pt;font-family:"Times New Roman","serif"''> HTML </span><span',
'style=''font-size:10.0pt;font-family:Bangla''>&#2480;&#2495;&#2474;&#2507;&#2480;&#2509;&#2463;&#2495;</span><span',
'style=''font-size:10.0pt;font-family:"Times New Roman","serif"''> &lt;div&gt; </span><span',
'style=''font-size:10.0pt;font-family:Bangla''>&#2447;&#2480;</span><span',
'style=''font-size:10.0pt;font-family:"Times New Roman","serif"''> </span><span',
'style=''font-size:10.0pt;font-family:Bangla''>&#2478;&#2471;&#2509;&#2479;&#2503;</span><span',
'style=''font-size:10.0pt;font-family:"Times New Roman","serif"''> </span><span',
'style=''font-size:10.0pt;font-family:Bangla''>&#2480;&#2494;&#2454;&#2497;&#2472;</span></p>',
'',
unistr('<p class=MsoNoSpacing><span style=''font-size:10.0pt;font-family:"Times New Roman","serif"''>\00A0\00A0\00A0'),
unistr('\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0 &lt;div id = &quot;div1&quot;&gt;</span></p>'),
'',
unistr('<p class=MsoNoSpacing><span style=''font-size:10.0pt;font-family:"Times New Roman","serif"''>\00A0\00A0\00A0'),
unistr('\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0 &lt;center&gt;&lt;p&gt;&lt;h1&gt;Titulo del'),
'reporte&lt;/h1&gt; &lt;/p&gt;&lt;/center&gt;</span></p>',
'',
unistr('<p class=MsoNoSpacing><span style=''font-size:10.0pt;font-family:"Times New Roman","serif"''>\00A0\00A0\00A0'),
unistr('\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0\00A0 &lt;/div&gt;&lt;a href=&quot;#&quot;'),
unistr('onclick=&quot;printInfo(this)&quot;&gt;Print&lt;/a&gt;\00A0 </span></p>'),
'',
'<p class=MsoNoSpacing><span style=''font-size:10.0pt;font-family:"Times New Roman","serif"''>&nbsp;</span></p>',
'',
'',
'',
'    </div><a href="#" onclick="printInfo(this)">Print</a>    ',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp.component_end;
end;
/
