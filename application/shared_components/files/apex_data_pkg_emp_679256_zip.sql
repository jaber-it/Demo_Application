prompt --application/shared_components/files/apex_data_pkg_emp_679256_zip
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
wwv_flow_imp.g_varchar2_table(1) := '504B0304140000080800045F8A5343A217E4BB0100007607000008000000454D502E6A736F6EA5D55B4F83301806E07B7E46AF47D20305CA5DDDEAC401338031C678311DF190B1199D578BFFDD3296F14D0A064D585296119E7C7DDF6E67A1976D517EA0';
wwv_flow_imp.g_varchar2_table(2) := 'E0CEDA59A828DFD61B14783E13D60815EB4559A000CDC2648AF4FDEBE641DF5DA52A0B272AC9ABAFCAA77714AC3F572BBD7E7E792F968B6DF504113EB189BEBC1CE3607F55BFFE58AC50C031C67AFDB829CBE3A3CBE26D5BBD9860EBCB1A01882B7C0039';
wwv_flow_imp.g_varchar2_table(3) := '8BE44C3592582672AAD2A3E3C0FEE9C0DCC6A4EDA03EEF74B09F0ECFA7C0318E643A1BEE706D2C0C0EA7DBD19A07775DE0B89C272A1BEE706C4C0D0EE1F12E076DCF03EE4B369EE779E3D08CE8366BF271509F3AA84DA8711EAC271F2D87C0705FCEE7E9';
wwv_flow_imp.g_varchar2_table(4) := '642083EC19EC9F0CE6C2BE6471985F348E71A4EAB4D48A9A7CAAC095C254167F00C2111021A348250D229391CA74401A475DAD5638A84D71DB415C0061FB7567573825C07123E19E0C6118324A28E80AEF67B8DC018C58A679F89779089BFABF4088D32F';
wwv_flow_imp.g_varchar2_table(5) := 'F11D28C9AFD3A42EE96009364938D8997E8607CF0E399171D619D2BADFA704A68F519D5303810C6A2C8627988C55B7C23C888EC28A01C7B96027D9087557D29E59B40B4BAB59508382B05FFEDDEEF5E71B504B0304140000080800045F8A53F5BB77BD77';
wwv_flow_imp.g_varchar2_table(6) := '0100001A06000010000000454D505F70726F66696C652E6A736F6EBD945D4FC2301486EFF9154BAFA9918F44E50EDD140C0322F3C2382F6AD7B1623F9676480CE1BFDB1D0C686431EE624BD666EF39EFC973D6F46C5B9E87522E182E3E7286BC81D76F97';
wwv_flow_imp.g_varchar2_table(7) := '92E56AE944A337A596126159FB90CA14D5894B28436838E9751FA3DB4B047167C09609460B6D20CC0B26ED3E963152BA2CE60AA7DCD8E277796ADFCBEA425B96803D467B6FAA0D758C864BBCC95C4D9B130AB885597F59B5584B659DE6BE9EDDEB795B58';
wwv_flow_imp.g_varchar2_table(8) := '5D4C1109C92808E7D31954043D21053934DE3DCA8C724904A619D9377176C2820553603BFA7E34CE64AEF4D1C72D5E59AD0EED82BE6B57714E876150C1D9A966E99C57B040E19A2CF7B3EBFF935C9D0659E9D7BA18E1DD4333072797A62EE368FC10F8C3';
wwv_flow_imp.g_varchar2_table(9) := 'A8EAE47AD53017A759326E98CBFD7676EE2248526049EC1B643CB92746384661089BEFC7288AD168D4EDC768E0E4316C8B45DD9E16C34933FFDD125197F1661686CD40522D655D4A3F98474D4D9F84E5C5DFE3C7AD2F303C7362DCC42DE7B1858BDD6FED';
wwv_flow_imp.g_varchar2_table(10) := '3E01504B01021400140000080800045F8A5343A217E4BB01000076070000080000000000000000002000B68100000000454D502E6A736F6E504B01021400140000080800045F8A53F5BB77BD770100001A060000100000000000000000002000B681E101';
wwv_flow_imp.g_varchar2_table(11) := '0000454D505F70726F66696C652E6A736F6E504B0506000000000200020074000000860300002000496D706C656D656E746174696F6E20627920416E746F6E205363686566666572';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(20969071592213162310)
,p_file_name=>'APEX$DATA$PKG/EMP$679256.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/