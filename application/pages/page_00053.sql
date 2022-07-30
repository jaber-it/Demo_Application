prompt --application/pages/page_00053
begin
--   Manifest
--     PAGE: 00053
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
 p_id=>53
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Creating the Gallery Application (No Video Created) '
,p_alias=>'CREATING-THE-GALLERY-APPLICATION-NO-VIDEO-CREATED'
,p_step_title=>'Creating the Gallery Application (No Video Created) '
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var workspace_path_prefix = ''resteasy'';',
' var gallery_url = ''./'' + workspace_path_prefix + ''/gallery/images/''; ',
' function uploadFiles(url, fileOrBlob, onload) {   ',
'  var name = ''unspecified'';',
'  if ( fileOrBlob[''name''] ) {',
'   name = fileOrBlob.name;',
'  }   ',
'  var xhr = new XMLHttpRequest();',
'  xhr.open(''POST'', url, true);',
'  xhr.setRequestHeader(''Slug'',name);',
'  xhr.onload = onload;   ',
'  xhr.send(fileOrBlob);  ',
' }',
'',
' function createUploader() {',
'  var $upload = $(''<div id="uploader" title="Image Upload"\',
'   style="display:none">\',
'   <form>\',
'    <fieldset>\',
'     <label for="file">File</label>\',
'     <input type="file" name="file" id="file"\',
'      class="text ui-widget-content ui-corner-all"/>\',
'    </fieldset>\',
'   </form>\',
'  </div>'');',
'  $(document.body).append($upload);',
'  $upload.dialog({ ',
'   autoOpen:false,',
'   modal: true,',
'   buttons: {',
'    "Upload": function() {',
'     var file = document.querySelector(''input[type="file"]'');',
'     uploadFiles(gallery_url,file.files[0],function() {',
'      $(''#uploader'').dialog("close");',
'      getImages();',
'     });',
'    },',
'    "Cancel": function() {',
'     $(''#uploader'').dialog("close");',
'    }',
'   }  ',
'  });',
'  $(''#upload-btn'').click(function() {    ',
'   $(''#uploader'').dialog("open");  ',
'  }); ',
' }  ',
'',
' function getImages() {  ',
'  var xhr = new XMLHttpRequest();',
'  xhr.open(''GET'', gallery_url);',
'  xhr.onload = function(e) {',
'   var data = JSON.parse(this.response);',
'   $(''#image-list'').remove();',
'   var $images = $(''<ol id="image-list"></ol>'');',
'   for ( i in data.items ) {',
'    var item = data.items[i];',
'    var uri = item.uri[''$ref''];',
'    var $image = $(''<li></li>'')                   ',
'                 .append(''<a href="'' + uri + ''" + title="'' + ',
'                         item.title + ''"><img src="graphics/''+ uri + ',
'                         ''"></a>'');',
'    $images.append($image);',
'   }',
'   $(''#images'').append($images);',
'  }  ',
'  xhr.send(); ',
' }',
' '))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'createUploader();',
'getImages();'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'a img { border:none; } ',
'#images ol { margin: 1em auto; width: 100%; } ',
'#images li { display: inline; } ',
'#images a { background: #fff; display: inline; float: left; ',
'            margin: 0 0 27px 30px; width: auto; padding: 10px 10px 15px; ',
'            textalign: center; text-decoration: none; color: #333; ',
'            font-size: 18px; -webkit-box-shadow: 0 3px 6px rgba(0,0,0,.25);',
'            -moz-boxshadow: 0 3px 6px rgba(0,0,0,.25); }',
'#images img { display: block; width: 190px; margin-bottom: 12px; } ',
'label {font-weight: bold; text-align: right;float: left;',
'       width: 120px; margin-right: 0.625em; }',
'label :after {content(":")} ',
'input, textarea { width: 250px; margin-bottom: 5px;textalign: left}',
'textarea {height: 150px;}',
'br { clear: left; }',
'#images a:after { content: attr(title); }',
'.button {',
'  border-top: 1px solid #96d1f8; ',
'  background: #65a9d7;',
'  background: ',
'   -webkit-gradient(linear,left top,left bottom,',
'                    from(#3e779d),to(#65a9d7));    ',
'  background: ',
'   -webkit-linear-gradient(top, #3e779d, #65a9d7);',
'  background: ',
'   -moz-linear-gradient(top, #3e779d, #65a9d7);',
'  background: -ms-linear-gradient(top, #3e779d, #65a9d7);',
'  background: -o-linear-gradient(top, #3e779d, #65a9d7);',
'  padding: 5px 10px;    ',
'  -webkit-border-radius: 8px;',
'  -moz-border-radius: 8px;',
'  border-radius: 8px;    ',
'  -webkit-box-shadow: rgba(0,0,0,1) 0 1px 0;',
'  -moz-box-shadow: rgba(0,0,0,1) 0 1px 0;',
'  box-shadow: rgba(0,0,0,1) 0 1px 0;',
'  text-shadow: rgba(0,0,0,.4) 0 1px 0;',
'  color: white;',
'  font-size: 14px;',
'  text-decoration: none;',
'  vertical-align: middle;',
'  } ',
'',
' .button:hover {',
'  border-top-color: #28597a;    ',
'  background: #28597a;',
'  color: #ccc;',
'  cursor: pointer;     ',
' }',
'',
' .button:active {',
'  border-top-color: #1b435e;    ',
'  background: #1b435e;',
' }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9005383841159881241)
,p_plug_name=>'Upload Image'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a class="button" id="upload-btn">Upload Image</a>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9005383909101881242)
,p_plug_name=>'Images'
,p_region_name=>'images.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9411937638096777902)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_clob  CLOB;',
'BEGIN',
'  DBMS_LOB.createtemporary(l_clob, FALSE);',
'',
'  -- Build the start of the HTML document, including the start of the IMG tag',
'  -- and place it in a CLOB.',
'  l_clob := ''<html>',
'   <head>',
'     <title>Test HTML with Embedded Image</title>',
'   </head>',
'   <body>',
'     <h1>Test HTML with Embedded Image</h1>',
'     <p>And here it is:</p>',
'     <img src="data:image/gif;base64,''; ',
' ',
'  get_enc_img_from_fs (p_dir  => ''IMAGES'',',
'                       p_file => ''site_logo.gif'',',
'                       p_clob => l_clob);',
' ',
'  --get_enc_img_from_http (p_url  => ''http://oracle-base.com/images/site_logo.gif'',',
'  --                       p_clob => l_clob);',
' ',
'  --get_enc_img_from_tab (p_image_name => ''site_logo.gif'',',
'  --                      p_clob       => l_clob);',
' ',
'  -- Close off the IMG tag and complete the HTML document.',
'  l_clob := l_clob || ''" alt="Site Logo" />',
'  <p>The end.</p>',
'  </body>',
'  </html>'';',
'  ',
'  -- The CLOB now contains the complete HTML with the embedded image, so do something with it.',
'  -- In this case I''m going to write it to the file system.',
'  create_file_from_clob (p_dir  => ''IMAGES'',',
'                         p_file => ''EmbeddedImageTest.htm'',',
'                         p_clob => l_clob);  ',
'',
'',
'  DBMS_LOB.freetemporary(l_clob);',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    DBMS_LOB.freetemporary(l_clob);',
'    RAISE;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
