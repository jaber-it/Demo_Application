prompt --application/shared_components/files/apex_data_pkg_user_group_my_stock_726944_zip
begin
--   Manifest
--     APP STATIC FILES: 78259
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>13501875225360637847
,p_default_application_id=>78259
,p_default_id_offset=>0
,p_default_owner=>'FLMPJGAZDYSOYO'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '504B0304140000080800055F8A53AE1A3D2BC5000000D402000018000000555345525F47524F55505F4D595F53544F434B2E6A736F6EBD91CB0AC2301045F7F98CAC5BC82445EBEC145C28A820DD8994AA41B2504B1F8294FEBB9345B58D5A10444842E6';
wwv_flow_imp.g_varchar2_table(2) := '7009879B8A7153E853CE71C32AC65373E008CCB397B8CC75C65186CD7CCC2E654A804693C7C9BE3057CD9103B7E04CE122DEDD08CCC793E9DAC2323D24857E0FED41580A297C001F442401D508856A3DD717AA99D708075D63251D63F8BDB1249F08042A';
wwv_flow_imp.g_varchar2_table(3) := 'C060F8C9D809B58CA5632CBEED78B15ACE5C6187BDAA086A2EA4D5EBFB0CB57D65D737F857C36432A0FFED6FF811AAD996F61D504B0304140000080800055F8A53F19CAD4F810100006506000020000000555345525F47524F55505F4D595F53544F434B';
wwv_flow_imp.g_varchar2_table(4) := '5F70726F66696C652E6A736F6EBD95616BC2301086BFFB2B4A3E9B31ABB0E137B7BA59989BD87620EB28599B6AB6362D49AA88F8DF7789A28CD9C1542C34A1EFDD7B3C47C275D5B02C94B28C62B52C29B2BA56A7A925C9F81444512CB496924CD2E62E95';
wwv_flow_imp.g_varchar2_table(5) := 'F2B84820418750EFA96D07FEC32D3271306049331AAB4298305334979BD88C12ED9298719C3221D5EFF2B19CEBEA59216962EC21DA78D342C4C028588E1733A8294B121B5C25AAADB5C8AA9C4BD0E0EB0D5ECB5A9915629CE426198D5CC7D4336A4214D9';
wwv_flow_imp.g_varchar2_table(6) := 'B56DEF651AB39C64389E914D0B57072C38A3DCD8F6BE1F6D972CD9BB98C49FB2E0BB568DBE6ED6334681D71F5F0C34AA2415A7D03E8E5F82D1E570A7A2A8CA63795D2FEADDFBEE6BBF86B755CFD43A8CC4644462C5E6F468A467386D3FBA9BFC1FC9BEBE';
wwv_flow_imp.g_varchar2_table(7) := 'AE81E270A62AFA581E0B158C9C9EDF3F2F5455422E3D1D4A2F3558ED7AAC9B3FA1F4B2AF09E326270AE7447E99A4093C21C2211A0ECDE63821F2433418D89D10754176CDE67927DE81B376B6BD0317EA0CD67733884B22607AEBD92ECDFFA4B1FE06504B';
wwv_flow_imp.g_varchar2_table(8) := '01021400140000080800055F8A53AE1A3D2BC5000000D4020000180000000000000000002000B68100000000555345525F47524F55505F4D595F53544F434B2E6A736F6E504B01021400140000080800055F8A53F19CAD4F810100006506000020000000';
wwv_flow_imp.g_varchar2_table(9) := '0000000000002000B681FB000000555345525F47524F55505F4D595F53544F434B5F70726F66696C652E6A736F6E504B0506000000000200020094000000BA0200002000496D706C656D656E746174696F6E20627920416E746F6E205363686566666572';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(20969081021363162493)
,p_file_name=>'APEX$DATA$PKG/USER_GROUP_MY_STOCK$726944.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/