prompt --application/shared_components/files/apex_data_pkg_test_892936_zip
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
wwv_flow_imp.g_varchar2_table(1) := '504B0304140000080800055F8A53D4276C685F0000007200000009000000544553542E6A736F6EABE652CA2C49CD2D56B28AE6AA06B25394AC8C0C2D0C4C8D4CB974940A8AF2534A934B94AC948C9580DCE2C49CD4E27825ABBCD29C1C2037B9B4B8243F';
wwv_flow_imp.g_varchar2_table(2) := '37B508286D6408962F2D28C8C9040B80D567E6A5E5C727E7A7A442B5D472C5023100504B0304140000080800055F8A5315370741400100008604000011000000544553545F70726F66696C652E6A736F6EBD94516B83301485DFFB2BC4E7666CDD06636F';
wwv_flow_imp.g_varchar2_table(3) := 'C55A287453AA3E6D4542BCAE193191DCB8324AFFFB621C95B1CA40CA1E0C78CE3D97EF06AF8789E7F9251740CC670DBEF7E8DD4D5B09B97CB3A256FB562BA940989E4A413255D882D6F2E7EBDB59962E1F7CE7DB004110C08CD2CEE6062AECBC1DD03685';
wwv_flow_imp.g_varchar2_table(4) := '844B52728DE6777B861F6D77A1100A177FF5BB6CA934B38C9A5764BFB33DB1A6CCE11ADD7C4795682A8956B36F2FF6F1BC833BAD2769E58AFDD5C2B57362410D3D4D3DEB6560BCA282B01DED26B83A132102A48BF5B99F53177D88237947254F833AFD38';
wwv_flow_imp.g_varchar2_table(5) := '1D208C37D1220BD201CC9B6194FBEBF328B55645C3CC589E64BE0E93FC72384805603E9626C892347A0A3797E3610D1A55811E7D3F591CAF579724C2A6AE051F4FB47A5E4679102DC27FFAD465A972FB3F80BF78EDB9759B5A536DD7BB5D7E745734397E';
wwv_flow_imp.g_varchar2_table(6) := '01504B01021400140000080800055F8A53D4276C685F00000072000000090000000000000000002000B68100000000544553542E6A736F6E504B01021400140000080800055F8A53153707414001000086040000110000000000000000002000B6818600';
wwv_flow_imp.g_varchar2_table(7) := '0000544553545F70726F66696C652E6A736F6E504B0506000000000200020076000000F50100002000496D706C656D656E746174696F6E20627920416E746F6E205363686566666572';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(20969079913464162436)
,p_file_name=>'APEX$DATA$PKG/TEST$892936.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/