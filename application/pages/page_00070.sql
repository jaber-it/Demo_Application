prompt --application/pages/page_00070
begin
--   Manifest
--     PAGE: 00070
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
 p_id=>70
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Modal Close When Clicking Outside'
,p_alias=>'MODAL-CLOSE-WHEN-CLICKING-OUTSIDE'
,p_step_title=>'Modal Close When Clicking Outside'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21191327528995830304)
,p_plug_name=>'Modal Close When Clicking Outside'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14551664721457634427)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html>',
'<head>',
'  <meta charset="utf-8">',
'  <meta name="viewport" content="width=device-width, initial-scale=1">',
'<script src="https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js?lang=css&amp;skin=sunburst"></script>',
'  <style type="text/css">',
'</head>',
'  ',
'<style>',
'    body {',
'        font-family: ''FontAwesome'';',
'        margin: 0;',
'        color: #0f0000;',
'    }',
'    html {',
'      box-sizing: border-box;',
'    }',
'    .h1, h2, h3, h4, h5, h6, b {',
'      font-family: ''Proxima Nova'';',
'      line-height: 25px;',
'      color: black;',
'    }',
'    pre:before {',
'    content: '''';',
'    }',
'    .about-section {',
'      line-height: 1.5;',
'      font-family: ''FontAwesome'';',
'      font-size: 17px;',
'      color: #0f0000;',
'      padding: 7px 30px 7px 15px;',
'    }',
'    pre, code {',
'        position: relative;',
'        background: #13052e;		',
'      	border-radius: 15px 15px 15px 15px;',
'        display: block;',
'        margin-top: 0;',
'     /*   margin-bottom: 1rem;',
'         overflow: auto;    */',
'        font-size: 14px;',
'        font-family: ''apex-5-icon-font'';',
'        direction: ltr;',
'        unicode-bidi: bidi-override;  ',
'        color: #fff;',
'    }',
'    .highlight {',
'        word-break: normal;',
'        border-radius: 0;',
'        border: none;',
'        border-left: 7px solid #F9BC00;',
'    }',
'    pre.prettyprint {',
'        width: 95%;',
'        margin: 1em auto;',
'        padding: 0em;',
'        white-space: pre-wrap;',
'        background-color: #13052e;',
'        border-radius: 8px;',
'    }',
'    .post-img {',
'        width: 100%;',
'        height: 370px;',
'      }',
'     iframe { width: 100%; border-style: none; margin: 0; padding: 0; }',
'    .attribution { padding-left: 1em; }  ',
'</style>',
'',
'<body>',
'  ',
'    <div class="about-section" font-size="16px"> ',
'            <h1>',
'              How to Close Modal Page When Clicking Outside in Oracle Apex.',
'            </h1>',
'        <p>',
'           <b style="font-size:1.3rem;">  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; In today''s post, I will try to figure out how to close the modal page when I click outside of Oracle Apex. </b>',
'        </p>',
'            ',
'   <!--           <img alt="Modal Page Close When Clicking Outside in Oracle Apex" border="2" class="post-img" ',
'            src="https://blogger.googleusercontent.com/img/a/AVvXsEhyZraRktSdDtGenG8JMaLU-geegXju_8e5tw7gKG1UxsCIXT71cV9RlZBPj4-QIqPwQdvZWrE7wXxm4yNKrxTSnL1KuLl8bZpZv4uQczJv16FVLtL_jnTDjFaHbN8Kg6o_js0LDuG2uDlxWzjX2K6JDOOf3oBASNS--a_yZK3TCEF9HRoypJHJL'
||'hPs" ',
'            title="Modal Page Close When Clicking Outside in Oracle Apex" />   -->',
'',
'          <iframe allowfullscreen="" class="BLOG_video_class" height="410" src="https://www.youtube.com/embed/syf7WwXa_OM" width="619" youtube-src-id="syf7WwXa_OM"></iframe>		',
'',
'        <h2> ',
'            <b> Some Discussion About Modal Close When Clicking Outside. </b> ',
'        </h2>',
'        <p> ',
'            We Use Modal Pages In Oracle Apex Applications At Different Times And Open Modal Pages By Calling From Different Locations As Needed. When The Modal Page Is Open, You Have To Close The Modal Page By Clicking On The Cross Icon.  <br>',
'            In Today''s Post I Will Discuss In Detail How To Close The Modal Page If You Click Anywhere In The Application And Try To Show The Practical.  <br>',
'            With This Post And Video Tutorial You Can Easily Use It In Your Own Application. <br>',
'            Most of the time we use the modal page for Create New Account on the Oracle Apex application login page. <br>',
'        </p>',
'        <h2> ',
'            <b> Steps How To Close The Modal Page When Clicking Outside. </b> ',
'        </h2>',
'        <p>',
'           I will try to show you step by step how to close the modal page when you click outside in Oracle Apex application. <br>',
'        </p>',
'        <p>',
'            <b> 1. First We Will Create A Modal Page. </b> <br>',
'                    Name- Close Modal Page When Clicking Outside <br>',
'            <b> 2. Goto Classic Report Properties >>  </b> Dialog >> Attributes >> Paste the following code- <br> ',
'                 <b> <pre class="prettyprint lang-scm highlight"> <code>',
'                    open: function( event, ui ) {closeDialogClickOutside(this); }',
'                </code></pre>  </b>',
'            <b> 3. Create a Dynamic Action >> </b> <br>  ',
'                &nbsp; &nbsp; &nbsp; Name- Clicking Outside <br> ',
'                &nbsp; &nbsp; &nbsp; Event- Click <br> ',
'                &nbsp; &nbsp; &nbsp; Selection Type- jQuery Selector <br> ',
'                &nbsp; &nbsp; &nbsp; jQuery Selector-<b style="font-size:1.0rem;color: red; "> .test_invalid_selector </b> <br> ',
'               &nbsp; &nbsp; &nbsp; Action- Close Dialog <br> ',
'                ',
'            <b> 4. Now We Will Go Directly To The Page From Which We Will Open The Modal Page.  </b> <br> ',
'          		&nbsp; &nbsp; &nbsp; Create A Button To Open The Modal Page <br> ',
'                &nbsp; &nbsp; &nbsp; Name- OPEN_MODAL <br> ',
'                &nbsp; &nbsp; &nbsp; Behavior >> <br> ',
'                &nbsp; &nbsp; &nbsp; Action- Redirect to Page in this Application <br> ',
'                &nbsp; &nbsp; &nbsp; Target- Select your modal page. <br> ',
'',
'            <b> 5. Goto Page Properties >> </b> Function and Global Variable Declaration >> Paste the following code- </b> <br> ',
'                <pre class="prettyprint lang-scm highlight"><code>',
'                    function closeDialogClickOutside(elem){',
'                        $(''.ui-widget-overlay'').click(function(){',
'                            $(elem).dialog(''close'');',
'                            });',
'                        }',
'                </code></pre> <br> ',
'            <b> 6. Create a Dynamic Action >> </b> <br>  ',
'                &nbsp; &nbsp; &nbsp; Name- Modal Close <br> ',
'               &nbsp; &nbsp; &nbsp; Action >> Execute JavaScript Code >>  Paste the following code- <br> ',
'                <pre class="prettyprint lang-scm highlight"><code>',
'                    console.log(''dialog closed''`);',
'                </code></pre>',
'        </p>',
'        <p>',
'            <b>',
'                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; All Our Work Is Done, Now We Will Try To See If The Work Is Completed Successfully. <br> ',
'                If There Is Any Problem With The Sql Code Provided By Me Then You Can Definitely Let Me Know By Mail Or Mobile Number And Comment. I Must Give You Any Sql Code.',
'            </b>',
'        </p>',
'        <p styel="font-size: 20px;"> ',
unistr('            <b> \D83D\DD17 Demo Application- </b><br>'),
'            	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Url- <a href="https://apex.oracle.com/pls/apex/f?p=95068" target="_blank"> <b style="color: red;"> Demo Application </b> </a> <br>',
'            	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Username- demo, Pass- demo <br><br>',
'        </p>',
'        <p> ',
'            <img alt="Modal Page Close When Clicking Outside in Oracle Apex" border="2" class="post-img" ',
'            src="https://blogger.googleusercontent.com/img/a/AVvXsEhyZraRktSdDtGenG8JMaLU-geegXju_8e5tw7gKG1UxsCIXT71cV9RlZBPj4-QIqPwQdvZWrE7wXxm4yNKrxTSnL1KuLl8bZpZv4uQczJv16FVLtL_jnTDjFaHbN8Kg6o_js0LDuG2uDlxWzjX2K6JDOOf3oBASNS--a_yZK3TCEF9HRoypJHJL'
||'hPs" ',
'            title="Modal Page Close When Clicking Outside in Oracle Apex" /> <br> <br>',
'',
'            <img alt="Modal Page Close When Clicking Outside in Oracle Apex" border="2" class="post-img" ',
'            src="https://blogger.googleusercontent.com/img/a/AVvXsEg85BWYeBoGLFr6fAY5D7Jsd8_5MuCHZJgh-jmP4Xq7au1wVzzHmbPwqY4m6K4NepUtCnr5F4DzKV2pqcGBmgs6KUAaTVytMCw6V_GKDOqYKtEFKzCpQ7Zg557JGB6MMLzSvc_WzEeKLyt3NT0kWajGEly7MAf_yMdupSlfFvDTFPCCqrc7OVuig'
||'Y6j" ',
'            title="Modal Page Close When Clicking Outside in Oracle Apex" /> <br> <br>',
'',
'',
'        User Authorization is an important issue for any web application. Without the use of "User Authorization", no application is complete. </br>',
'        I will try to show all the important things in the Oracle Apex application through a few parts, including user login according to "User Authorization", user role, user log, user menu usage. Hopefully, if you see all the parts related to "User'
||' Authorization",',
'        you can easily use "User Authorization" in Oracle Apex.  <br> ',
'        Below Is The Link To All The Posts Related To User Authorization. Can Turn Around A Little If Needed.',
'            <h3> ',
'                <b>Links to all the parts related to User Authorization will be given below. </b><br>',
'            </h3>',
'        <div style="color:red;">',
'            1. User Authorization Schemes, Part-1 Video Url- <a href="https://youtu.be/vSdzwnkFDRs" target="_blank"><b> https://youtu.be/vSdzwnkFDRs </b></a><br>',
'            2. Add Create New Account button on the login page, User Authorization, Part-2 Video Url- <a href="https://youtu.be/IajwZ5dp6Qc" target="_blank"><b> https://youtu.be/IajwZ5dp6Qc </b></a><br>',
'            3. Create a ChangePassword Page, User Authorization, Part-3 Video Url- <a href="https://youtu.be/iRXsO0MTOuM" target="_blank"><b> https://youtu.be/iRXsO0MTOuM </b></a><br>',
'            4. Reset Password,  User Authorization, Part-4 Video Url- <a href="https://youtu.be/IK3PjyWGQIA" target="_blank"><b> https://youtu.be/IK3PjyWGQIA </b></a><br>',
'            5. Dynamic Navigation Menu, User Authorization, Part-5 Video Url- <a href="https://youtu.be/Ozoc4cpjBKY" target="_blank"><b> https://youtu.be/Ozoc4cpjBKY </b></a><br>',
'            6. Set Menu According To User Access Role, User Authorization Part-6 Video URL- <a href="https://youtu.be/X407N_N2HNM" target="_blank"><b> https://youtu.be/X407N_N2HNM </b></a><br>',
'            7. Add Edit Button in Report According to User Access Role || Oracle APEX? User Authentication, Part-7.User Authorization Video URL- <a href="https://youtu.be/n9W64qUoS1E" target="_blank"><b> https://youtu.be/n9W64qUoS1E </b></a><br>',
'            8. Access google authentication in Oracle Apex | Google Authentication. User Authorization Video URL- <a href="https://youtu.be/X407N_N2HNM" target="_blank"><b> https://youtu.be/X407N_N2HNM </b></a><br>',
'            9. Change Password in Email Verification if you Forget Your Password. User Authorization Video URL- <a href="https://youtu.be/MPZQuraig7w" target="_blank"><b> https://youtu.be/MPZQuraig7w </b></a><br><br>',
'        </div>',
'',
'            Hope you find this post helpful for Modal Close When Clicking Outside. To see more about Oracle Apex Application, you can visit my website. <br>',
'            You Can Also Visit My Youtube Channel. I Try My Best To Share My Education With Everyone. I Will Always Try To Give You Something New. Please Help By Subscribing To My Youtube Channel. <br>',
'  ',
'  I hope everyone will like it. Please watch the full video, <br>',
'  Comment on any of your problems, I will try my best to solve the problem In-Shah Allah. Everyone''s cooperation is desirable. Visit my blog site, new technology related videos, you will get different types of tutorials of Oracle Apex, and hopefully '
||'you can use them in your daily work. <br>',
'Please stay tuned by subscribing to the YouTube channel, and encourages new videos to be uploaded. <br>',
'',
'=================<br>',
'Visit my site to get more collaborative posts about Oracle Apex and subscribe to my YouTube channel. Thanks. <br>',
'Comment on any of your problems, I will try my best to solve the problem In-Shah Allah. Everyone''s cooperation is desirable. <br>Visit my blog site, new technology related videos, you will get different types of tutorials of Oracle Apex, and hopefull'
||'y you can use them in your daily work.<br>',
'==============================<br><br>',
'<b style="font-size: 15px;">',
unistr('\D83D\DE4D\D83C\DFFE\200D Md jABER HOSSEN  <br>'),
unistr('\D83D\DCF2 Mobile- +8801760688286 <br>'),
unistr('\D83D\DCE8 Email- jaberit786@gmail.com <br>'),
unistr('\D83C\DF10 FB- facebook.com/mdjaber.hossen1 <br>'),
'	Please Subscribe My Channel <br><br> </b>',
'            <b style="font-size:1.3rem;"><em> Many thanks for visiting the site. </em></b>',
'        </p>',
'',
'         <b style="font-size:1.0rem;"> Then Enjoy......................... </b> <br> ',
'         <b style="font-size:1.0rem;"> How to Close Modal When Clicking Outside in Oracle Apex. </b> ',
'    </div>',
'</body>',
'</html>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp.component_end;
end;
/
