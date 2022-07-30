prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
--   Manifest
--     LIST: Desktop Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>13501875225360637847
,p_default_application_id=>78259
,p_default_id_offset=>0
,p_default_owner=>'FLMPJGAZDYSOYO'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(33247159158203359035)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(33247310130748359166)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9499013640164108338)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'POP UP (Modal window) in Apex'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13322702220575263491)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'How to Download File From Classic Report'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(21362028931032076514)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Ajax Call Back Process'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8991143924559460630)
,p_list_item_display_sequence=>380
,p_list_item_link_text=>'Select All / Unselect All Checkbox'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'35'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(40818598318830727780)
,p_list_item_display_sequence=>580
,p_list_item_link_text=>'Product'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'54,55'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(40816520881348690659)
,p_list_item_display_sequence=>570
,p_list_item_link_text=>'Product Details'
,p_list_item_link_target=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(40818598318830727780)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'53'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(40818954892893075276)
,p_list_item_display_sequence=>590
,p_list_item_link_text=>'Add New Product'
,p_list_item_link_target=>'f?p=&APP_ID.:55:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(40818598318830727780)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'55'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(40819153368839082017)
,p_list_item_display_sequence=>10060
,p_list_item_link_text=>'Product List'
,p_list_item_link_target=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(40818598318830727780)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(33247447359028359406)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(33247301480692359151)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25673028409386863693)
,p_list_item_display_sequence=>10010
,p_list_item_link_text=>'AlL Report Page'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(21732583167672260357)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'User Wise Report View'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(25673028409386863693)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25021259756291832467)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'report To Item Value in Report'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(25673028409386863693)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30586522372124986708)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Height and Weight Report'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25673028409386863693)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30635920416271256150)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'New Design Profile Card Report'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25673028409386863693)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(43610654760569067872)
,p_list_item_display_sequence=>280
,p_list_item_link_text=>'Instant Search by Java Script'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25673028409386863693)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'27'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7023384217967870392)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>'Region Show Hide With Animation & Text Area Character Counter'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25673028409386863693)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'28'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7141825270417429301)
,p_list_item_display_sequence=>310
,p_list_item_link_text=>'Download One Or More Files'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25673028409386863693)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7148769277108666302)
,p_list_item_display_sequence=>320
,p_list_item_link_text=>'SYS CONTEXT'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25673028409386863693)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'32'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7155507371167855529)
,p_list_item_display_sequence=>330
,p_list_item_link_text=>'Rich Text Counter'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25673028409386863693)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'33'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8981404103848163414)
,p_list_item_display_sequence=>370
,p_list_item_link_text=>'Delete Report Row Without Page Submit'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(25673028409386863693)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14718968509123156316)
,p_list_item_display_sequence=>430
,p_list_item_link_text=>'PDF Report on'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25673028409386863693)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'29'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18385496358315069270)
,p_list_item_display_sequence=>440
,p_list_item_link_text=>'Apex Collection Part-1'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25673028409386863693)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'39'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9855449965159978073)
,p_list_item_display_sequence=>460
,p_list_item_link_text=>'Preview PDF into a Region'
,p_list_item_link_target=>'f?p=&APP_ID.:41:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25673028409386863693)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'41'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11879607918498558726)
,p_list_item_display_sequence=>470
,p_list_item_link_text=>'Get DDL ( Create Script ) of any Object'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25673028409386863693)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'42'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13897192393024423793)
,p_list_item_display_sequence=>480
,p_list_item_link_text=>'Custom Search In Interactive Report'
,p_list_item_link_target=>'f?p=&APP_ID.:43:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25673028409386863693)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'43'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(28742776653898111853)
,p_list_item_display_sequence=>530
,p_list_item_link_text=>'Restore Screen Position After Refresh'
,p_list_item_link_target=>'f?p=&APP_ID.:47:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25673028409386863693)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'47,48'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30326272997246693115)
,p_list_item_display_sequence=>540
,p_list_item_link_text=>'Dynamically Change Title Of Modal Dialog Page Report'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25673028409386863693)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'50,51'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(35190951840637849430)
,p_list_item_display_sequence=>550
,p_list_item_link_text=>'Download Any Report'
,p_list_item_link_target=>'f?p=&APP_ID.:52:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25673028409386863693)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'52'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(41101854633821555806)
,p_list_item_display_sequence=>600
,p_list_item_link_text=>'Mobile View Report'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25673028409386863693)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'37'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25673612167129691550)
,p_list_item_display_sequence=>10020
,p_list_item_link_text=>'InteractiveGrid Report'
,p_parent_list_item_id=>wwv_flow_imp.id(25673028409386863693)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(24922058007741033979)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'InteractiveGrid Report Sales Page'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(25673612167129691550)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7161487664498945416)
,p_list_item_display_sequence=>340
,p_list_item_link_text=>'Elegant Switch On Interactive Report'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25673612167129691550)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'34'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25673881970517875295)
,p_list_item_display_sequence=>10030
,p_list_item_link_text=>'Background Picture'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(33247569189221391666)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Use background picture change and slide show'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(25673881970517875295)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(33248244922747954855)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Change background picture'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(25673881970517875295)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25674321402142712829)
,p_list_item_display_sequence=>10040
,p_list_item_link_text=>'All Print Page'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(33265508960807429328)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Click on the button to print'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(25674321402142712829)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(33275166035677537904)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Use the custom report print button'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(25674321402142712829)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1913709256837287489)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Close & Print Button PL / SQL Code'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(25674321402142712829)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25675333438719728756)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Repeat table header on each page in print'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25674321402142712829)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(29256276630543940267)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Create Manule Report Print Button'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25674321402142712829)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5137028385204020788)
,p_list_item_display_sequence=>290
,p_list_item_link_text=>'Specify Region Print'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25674321402142712829)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'26'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12881737122791120446)
,p_list_item_display_sequence=>390
,p_list_item_link_text=>'Print specific Region In Oracle Apex'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(25674321402142712829)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30720730853920480260)
,p_list_item_display_sequence=>10050
,p_list_item_link_text=>'Other Page'
,p_list_item_icon=>'fa-box-plot-chart'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30721019029153880282)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Digital Clock with Colorful Glowing'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(30720730853920480260)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'19'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30721087043730897060)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Animated Slider Blog Card'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(30720730853920480260)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(34611375285395251205)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Like Un-Like Report'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(30720730853920480260)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'21'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(34722850297490200061)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Upload Excel, XML, JSON & CSV Files'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(30720730853920480260)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(36144775468598967765)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Apex Collection Example'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(30720730853920480260)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'23'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(36227120450405515992)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>'Download-APEX-Report'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(30720730853920480260)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'24'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38012282576928404250)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>'Profile List View'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(30720730853920480260)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'25'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38110131840821916058)
,p_list_item_display_sequence=>270
,p_list_item_link_text=>'Social-Media-App-UI-Design'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(30720730853920480260)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'31'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14679791853416731843)
,p_list_item_display_sequence=>400
,p_list_item_link_text=>'Cards Profile'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(30720730853920480260)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'36'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9849218720500789851)
,p_list_item_display_sequence=>450
,p_list_item_link_text=>'Add Slider Image'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(30720730853920480260)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'40'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16753106470736604704)
,p_list_item_display_sequence=>490
,p_list_item_link_text=>'Order tracking progress bar'
,p_list_item_link_target=>'f?p=&APP_ID.:44:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(30720730853920480260)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'44'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(21021362050135451031)
,p_list_item_display_sequence=>500
,p_list_item_link_text=>'Region Auto Refresh'
,p_list_item_link_target=>'f?p=&APP_ID.:45:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(30720730853920480260)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'45'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(21233589702624302338)
,p_list_item_display_sequence=>510
,p_list_item_link_text=>'Close Modal Page When Clicking Outside'
,p_list_item_link_target=>'f?p=&APP_ID.:49:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(30720730853920480260)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'49'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(28379661253285250080)
,p_list_item_display_sequence=>520
,p_list_item_link_text=>'Image Elevate Zoom'
,p_list_item_link_target=>'f?p=&APP_ID.:46:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(30720730853920480260)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'46'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38916510666441085396)
,p_list_item_display_sequence=>560
,p_list_item_link_text=>'Multiple File Upload'
,p_list_item_link_target=>'f?p=&APP_ID.:92:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(30720730853920480260)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'92'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(53624392812764048919)
,p_list_item_display_sequence=>610
,p_list_item_link_text=>'Upload, Show and Zoom in/out Image'
,p_list_item_link_target=>'f?p=&APP_ID.:38:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(30720730853920480260)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'38'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(53833838343703126670)
,p_list_item_display_sequence=>620
,p_list_item_link_text=>'Check Password Strength and Generate Auto Strength Password'
,p_list_item_link_target=>'f?p=&APP_ID.:56:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(30720730853920480260)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'56'
);
wwv_flow_imp.component_end;
end;
/
