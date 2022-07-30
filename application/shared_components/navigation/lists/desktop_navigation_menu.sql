prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
--   Manifest
--     LIST: Desktop Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(14551607672118634403)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14551764467795634476)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(20190747543129651730)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'All Report Page'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14676971209432062688)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Classic report print'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190747543129651730)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16659286647281248520)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Group Classic Report'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190747543129651730)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16668541522164544482)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'How to use the colorful button in the report'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190747543129651730)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16676174669759221174)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'How to Use Apex Collection Part-1'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190747543129651730)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25008673214675843405)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Select2 Plug-in'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190747543129651730)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25008684728529847729)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Interactive Report'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190747543129651730)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(28570472782552823168)
,p_list_item_display_sequence=>340
,p_list_item_link_text=>'Create a Duplicate Record'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25008684728529847729)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'35'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30025570679364023948)
,p_list_item_display_sequence=>350
,p_list_item_link_text=>'Instant Search in Oracle Apex by Java Script'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190747543129651730)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'36'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5260265930809318327)
,p_list_item_display_sequence=>470
,p_list_item_link_text=>'My File Table Report'
,p_list_item_link_target=>'f?p=&APP_ID.:45:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190747543129651730)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'45,47'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5272872559702803875)
,p_list_item_display_sequence=>480
,p_list_item_link_text=>'Interactive Report Custom Search'
,p_list_item_link_target=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190747543129651730)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'45'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9005420686853830145)
,p_list_item_display_sequence=>550
,p_list_item_link_text=>'Excel File From Classic Report (No Video Created)'
,p_list_item_link_target=>'f?p=&APP_ID.:52:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190747543129651730)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'52'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9641613876522695025)
,p_list_item_display_sequence=>570
,p_list_item_link_text=>'Preview PDF/Image into a Region'
,p_list_item_link_target=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190747543129651730)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'54'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9656650847250350332)
,p_list_item_display_sequence=>580
,p_list_item_link_text=>'Preview PDF into a Region'
,p_list_item_link_target=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190747543129651730)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'55'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14296543058139940487)
,p_list_item_display_sequence=>610
,p_list_item_link_text=>'Order tracking progress bar (No Video Created)'
,p_list_item_link_target=>'f?p=&APP_ID.:58:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190747543129651730)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'58'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16438689707998431131)
,p_list_item_display_sequence=>620
,p_list_item_link_text=>'Bootstrap Progress Bar in your Oracle (No Video Created)'
,p_list_item_link_target=>'f?p=&APP_ID.:56:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190747543129651730)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'56'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(28670716677464937433)
,p_list_item_display_sequence=>900
,p_list_item_link_text=>'Restore Screen Position After Refresh'
,p_list_item_link_target=>'f?p=&APP_ID.:85:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190747543129651730)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'85'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(41044245676651719925)
,p_list_item_display_sequence=>980
,p_list_item_link_text=>'Responsive Classic Report'
,p_list_item_link_target=>'f?p=&APP_ID.:94:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190747543129651730)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'94'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(20190750100369654722)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'HTML & CSS Page'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18459531805323166832)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Animated Slider Blog Card'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190750100369654722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25008806814327855191)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Admin Dashboard in HTML and CSS'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190750100369654722)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26142386103647368561)
,p_list_item_display_sequence=>270
,p_list_item_link_text=>'Templates 1'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190750100369654722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'23'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26143251443305416011)
,p_list_item_display_sequence=>280
,p_list_item_link_text=>'Product Card, Templates - 2'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190750100369654722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'28'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26143453598921439395)
,p_list_item_display_sequence=>290
,p_list_item_link_text=>'Product Card, Templates 3'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190750100369654722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'29'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26143495147127462064)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>'Product Card, Templates 4'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190750100369654722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(27229572594913896499)
,p_list_item_display_sequence=>310
,p_list_item_link_text=>'SliderBar in HTML and CSS'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190750100369654722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'31'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7470515615901790379)
,p_list_item_display_sequence=>520
,p_list_item_link_text=>'Profile View In Navigation Bar'
,p_list_item_link_target=>'f?p=&APP_ID.:49:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190750100369654722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'49'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8786799443578830750)
,p_list_item_display_sequence=>540
,p_list_item_link_text=>'Overlay Side Menu (No Video Created)'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190750100369654722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'50'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9145455321578066608)
,p_list_item_display_sequence=>560
,p_list_item_link_text=>'Creating the Gallery Application (No Video Created)'
,p_list_item_link_target=>'f?p=&APP_ID.:53:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190750100369654722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'53'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(40786475156115902073)
,p_list_item_display_sequence=>970
,p_list_item_link_text=>'How To Show HTML Report By Ajax Callback'
,p_list_item_link_target=>'f?p=&APP_ID.:93:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190750100369654722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'93'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(53581008442123338812)
,p_list_item_display_sequence=>1020
,p_list_item_link_text=>'Set Alarm In Oracle Apex Using HTML, CSS, JavaScript'
,p_list_item_link_target=>'f?p=&APP_ID.:60:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(20190750100369654722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'60'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(20191132943622193151)
,p_list_item_display_sequence=>35
,p_list_item_link_text=>'User related pages'
,p_list_item_icon=>'fa-user-circle'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_list_item_disp_condition=>'P0_USERNAME'
,p_list_item_disp_condition2=>'JABER'
,p_security_scheme=>wwv_flow_imp.id(14551757027837634469)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(20191726619325218298)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'User Report'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-circle'
,p_parent_list_item_id=>wwv_flow_imp.id(20191132943622193151)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10,11'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(20192092302995731529)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'User Group Report'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-circle'
,p_parent_list_item_id=>wwv_flow_imp.id(20191132943622193151)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12,13'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(20302158572617207620)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Change Password Page'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-lock-password'
,p_parent_list_item_id=>wwv_flow_imp.id(20191132943622193151)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(21416098687740241210)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Custom and Dynamic Menu Report'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-accessor-more'
,p_parent_list_item_id=>wwv_flow_imp.id(20191132943622193151)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15,16'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25008666733342840115)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'User Group Page'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-circle'
,p_parent_list_item_id=>wwv_flow_imp.id(20191132943622193151)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(33066623747055948533)
,p_list_item_display_sequence=>370
,p_list_item_link_text=>'Forgot Password Page'
,p_list_item_link_target=>'f?p=&APP_ID.:38:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(20191132943622193151)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'38'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(33080423852760194887)
,p_list_item_display_sequence=>380
,p_list_item_link_text=>'Email Verification'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(20191132943622193151)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'39'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(34789742563338491815)
,p_list_item_display_sequence=>390
,p_list_item_link_text=>'Privacy Policy'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(20191132943622193151)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'40'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(34791367769588891272)
,p_list_item_display_sequence=>400
,p_list_item_link_text=>'Terms and Conditions'
,p_list_item_link_target=>'f?p=&APP_ID.:41:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(20191132943622193151)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'41'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(21194762791803982228)
,p_list_item_display_sequence=>750
,p_list_item_link_text=>'User Authentication'
,p_list_item_icon=>'fa-user-circle'
,p_parent_list_item_id=>wwv_flow_imp.id(20191132943622193151)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26499641977216435700)
,p_list_item_display_sequence=>850
,p_list_item_link_text=>'Post Blog List'
,p_list_item_link_target=>'f?p=&APP_ID.:78:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(21194762791803982228)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'78,80'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(23261955885874367175)
,p_list_item_display_sequence=>760
,p_list_item_link_text=>'Mane Menu and Parent Menu List'
,p_list_item_link_target=>'f?p=&APP_ID.:71:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(20191132943622193151)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'71'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(23384906457623199389)
,p_list_item_display_sequence=>770
,p_list_item_link_text=>'My Blog Site Html Css All Page'
,p_list_item_icon=>'fa-badge-dollar'
,p_parent_list_item_id=>wwv_flow_imp.id(20191132943622193151)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(23408329706149187127)
,p_list_item_display_sequence=>800
,p_list_item_link_text=>'Chat Application'
,p_list_item_link_target=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(23384906457623199389)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'76'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30317686569169416106)
,p_list_item_display_sequence=>930
,p_list_item_link_text=>'How to install Apex 21.2 on Database 19C'
,p_list_item_link_target=>'f?p=&APP_ID.:89:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(23384906457623199389)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'89'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25008694355119850810)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Other Page'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14691716808908337106)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Dynamic Image Carousel Slider'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(25008694355119850810)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14699609346849627667)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Add Slider Image'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(25008694355119850810)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25008723985721322353)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Use Different Types Of Text Fields'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(25008694355119850810)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2400'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30269598773390940954)
,p_list_item_display_sequence=>360
,p_list_item_link_text=>'Global Search Bar'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25008694355119850810)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'37'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(40124008908811914129)
,p_list_item_display_sequence=>450
,p_list_item_link_text=>'Creating On/Off Toggle Switch Using HTML,CSS and JS'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25008694355119850810)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'42'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(40137440193430457323)
,p_list_item_display_sequence=>460
,p_list_item_link_text=>'Material UI stretch button'
,p_list_item_link_target=>'f?p=&APP_ID.:43:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25008694355119850810)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'43'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16492729824765842251)
,p_list_item_display_sequence=>630
,p_list_item_link_text=>'Add Tooltip on Side Navigation Menu Oracle APEX'
,p_list_item_link_target=>'f?p=&APP_ID.:62:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25008694355119850810)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'62'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(20952310497556663932)
,p_list_item_display_sequence=>730
,p_list_item_link_text=>'Region Refresh Using JavaScript In Apex'
,p_list_item_link_target=>'f?p=&APP_ID.:69:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25008694355119850810)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'69'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(21194719754471007577)
,p_list_item_display_sequence=>740
,p_list_item_link_text=>'Modal Close When Clicking Outside'
,p_list_item_link_target=>'f?p=&APP_ID.:70:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25008694355119850810)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'70'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(27883362738422292512)
,p_list_item_display_sequence=>860
,p_list_item_link_text=>'Highlight Text Based On Voice Input'
,p_list_item_link_target=>'f?p=&APP_ID.:81:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25008694355119850810)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'81'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(28335242073109405343)
,p_list_item_display_sequence=>880
,p_list_item_link_text=>'Image Elevate Zoom'
,p_list_item_link_target=>'f?p=&APP_ID.:82:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25008694355119850810)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'82'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38875173180366173156)
,p_list_item_display_sequence=>950
,p_list_item_link_text=>'Multiple File Upload'
,p_list_item_link_target=>'f?p=&APP_ID.:92:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25008694355119850810)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'92'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(48727949605803027696)
,p_list_item_display_sequence=>1000
,p_list_item_link_text=>'Generate DDL source code'
,p_list_item_link_target=>'f?p=&APP_ID.:59:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25008694355119850810)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'59'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(51139502455443772965)
,p_list_item_display_sequence=>1010
,p_list_item_link_text=>'Get API URL Data'
,p_list_item_link_target=>'f?p=&APP_ID.:63:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25008694355119850810)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'63'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(53606369438028817676)
,p_list_item_display_sequence=>1040
,p_list_item_link_text=>'Upload, Show and Zoom in/out Image in Oracle Apex 5.1 step by step.'
,p_list_item_link_target=>'f?p=&APP_ID.:64:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25008694355119850810)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'64'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(53771284219320903003)
,p_list_item_display_sequence=>1050
,p_list_item_link_text=>'Check Password Strength and Generate Password'
,p_list_item_link_target=>'f?p=&APP_ID.:66:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25008694355119850810)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'66'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(28538746162621627726)
,p_list_item_display_sequence=>1100
,p_list_item_link_text=>'Replace Text In Oracle Apex'
,p_list_item_link_target=>'f?p=&APP_ID.:72:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_parent_list_item_id=>wwv_flow_imp.id(25008694355119850810)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'72'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(36048281257415075475)
,p_list_item_display_sequence=>1120
,p_list_item_link_text=>'Parse XLSX and CSV'
,p_list_item_link_target=>'f?p=&APP_ID.:74:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_parent_list_item_id=>wwv_flow_imp.id(25008694355119850810)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'74'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25987781793580396160)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Product'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14661758181665057168)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Like & Unlike Page'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(25987781793580396160)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25987623982270383202)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Purchase New Item'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(25987781793580396160)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'24'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25987798414991398034)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Product List'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(25987781793580396160)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'25'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25991396673477567490)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>'Add New Product'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25987781793580396160)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'26'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26037464423597173989)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>'Product Card UI Design'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(25987781793580396160)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'27'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(27465305392663476846)
,p_list_item_display_sequence=>320
,p_list_item_link_text=>'Display Product Rating Report'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25987781793580396160)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'32,33'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(27465535068854511104)
,p_list_item_display_sequence=>330
,p_list_item_link_text=>'PRODUCT_RATING'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25987781793580396160)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'34'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(34894162291894682062)
,p_list_item_display_sequence=>420
,p_list_item_link_text=>'Product Card Classic Report'
,p_list_item_link_target=>'f?p=&APP_ID.:44:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25987781793580396160)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'44'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(34895853190636773906)
,p_list_item_display_sequence=>430
,p_list_item_link_text=>'Order Product List'
,p_list_item_link_target=>'f?p=&APP_ID.:45:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25987781793580396160)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'45,46'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(34927303669040183793)
,p_list_item_display_sequence=>440
,p_list_item_link_text=>'Order Product'
,p_list_item_link_target=>'f?p=&APP_ID.:46:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25987781793580396160)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'46'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14010221196931124028)
,p_list_item_display_sequence=>600
,p_list_item_link_text=>'Carting List'
,p_list_item_link_target=>'f?p=&APP_ID.:57:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25987781793580396160)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'57'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(40784143031034824743)
,p_list_item_display_sequence=>960
,p_list_item_link_text=>'Product Details'
,p_list_item_link_target=>'f?p=&APP_ID.:91:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25987781793580396160)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'91'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7463793091290544789)
,p_list_item_display_sequence=>490
,p_list_item_link_text=>'JavaScript Code'
,p_list_item_icon=>'fa-bug-slash'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7463938882222589674)
,p_list_item_display_sequence=>500
,p_list_item_link_text=>'How to Get Device ID Use  JavaScript Code'
,p_list_item_link_target=>'f?p=&APP_ID.:47:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(7463793091290544789)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'47'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7467587953257674674)
,p_list_item_display_sequence=>510
,p_list_item_link_text=>'Change The Background Color of a Button with JavaScript'
,p_list_item_link_target=>'f?p=&APP_ID.:48:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(7463793091290544789)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'48'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7487036381040371621)
,p_list_item_display_sequence=>530
,p_list_item_link_text=>'How to Set and Get Item Value Using JavaScript (Not on YouTube)'
,p_list_item_link_target=>'f?p=&APP_ID.:51:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(7463793091290544789)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'51'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(42651583695903072627)
,p_list_item_display_sequence=>990
,p_list_item_link_text=>'Copy To Clipboard With Javascript'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(7463793091290544789)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(186953981456230222)
,p_list_item_display_sequence=>1060
,p_list_item_link_text=>'Copy To Clipboard'
,p_list_item_link_target=>'f?p=&APP_ID.:67:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_parent_list_item_id=>wwv_flow_imp.id(7463793091290544789)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'67'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(673619160196540225)
,p_list_item_display_sequence=>1070
,p_list_item_link_text=>'Copy To Clipboard Finial Code'
,p_list_item_link_target=>'f?p=&APP_ID.:61:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_parent_list_item_id=>wwv_flow_imp.id(7463793091290544789)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'61'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10719925866127799524)
,p_list_item_display_sequence=>1080
,p_list_item_link_text=>'Call Web Service Using JavaScript'
,p_list_item_link_target=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_parent_list_item_id=>wwv_flow_imp.id(7463793091290544789)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'65'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16832277716457445786)
,p_list_item_display_sequence=>1090
,p_list_item_link_text=>'Get Google Sheets JSON Data'
,p_list_item_link_target=>'f?p=&APP_ID.:68:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(7463793091290544789)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'68'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(35873119294397183307)
,p_list_item_display_sequence=>1110
,p_list_item_link_text=>'Flip Region in Oracle APEX'
,p_list_item_link_target=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_parent_list_item_id=>wwv_flow_imp.id(7463793091290544789)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'73'
);
wwv_flow_imp.component_end;
end;
/
