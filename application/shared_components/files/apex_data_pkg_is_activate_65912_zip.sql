prompt --application/shared_components/files/apex_data_pkg_is_activate_65912_zip
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
wwv_flow_imp.g_varchar2_table(1) := '504B0304140000080800045F8A53A2C177B03D000000530000001000000049535F41435449564154452E6A736F6EABE652CA2C49CD2D56B28AE6AAE652CACF4C51B232E4D2512A2E492C29058A2A39269764962596A42A71D572E9C0541821ABF0CC4B04';
wwv_flow_imp.g_varchar2_table(2) := 'A901AB88056200504B0304140000080800045F8A53739A9FD3F9000000240200001800000049535F41435449564154455F70726F66696C652E6A736F6E85914F4BC43010C5EFFB2942CE8DE8AE07F1B6200B82E061BB27F510D2A98DE44FC9A42EB2EC77';
wwv_flow_imp.g_varchar2_table(3) := '77329516718B8706FADEFC86F792D34A08D95A072A7FF520C5BDB8AD8A8436BC9398E2B168AD7608D5340AC1C486068A25B74F9BF5A1DEDD49F60950080E4C8E896D9BC1E3E875A00B85CA06D5DA84F9EF7A839F65BB8B080DE3AF7264DB980C654CD6AB';
wwv_flow_imp.g_varchar2_table(4) := '63473BB1D786E3E634FCA0D10D3E2069F4F7429F10273EC90BDAF3B07C7E7CE07DAC363AEBA9F67A96C158AF9D329D1E2B5C5D409483C0D8CCFDAA1D6D335316D507C6305565FD5C2D64DCD7DBFAB05F8879B31C65737D390A669D07FC2F0D9D6F7C8FBD';
wwv_flow_imp.g_varchar2_table(5) := '4E74F9E569900BAECEDF504B01021400140000080800045F8A53A2C177B03D00000053000000100000000000000000002000B6810000000049535F41435449564154452E6A736F6E504B01021400140000080800045F8A53739A9FD3F900000024020000';
wwv_flow_imp.g_varchar2_table(6) := '180000000000000000002000B6816B00000049535F41435449564154455F70726F66696C652E6A736F6E504B05060000000002000200840000009A0100002000496D706C656D656E746174696F6E20627920416E746F6E205363686566666572';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(20969072446606162331)
,p_file_name=>'APEX$DATA$PKG/IS_ACTIVATE$65912.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
