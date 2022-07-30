prompt --application/pages/page_00042
begin
--   Manifest
--     PAGE: 00042
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
 p_id=>42
,p_user_interface_id=>wwv_flow_imp.id(33247297241416359140)
,p_name=>'Get DDL ( Create Script ) of any Object'
,p_alias=>'GET-DDL-CREATE-SCRIPT-OF-ANY-OBJECT'
,p_step_title=>'Get DDL ( Create Script ) of any Object'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.pre, code {',
'    direction: ltr;',
'    background: url(/wp-content/themes/sahifa/images/code-bg.png);',
'    font: 11px/19px''andale mono'',''lucida console'',monospace;',
'    padding: 3px;',
'    display: block;',
'    overflow-x: visible;',
'    overflow-y: hidden;',
'    margin: 0 0 20px;',
'    color: #666;',
'    border-top: 1px solid #e1e1e1;',
'    border-left: 1px solid #e1e1e1;',
'    border-bottom: 1px solid #f0f0f0;',
'    border-right: 1px solid #f0f0f0;',
'}',
'',
'.entry {',
'    word-wrap: break-word;',
'    line-height: 22px;',
'}',
'',
'',
'#main-nav,',
'.cat-box-content,',
'#sidebar .widget-container,',
'.post-listing,',
'#commentform {',
'	border-bottom-color: #f80000;',
'}',
'',
'.search-block .search-button,',
'#topcontrol,',
'#main-nav ul li.current-menu-item a,',
'#main-nav ul li.current-menu-item a:hover,',
'#main-nav ul li.current_page_parent a,',
'#main-nav ul li.current_page_parent a:hover,',
'#main-nav ul li.current-menu-parent a,',
'#main-nav ul li.current-menu-parent a:hover,',
'#main-nav ul li.current-page-ancestor a,',
'#main-nav ul li.current-page-ancestor a:hover,',
'.pagination span.current,',
'.share-post span.share-text,',
'.flex-control-paging li a.flex-active,',
'.ei-slider-thumbs li.ei-slider-element,',
'.review-percentage .review-item span span,',
'.review-final-score,',
'.button,',
'a.button,',
'a.more-link,',
'#main-content input[type="submit"],',
'.form-submit #submit,',
'#login-form .login-button,',
'.widget-feedburner .feedburner-subscribe,',
'input[type="submit"],',
'#buddypress button,',
'#buddypress a.button,',
'#buddypress input[type=submit],',
'#buddypress input[type=reset],',
'#buddypress ul.button-nav li a,',
'#buddypress div.generic-button a,',
'#buddypress .comment-reply-link,',
'#buddypress div.item-list-tabs ul li a span,',
'#buddypress div.item-list-tabs ul li.selected a,',
'#buddypress div.item-list-tabs ul li.current a,',
'#buddypress #members-directory-form div.item-list-tabs ul li.selected span,',
'#members-list-options a.selected,',
'#groups-list-options a.selected,',
'body.dark-skin #buddypress div.item-list-tabs ul li a span,',
'body.dark-skin #buddypress div.item-list-tabs ul li.selected a,',
'body.dark-skin #buddypress div.item-list-tabs ul li.current a,',
'body.dark-skin #members-list-options a.selected,',
'body.dark-skin #groups-list-options a.selected,',
'.search-block-large .search-button,',
'#featured-posts .flex-next:hover,',
'#featured-posts .flex-prev:hover,',
'a.tie-cart span.shooping-count,',
'.woocommerce span.onsale,',
'.woocommerce-page span.onsale ,',
'.woocommerce .widget_price_filter .ui-slider .ui-slider-handle,',
'.woocommerce-page .widget_price_filter .ui-slider .ui-slider-handle,',
'#check-also-close,',
'a.post-slideshow-next,',
'a.post-slideshow-prev,',
'.widget_price_filter .ui-slider .ui-slider-handle,',
'.quantity .minus:hover,',
'.quantity .plus:hover,',
'.mejs-container .mejs-controls .mejs-time-rail .mejs-time-current,',
'#reading-position-indicator  {',
'	background-color:#f80000;',
'}',
'',
'::-webkit-scrollbar-thumb{',
'	background-color:#f80000 !important;',
'}',
'',
'#theme-footer,',
'#theme-header,',
'.top-nav ul li.current-menu-item:before,',
'#main-nav .menu-sub-content ,',
'#main-nav ul ul,',
'#check-also-box {',
'	border-top-color: #f80000;',
'}',
'',
'.search-block:after {',
'	border-right-color:#f80000;',
'}',
'',
'body.rtl .search-block:after {',
'	border-left-color:#f80000;',
'}',
'',
'#main-nav ul > li.menu-item-has-children:hover > a:after,',
'#main-nav ul > li.mega-menu:hover > a:after {',
'	border-color:transparent transparent #f80000;',
'}',
'',
'.widget.timeline-posts li a:hover,',
'.widget.timeline-posts li a:hover span.tie-date {',
'	color: #f80000;',
'}',
'',
'.widget.timeline-posts li a:hover span.tie-date:before {',
'	background: #f80000;',
'	border-color: #f80000;',
'}',
'',
'#order_review,',
'#order_review_heading {',
'	border-color: #f80000;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20211113195146'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11793940656311112704)
,p_plug_name=>'Get DDL ( Create Script ) of any Object'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en-US" prefix="og: http://ogp.me/ns#">',
'',
'<head>',
'',
'    <style type=''text/css''>',
'        img#wpstats {',
'            display: none',
'        }',
'    </style>',
'    <link rel="shortcut icon" href="https://ittutorial.org/wp-content/uploads/2020/09/400dpiLogoCropped-e1600203386640.png" title="Favicon" />',
'    <!--[if IE]> <script type="text/javascript">jQuery(document).ready(function (){ jQuery(".menu-item").has("ul").children("a").attr("aria-haspopup", "true");});</script> <![endif]-->',
'    <!--[if lt IE 9]> <script src="https://ittutorial.org/wp-content/themes/sahifa/js/html5.js"></script> <script src="https://ittutorial.org/wp-content/themes/sahifa/js/selectivizr-min.js"></script> <![endif]-->',
'    <!--[if IE 9]><link rel="stylesheet" type="text/css" media="all" href="https://ittutorial.org/wp-content/themes/sahifa/css/ie9.css" />',
'<![endif]-->',
'    <!--[if IE 8]><link rel="stylesheet" type="text/css" media="all" href="https://ittutorial.org/wp-content/themes/sahifa/css/ie8.css" />',
'<![endif]-->',
'    <!--[if IE 7]><link rel="stylesheet" type="text/css" media="all" href="https://ittutorial.org/wp-content/themes/sahifa/css/ie7.css" />',
'<![endif]-->',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'    <style type="text/css" media="screen">',
'        body {',
'            font-family: ''Droid Sans'';',
'        }',
'',
'        ::-webkit-scrollbar {',
'            width: 8px;',
'            height: 8px;',
'        }',
'',
'        #main-nav,',
'        .cat-box-content,',
'        #sidebar .widget-container,',
'        .post-listing,',
'        #commentform {',
'            border-bottom-color: #f80000;',
'        }',
'',
'        .search-block .search-button,',
'        #topcontrol,',
'        #main-nav ul li.current-menu-item a,',
'        #main-nav ul li.current-menu-item a:hover,',
'        #main-nav ul li.current_page_parent a,',
'        #main-nav ul li.current_page_parent a:hover,',
'        #main-nav ul li.current-menu-parent a,',
'        #main-nav ul li.current-menu-parent a:hover,',
'        #main-nav ul li.current-page-ancestor a,',
'        #main-nav ul li.current-page-ancestor a:hover,',
'        .pagination span.current,',
'        .share-post span.share-text,',
'        .flex-control-paging li a.flex-active,',
'        .ei-slider-thumbs li.ei-slider-element,',
'        .review-percentage .review-item span span,',
'        .review-final-score,',
'        .button,',
'        a.button,',
'        a.more-link,',
'        #main-content input[type="submit"],',
'        .form-submit #submit,',
'        #login-form .login-button,',
'        .widget-feedburner .feedburner-subscribe,',
'        input[type="submit"],',
'        #buddypress button,',
'        #buddypress a.button,',
'        #buddypress input[type=submit],',
'        #buddypress input[type=reset],',
'        #buddypress ul.button-nav li a,',
'        #buddypress div.generic-button a,',
'        #buddypress .comment-reply-link,',
'        #buddypress div.item-list-tabs ul li a span,',
'        #buddypress div.item-list-tabs ul li.selected a,',
'        #buddypress div.item-list-tabs ul li.current a,',
'        #buddypress #members-directory-form div.item-list-tabs ul li.selected span,',
'        #members-list-options a.selected,',
'        #groups-list-options a.selected,',
'        body.dark-skin #buddypress div.item-list-tabs ul li a span,',
'        body.dark-skin #buddypress div.item-list-tabs ul li.selected a,',
'        body.dark-skin #buddypress div.item-list-tabs ul li.current a,',
'        body.dark-skin #members-list-options a.selected,',
'        body.dark-skin #groups-list-options a.selected,',
'        .search-block-large .search-button,',
'        #featured-posts .flex-next:hover,',
'        #featured-posts .flex-prev:hover,',
'        a.tie-cart span.shooping-count,',
'        .woocommerce span.onsale,',
'        .woocommerce-page span.onsale,',
'        .woocommerce .widget_price_filter .ui-slider .ui-slider-handle,',
'        .woocommerce-page .widget_price_filter .ui-slider .ui-slider-handle,',
'        #check-also-close,',
'        a.post-slideshow-next,',
'        a.post-slideshow-prev,',
'        .widget_price_filter .ui-slider .ui-slider-handle,',
'        .quantity .minus:hover,',
'        .quantity .plus:hover,',
'        .mejs-container .mejs-controls .mejs-time-rail .mejs-time-current,',
'        #reading-position-indicator {',
'            background-color: #f80000;',
'        }',
'',
'        ::-webkit-scrollbar-thumb {',
'            background-color: #f80000 !important;',
'        }',
'',
'        #theme-footer,',
'        #theme-header,',
'        .top-nav ul li.current-menu-item:before,',
'        #main-nav .menu-sub-content,',
'        #main-nav ul ul,',
'        #check-also-box {',
'            border-top-color: #f80000;',
'        }',
'',
'        .search-block:after {',
'            border-right-color: #f80000;',
'        }',
'',
'        body.rtl .search-block:after {',
'            border-left-color: #f80000;',
'        }',
'',
'        #main-nav ul>li.menu-item-has-children:hover>a:after,',
'        #main-nav ul>li.mega-menu:hover>a:after {',
'            border-color: transparent transparent #f80000;',
'        }',
'',
'        .widget.timeline-posts li a:hover,',
'        .widget.timeline-posts li a:hover span.tie-date {',
'            color: #f80000;',
'        }',
'',
'        .widget.timeline-posts li a:hover span.tie-date:before {',
'            background: #f80000;',
'            border-color: #f80000;',
'        }',
'',
'        #order_review,',
'        #order_review_heading {',
'            border-color: #f80000;',
'        }',
'    </style>',
'    <script type="ecab5fe8ff044d06fe90e022-text/javascript">',
'        /*  */',
'        var sf_position = ''0'';',
'        var sf_templates = "<a href=\"{search_url_escaped}\">View All Results<\/a>";',
'        var sf_input = ''.search-live'';',
'        jQuery(document).ready(function() {',
'            jQuery(sf_input).ajaxyLiveSearch({',
'                "expand": false,',
'                "searchUrl": "https:\/\/ittutorial.org\/?s=%s",',
'                "text": "Search",',
'                "delay": 500,',
'                "iwidth": 180,',
'                "width": 315,',
'                "ajaxUrl": "https:\/\/ittutorial.org\/wp-admin\/admin-ajax.php",',
'                "rtl": 0',
'            });',
'            jQuery(".live-search_ajaxy-selective-input").keyup(function() {',
'                var width = jQuery(this).val().length * 8;',
'                if (width < 50) {',
'                    width = 50;',
'                }',
'                jQuery(this).width(width);',
'            });',
'            jQuery(".live-search_ajaxy-selective-search").click(function() {',
'                jQuery(this).find(".live-search_ajaxy-selective-input").focus();',
'            });',
'            jQuery(".live-search_ajaxy-selective-close").click(function() {',
'                jQuery(this).parent().remove();',
'            });',
'        });',
'        /*  */',
'    </script>',
'    <meta name="google-adsense-platform-account" content="ca-host-pub-2644536267352236">',
'    <meta name="google-adsense-platform-domain" content="sitekit.withgoogle.com">',
'    <link rel="amphtml" href="https://ittutorial.org/dbms_metadata-get_ddl-get-ddl-create-script-of-any-object-in-oracle/amp/">',
'    <script src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-3373538331699715" crossorigin="anonymous" type="ecab5fe8ff044d06fe90e022-text/javascript"></script>',
'    <style>',
'        #amp-mobile-version-switcher {',
'            position: absolute;',
'            width: 100%;',
'            left: 0;',
'            z-index: 100',
'        }',
'',
'        #amp-mobile-version-switcher>a {',
'            display: block;',
'            padding: 15px 0;',
'            font-family: -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Oxygen-Sans, Ubuntu, Cantarell, Helvetica Neue, sans-serif;',
'            font-size: 16px;',
'            font-weight: 600;',
'            color: #eaeaea;',
'            text-align: center;',
'            text-decoration: none;',
'            background-color: #444;',
'            border: 0',
'        }',
'',
'        #amp-mobile-version-switcher>a:active,',
'        #amp-mobile-version-switcher>a:focus,',
'        #amp-mobile-version-switcher>a:hover {',
'            text-decoration: underline',
'        }',
'    </style>',
'    <link rel="alternate" type="text/html" media="only screen and (max-width: 640px)" href="https://ittutorial.org/dbms_metadata-get_ddl-get-ddl-create-script-of-any-object-in-oracle/amp/">',
'    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-3373538331699715" crossorigin="anonymous" type="ecab5fe8ff044d06fe90e022-text/javascript"></script>',
'    <link rel="icon" href="https://i2.wp.com/ittutorial.org/wp-content/uploads/2019/12/cropped-IT-Tutorial-Logo-1-1.jpg?fit=32%2C32&#038;ssl=1" sizes="32x32" />',
'    <link rel="icon" href="https://i2.wp.com/ittutorial.org/wp-content/uploads/2019/12/cropped-IT-Tutorial-Logo-1-1.jpg?fit=192%2C192&#038;ssl=1" sizes="192x192" />',
'    <link rel="apple-touch-icon" href="https://i2.wp.com/ittutorial.org/wp-content/uploads/2019/12/cropped-IT-Tutorial-Logo-1-1.jpg?fit=180%2C180&#038;ssl=1" />',
'    <meta name="msapplication-TileImage" content="https://i2.wp.com/ittutorial.org/wp-content/uploads/2019/12/cropped-IT-Tutorial-Logo-1-1.jpg?fit=270%2C270&#038;ssl=1" />',
'</head>',
'',
'<body id="top" class="post-template-default single single-post postid-14090 single-format-standard lazy-enabled aa-prefix-ittut- aa-disabled-bots">',
'',
'',
'',
'<h1 class="name post-title entry-title"><span itemprop="name">How to Get DDL ( Create Script ) of any Object in Oracle Using DBMS_METADATA.GET_DDL</span></h1>',
'<h2><span style="color: #ff0000;">DBMS_METADATA.GET_DDL</span></h2>',
'<p>Syntax of <span style="color: #ff0000;"><strong>DBMS_METADATA.GET_DDL</strong></span> is as follows.</p>',
'',
'<pre dir="ltr">DBMS_METADATA.GET_DDL (',
'object_type     IN VARCHAR2,',
'name            IN VARCHAR2,',
'schema          IN VARCHAR2 DEFAULT NULL,',
'version         IN VARCHAR2 DEFAULT ''COMPATIBLE'',',
'model           IN VARCHAR2 DEFAULT ''ORACLE'',',
'transform       IN VARCHAR2 DEFAULT ''DDL'')',
'RETURN CLOB;',
'',
'',
'',
'',
'</pre>',
'',
'    <script src="/cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="ecab5fe8ff044d06fe90e022-|49" defer=""></script>',
'    <script defer src="https://static.cloudflareinsights.com/beacon.min.js" data-cf-beacon=''{"rayId":"6ada4bfac9240818","version":"2021.11.0","r":1,"token":"95a7d7f0c1df4f4abb75eb593134a409","si":100}'' crossorigin="anonymous"></script>',
'</body>',
'',
'</html>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11793940895709112706)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(33247212693934359074)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="post-inner" style="height: auto !important;"><h1 class="name post-title entry-title"><span itemprop="name">How to Get DDL ( Create Script ) of any Object in Oracle Using DBMS_METADATA.GET_DDL</span></h1><p class="post-meta">',
'<span class="post-meta-author"><i class="fa fa-user"></i><a href="https://ittutorial.org/author/mehmet24/" title="">Mehmet Salih Deveci </a></span>',
'<span class="tie-date"><i class="fa fa-clock-o"></i>March 19, 2020</span>',
'<span class="post-comments"><i class="fa fa-comments"></i><a href="https://ittutorial.org/dbms_metadata-get_ddl-get-ddl-create-script-of-any-object-in-oracle/?noamp=mobile#respond">Leave a comment</a></span></p><div class="clear"></div><div class="en'
||unistr('try" style="height: auto !important;"><p>I will explain How to Get DDL ( Create Script ) of any Object in Oracle Using DBMS_METADATA.GET_DDL in this article. Let\2019s go to review how to use Get DDL ( Create Script ) DBMS_METADATA.GET_DDL in Oracle.</p>')
||'<p><span id="more-14090"></span></p><p>&nbsp;</p><h2><span style="color: #ff0000;">DBMS_METADATA.GET_DDL</span></h2><p>DBAs, Developers and DWH Teams need create scripts of Objects ( Table,index,package,tablespace and etc ) every time.</p><p>Oracle d'
||'atabase has DBMS_METADATA package that provide a way for you to retrieve metadata from the database dictionary.</p><p>You can retrieve metadata of any object using Get DDL ( Create Script ) DBMS_METADATA.GET_DDL</p><p>&nbsp;</p><h3><span style="color'
||': #ff0000;">Get DDL ( Create Script ) DBMS_METADATA.GET_DDL</span></h3><p>Syntax of <span style="color: #ff0000;"><strong>DBMS_METADATA.GET_DDL</strong></span> is as follows.</p><pre dir="ltr">DBMS_METADATA.GET_DDL (',
'object_type     IN VARCHAR2,',
'name            IN VARCHAR2,',
'schema          IN VARCHAR2 DEFAULT NULL,',
'version         IN VARCHAR2 DEFAULT ''COMPATIBLE'',',
'model           IN VARCHAR2 DEFAULT ''ORACLE'',',
'transform       IN VARCHAR2 DEFAULT ''DDL'')',
'RETURN CLOB;',
'',
'',
'',
'',
'</pre> <script async="" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-3373538331699715" crossorigin="anonymous" type="text/javascript" data-checked-head="true"></script><ins class="adsbygoogle" style="display: block; hei'
||'ght: 280px;" data-ad-client="ca-pub-3373538331699715" data-ad-slot="1119430155" data-ad-format="auto" data-adsbygoogle-status="done" data-ad-status="filled"><ins id="aswift_2_expand" style="border: none; height: 280px; width: 620px; margin: 0px; padd'
||'ing: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-table;" tabindex="0" title="Advertisement" aria-label="Advertisement"><ins id="aswift_2_anchor" style="border: none; height: 280px; width: 620px; margin'
||': 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: block; overflow: visible;"><iframe id="aswift_2" name="aswift_2" style="left:0;position:absolute;top:0;border:0;width:620px;height:280px;" sandbox="'
||'allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" width="620" height="280" frameborder="0" src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-33735383316997'
||'15&amp;output=html&amp;h=280&amp;slotname=1119430155&amp;adk=3626596417&amp;adf=1643484501&amp;pi=t.ma~as.1119430155&amp;w=620&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1636830582&amp;rafmt=1&amp;psa=1&amp;format=620x280&amp;url=https%3A%2F%2Fittutorial.org%2'
||'Fdbms_metadata-get_ddl-get-ddl-create-script-of-any-object-in-oracle%2F&amp;flash=0&amp;host=ca-host-pub-2644536267352236&amp;fwr=0&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;adsid=ChAIgOG9jAYQx5benZGrop8jEjkAJSQJjm2EvUZsnWIOFWftP-NvqLqRqh0i8CSvCKKm_kEH'
||'3nLFLjV1MerT4V_taIUO6iRsuUdKNsU&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiOTUuMC40NjM4LjY5IixbXSxudWxsLG51bGwsIjY0Il0.&amp;dt=1636830144629&amp;bpp=2&amp;bdt=1035&amp;idt=132&amp;shv=r20211109&amp;mjsv=m202111080101&amp;ptt=9&amp;saldr=aa&amp;'
||'abxe=1&amp;cookie=ID%3D702159cd99353151%3AT%3D1636826948%3AS%3DALNI_MYIAtyNR92MTRibUEMVfiQDGYDZxw&amp;prev_fmts=0x0%2C1528x722%2C300x250%2C306x250%2C306x250%2C306x250%2C620x280%2C300x250%2C300x250%2C620x280&amp;nras=2&amp;correlator=6458303530096&amp'
||';frm=20&amp;pv=1&amp;ga_vid=403761530.1636826947&amp;ga_sid=1636830145&amp;ga_hid=1254552328&amp;ga_fc=1&amp;u_tz=360&amp;u_his=1&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;dmc=8&amp;adx=286&amp;ady=1036&amp;biw=1528&amp;bih='
||'722&amp;scr_x=0&amp;scr_y=3422&amp;eid=31063685&amp;oid=2&amp;psts=AGkb-H8suvzN5iO7v2AiK2W7xSDPaVv81dgZ_mnkMHce-pA6acwqh6QwyxfiUZgRcfcDY1YQ_toJ4H6KP3zg8Q4SGg%2CAGkb-H94uR1fIE1ckr1_fhKUbT6xoLfy8odvBLzIHtbSj0SBcCflbEIbMwcoMTs3hUbFOfEaXcjkVs_bsZYaiQCsHQ'
||'%2CAGkb-H9LF8Gc_On4pmqLeFFrZG0eKPKfYXPOQK83fnExcsFIzSC8unlVAYoDbCh91JaIX_Y7OhFzHKvmi4tdbazaQg%2CAGkb-H8BGv94A2wbGRI0Rk0-4Fl6t6UmGN3CPMhQttwgcMBHaaYgq10H2BbFUplonLhmLmF0297v1CdmQmEj42SInw%2CAGkb-H8N_DUc4C0E3sJvGmyPtYg0yeeb5hXPOKzgC11szCWSE2Sgz5hyp97Uz'
||'R9ol5S1a_TH_9hwZfS4C6M2Ude3OQ&amp;pvsid=3081511855976373&amp;pem=488&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;eae=0&amp;fc=1920&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C722&amp;vis=1&amp;rsz=%7C%7CeE%7C&amp;abl=CS&amp;pfx=0&amp;fu='
||'128&amp;bc=31&amp;ifi=3&amp;uci=a!3&amp;fsb=1&amp;xpc=yGIh6FPeMo&amp;p=https%3A//ittutorial.org&amp;dtd=M" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" data-google-container-id='
||'"a!3" data-google-query-id="CLbUmYyFlvQCFY0U1QodzcsNIw" data-load-complete="true" __idm_id__="1722032133"></iframe></ins></ins></ins> <script type="text/javascript">(adsbygoogle = window.adsbygoogle || []).push({});</script> <h3></h3><h3><span style='
||unistr('"color: #ff0000;">DBMS_METADATA \2013 User Create Script</span></h3><p>You can get DDL ( Create Script&nbsp; ) of any User ( Schema ) as follows.</p><pre>select dbms_metadata.get_ddl(''USER'', du.username) AS DDL_SCRIPT'),
'from dba_users du',
'where du.username = ''TYPE_USER_NAME''',
'union all',
'select dbms_metadata.get_granted_ddl(''TABLESPACE_QUOTA'', dtq.username) AS DDL_SCRIPT',
'from dba_ts_quotas dtq',
'where dtq.username = ''TYPE_USER_NAME''',
'and rownum = 1',
'union all',
'select dbms_metadata.get_granted_ddl(''ROLE_GRANT'', drp.grantee) AS DDL_SCRIPT',
'from dba_role_privs drp',
'where drp.grantee = ''TYPE_USER_NAME''',
'and rownum = 1',
'union all',
'select dbms_metadata.get_granted_ddl(''SYSTEM_GRANT'', dsp.grantee) AS DDL_SCRIPT',
'from dba_sys_privs dsp',
'where dsp.grantee = ''TYPE_USER_NAME''',
'and rownum = 1',
'union all',
'select dbms_metadata.get_granted_ddl(''OBJECT_GRANT'', dtp.grantee) AS DDL_SCRIPT',
'from dba_tab_privs dtp',
'where dtp.grantee = ''TYPE_USER_NAME''',
'and rownum = 1',
'union all',
'select dbms_metadata.get_granted_ddl(''DEFAULT_ROLE'', drp.grantee) AS DDL_SCRIPT',
'from dba_role_privs drp',
'where drp.grantee = ''TYPE_USER_NAME''',
'and drp.default_role = ''YES''',
'and rownum = 1;</pre><p>&nbsp;</p><h3><span style="color: #ff0000;">GET_DDL</span></h3><p>For example: You can get DDL of MEHMETSALIH user as follows.</p><div class="ittut-content" id="ittut-184959471"><iframe data-id="ittutorial.org_300x250_responsi'
||'ve_DFP" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" topmargin="0" leftmargin="0" width="1" height="1" data-rendered="true" style="width: 0px; height: 0px;"></iframe> <script type="text/javascript">(function () {',
'        var size=''300x250'',',
'            adunit = ''ittutorial.org_300x250_responsive_DFP'',',
'            xmlhttp = new XMLHttpRequest();',
'        xmlhttp.onreadystatechange = function(){if (xmlhttp.readyState == 4 && xmlhttp.status == 200){var es = document.querySelectorAll("[data-id=''"+adunit+"'']");var e = Array.from(es).find(function(e) {return !e.hasAttribute("data-rendered")});if(e'
||'){var iframe = e.contentWindow.document;iframe.open();iframe.write(xmlhttp.responseText);iframe.close();e.setAttribute(''data-rendered'', true)}}};xmlhttp.open("GET", ''https://pubads.g.doubleclick.net/gampad/adx?iu=/147246189/''+adunit+''&sz=''+encodeURI('
||'size)+''&t=Placement_type%3Dserving&''+Date.now(), true);xmlhttp.send();})();</script> </div><p>&nbsp;</p><pre>SQL&gt; set long 100000',
'SQL&gt; set head off',
'SQL&gt; set echo off',
'SQL&gt; set pagesize 0',
'SQL&gt; set verify off',
'SQL&gt; set feedback off',
'SQL&gt; select dbms_metadata.get_ddl(''USER'', du.username) AS DDL_SCRIPT',
'  2  from   dba_users du',
'  3  where  du.username = ''MEHMETSALIH''',
'  4  union all',
'  5  select dbms_metadata.get_granted_ddl(''TABLESPACE_QUOTA'', dtq.username) AS DDL_SCRIPT',
'  6  from   dba_ts_quotas dtq',
'  7  where  dtq.username = ''MEHMETSALIH''',
'  8  and    rownum = 1',
'  9  union all',
' 10  select dbms_metadata.get_granted_ddl(''ROLE_GRANT'', drp.grantee) AS DDL_SCRIPT',
' 11  from   dba_role_privs drp',
' 12  where  drp.grantee = ''MEHMETSALIH''',
' 13  and    rownum = 1',
' 14  union all',
' 15  select dbms_metadata.get_granted_ddl(''SYSTEM_GRANT'', dsp.grantee) AS DDL_SCRIPT',
' 16  from   dba_sys_privs dsp',
' 17  where  dsp.grantee = ''MEHMETSALIH''',
' 18  and    rownum = 1',
' 19  union all',
' 20  select dbms_metadata.get_granted_ddl(''OBJECT_GRANT'', dtp.grantee) AS DDL_SCRIPT',
' 21  from   dba_tab_privs dtp',
' 22  where  dtp.grantee = ''MEHMETSALIH''',
' 23  and    rownum = 1',
' 24  union all',
' 25  select dbms_metadata.get_granted_ddl(''DEFAULT_ROLE'', drp.grantee) AS DDL_SCRIPT',
' 26  from   dba_role_privs drp',
' 27  where  drp.grantee = ''MEHMETSALIH''',
' 28  and    drp.default_role = ''YES''',
' 29  and    rownum = 1;',
'',
'   CREATE USER "MEHMETSALIH" IDENTIFIED BY VALUES ''S:DFDE2EB3729B9D88FC8F7492942D2EA6476BF291FECB0DC56F2A64867F17;T:7D2C79E56B7427C7D5E4E2F209FE4F35524316F9116D15803A5AB1688CAB6DBB1BAC36145075F68C4521E1EA744F2BD53FA8BC08F4BC384B5A0E04D832D49E813BC849'
||'BF01C7F38DC780E9BC3C9391E2;8855019455223980''',
'      DEFAULT TABLESPACE "USERS"',
'      TEMPORARY TABLESPACE "TEMP"',
'      PROFILE "PERSONAL";',
'',
'',
'   GRANT "DBA" TO "MEHMETSALIH";',
'',
'',
'  GRANT UNLIMITED TABLESPACE TO "MEHMETSALIH";',
'',
'',
'   ALTER USER "MEHMETSALIH" DEFAULT ROLE ALL;',
'',
'SQL&gt;</pre><p>&nbsp;</p><p>&nbsp;</p><h4><span style="color: #ff0000;">Get DDL of a Table ( Table Create Script )</span></h4><p>You can get DDL ( Create Script&nbsp; ) of any table as follows.</p><pre>select dbms_metadata.get_ddl( ''TABLE'', ''TABLE_N'
||'AME'',''SCHEMA_NAME'' ) from dual;</pre><p>&nbsp;</p><p>For example; You can get MEHMETSALIH.OFFER_CLASS table create script as follows.</p><p>&nbsp;</p><pre>select dbms_metadata.get_ddl(''TABLE'', ''OFFER_CLASS'',''MEHMETSALIH'') from dual;</pre><p>&nbsp;</p'
||'><pre>SQL&gt; set long 100000',
'SQL&gt; set head off',
'SQL&gt; set echo off',
'SQL&gt; set pagesize 0',
'SQL&gt; set verify off',
'SQL&gt; set feedback off',
'SQL&gt; select dbms_metadata.get_ddl(''TABLE'', ''OFFER_CLASS'',''MEHMETSALIH'') from dual;',
'',
'CREATE TABLE "MEHMETSALIH"."OFFER_CLASS"',
'( "OFFER_ID" VARCHAR2(30 CHAR) NOT NULL ENABLE,',
'"OFFER_CLASS_SCHEME_CD" VARCHAR2(16 CHAR) NOT NULL ENABLE,',
'"VALID_FROM_DT" DATE NOT NULL ENABLE,',
'"VALID_UNTIL_DT" DATE NOT NULL ENABLE,',
'"OFFER_CLASS_VALUE_CD" VARCHAR2(40 CHAR) NOT NULL ENABLE,',
'"SOURCE_SYSTEM_CD" VARCHAR2(5 CHAR) NOT NULL ENABLE,',
'"INSERT_DT" DATE,',
'"UPDATE_DT" DATE',
') SEGMENT CREATION IMMEDIATE',
'PCTFREE 0 PCTUSED 40 INITRANS 1 MAXTRANS 255',
'COLUMN STORE COMPRESS FOR QUERY HIGH NO ROW LEVEL LOCKING NOLOGGING',
'STORAGE(INITIAL 81920 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645',
'PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1',
'BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)',
'TABLESPACE "USERS"',
'PARALLEL 96',
'',
unistr('SQL&gt;</pre><p>&nbsp;</p><p>You can get all tables get ddl ( create script ) or any schema\2019s tables create script as follows.</p><p>&nbsp;</p><pre>SELECT DBMS_METADATA.get_ddl (''TABLE'', table_name, owner)'),
'FROM all_tables',
'WHERE owner = UPPER(''&amp;1'');</pre><p>&nbsp;</p> <script async="" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-3373538331699715" crossorigin="anonymous" type="text/javascript" data-checked-head="true"></script><ins cla'
||'ss="adsbygoogle" style="display: block; height: 280px;" data-ad-client="ca-pub-3373538331699715" data-ad-slot="1119430155" data-ad-format="auto" data-adsbygoogle-status="done" data-ad-status="filled"><ins id="aswift_3_expand" style="border: none; hei'
||'ght: 280px; width: 620px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-table;" tabindex="0" title="Advertisement" aria-label="Advertisement"><ins id="aswift_3_anchor" style="border'
||': none; height: 280px; width: 620px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: block; overflow: visible;"><iframe id="aswift_3" name="aswift_3" style="left:0;position:absolute;top:0;bo'
||'rder:0;width:620px;height:280px;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" width="620" height="280" frameborder="0" src="https://googleads.g.doubleclick.'
||'net/pagead/ads?client=ca-pub-3373538331699715&amp;output=html&amp;h=280&amp;slotname=1119430155&amp;adk=3626596417&amp;adf=2050421110&amp;pi=t.ma~as.1119430155&amp;w=620&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1636830581&amp;rafmt=1&amp;psa=1&amp;format=620'
||'x280&amp;url=https%3A%2F%2Fittutorial.org%2Fdbms_metadata-get_ddl-get-ddl-create-script-of-any-object-in-oracle%2F&amp;flash=0&amp;host=ca-host-pub-2644536267352236&amp;fwr=0&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;adsid=ChAIgOG9jAYQx5benZGrop8jEjkAJ'
||'SQJjm2EvUZsnWIOFWftP-NvqLqRqh0i8CSvCKKm_kEH3nLFLjV1MerT4V_taIUO6iRsuUdKNsU&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiOTUuMC40NjM4LjY5IixbXSxudWxsLG51bGwsIjY0Il0.&amp;dt=1636830144632&amp;bpp=2&amp;bdt=1039&amp;idt=149&amp;shv=r20211109&amp;mjs'
||'v=m202111080101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3D702159cd99353151%3AT%3D1636826948%3AS%3DALNI_MYIAtyNR92MTRibUEMVfiQDGYDZxw&amp;prev_fmts=0x0%2C1528x722%2C300x250%2C306x250%2C306x250%2C306x250%2C620x280%2C300x250%2C300x250&amp;nras=2'
||'&amp;correlator=6458303530096&amp;frm=20&amp;pv=1&amp;ga_vid=403761530.1636826947&amp;ga_sid=1636830145&amp;ga_hid=1254552328&amp;ga_fc=1&amp;u_tz=360&amp;u_his=1&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;dmc=8&amp;adx=286&a'
||'mp;ady=4329&amp;biw=1528&amp;bih=722&amp;scr_x=0&amp;scr_y=6756&amp;eid=31063685&amp;oid=2&amp;psts=AGkb-H8suvzN5iO7v2AiK2W7xSDPaVv81dgZ_mnkMHce-pA6acwqh6QwyxfiUZgRcfcDY1YQ_toJ4H6KP3zg8Q4SGg%2CAGkb-H94uR1fIE1ckr1_fhKUbT6xoLfy8odvBLzIHtbSj0SBcCflbEIbM'
||'wcoMTs3hUbFOfEaXcjkVs_bsZYaiQCsHQ%2CAGkb-H9LF8Gc_On4pmqLeFFrZG0eKPKfYXPOQK83fnExcsFIzSC8unlVAYoDbCh91JaIX_Y7OhFzHKvmi4tdbazaQg%2CAGkb-H8BGv94A2wbGRI0Rk0-4Fl6t6UmGN3CPMhQttwgcMBHaaYgq10H2BbFUplonLhmLmF0297v1CdmQmEj42SInw&amp;pvsid=3081511855976373&amp'
||';pem=488&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;eae=0&amp;fc=1920&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C722&amp;vis=1&amp;rsz=%7C%7CeE%7C&amp;abl=CS&amp;pfx=0&amp;fu=128&amp;bc=31&amp;ifi=4&amp;uci=a!4&amp;fsb=1&amp;xpc=Z4izWb'
||'aA73&amp;p=https%3A//ittutorial.org&amp;dtd=M" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" data-google-container-id="a!4" data-google-query-id="CN2O4YuFlvQCFRWlaAodbfEDKQ" data'
||'-load-complete="true" __idm_id__="1722032132"></iframe></ins></ins></ins> <script type="text/javascript">(adsbygoogle = window.adsbygoogle || []).push({});</script> <p>&nbsp;</p><p>&nbsp;</p><h4><span style="color: #ff0000;">Index Create Script</span'
||'></h4><p>You can get DDL ( Create Script&nbsp; ) of any index as follows.</p><pre>select dbms_metadata.get_ddl( ''INDEX'', ''INDEX_NAME'',''SCHEMA_NAME'' ) from dual;</pre><p>&nbsp;</p><p>For example; You can get MEHMETSALIH.PK_OFFER_CLASS index&nbsp; crea'
||'te script as follows.</p><p>&nbsp;</p><p>&nbsp;</p><pre>SQL&gt; set long 100000',
'SQL&gt; set head off',
'SQL&gt; set echo off',
'SQL&gt; set pagesize 0',
'SQL&gt; set verify off',
'SQL&gt; set feedback off',
'SQL&gt; select dbms_metadata.get_ddl(''INDEX'',''PK_OFFER_CLASS'',''MEHMETSALIH'') from dual;',
'',
'CREATE UNIQUE INDEX "MEHMETSALIH"."PK_OFFER_CLASS" ON "MEHMETSALIH"."OFFER_CLASS" ("OFFER_CLASS_SCHEME_CD", "VALID_FROM_DT", "OFFER_ID")',
'PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING',
'STORAGE(INITIAL 81920 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645',
'PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1',
'BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)',
'TABLESPACE "TBS_USER" ;',
'',
'SQL&gt;</pre><p>&nbsp;</p><p>You can get all indexes get ddl ( create script ) as follows.</p><pre>SELECT DBMS_METADATA.GET_DDL(''INDEX'', INDEX_NAME) FROM USER_INDEXES WHERE INDEX_TYPE =''NORMAL'';</pre><p>&nbsp;</p><h4><span style="color: #ff0000;">Tab'
||'lespace Create Script</span></h4><p>You can generate all tablespaces get ddl ( create script ) as follows.</p><pre>set head off echo off',
'select ''select dbms_metadata.get_ddl(''''TABLESPACE'''',''''''',
'|| tablespace_name || '''''') from dual;'' from dba_tablespaces;</pre><p>&nbsp;</p><p>You can get the Users tablespace get ddl ( create script ) as follows.</p><pre>SQL&gt; select dbms_metadata.get_ddl(''TABLESPACE'',''USERS'') from dual;',
'',
'CREATE TABLESPACE "USERS" DATAFILE',
'SIZE 68717379584',
'AUTOEXTEND ON NEXT 68717379584 MAXSIZE 65535M,',
'SIZE 64424509440',
'AUTOEXTEND ON NEXT 64424509440 MAXSIZE 65535M,',
'SIZE 10737418240',
'AUTOEXTEND ON NEXT 10737418240 MAXSIZE 65535M',
'LOGGING ONLINE PERMANENT BLOCKSIZE 16384',
'EXTENT MANAGEMENT LOCAL AUTOALLOCATE DEFAULT',
'COLUMN STORE COMPRESS FOR QUERY HIGH NO ROW LEVEL LOCKING SEGMENT SPACE MANAGEMENT AUTO;</pre><p>&nbsp;</p><h4><span style="color: #ff0000;">DBMS_METADATA.GET_DDL VIEW, FUNCTION,PACKAGE</span></h4><p>You can get all views get ddl ( create script ) as'
||' follows.</p><pre>SELECT DBMS_METADATA.GET_DDL(''VIEW'', VIEW_NAME) FROM USER_VIEWS;</pre><p>&nbsp;</p><p>You can get all functions, procedures get ddl ( create script ) as follows.</p><pre>SELECT DBMS_METADATA.GET_DDL(''FUNCTION'', OBJECT_NAME) FROM USE'
||unistr('R_PROCEDURES WHERE OBJECT_TYPE = ''FUNCTION'';</pre><p>&nbsp;</p><p>You can get any package\2019s get ddl ( create script ) as follows.</p><pre>SQL&gt; SELECT DBMS_METADATA.GET_DDL(''PACKAGE'',''OBJECT_NAME'',''SCHEMA_NAME'') FROM DUAL;</pre><p>&nbsp;</p> <scrip')
||'t async="" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-3373538331699715" crossorigin="anonymous" type="text/javascript" data-checked-head="true"></script><ins class="adsbygoogle" style="display: block; height: 280px;" '
||'data-ad-client="ca-pub-3373538331699715" data-ad-slot="1119430155" data-ad-format="auto" data-adsbygoogle-status="done" data-ad-status="filled"><ins id="aswift_4_expand" style="border: none; height: 280px; width: 620px; margin: 0px; padding: 0px; pos'
||'ition: relative; visibility: visible; background-color: transparent; display: inline-table;" tabindex="0" title="Advertisement" aria-label="Advertisement"><ins id="aswift_4_anchor" style="border: none; height: 280px; width: 620px; margin: 0px; paddin'
||'g: 0px; position: relative; visibility: visible; background-color: transparent; display: block; overflow: visible;"><iframe id="aswift_4" name="aswift_4" style="left:0;position:absolute;top:0;border:0;width:620px;height:280px;" sandbox="allow-forms a'
||'llow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" width="620" height="280" frameborder="0" src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-3373538331699715&amp;output'
||'=html&amp;h=280&amp;slotname=1119430155&amp;adk=3626596417&amp;adf=3266399119&amp;pi=t.ma~as.1119430155&amp;w=620&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1636830580&amp;rafmt=1&amp;psa=1&amp;format=620x280&amp;url=https%3A%2F%2Fittutorial.org%2Fdbms_metadat'
||'a-get_ddl-get-ddl-create-script-of-any-object-in-oracle%2F&amp;flash=0&amp;host=ca-host-pub-2644536267352236&amp;fwr=0&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiOTUuMC40NjM4LjY5IixbXSxudWxsLG51bGwsIjY0Il0.&a'
||'mp;dt=1636830144634&amp;bpp=1&amp;bdt=1040&amp;idt=160&amp;shv=r20211109&amp;mjsv=m202111080101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3D702159cd99353151%3AT%3D1636826948%3AS%3DALNI_MYIAtyNR92MTRibUEMVfiQDGYDZxw&amp;prev_fmts=0x0%2C1528x722%'
||'2C300x250%2C306x250%2C306x250%2C306x250&amp;nras=2&amp;correlator=6458303530096&amp;frm=20&amp;pv=1&amp;ga_vid=403761530.1636826947&amp;ga_sid=1636830145&amp;ga_hid=1254552328&amp;ga_fc=1&amp;u_tz=360&amp;u_his=1&amp;u_h=864&amp;u_w=1536&amp;u_ah=824'
||'&amp;u_aw=1536&amp;u_cd=24&amp;dmc=8&amp;adx=286&amp;ady=6501&amp;biw=1528&amp;bih=722&amp;scr_x=0&amp;scr_y=8276&amp;eid=31063685&amp;oid=2&amp;psts=AGkb-H8suvzN5iO7v2AiK2W7xSDPaVv81dgZ_mnkMHce-pA6acwqh6QwyxfiUZgRcfcDY1YQ_toJ4H6KP3zg8Q4SGg&amp;pvsid'
||'=3081511855976373&amp;pem=488&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;eae=0&amp;fc=1920&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C722&amp;vis=1&amp;rsz=%7C%7CeE%7C&amp;abl=CS&amp;pfx=0&amp;fu=128&amp;bc=31&amp;ifi=5&amp;uci=a!5&amp'
||';fsb=1&amp;xpc=jlHBkvxDAS&amp;p=https%3A//ittutorial.org&amp;dtd=M" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" data-google-container-id="a!5" data-google-query-id="CM2npouFlvQ'
||unistr('CFc8Z1QodrNsFwQ" data-load-complete="true" __idm_id__="1722032129"></iframe></ins></ins></ins> <script type="text/javascript">(adsbygoogle = window.adsbygoogle || []).push({});</script> <p>&nbsp;</p><p>You can get any package\2019s body get ddl ( create ')
||unistr('script ) as follows.</p><pre>SQL&gt; SELECT DBMS_METADATA.GET_DDL(''PACKAGE_BODY'',''OBJECT_NAME'',''SCHEMA_NAME'') FROM DUAL;</pre><p>&nbsp;</p><p>You can get any constraint\2019s get ddl ( create script ) as follows.</p><pre>SQL&gt; SELECT DBMS_METADATA.GET_')
||unistr('DEPENDENT_DDL(''REF_CONSTRAINT'',''OBJECT_NAME'',''SCHEMA_NAME'') from dual;</pre><p>&nbsp;</p><p>You can get any user\2019s system grant ( create script ) as follows.</p><pre>SQL&gt; SELECT DBMS_METADATA.GET_GRANTED_DDL(''SYSTEM_GRANT'',''SCHEMA_NAME'') from dual')
||unistr(';</pre><p>&nbsp;</p><p>You can get any user\2019s role grant ( create script ) as follows.</p><pre>SQL&gt; SELECT DBMS_METADATA.GET_GRANTED_DDL(''ROLE_GRANT'',''SCHEMA_NAME'') from dual;</pre><p>&nbsp;</p><p><span style="color: #ff0000;"><strong>If you want ')
||'to move tables, Index or partitions to Another tablespace, then read the following post.</strong></span></p><blockquote class="wp-embedded-content" data-secret="WC39yqZSTS"><p><a href="https://ittutorial.org/alter-table-move-tablespace-move-tables-pa'
||'rtitions-and-subpartitions-another-tablespace-alter-table-move-tablespace-ora-14257-index-rebuild/">How to Move Tables, Index Rebuild, Partitions and Subpartitions to Another Tablespace in Oracle</a></p></blockquote><p><iframe class="wp-embedded-cont'
||unistr('ent" sandbox="allow-scripts" security="restricted" style="position: absolute; clip: rect(1px, 1px, 1px, 1px);" title="\201CHow to Move Tables, Index Rebuild, Partitions and Subpartitions to Another Tablespace in Oracle\201D \2014 IT Tutorial" src="https://ittuto')
||'rial.org/alter-table-move-tablespace-move-tables-partitions-and-subpartitions-another-tablespace-alter-table-move-tablespace-ora-14257-index-rebuild/embed/#?secret=WC39yqZSTS" data-secret="WC39yqZSTS" width="600" height="338" frameborder="0" marginwi'
||'dth="0" marginheight="0" scrolling="no"></iframe></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><h5><a href="https://ittutorial.org/oracle-tutorial-oracle-database-tutorials-for-beginners-junior-oracle-dba/"><span style="color: #ff0000;">Do you want to l'
||'earn Oracle Database for Beginners, then Click and read the following articles.</span></a></h5><p><a href="https://ittutorial.org/oracle-tutorial-oracle-database-tutorials-for-beginners-junior-oracle-dba/" target="_blank" rel="noopener noreferrer">Or'
||'acle Database Tutorials for Beginners ( Junior Oracle DBA )</a></p><div class="pvc_clear"></div><p class="pvc_stats all " data-element-id="14090" style=""><i class="pvc-stats-icon small" aria-hidden="true"><svg aria-hidden="true" focusable="false" da'
||'ta-prefix="far" data-icon="chart-bar" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" class="svg-inline--fa fa-chart-bar fa-w-16 fa-2x"><path fill="currentColor" d="M396.8 352h22.4c6.4 0 12.8-6.4 12.8-12.8V108.8c0-6.4-6.4-12.8-12.'
||'8-12.8h-22.4c-6.4 0-12.8 6.4-12.8 12.8v230.4c0 6.4 6.4 12.8 12.8 12.8zm-192 0h22.4c6.4 0 12.8-6.4 12.8-12.8V140.8c0-6.4-6.4-12.8-12.8-12.8h-22.4c-6.4 0-12.8 6.4-12.8 12.8v198.4c0 6.4 6.4 12.8 12.8 12.8zm96 0h22.4c6.4 0 12.8-6.4 12.8-12.8V204.8c0-6.4-'
||'6.4-12.8-12.8-12.8h-22.4c-6.4 0-12.8 6.4-12.8 12.8v134.4c0 6.4 6.4 12.8 12.8 12.8zM496 400H48V80c0-8.84-7.16-16-16-16H16C7.16 64 0 71.16 0 80v336c0 17.67 14.33 32 32 32h464c8.84 0 16-7.16 16-16v-16c0-8.84-7.16-16-16-16zm-387.2-48h22.4c6.4 0 12.8-6.4 '
||'12.8-12.8v-70.4c0-6.4-6.4-12.8-12.8-12.8h-22.4c-6.4 0-12.8 6.4-12.8 12.8v70.4c0 6.4 6.4 12.8 12.8 12.8z" class=""></path></svg></i> &nbsp;3,596&nbsp;views last month, &nbsp;1&nbsp;views today</p><div class="pvc_clear"></div><div class="ittut-after-co'
||'ntent" id="ittut-655749047"><iframe data-id="ittutorial.org_970x90_sticky_anchor_DFP" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" topmargin="0" leftmargin="0" width="1" height="1" data-rendered="true"></iframe> <script type="text/'
||'javascript">(function () {',
'        var size=''970x90|320x100'',',
'            adunit = ''ittutorial.org_970x90_sticky_anchor_DFP'',',
'            xmlhttp = new XMLHttpRequest();',
'        xmlhttp.onreadystatechange = function(){if (xmlhttp.readyState == 4 && xmlhttp.status == 200){var es = document.querySelectorAll("[data-id=''"+adunit+"'']");var e = Array.from(es).find(function(e) {return !e.hasAttribute("data-rendered")});if(e'
||'){var iframe = e.contentWindow.document;iframe.open();iframe.write(xmlhttp.responseText);iframe.close();e.setAttribute(''data-rendered'', true)}}};xmlhttp.open("GET", ''https://pubads.g.doubleclick.net/gampad/adx?iu=/147246189/''+adunit+''&sz=''+encodeURI('
||'size)+''&t=Placement_type%3Dserving&''+Date.now(), true);xmlhttp.send();})();</script></div></div><div class="clear"></div></div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp.component_end;
end;
/
