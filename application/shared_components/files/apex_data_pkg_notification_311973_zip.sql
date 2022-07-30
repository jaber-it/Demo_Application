prompt --application/shared_components/files/apex_data_pkg_notification_311973_zip
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
wwv_flow_imp.g_varchar2_table(1) := '504B0304140000080800045F8A535D4AFE5B39020000440B0000110000004E4F54494649434154494F4E2E6A736F6EDD564B8FDA400CBEE7575839D38AD005126E0914A9522B557DA85A95D56A488664B64906CDA3155DF5BF771EE96686220AA83D9403';
wwv_flow_imp.g_varchar2_table(2) := '26B1C7FE3E3BB693C7202402373C9C7D0E1E839092229C4D8341C8E5FA01E7229C85B75432784DB8808FDB02091C2A6B833947255656AB03D26E286B9020B485DE61DF15505D83200D1E4056E3B6C005DC22D642B153575C30B2C5FA4FE64232A5D91001';
wwv_flow_imp.g_varchar2_table(3) := '1F9EF18A3001DF88A820A7AD60880BD296C05151D4FA381179050A1D10349461104C45DE414DE997E79A6BAE804BCA768AEC02B52566547293C3BDA04AD7D096E85B2E9090FC5EE71F053F82C1AF624491578DD1C8CFDFDE3B189F54428A9F83F080D698';
wwv_flow_imp.g_varchar2_table(4) := '1D83985C6BBD2FA845ECD562258749FA52CBCCCAD8C8A596C9188C79DEABB2BD87638ECD7BF73433D743EBB8E80DF1D4A8E28931A446C60EACF5880DC8DCF8A54B276C6AB9397CDC431DC3C48D67CE4C9DD836339BEB62E9A8E643B708D0E359081B2AF3';
wwv_flow_imp.g_varchar2_table(5) := 'FC264E74232737D66FB2EF378F8CBE339F536887484761E9609B3AA7B6A8C9F837BCD8923AA15B549F1D1DCEA1D72E5114F90DD0291C90F732CF957923EB73BA72E4C1EC0DD77F3CA0AF7A96E7AC44AF1A0733F56BF2F7D2BEF4698E5CFEE37FFD344F61';
wwv_flow_imp.g_varchar2_table(6) := '89BEA302BEA2A385F697E1DB9AC33BACEAF14605BB78D1ADD8AABDF65DD7A5787DFBEEC5A1CE257B43FCD4150BBC55C3A577836ADB9D6ED69C365B293003B51D1ABA267A5FE40CE31618E6B4963AC6E0A297B8376037677CD09C3A4487BEDDFE4824F188';
wwv_flow_imp.g_varchar2_table(7) := '6CCACAC7DE94455574DA0BA1EED4EF27504B0304140000080800045F8A539FFA755F4501000088040000190000004E4F54494649434154494F4E5F70726F66696C652E6A736F6EBD93514BC33010C7DFF7294A9F1BD9A682F856671D8A52B0DD83A89498';
wwv_flow_imp.g_varchar2_table(8) := '5EB78C3419B9D431C6BEBB692A2DE28A58C48704F2BFFB1FBF3B72FB91E7F9051740CC6E03BE77E99D05B5845C2EADA8D5B6D60A2A108236152453B94DA8437E787F3A5DA43717BE8B5B034110C08CD22ECC0D94D8C456406B17122E49C1359AEFE519BE';
wwv_flow_imp.g_varchar2_table(9) := 'D7D58542C89DFDC56FBC85D2CC326A5E92EDCAD6C40D650ED7E8EAD3AA44554AB49A7D3DDBE3797B77DB98A4A54BF6E3DB6B57CFA93935B46D7BDAC9C0784905612BDAB47072C442044867EB7C5FDA563CEF5C1CC91A956C5B75FA21E8614C165777D12C';
wwv_flow_imp.g_varchar2_table(10) := 'EDE19CF4B34CC6E3E33058BDADED6B28D0439424E13C1A04D4435402225DC250A2599846F3F8F1E90F67C4A881A5D2BBC143CAD2F8F738E7BD03CA8C1AFC81D2305D24D97F7D7534D45498FDFCE1EDFDEA567543B5DDEF7AFBD1CD673A3A7C00504B0102';
wwv_flow_imp.g_varchar2_table(11) := '1400140000080800045F8A535D4AFE5B39020000440B0000110000000000000000002000B681000000004E4F54494649434154494F4E2E6A736F6E504B01021400140000080800045F8A539FFA755F4501000088040000190000000000000000002000B6';
wwv_flow_imp.g_varchar2_table(12) := '81680200004E4F54494649434154494F4E5F70726F66696C652E6A736F6E504B0506000000000200020086000000E40300002000496D706C656D656E746174696F6E20627920416E746F6E205363686566666572';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(20969074616607162359)
,p_file_name=>'APEX$DATA$PKG/NOTIFICATION$311973.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/