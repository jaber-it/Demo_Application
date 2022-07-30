prompt --application/deployment/install/install_demo_app_data
begin
--   Manifest
--     INSTALL: INSTALL-Demo App Data
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(34856499186126879083)
,p_install_id=>wwv_flow_imp.id(20957044554869726037)
,p_name=>'Demo App Data'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    --ACL_USER_GROUP: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''ACL_USER_GROUP'', p_delete_after_install => true );',
'    --ALL_AUDIT_LOG: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''ALL_AUDIT_LOG'', p_delete_after_install => true );',
'    --ALL_LANGUAGES: 136/10000 rows exported, APEX$DATA$PKG/ALL_LANGUAGES$148155',
'    apex_data_install.load_supporting_object_data(p_table_name => ''ALL_LANGUAGES'', p_delete_after_install => true );',
'    --APPS_NAME: 1/10000 rows exported, APEX$DATA$PKG/APPS_NAME$283075',
'    apex_data_install.load_supporting_object_data(p_table_name => ''APPS_NAME'', p_delete_after_install => true );',
'    --APX$ERR$EMP$679256: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''APX$ERR$EMP$679256'', p_delete_after_install => true );',
'    --ASSET: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''ASSET'', p_delete_after_install => true );',
'    --BRAND: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''BRAND'', p_delete_after_install => true );',
'    --CATEGORY: 3/10000 rows exported, APEX$DATA$PKG/CATEGORY$831078',
'    apex_data_install.load_supporting_object_data(p_table_name => ''CATEGORY'', p_delete_after_install => true );',
'    --COLOR: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''COLOR'', p_delete_after_install => true );',
'    --COUNTRY: 179/10000 rows exported, APEX$DATA$PKG/COUNTRY$765899',
'    apex_data_install.load_supporting_object_data(p_table_name => ''COUNTRY'', p_delete_after_install => true );',
'    --COURT: 81/10000 rows exported, APEX$DATA$PKG/COURT$735788',
'    apex_data_install.load_supporting_object_data(p_table_name => ''COURT'', p_delete_after_install => true );',
'    --CUSTOMER: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''CUSTOMER'', p_delete_after_install => true );',
'    --DEPT: 4/10000 rows exported, APEX$DATA$PKG/DEPT$209411',
'    apex_data_install.load_supporting_object_data(p_table_name => ''DEPT'', p_delete_after_install => true );',
'    --DISTRICT: 108/10000 rows exported, APEX$DATA$PKG/DISTRICT$145192',
'    apex_data_install.load_supporting_object_data(p_table_name => ''DISTRICT'', p_delete_after_install => true );',
'    --DIVISION: 21/10000 rows exported, APEX$DATA$PKG/DIVISION$886788',
'    apex_data_install.load_supporting_object_data(p_table_name => ''DIVISION'', p_delete_after_install => true );',
'    --DOB: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''DOB'', p_delete_after_install => true );',
'    --EMP: 2/10000 rows exported, APEX$DATA$PKG/EMP$679256',
'    apex_data_install.load_supporting_object_data(p_table_name => ''EMP'', p_delete_after_install => true );',
'    --EXPORT_CLOB: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''EXPORT_CLOB'', p_delete_after_install => true );',
'    --E_LOG: 551/10000 rows exported, APEX$DATA$PKG/E_LOG$222244',
'    apex_data_install.load_supporting_object_data(p_table_name => ''E_LOG'', p_delete_after_install => true );',
'    --GALLERY: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''GALLERY'', p_delete_after_install => true );',
'    --GROUP_NAME: 39/10000 rows exported, APEX$DATA$PKG/GROUP_NAME$667750',
'    apex_data_install.load_supporting_object_data(p_table_name => ''GROUP_NAME'', p_delete_after_install => true );',
'    --HTMLDB_PLAN_TABLE: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''HTMLDB_PLAN_TABLE'', p_delete_after_install => true );',
'    --IMAGES: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''IMAGES'', p_delete_after_install => true );',
'    --INFOFOLLOWUP: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''INFOFOLLOWUP'', p_delete_after_install => true );',
'    --IS_ACTIVATE: 2/10000 rows exported, APEX$DATA$PKG/IS_ACTIVATE$65912',
'    apex_data_install.load_supporting_object_data(p_table_name => ''IS_ACTIVATE'', p_delete_after_install => true );',
'    --ITEM_SIZE: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''ITEM_SIZE'', p_delete_after_install => true );',
'    --LIKE_TABLE: 127/10000 rows exported, APEX$DATA$PKG/LIKE_TABLE$690627',
'    apex_data_install.load_supporting_object_data(p_table_name => ''LIKE_TABLE'', p_delete_after_install => true );',
'    --MENUS: 20/10000 rows exported, APEX$DATA$PKG/MENUS$550003',
'    apex_data_install.load_supporting_object_data(p_table_name => ''MENUS'', p_delete_after_install => true );',
'    --MENUS_ACCESS: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''MENUS_ACCESS'', p_delete_after_install => true );',
'    --MY_FILE_TABLE: 1/10000 rows exported, APEX$DATA$PKG/MY_FILE_TABLE$347327',
'    apex_data_install.load_supporting_object_data(p_table_name => ''MY_FILE_TABLE'', p_delete_after_install => true );',
'    --MY_IMPORTENT_CODE: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''MY_IMPORTENT_CODE'', p_delete_after_install => true );',
'    --MY_SHOP_NAME: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''MY_SHOP_NAME'', p_delete_after_install => true );',
'    --MY_USERS: 16/10000 rows exported, APEX$DATA$PKG/MY_USERS$757396',
'    apex_data_install.load_supporting_object_data(p_table_name => ''MY_USERS'', p_delete_after_install => true );',
'    --NOTIFICATION: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''NOTIFICATION'', p_delete_after_install => true );',
'    --NOTI_CATEGORY: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''NOTI_CATEGORY'', p_delete_after_install => true );',
'    --ORDER_PRODUCT: 28/10000 rows exported, APEX$DATA$PKG/ORDER_PRODUCT$45290',
'    apex_data_install.load_supporting_object_data(p_table_name => ''ORDER_PRODUCT'', p_delete_after_install => true );',
'    --POST_BLOG: 5/10000 rows exported, APEX$DATA$PKG/POST_BLOG$952950',
'    apex_data_install.load_supporting_object_data(p_table_name => ''POST_BLOG'', p_delete_after_install => true );',
'    --POS_USER: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''POS_USER'', p_delete_after_install => true );',
'    --PRODUCT: 11/10000 rows exported, APEX$DATA$PKG/PRODUCT$880484',
'    apex_data_install.load_supporting_object_data(p_table_name => ''PRODUCT'', p_delete_after_install => true );',
'    --PRODUCT_DETELS: 3/10000 rows exported, APEX$DATA$PKG/PRODUCT_DETELS$365454',
'    apex_data_install.load_supporting_object_data(p_table_name => ''PRODUCT_DETELS'', p_delete_after_install => true );',
'    --PRODUCT_PRICE: 5/10000 rows exported, APEX$DATA$PKG/PRODUCT_PRICE$778133',
'    apex_data_install.load_supporting_object_data(p_table_name => ''PRODUCT_PRICE'', p_delete_after_install => true );',
'    --PRODUCT_RATING: 7/10000 rows exported, APEX$DATA$PKG/PRODUCT_RATING$603618',
'    apex_data_install.load_supporting_object_data(p_table_name => ''PRODUCT_RATING'', p_delete_after_install => true );',
'    --PURCHASE_DETALIS: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''PURCHASE_DETALIS'', p_delete_after_install => true );',
'    --PURCHASE_MASTER: 1/10000 rows exported, APEX$DATA$PKG/PURCHASE_MASTER$490861',
'    apex_data_install.load_supporting_object_data(p_table_name => ''PURCHASE_MASTER'', p_delete_after_install => true );',
'    --REPORT_LOG: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''REPORT_LOG'', p_delete_after_install => true );',
'    --REPORT_VIEW_LOG: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''REPORT_VIEW_LOG'', p_delete_after_install => true );',
'    --RETERN_PURCHASE_DETALIS: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''RETERN_PURCHASE_DETALIS'', p_delete_after_install => true );',
'    --SALES_DTLS: 95/10000 rows exported, APEX$DATA$PKG/SALES_DTLS$558802',
'    apex_data_install.load_supporting_object_data(p_table_name => ''SALES_DTLS'', p_delete_after_install => true );',
'    --SALES_MST: 84/10000 rows exported, APEX$DATA$PKG/SALES_MST$560609',
'    apex_data_install.load_supporting_object_data(p_table_name => ''SALES_MST'', p_delete_after_install => true );',
'    --SALES_ORDER: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''SALES_ORDER'', p_delete_after_install => true );',
'    --SLIDESHOW_IMG: 3/10000 rows exported, APEX$DATA$PKG/SLIDESHOW_IMG$929588',
'    apex_data_install.load_supporting_object_data(p_table_name => ''SLIDESHOW_IMG'', p_delete_after_install => true );',
'    --STOCK: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''STOCK'', p_delete_after_install => true );',
'    --STUDENT: 10/10000 rows exported, APEX$DATA$PKG/STUDENT$272236',
'    apex_data_install.load_supporting_object_data(p_table_name => ''STUDENT'', p_delete_after_install => true );',
'    --SUPPLIER: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''SUPPLIER'', p_delete_after_install => true );',
'    --SURETY_ACCOUNT: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''SURETY_ACCOUNT'', p_delete_after_install => true );',
'    --TAPEX_WORKSPACE_ACCESS_LOG: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''TAPEX_WORKSPACE_ACCESS_LOG'', p_delete_after_install => true );',
'    --TAPEX_WORKSPACE_ACTIVITY_LOG: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''TAPEX_WORKSPACE_ACTIVITY_LOG'', p_delete_after_install => true );',
'    --TAST_LOCTION: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''TAST_LOCTION'', p_delete_after_install => true );',
'    --TEST: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''TEST'', p_delete_after_install => true );',
'    --THANAUPAZILA: 778/10000 rows exported, APEX$DATA$PKG/THANAUPAZILA$492763',
'    apex_data_install.load_supporting_object_data(p_table_name => ''THANAUPAZILA'', p_delete_after_install => true );',
'    --TREE_MENU: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''TREE_MENU'', p_delete_after_install => true );',
'    --UNIT: 839/10000 rows exported, APEX$DATA$PKG/UNIT$530723',
'    apex_data_install.load_supporting_object_data(p_table_name => ''UNIT'', p_delete_after_install => true );',
'    --USERS_LOG: 465/10000 rows exported, APEX$DATA$PKG/USERS_LOG$173493',
'    apex_data_install.load_supporting_object_data(p_table_name => ''USERS_LOG'', p_delete_after_install => true );',
'    --USER_GROUP: 4/10000 rows exported, APEX$DATA$PKG/USER_GROUP$197503',
'    apex_data_install.load_supporting_object_data(p_table_name => ''USER_GROUP'', p_delete_after_install => true );',
'    --USER_GROUP_MY_STOCK: 32/10000 rows exported, APEX$DATA$PKG/USER_GROUP_MY_STOCK$726944',
'    apex_data_install.load_supporting_object_data(p_table_name => ''USER_GROUP_MY_STOCK'', p_delete_after_install => true );',
'    --USER_GROUP_PAGE_ACCESS: 62/10000 rows exported, APEX$DATA$PKG/USER_GROUP_PAGE_ACCESS$859870',
'    apex_data_install.load_supporting_object_data(p_table_name => ''USER_GROUP_PAGE_ACCESS'', p_delete_after_install => true );',
'    --USER_LOC: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''USER_LOC'', p_delete_after_install => true );',
'    --USER_LOG_WEB: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''USER_LOG_WEB'', p_delete_after_install => true );',
'    --USER_PAGE: 20/10000 rows exported, APEX$DATA$PKG/USER_PAGE$206830',
'    apex_data_install.load_supporting_object_data(p_table_name => ''USER_PAGE'', p_delete_after_install => true );',
'    --USER_TABLE_LOG: 28/10000 rows exported, APEX$DATA$PKG/USER_TABLE_LOG$542547',
'    apex_data_install.load_supporting_object_data(p_table_name => ''USER_TABLE_LOG'', p_delete_after_install => true );',
'end;'))
);
wwv_flow_imp.component_end;
end;
/
