prompt --application/shared_components/files/apex_data_pkg_noti_category_788951_zip
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
wwv_flow_imp.g_varchar2_table(1) := '504B0304140000080800045F8A53E1741A809300000026010000120000004E4F54495F43415445474F52592E6A736F6E6DCE310BC2301086E13DBF426E6E064597CC2ECE0E0E5224C624069ABB924BA852FCEF0644C4B6C30DC70B0FDF2820641B19D459';
wwv_flow_imp.g_varchar2_table(2) := '8C0228DC40AD45034667EB293D41C1011DA5A87320845A8221BC84E86B715AA21DB8D7BD4D9256F5DD3D40BC44F3953613EA588CB1CCAE747329DF4BBCB22CFD82B39D38279D30A09F23C3272C4DF917F61ABD4D5478610851C73FA1ADF706504B030414';
wwv_flow_imp.g_varchar2_table(3) := '0000080800045F8A5378DB5FB916010000BD0200001A0000004E4F54495F43415445474F52595F70726F66696C652E6A736F6E9D924F4B033110C5EFFD1421E78DB4D583782B55CB82BA20F5202A2564B3BB91FC5932A9A5947E779359D945EC22F49040';
wwv_flow_imp.g_varchar2_table(4) := 'DE9B37FC86CC614208AD94962CEC5B49C90DB9CA9204CAD651F46E97B48A6B90595F2AAD70652C48165D3C5CCE5FD6F7D714FD186020B514C179B45590063AAF913CA58029CB2AE521FC6D2FE02B75D70E6489F177DA652BE74564F4CAB05D137B42CB05';
wwv_flow_imp.g_varchar2_table(5) := 'E206BFFD893ABD3516A2165F6FF11072C03B7A961B2CA6457E8BFD502D79E0FDD8F341964219AE99687837C2C58908D3D2626CC8FD1ADBA9724829609FE06C3F2AEAC76C8471B958DFAD8AE7D711D0D938CC6C3A3D4D237890B5F3FB7391F265F1B4C91F';
wwv_flow_imp.g_varchar2_table(6) := '5767218D3029E1EC4699FA3FA6787FE007B7DCC7AD483B03B8A793E337504B01021400140000080800045F8A53E1741A809300000026010000120000000000000000002000B681000000004E4F54495F43415445474F52592E6A736F6E504B0102140014';
wwv_flow_imp.g_varchar2_table(7) := '0000080800045F8A5378DB5FB916010000BD0200001A0000000000000000002000B681C30000004E4F54495F43415445474F52595F70726F66696C652E6A736F6E504B0506000000000200020088000000110200002000496D706C656D656E746174696F';
wwv_flow_imp.g_varchar2_table(8) := '6E20627920416E746F6E205363686566666572';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(20969074986884162361)
,p_file_name=>'APEX$DATA$PKG/NOTI_CATEGORY$788951.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/