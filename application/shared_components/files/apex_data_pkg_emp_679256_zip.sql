prompt --application/shared_components/files/apex_data_pkg_emp_679256_zip
begin
--   Manifest
--     APP STATIC FILES: 95068
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '504B0304140000080800F1663C54645B8BA678000000E200000008000000454D502E6A736F6E7DCDC10A83300C06E07B1E23670F8D20485F65EC5067984AD34AED4EE2BB9B51A85EB643E0E74FC8B703CE996543FB801D90650D116D0B0D7270C2687171';
wwv_flow_imp.g_varchar2_table(2) := '0327433DA1964B1CB46ABF51DEA91C4E73E2D165BD0D1FEFB5D89C2F9B57142969E43597C707349743FF1DAA0EFD74A833A65274A348A9A7CE09504B0304140000080800F1663C5410D8C148750100001906000010000000454D505F70726F66696C652E';
wwv_flow_imp.g_varchar2_table(3) := '6A736F6EBD945D4FC2301486EFF9154BAFA9918F44E50EDD140C0322F3C2382F6AD7B1E2DA2E6D9118C27FB73B18D0C862DCC596AC4DDF73DE93E7ACD9D9B63C0FA53C67D87E140C7903AFDF2E25C3E5D2895A6D4A2D25B961ED432A9354252EA10CA1E1';
wwv_flow_imp.g_varchar2_table(4) := 'A4D77D8C6E2F11C49D011B96336A958630B74C987D2C63A47419CC254EB936F677796ADECBEAB9322C017B8CF6DE5469EA1835177893B99AA6201470AD5E7F5955BE16D238CD9D9EDDEB795B585D4C1201C92808E7D31954043D21961C1AEF1E6546B920';
wwv_flow_imp.g_varchar2_table(5) := '39A619D9377176C2827326C176F4FD689C8942AAA38F1BBC324A1EDA057DD7AEE29C0EC3A082B353CDD239AF6081C23559EE67D7FF27B93A0DB252AF7531C2BB87662E4E2C755DC6D1F821F08751D5CDF5AA612E4EB3645C3397FBEDEEDC8F2088C58298';
wwv_flow_imp.g_varchar2_table(6) := '37C878724F8C708CC21036DF8F5114A3D1A8DB8FD1C0C963D8168BBA3D2D869366BEBB21795DC69B591836034995107529FD601E35357D1256D8BFC78F5B5F60781644BB895BCE6303555BBB4F504B01021400140000080800F1663C54645B8BA6780000';
wwv_flow_imp.g_varchar2_table(7) := '00E2000000080000000000000000002000B68100000000454D502E6A736F6E504B01021400140000080800F1663C5410D8C1487501000019060000100000000000000000002000B6819E000000454D505F70726F66696C652E6A736F6E504B0506000000';
wwv_flow_imp.g_varchar2_table(8) := '000200020074000000410200002000496D706C656D656E746174696F6E20627920416E746F6E205363686566666572';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(20961792010585917281)
,p_file_name=>'APEX$DATA$PKG/EMP$679256.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
