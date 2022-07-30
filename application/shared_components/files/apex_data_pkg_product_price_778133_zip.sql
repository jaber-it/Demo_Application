prompt --application/shared_components/files/apex_data_pkg_product_price_778133_zip
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
wwv_flow_imp.g_varchar2_table(1) := '504B0304140000080800045F8A535127D88DBD010000E30A00001200000050524F445543545F50524943452E6A736F6EBD964B4BC3401485F7F91959BB98B973E7D59D554A21B514452D88949A84128849C96321C5FF6E5ADBA23357E842669140CE840C';
wwv_flow_imp.g_varchar2_table(2) := '1FE7DC93D94571D1E5EF6D3C7A897651BC6DEAAC4FBBD5B629D27C5517593C128A4757E785BDC25168093FD5B4CEF278142FE076F93C8D8785B46E8F1F894720181BA4362FCBA2DA9C540107352BDAB4EEAB6EF8AADC3FD74DB129AA75797E8D1DE4B65B';
wwv_flow_imp.g_varchar2_table(3) := '777D7BD8BDEACB72BF4393AFBB7CF5F6E12AD9703B6BFD3673B4CFE88AE644E3714AD49601C599A8C9BDCBA914C5C919F3412952F32D0720050497940BCD0D49CAE7338F946B8A142E731482390ABEA320802B32B93831E0721E33EA70A26B28D0C9D5C1';
wwv_flow_imp.g_varchar2_table(4) := '928BFE845A8E6028CEF12C911E272339A5C3A9C8DC0A1B2EB7C2CBAD154A2A8A538EEF1EBD2622FD04EDE696E404158A5380E7A7308A1B32B737668E2EA7A130ADB2BF28D15882124D3033D133134170D24CBE9C5E7B252449332F1B4E1E6E389557B612';
wwv_flow_imp.g_varchar2_table(5) := '412B7238133E99B99C48506AE9142D81A84219E99F0FB8B01A2D69E4137869FDE37CE0B60FFDD73C55570823BDF691288590A49168175ECB4A025382434959894A866224CE400C18D93CC98335042305E90EA526BD44F1EF5EBE0ED717504B0304140000';
wwv_flow_imp.g_varchar2_table(6) := '080800045F8A537B5AB44AC8010000AF0800001A00000050524F445543545F50524943455F70726F66696C652E6A736F6EBD965F6F9B3010C0DFFB29909FE3694B3B6DEA5B06AC454A4314E0A11A15F28CD3B83518F9CCAAAAEA77DFE144C9A68D540A15';
wwv_flow_imp.g_varchar2_table(7) := '48D8F2FDD3CFC79DF1CB99E791B55482DAE74610EFD2BB98742290F53D0A8D7EEA646BA6404CF6A6A2E6BA44834E4566F3F369967EFF4A9C1E1D280825B8D5C6A9A515156C751BC13A2FA0B2A66B69C0FE1B9EC3AF2EBAD2204AE79E93ADEF5A1B8E8C46';
wwv_flow_imp.g_varchar2_table(8) := '56F4698331A161DCE15AD3EE5CB56AAB1A5086AB1FF87ADE8B1B5157B3CA1993E52A0E323F2D96ABC80F8B380A5C74675332CBF649981EC482CB8A29CA376CBBA10FFF71A14AD4CEEDE0F757121AA3CB96DBA231928B42CBF21043027D005DEFD3E0E4AF';
wwv_flow_imp.g_varchar2_table(9) := '9337F8C7061F4EECC741D8C3FCE908D7E78FC7C1B010C5A9687E9CEC2A619C64720DBB1238953809E7F368713526342E1436ED30EE204AFC385BA4E3209712B86E6B7B2A6DBC8AAEA2C56C3E669AB591F7B2666A607DA4B3344BFA4F87239DD6D7686099';
wwv_flow_imp.g_varchar2_table(10) := '6D61C001E0AFC2591A16DF6EDFB1FBB911CC8AE2E7F340A800871EACF37EAC2F47A1D0FC8FEF87FFAD8A595A31787446B7F8E484E6E4E6C64D4190933427D7D7D38B9C5CA2387253929CBAB36C19BCFBCEDAA61C716738DEB93F7AC30C5E03BA4B02B842';
wwv_flow_imp.g_varchar2_table(11) := '999EBDFE06504B01021400140000080800045F8A535127D88DBD010000E30A0000120000000000000000002000B6810000000050524F445543545F50524943452E6A736F6E504B01021400140000080800045F8A537B5AB44AC8010000AF0800001A0000';
wwv_flow_imp.g_varchar2_table(12) := '000000000000002000B681ED01000050524F445543545F50524943455F70726F66696C652E6A736F6E504B0506000000000200020088000000ED0300002000496D706C656D656E746174696F6E20627920416E746F6E205363686566666572';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(20969076112461162379)
,p_file_name=>'APEX$DATA$PKG/PRODUCT_PRICE$778133.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/