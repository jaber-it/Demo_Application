prompt --application/shared_components/files/apex_data_pkg_item_size_330750_zip
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
wwv_flow_imp.g_varchar2_table(1) := '504B0304140000080800045F8A5384F1AC156D0000001C0100000E0000004954454D5F53495A452E6A736F6EABE652CA2C49CD2D56B28AE6AAE652CACF4C51B232E1D2512ACEAC4A8DCF4BCC4D55B2528AD0F5492C4A4F55020967E41795C0C57D94B86A';
wwv_flow_imp.g_varchar2_table(2) := 'B97460DA0CD1B405E726E6E460680A46D16384A6C7373525B3341743932F8A2663344DD85D87EA3853343D46383D05F1552C100300504B0304140000080800045F8A53CD00B69E0F010000C2020000160000004954454D5F53495A455F70726F66696C65';
wwv_flow_imp.g_varchar2_table(3) := '2E6A736F6EAD924F4B033110C5EFFD1421E78D68B520DE0A562CA805AD17B594909D7523F9B364528B967E779359D9456C45C44302796FDEE437249B0163BCD206447C6B80B33376526409B57B4E62F0EBAC55D220145D2938E5CB54902D3EBE3A1EDECF';
wwv_flow_imp.g_varchar2_table(4) := '2F4E39F92920100CA8E803D93A82C5D6AB41E6140AED44A503C6EFED15BEE6EEC62394147FE26DB6F24125C6A0AD58D7A9273652116E0CABCFA8372BEB3069E9F49816631BDA93E7A4A5623E9B9E533F524B196537F6B09741692B8D50B56C4738D81111';
wwv_flow_imp.g_varchar2_table(5) := '061CC5FADC97B1BD2EFB9446F182DE75A392BE2DF630DE4D1F26CB9BF1F5640FE9D10F34A3C3DD38A8DF614937FC15EA72763BFF77AADA87F82BACB42FE8951B19D2D7C81F27BF341B0DB61F504B01021400140000080800045F8A5384F1AC156D000000';
wwv_flow_imp.g_varchar2_table(6) := '1C0100000E0000000000000000002000B681000000004954454D5F53495A452E6A736F6E504B01021400140000080800045F8A53CD00B69E0F010000C2020000160000000000000000002000B681990000004954454D5F53495A455F70726F66696C652E';
wwv_flow_imp.g_varchar2_table(7) := '6A736F6E504B0506000000000200020080000000DC0100002000496D706C656D656E746174696F6E20627920416E746F6E205363686566666572';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(20969072756993162334)
,p_file_name=>'APEX$DATA$PKG/ITEM_SIZE$330750.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/