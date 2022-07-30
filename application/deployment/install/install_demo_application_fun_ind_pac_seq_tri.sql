prompt --application/deployment/install/install_demo_application_fun_ind_pac_seq_tri
begin
--   Manifest
--     INSTALL: INSTALL-Demo Application FUN & Ind & Pac & Seq & Tri
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
 p_id=>wwv_flow_imp.id(34855710406855915282)
,p_install_id=>wwv_flow_imp.id(20957044554869726037)
,p_name=>'Demo Application FUN & Ind & Pac & Seq & Tri'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE OR REPLACE EDITIONABLE FUNCTION "BASE64ENCODE" (p_blob IN BLOB)',
'  RETURN CLOB',
'IS',
'  l_clob CLOB;',
'  l_step PLS_INTEGER := 12000; -- make sure you set a multiple of 3 not higher than 24573',
'BEGIN',
'  FOR i IN 0 .. TRUNC((DBMS_LOB.getlength(p_blob) - 1 )/l_step) LOOP',
'    l_clob := l_clob || UTL_RAW.cast_to_varchar2(UTL_ENCODE.base64_encode(DBMS_LOB.substr(p_blob, l_step, i * l_step + 1)));',
'  END LOOP;',
'  RETURN l_clob;',
'END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "BLOG_POST_REPORT" (P_POST_OID NUMBER)',
'    RETURN CLOB',
'IS',
'    v_s     NUMBER := 0;',
'    v_ret   CLOB;',
'    BEGIN',
'        FOR x',
'            IN (SELECT POST_OID, SL_NO',
'         from BLOG_POST',
'         where POST_OID =  P_POST_OID)',
'        LOOP',
'         v_s := v_s + 1;',
'            V_RET :=',
'                   V_RET',
'                || (   ''<table border="1" cellpadding="5" cellspacing="0" style="border-collapse:collapse" >',
'  <tr>',
'    <td  align="left">''|| v_s ||''</td>',
'    <td ><p> POST_TITLE </p></td>',
'    <td ><xmp>'' || GET_POST_TITLE(x.POST_OID) || ''</xmp></td>',
'  </tr>',
'  <tr>',
'    <td  align="left">''|| v_s ||''</td>',
'    <td ><p> META_DESCRIPTION </p></td>',
'    <td ><xmp>'' || GET_META_DESCRIPTION (x.POST_OID) || ''</xmp></td>',
'  </tr>',
'   ',
'  <tr>',
'    <td  align="left">''|| v_s ||''</td>',
'    <td ><p> POST_NAME </p></td>',
'    <td ><xmp>'' || GET_POST_NAME (x.POST_OID) || ''</xmp></td>',
'  </tr>',
'',
'    <tr>',
'    <td  align="left">''|| v_s||''</td>',
'    <td ><p> POST_NAME </p></td>',
'    <td ><xmp>'' || GET_IMAGE_URL (x.POST_OID) || ''</xmp></td>',
'  </tr>',
'',
'',
'</table>'');',
'        END LOOP;',
'        /*exception when others then',
'        raise;',
'        */',
'        RETURN v_ret;',
'    END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "CONV_BANGLA_ENGLISH" (bn_text nvarchar2) RETURN NVARCHAR2 IS ',
'eng_text  nvarchar2(200); ',
'temp_char nvarchar2(200); ',
' ',
' ',
'bn_text_len number := length(bn_text); ',
'begin ',
' ',
'for i in 1..bn_text_len ',
'loop ',
'temp_char := substr(bn_text,i,1); ',
'case temp_char ',
unistr('when ''\09E6'' then eng_text := concat(eng_text,''0''); '),
unistr('when ''\09E7'' then eng_text := concat(eng_text,''1''); '),
unistr('when ''\09E8'' then eng_text := concat(eng_text,''2''); '),
unistr('when ''\09E9'' then eng_text := concat(eng_text,''3''); '),
unistr('when ''\09EA'' then eng_text := concat(eng_text,''4''); '),
unistr('when ''\09EB'' then eng_text := concat(eng_text,''5''); '),
unistr('when ''\09EC'' then eng_text := concat(eng_text,''6''); '),
unistr('when ''\09ED'' then eng_text := concat(eng_text,''7''); '),
unistr('when ''\09EE'' then eng_text := concat(eng_text,''8''); '),
unistr('when ''\09EF'' then eng_text := concat(eng_text,''9''); '),
'else eng_text := concat(eng_text,temp_char); ',
'end case; ',
'end loop; ',
' ',
' ',
' ',
'   RETURN eng_text; ',
'    ',
'   EXCEPTION ',
'     WHEN NO_DATA_FOUND THEN ',
'       return NULL; ',
'     WHEN OTHERS THEN ',
'       -- Consider logging the error and then re-raise ',
'--       RAISE; ',
'        return  null; ',
'END conv_bangla_english; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "CONV_BANGLA_ENGLISH_DATE" (bn_text in nvarchar2) ',
'return date ',
'as ',
'eng_text varchar2(100); ',
'eng_date date; ',
'temp_char nvarchar2(100); ',
'bn_text_len number := length(bn_text); ',
'begin ',
'for i in 1..bn_text_len ',
'loop ',
'temp_char := substr(bn_text,i,1); ',
'case temp_char ',
'when ''/'' then eng_text := concat(eng_text,''/''); ',
'when ''-'' then eng_text := concat(eng_text,''-''); ',
unistr('when ''\09E6'' then eng_text := concat(eng_text,''0''); '),
unistr('when ''\09E7'' then eng_text := concat(eng_text,''1''); '),
unistr('when ''\09E8'' then eng_text := concat(eng_text,''2''); '),
unistr('when ''\09E9'' then eng_text := concat(eng_text,''3''); '),
unistr('when ''\09EA'' then eng_text := concat(eng_text,''4''); '),
unistr('when ''\09EB'' then eng_text := concat(eng_text,''5''); '),
unistr('when ''\09EC'' then eng_text := concat(eng_text,''6''); '),
unistr('when ''\09ED'' then eng_text := concat(eng_text,''7''); '),
unistr('when ''\09EE'' then eng_text := concat(eng_text,''8''); '),
unistr('when ''\09EF'' then eng_text := concat(eng_text,''9''); '),
'else eng_text := concat(eng_text,temp_char); ',
'end case; ',
'end loop; ',
'eng_date := to_date(eng_text,''dd/mm/yyyy''); ',
'return eng_date; ',
'end; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "CONV_ENGLISH_BANGLA" (eng_text nvarchar2 default '' '' ) RETURN NVARCHAR2 IS ',
'bn_text nvarchar2(200) ; ',
'temp_char varchar2(200):=''''; ',
'eng_text_len number := length(eng_text); ',
'begin ',
'if eng_text is null then ',
'return ''''; ',
'end if; ',
' ',
'for i in 1..eng_text_len ',
'loop ',
'temp_char := substr(eng_text,i,1); ',
'case temp_char ',
'when '' '' then bn_text := concat(bn_text,'' ''); ',
unistr('when ''0'' then bn_text := concat(bn_text,''\09E6''); '),
unistr('when ''1'' then bn_text := concat(bn_text,''\09E7''); '),
unistr('when ''2'' then bn_text := concat(bn_text,''\09E8''); '),
unistr('when ''3'' then bn_text := concat(bn_text,''\09E9''); '),
unistr('when ''4'' then bn_text := concat(bn_text,''\09EA''); '),
unistr('when ''5'' then bn_text := concat(bn_text,''\09EB''); '),
unistr('when ''6'' then bn_text := concat(bn_text,''\09EC''); '),
unistr('when ''7'' then bn_text := concat(bn_text,''\09ED''); '),
unistr('when ''8'' then bn_text := concat(bn_text,''\09EE''); '),
unistr('when ''9'' then bn_text := concat(bn_text,''\09EF''); '),
'else bn_text := concat(bn_text,temp_char); ',
'end case; ',
'end loop; ',
' ',
' ',
'RETURN bn_text; ',
'END conv_english_bangla; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "CONV_ENGLISH_BANGLA_DATE" (eng_date in date) ',
'    return varchar2 ',
'as ',
'bn_text nvarchar2(50); ',
'temp_char varchar2(20); ',
'eng_text varchar2(50) := null; ',
'eng_text_len number := 0; ',
'mnth nvarchar2(20); ',
'begin ',
'eng_text := to_char(eng_date,''dd MON, yyyy''); ',
'mnth := to_char(eng_date,''MON''); ',
' ',
'case mnth ',
unistr('    when ''JAN'' then eng_text := replace(eng_text,mnth,''\099C\09BE\09A8\09C1''); '),
unistr('         when ''FEB'' then eng_text := replace(eng_text,mnth,''\09AB\09C7\09AC\09CD\09B0\09C1''); '),
unistr('         when ''MAR'' then eng_text := replace(eng_text,mnth,''\09AE\09BE\09B0\09CD\099A''); '),
unistr('         when ''APR'' then eng_text := replace(eng_text,mnth,''\098F\09AA\09CD\09B0\09BF\09B2''); '),
unistr('         when ''MAY'' then eng_text := replace(eng_text,mnth,''\09AE\09C7''); '),
unistr('         when ''JUN'' then eng_text := replace(eng_text,mnth,''\099C\09C1\09A8''); '),
unistr('         when ''JUL'' then eng_text := replace(eng_text,mnth,''\099C\09C1\09B2\09BE\0987''); '),
unistr('         when ''AUG'' then eng_text := replace(eng_text,mnth,''\0986\0997\09B7\09CD\099F''); '),
unistr('         when ''SEP'' then eng_text := replace(eng_text,mnth,''\09B8\09C7\09AA\09CD\099F\09C7''); '),
unistr('         when ''OCT'' then eng_text := replace(eng_text,mnth,''\0985\0995\09CD\099F\09C7''); '),
unistr('         when ''NOV'' then eng_text := replace(eng_text,mnth,''\09A8\09AD\09C7''); '),
unistr('         when ''DEC'' then eng_text := replace(eng_text,mnth,''\09A1\09BF\09B8\09C7''); '),
'   end case; ',
'     ',
'   /* ',
unistr('    when ''JAN'' then eng_text := replace(eng_text,mnth,''\099C\09BE\09A8\09C1\09DF\09BE\09B0\09C0''); '),
unistr('         when ''FEB'' then eng_text := replace(eng_text,mnth,''\09AB\09C7\09AC\09CD\09B0\09C1\09DF\09BE\09B0\09C0''); '),
unistr('         when ''MAR'' then eng_text := replace(eng_text,mnth,''\09AE\09BE\09B0\09CD\099A''); '),
unistr('         when ''APR'' then eng_text := replace(eng_text,mnth,''\098F\09AA\09CD\09B0\09BF\09B2''); '),
unistr('         when ''MAY'' then eng_text := replace(eng_text,mnth,''\09AE\09C7''); '),
unistr('         when ''JUN'' then eng_text := replace(eng_text,mnth,''\099C\09C1\09A8''); '),
unistr('         when ''JUL'' then eng_text := replace(eng_text,mnth,''\099C\09C1\09B2\09BE\0987''); '),
unistr('         when ''AUG'' then eng_text := replace(eng_text,mnth,''\0986\0997\09B7\09CD\099F''); '),
unistr('         when ''SEP'' then eng_text := replace(eng_text,mnth,''\09B8\09C7\09AA\09CD\099F\09C7\09AE\09CD\09AC\09B0''); '),
unistr('         when ''OCT'' then eng_text := replace(eng_text,mnth,''\0985\0995\09CD\099F\09C7\09AC\09B0''); '),
unistr('         when ''NOV'' then eng_text := replace(eng_text,mnth,''\09A8\09AD\09C7\09AE\09CD\09AC\09B0''); '),
unistr('         when ''DEC'' then eng_text := replace(eng_text,mnth,''\09A1\09BF\09B8\09C7\09AE\09CD\09AC\09B0''); '),
'   end case; ',
'   */ ',
'     ',
'eng_text_len := length(eng_text); ',
' ',
'for i in 1..eng_text_len ',
'loop ',
'    temp_char := substr(eng_text,i,1); ',
'     ',
'    case temp_char ',
'         when ''-'' then bn_text := concat(bn_text,''-''); ',
'         when ''/'' then bn_text := concat(bn_text,''/''); ',
unistr('         when ''0'' then bn_text := concat(bn_text,''\09E6''); '),
unistr('when ''1'' then bn_text := concat(bn_text,''\09E7''); '),
unistr('when ''2'' then bn_text := concat(bn_text,''\09E8''); '),
unistr('when ''3'' then bn_text := concat(bn_text,''\09E9''); '),
unistr('when ''4'' then bn_text := concat(bn_text,''\09EA''); '),
unistr('when ''5'' then bn_text := concat(bn_text,''\09EB''); '),
unistr('when ''6'' then bn_text := concat(bn_text,''\09EC''); '),
unistr('when ''7'' then bn_text := concat(bn_text,''\09ED''); '),
unistr('when ''8'' then bn_text := concat(bn_text,''\09EE''); '),
unistr('when ''9'' then bn_text := concat(bn_text,''\09EF''); '),
'         else bn_text := concat(bn_text,temp_char); ',
'   end case; ',
'   ',
'end loop; ',
'return bn_text; ',
'EXCEPTION ',
'  WHEN OTHERS THEN ',
'    RETURN ''''; ',
'end; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "F$IS_USER_ALLOWED_TO_PAGE_YN" (',
'   p_user VARCHAR2,',
'   p_page_id INTEGER',
') RETURN VARCHAR2   -- returns ''Y'' if access is granted, ''N'' otherwise;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "FILE_TO_BLOB" (p_dir       IN  VARCHAR2,',
'                                         p_filename  IN  VARCHAR2)',
'  RETURN BLOB',
'AS',
'  l_bfile  BFILE;',
'  l_blob   BLOB;',
'',
'  l_dest_offset INTEGER := 1;',
'  l_src_offset  INTEGER := 1;',
'BEGIN',
'  l_bfile := BFILENAME(p_dir, p_filename);',
'  DBMS_LOB.fileopen(l_bfile, DBMS_LOB.file_readonly);',
'  DBMS_LOB.createtemporary(l_blob, FALSE);',
'  IF DBMS_LOB.getlength(l_bfile) > 0 THEN',
'    DBMS_LOB.loadblobfromfile (',
'      dest_lob    => l_blob,',
'      src_bfile   => l_bfile,',
'      amount      => DBMS_LOB.lobmaxsize,',
'      dest_offset => l_dest_offset,',
'      src_offset  => l_src_offset);',
'  END IF;',
'  DBMS_LOB.fileclose(l_bfile);',
'  RETURN l_blob;',
'END file_to_blob;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "FN_GEN_INSERTS" ',
'( ',
'  p_sql                        clob,  ',
'  p_new_table_name             varchar2, ',
'  p_new_owner_name             varchar2 default null ',
') ',
'return clob ',
'is ',
'  l_cur                        number; ',
'  NL                           varchar2(2) := chr(13)||chr(10); ',
'  l_sql                        clob := p_sql; ',
'  l_ret                        number; ',
'  l_col_cnt                    number; ',
'  l_rec_tab                    dbms_sql.desc_tab; ',
' ',
'  l_separator                  char(1) := ''!''; ',
'  l_clob                       clob; ',
'  l_clob_line                  clob; ',
'  l_clob_ins                   clob; ',
'  l_clob_all                   clob; ',
'  l_line                       clob := ''-----------------------------------''; ',
' ',
'  cons_date_frm                varchar2(32) := ''DD.MM.YYYY HH24:MI:SS''; ',
'  cons_timestamp_frm           varchar2(32) := ''DD.MM.YYYY HH24:MI:SSXFF''; ',
'  cons_timestamp_wtz_frm       varchar2(32) := ''DD.MM.YYYY HH24:MI:SSXFF TZR''; ',
' ',
'  cons_varchar2_code           number := 1; ',
'  cons_nvarchar2_code          number := 1; ',
'  cons_number_code             number := 2; ',
'  cons_float_code              number := 2; ',
'  cons_long_code               number := 8; ',
'  cons_date_code               number := 12; ',
'  cons_binary_float_code       number := 100; ',
'  cons_binary_double_code      number := 101; ',
'  cons_timestamp_code          number := 180; ',
'  cons_timestamp_wtz_code      number := 181; ',
'  cons_timestamp_lwtz_code     number := 231; ',
'  cons_interval_ytm_code       number := 182; ',
'  cons_interval_dts_code       number := 183; ',
'  cons_raw_code                number := 23; ',
'  cons_long_raw_code           number := 24; ',
'  cons_rowid_code              number := 11; ',
'  cons_urowid_code             number := 208; ',
'  cons_char_code               number := 96; ',
'  cons_nchar_code              number := 96; ',
'  cons_clob_code               number := 112; ',
'  cons_nclob_code              number := 112; ',
'  cons_blob_code               number := 113; ',
'  cons_bfile_code              number := 114; ',
' ',
'  ------------------------------------- ',
'  -- Supported types ',
'  ------------------------------------- ',
'  l_varchar2_col                varchar2(32767); --1 ',
'  l_number_col                  number;          --2 ',
'  --l_long_col                    long;          --8 - not supported ',
'  l_date_col                    date;            --12 ',
'  --l_raw_col                     raw(2000);     --23 - not supported ',
'  l_rowid_col                   rowid;           --69 ',
'  l_char_col                    char(2000);      --96 ',
'  l_binary_float_col            binary_float;    --100 ',
'  l_binary_double_col           binary_double;   --101 ',
'  l_clob_col                    clob;            --112 ',
'  l_timestamp_col               timestamp(9);    --180 ',
'  l_timestamp_wtz_col           timestamp(9) with time zone;    --181 ',
'  l_interval_ytm_col            interval year(9) to month;      --182 ',
'  l_interval_dts_col            interval day(9) to second(2);   --183 ',
'  l_urowid_col                  urowid;                         --208 ',
'  l_timestamp_wltz_col          timestamp with local time zone; --231 ',
'  --l_nchar_col                   nchar(2000); --96 the same as char ',
'  --l_nclob_col                   nclob; --112 the same as clob ',
'  --l_blob_col - not supported ',
'  --l_bfile_col - not supported ',
'  --l_long_raw_col - not supported ',
' ',
'  procedure print_rec(rec in dbms_sql.desc_rec) is ',
'  begin ',
'    l_clob_all := l_clob_all||NL|| ',
'      ''col_type            =    '' || rec.col_type||NL|| ',
'      ''col_maxlen          =    '' || rec.col_max_len||NL|| ',
'      ''col_name            =    '' || rec.col_name||NL|| ',
'      ''col_name_len        =    '' || rec.col_name_len||NL|| ',
'      ''col_schema_name     =    '' || rec.col_schema_name||NL|| ',
'      ''col_schema_name_len =    '' || rec.col_schema_name_len||NL|| ',
'      ''col_precision       =    '' || rec.col_precision||NL|| ',
'      ''col_scale           =    '' || rec.col_scale||NL|| ',
'      ''col_null_ok         =    ''; ',
' ',
'    if (rec.col_null_ok) then ',
'      l_clob_all := l_clob_all||''true''||NL; ',
'    else ',
'      l_clob_all := l_clob_all||''false''||NL; ',
'    end if; ',
'  end;   ',
'begin ',
'  --------------------------------------- ',
'  -- INSERT - header generation ',
'  --------------------------------------- ',
'  l_clob_all :=  ',
'  ''set define off''||NL|| ',
'  ''declare''||NL|| ',
'  ''  type   t_clob is table of clob index by binary_integer;''||NL|| ',
'  ''  l_clob t_clob;''||NL|| ',
'  ''  type   t_varchar2 is table of varchar2(64) index by binary_integer;''||NL|| ',
'  ''  l_varchar2 t_varchar2;''||NL|| ',
'  ''begin''||NL; ',
' ',
' ',
'  --------------------------------------- ',
'  -- Introduction ',
'  --------------------------------------- ',
'  -- l_clob_all := l_clob_all||l_line||NL||''Parsing query:''||NL||l_sql||NL; ',
' ',
'  --------------------------------------- ',
'  -- Open parse cursor ',
'  --------------------------------------- ',
'  l_cur := dbms_sql.open_cursor; ',
'  dbms_sql.parse(l_cur, l_sql, dbms_sql.native); ',
' ',
'  --------------------------------------- ',
'  -- Describe columns ',
'  --------------------------------------- ',
'   ',
'  dbms_sql.describe_columns(l_cur, l_col_cnt, l_rec_tab); ',
' ',
'  /* ',
'   ',
'  l_clob_all := l_clob_all||l_line||NL||''Describe columns:''||NL; ',
'   ',
'  for i in 1..l_rec_tab.count ',
'  loop ',
'    print_rec(l_rec_tab(i)); ',
'  end loop; ',
'   ',
'  */ ',
'  l_clob_all := l_clob_all||NL|| ',
'            ''  null;''||NL|| ',
'            ''  -- start generation of records''||NL|| ',
'            ''  ''||l_line||NL; ',
' ',
'  --------------------------------------- ',
'  -- Define columns ',
'  --------------------------------------- ',
'  for i in 1..l_rec_tab.count ',
'  loop ',
'    if    l_rec_tab(i).col_type = cons_varchar2_code then --varchar2 ',
'      dbms_sql.define_column(l_cur, i, l_varchar2_col, l_rec_tab(i).col_max_len);  ',
'    elsif l_rec_tab(i).col_type = cons_number_code then --number ',
'      dbms_sql.define_column(l_cur, i, l_number_col);  ',
'    --elsif l_rec_tab(i).col_type = cons_long_code then --long ',
'    --  dbms_sql.define_column_long(l_cur, i);  ',
'    elsif l_rec_tab(i).col_type = cons_date_code then --date ',
'      dbms_sql.define_column(l_cur, i, l_date_col);  ',
'    elsif l_rec_tab(i).col_type = cons_binary_float_code then --binary_float ',
'      dbms_sql.define_column(l_cur, i, l_binary_float_col);  ',
'    elsif l_rec_tab(i).col_type = cons_binary_double_code then --binary_double ',
'      dbms_sql.define_column(l_cur, i, l_binary_double_col);  ',
'--    elsif l_rec_tab(i).col_type = cons_raw_code then --raw ',
'--      dbms_sql.define_column_raw(l_cur, i, l_raw_col, l_rec_tab(i).col_max_len);  ',
'    elsif l_rec_tab(i).col_type = cons_rowid_code then  --rowid ',
'      dbms_sql.define_column_rowid(l_cur, i, l_rowid_col);  ',
'    elsif l_rec_tab(i).col_type = cons_char_code then  --char ',
'      dbms_sql.define_column_char(l_cur, i, l_char_col, l_rec_tab(i).col_max_len);  ',
'    elsif l_rec_tab(i).col_type = cons_clob_code then --clob ',
'      dbms_sql.define_column(l_cur, i, l_clob_col);  ',
'    elsif l_rec_tab(i).col_type = cons_timestamp_code then --timestamp ',
'      dbms_sql.define_column(l_cur, i, l_timestamp_col);  ',
'    elsif l_rec_tab(i).col_type = cons_timestamp_wtz_code then --timestamp with time zone ',
'      dbms_sql.define_column(l_cur, i, l_timestamp_wtz_col);  ',
'    elsif l_rec_tab(i).col_type = cons_rowid_code then --urowid ',
'      dbms_sql.define_column(l_cur, i, l_urowid_col);  ',
'    elsif l_rec_tab(i).col_type = cons_timestamp_lwtz_code then --timestamp with local time zone ',
'      dbms_sql.define_column(l_cur, i, l_timestamp_wltz_col);  ',
'    elsif l_rec_tab(i).col_type = cons_interval_ytm_code then --interval year to month ',
'      dbms_sql.define_column(l_cur, i, l_interval_ytm_col);  ',
'    elsif l_rec_tab(i).col_type = cons_interval_dts_code then --interval day to second ',
'      dbms_sql.define_column(l_cur, i, l_interval_dts_col);  ',
'    elsif l_rec_tab(i).col_type = cons_urowid_code then --urowid ',
'      dbms_sql.define_column(l_cur, i, l_urowid_col);  ',
'    else ',
'      raise_application_error(-20001, ''Column: ''||l_rec_tab(i).col_name||NL|| ',
'                                      ''Type not supported: ''||l_rec_tab(i).col_type); ',
'      --not supported ',
'    end if; ',
'  end loop; ',
' ',
'  --------------------------------------- ',
'  -- Execute cursor ',
'  --------------------------------------- ',
'  l_ret := dbms_sql.execute(l_cur); ',
' ',
'  --------------------------------------- ',
'  -- Fetch rows ',
'  --------------------------------------- ',
'  loop ',
'    l_ret := dbms_sql.fetch_rows(l_cur); ',
'    exit when l_ret = 0; ',
' ',
'    --------------------------------------- ',
'    -- Building INSERT - build column declarations ',
'    --------------------------------------- ',
'    l_clob_line := ''''; ',
' ',
'    for i in 1..l_rec_tab.count ',
'    loop ',
'      if    l_rec_tab(i).col_type = cons_varchar2_code then --varchar2 ',
'        dbms_sql.column_value(l_cur, i, l_varchar2_col);  ',
'        l_clob := l_varchar2_col; ',
'      elsif l_rec_tab(i).col_type = cons_number_code then --number ',
'        dbms_sql.column_value(l_cur, i, l_number_col);  ',
'        l_clob := to_char(l_number_col); ',
'--      elsif l_rec_tab(i).col_type = cons_long_code then --long ',
'--        dbms_sql.column_value(l_cur, i, l_long_col);  ',
'--        l_clob := l_long_col; ',
'      elsif l_rec_tab(i).col_type = cons_date_code then --date ',
'        dbms_sql.column_value(l_cur, i, l_date_col);  ',
'        l_clob := to_char(l_date_col, cons_date_frm); ',
'      elsif l_rec_tab(i).col_type = cons_binary_float_code then --binary_float ',
'        dbms_sql.column_value(l_cur, i, l_binary_float_col);  ',
'        l_clob := to_char(l_binary_float_col); ',
'      elsif l_rec_tab(i).col_type = cons_binary_double_code then --binary_double ',
'        dbms_sql.column_value(l_cur, i, l_binary_double_col);  ',
'        l_clob := to_char(l_binary_double_col); ',
'--      elsif l_rec_tab(i).col_type = cons_raw_code then --raw ',
'--        dbms_sql.column_value(l_cur, i, l_raw_col);  ',
'--        l_clob := to_char(l_raw_col); ',
'      elsif l_rec_tab(i).col_type = cons_rowid_code then --rowid ',
'        dbms_sql.column_value(l_cur, i, l_rowid_col);  ',
'        l_clob := to_char(l_rowid_col); ',
'      elsif l_rec_tab(i).col_type = cons_char_code then --char ',
'        dbms_sql.column_value_char(l_cur, i, l_char_col);  ',
'        l_clob := substr(l_char_col, 1, l_rec_tab(i).col_max_len - 1); ',
'      elsif l_rec_tab(i).col_type = cons_clob_code then --clob ',
'        dbms_sql.column_value(l_cur, i, l_clob_col);  ',
'        l_clob := l_clob_col; ',
'      elsif l_rec_tab(i).col_type = cons_timestamp_code then --timestamp ',
'        dbms_sql.column_value(l_cur, i, l_timestamp_col);  ',
'        l_clob := to_char(l_timestamp_col, cons_timestamp_frm); ',
'      elsif l_rec_tab(i).col_type = cons_timestamp_wtz_code then --timestamp with time zone ',
'        dbms_sql.column_value(l_cur, i, l_timestamp_wtz_col);  ',
'        l_clob := to_char(l_timestamp_wtz_col, cons_timestamp_wtz_frm); ',
'      elsif l_rec_tab(i).col_type = cons_interval_ytm_code then --interval year to month ',
'        dbms_sql.column_value(l_cur, i, l_interval_ytm_col);  ',
'        l_clob := to_char(l_interval_ytm_col); ',
'      elsif l_rec_tab(i).col_type = cons_interval_dts_code then --interval day to second ',
'        dbms_sql.column_value(l_cur, i, l_interval_dts_col);  ',
'        l_clob := to_char(l_interval_dts_col); ',
'      elsif l_rec_tab(i).col_type = cons_urowid_code then --urowid ',
'        dbms_sql.column_value(l_cur, i, l_urowid_col);  ',
'        l_clob := to_char(l_urowid_col); ',
'      elsif l_rec_tab(i).col_type = cons_timestamp_lwtz_code then --timestamp with local time zone ',
'        dbms_sql.column_value(l_cur, i, l_timestamp_wltz_col);  ',
'        l_clob := to_char(l_timestamp_wltz_col, cons_timestamp_wtz_frm); ',
'      end if; ',
' ',
'      if l_rec_tab(i).col_type in (cons_clob_code, cons_char_code, cons_varchar2_code) then ',
'        l_clob_line := l_clob_line||''  l_clob(''||to_char(i)||'') :=q''''''||l_separator||l_clob||l_separator||'''''';''||NL; ',
'      else ',
'        l_clob_line := l_clob_line||''  l_varchar2(''||to_char(i)||'') :=q''''''||l_separator||l_clob||l_separator||'''''';''||NL; ',
'      end if; ',
'    end loop; ',
' ',
'    l_clob_all := l_clob_all||NL||l_clob_line; ',
' ',
'    --------------------------------------- ',
'    -- Building INSERT - build column list ',
'    --------------------------------------- ',
'    if p_new_owner_name is null then ',
'        l_clob_all := l_clob_all||chr(13)||NL|| ',
'              ''  insert into ''||p_new_table_name||NL|| ',
'              ''  (''||NL; ',
'    else ',
'        l_clob_all := l_clob_all||chr(13)||NL|| ',
'              ''  insert into ''||p_new_owner_name||''.''||p_new_table_name||NL|| ',
'              ''  (''||NL; ',
'    end if; ',
' ',
' ',
'    for i in 1..l_rec_tab.count ',
'    loop ',
'      if i = 1 then ',
'        l_clob_all := l_clob_all||''     ''||''"''||l_rec_tab(i).col_name||''"''||NL; ',
'      else   ',
'        l_clob_all := l_clob_all||''    ,''||''"''||l_rec_tab(i).col_name||''"''||NL; ',
'      end if;   ',
'    end loop;     ',
' ',
'    l_clob_all := l_clob_all|| ',
'              ''  )''||NL|| ',
'              ''  values''||NL|| ',
'              ''  (''||NL; ',
' ',
'    --------------------------------------- ',
'    -- Building INSERT - build values ',
'    --------------------------------------- ',
'    for i in 1..l_rec_tab.count ',
'    loop ',
'      if i!=1 then ',
'        l_clob_all := l_clob_all||''    ,''; ',
'      else   ',
'        l_clob_all := l_clob_all||''     ''; ',
'      end if; ',
' ',
'      if l_rec_tab(i).col_type = cons_number_code then --number ',
'        l_clob_all := l_clob_all||''to_number(l_varchar2(''||to_char(i)||''))''||NL; ',
'--      elsif l_rec_tab(i).col_type = cons_long_code then --long ',
'--        l_clob := l_long_col; ',
'      elsif l_rec_tab(i).col_type = cons_clob_code then --clob ',
'        l_clob_all := l_clob_all||''l_clob(''||to_char(i)||'')''||NL; ',
'      elsif l_rec_tab(i).col_type = cons_char_code then --timestamp with local time zone ',
'        l_clob_all := l_clob_all||''to_char(l_clob(''||to_char(i)||''))''||NL; ',
'      elsif l_rec_tab(i).col_type = cons_varchar2_code then --timestamp with local time zone ',
'        l_clob_all := l_clob_all||''to_char(l_clob(''||to_char(i)||''))''||NL; ',
'      elsif l_rec_tab(i).col_type = cons_date_code then --date ',
'        l_clob_all := l_clob_all||''to_date(l_varchar2(''||to_char(i)||''),''''''||cons_date_frm||'''''')''||NL; ',
'      elsif l_rec_tab(i).col_type = cons_timestamp_code then --timestamp ',
'        l_clob_all := l_clob_all||''to_timestamp(l_varchar2(''||to_char(i)||''),''''''||cons_timestamp_frm||'''''')''||NL; ',
'      elsif l_rec_tab(i).col_type = cons_timestamp_wtz_code then --timestamp with time zone ',
'        l_clob_all := l_clob_all||''to_timestamp_tz(l_varchar2(''||to_char(i)||''),''''''||cons_timestamp_wtz_frm||'''''')''||NL; ',
'      elsif l_rec_tab(i).col_type = cons_interval_ytm_code then --interval year to month ',
'        l_clob_all := l_clob_all||''to_yminterval(l_varchar2(''||to_char(i)||''))''||NL; ',
'      elsif l_rec_tab(i).col_type = cons_interval_dts_code then --interval day to second ',
'        l_clob_all := l_clob_all||''to_dsinterval(l_varchar2(''||to_char(i)||''))''||NL; ',
'      elsif l_rec_tab(i).col_type = cons_timestamp_lwtz_code then --timestamp with local time zone ',
'        l_clob_all := l_clob_all||''to_timestamp_tz(l_varchar2(''||to_char(i)||''),''''''||cons_timestamp_wtz_frm||'''''')''||NL; ',
'      else   ',
'        l_clob_all := l_clob_all||''l_varchar2(''||to_char(i)||'')''||NL; ',
'      end if;   ',
'    end loop;  ',
' ',
'    l_clob_all := l_clob_all||''  );''||NL; ',
'  end loop; ',
' ',
'  --------------------------------------- ',
'  -- Building INSERT - end of code ',
'  --------------------------------------- ',
'  l_clob_all := l_clob_all||NL; ',
'  l_clob_all := l_clob_all||''end;''||NL; ',
' -- l_clob_all := l_clob_all||''x''; ',
'   ',
'  --------------------------------------- ',
'  -- Close cursor ',
'  --------------------------------------- ',
'  dbms_sql.close_cursor(l_cur); ',
' ',
'  l_clob_all := l_clob_all||''/''||NL; ',
'  return trim(l_clob_all); ',
'end; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_BANGLA_MONTH" (mm number ) RETURN NVARCHAR2 IS ',
'bn_text nvarchar2(200) ; ',
'begin ',
'case mm ',
unistr('    when 1 then bn_text := ''\099C\09BE\09A8\09C1\09DF\09BE\09B0\09C0''; '),
unistr('         when 2 then bn_text := ''\09AB\09C7\09AC\09CD\09B0\09C1\09DF\09BE\09B0\09C0''; '),
unistr('         when 3 then bn_text := ''\09AE\09BE\09B0\09CD\099A''; '),
unistr('         when 4 then bn_text := ''\098F\09AA\09CD\09B0\09BF\09B2''; '),
unistr('         when 5 then bn_text := ''\09AE\09C7''; '),
unistr('         when 6 then bn_text := ''\099C\09C1\09A8''; '),
unistr('         when 7 then bn_text := ''\099C\09C1\09B2\09BE\0987''; '),
unistr('         when 8 then bn_text := ''\0986\0997\09B7\09CD\099F''; '),
unistr('         when 9 then bn_text := ''\09B8\09C7\09AA\09CD\099F\09C7\09AE\09CD\09AC\09B0''; '),
unistr('         when 10 then bn_text := ''\0985\0995\09CD\099F\09C7\09AC\09B0''; '),
unistr('         when 11 then bn_text := ''\09A8\09AD\09C7\09AE\09CD\09AC\09B0''; '),
unistr('         when 12 then bn_text := ''\09A1\09BF\09B8\09C7\09AE\09CD\09AC\09B0''; '),
'else ',
'         bn_text := ''''; ',
'    end case; ',
'   ',
'RETURN bn_text; ',
'END; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_BANGLA_MONTH_SMALL" (mm number ) RETURN NVARCHAR2 IS ',
'bn_text nvarchar2(200) ; ',
'begin ',
'case mm ',
unistr('    when 1 then bn_text := ''\099C\09BE\09A8\09C1''; '),
unistr('         when 2 then bn_text := ''\09AB\09C7\09AC\09CD\09B0\09C1''; '),
unistr('         when 3 then bn_text := ''\09AE\09BE\09B0\09CD\099A''; '),
unistr('         when 4 then bn_text := ''\098F\09AA\09CD\09B0\09BF\09B2''; '),
unistr('         when 5 then bn_text := ''\09AE\09C7''; '),
unistr('         when 6 then bn_text := ''\099C\09C1\09A8''; '),
unistr('         when 7 then bn_text := ''\099C\09C1\09B2\09BE\0987''; '),
unistr('         when 8 then bn_text := ''\0986\0997\09B7\09CD\099F''; '),
unistr('         when 9 then bn_text := ''\09B8\09C7\09AA\09CD\099F\09C7''; '),
unistr('         when 10 then bn_text := ''\0985\0995\09CD\099F\09C7''; '),
unistr('         when 11 then bn_text := ''\09A8\09AD\09C7''; '),
unistr('         when 12 then bn_text := ''\09A1\09BF\09B8\09C7''; '),
'end case; ',
'   ',
'RETURN bn_text; ',
'END; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_CORRENT_STOCK" (CORRENT_STOCK INTEGER) RETURN number IS ',
'tmpVar number; ',
'BEGIN ',
'   tmpVar := ''''; ',
'   select ''(select sum (a.QTY)''-''(select sum (b.QTY)'' into tmpVar ',
'   from PURCHASE_DETALIS a, SALES_DTLS b ',
' where a.PRODUCT_ID = CORRENT_STOCK and rownum <=1; ',
'  ',
'  ',
'   RETURN tmpVar; ',
'   ',
'END; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_CURRENT_USER_ID" return number ',
'is ',
'v_user_oid number; ',
'begin ',
'select USER_ID into v_user_oid from MY_USERS  ',
'WHERE UPPER (USERNAME) = upper(V(''USER'')); ',
' ',
'return v_user_oid ; ',
'exception when others then ',
'return 0; ',
'end; ',
' ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_DML" ( p_schema IN VARCHAR2, p_table IN VARCHAR2) RETURN CLOB AUTHID CURRENT_USER AS',
'  handle NUMBER;',
'  tr_handle NUMBER;',
'  ret CLOB;',
'BEGIN',
'  handle := DBMS_METADATA.OPEN(''TABLE_DATA'');',
'  DBMS_METADATA.SET_FILTER(handle, ''SCHEMA'', p_schema);',
'  DBMS_METADATA.SET_FILTER(handle, ''NAME'', p_table);',
'  tr_handle := dbms_metadata.ADD_TRANSFORM(handle, ''DDL'');',
'  ret := dbms_metadata.FETCH_CLOB(handle);',
'  dbms_metadata.CLOSE(handle);',
'  RETURN ret;',
'END GET_DML;',
'select GET_DML(''MENUS'') from dual',
'select CONV_BANGLA_ENGLISH(22) from dual;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_EMAIL_ADDRESS" (USERNAME INTEGER, PHONE_NUMBER INTEGER, EMAIL_ADDRESS VARCHAR2) RETURN INTEGER IS',
'tmpVar NUMBER;',
'BEGIN',
'   tmpVar := null;',
'   ',
'select EMAIL_ADDRESS into tmpVar',
'from MY_USERS',
'where USERNAME = USERNAME',
'and PHONE_NUMBER = PHONE_NUMBER',
'and EMAIL_ADDRESS = EMAIL_ADDRESS;',
'   ',
'   return tmpVar ;',
'END GET_EMAIL_ADDRESS;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_IMAGE_URL" (P_POST_OID INTEGER)',
'    RETURN CLOB',
'IS',
'    V_RET   CLOB;',
'BEGIN',
'    IF P_POST_OID IS NULL',
'    THEN',
'        RETURN '''';',
'    END IF;',
'',
'    FOR X',
'        IN (SELECT    ''<xmp><div class="separator" style="clear: both;">',
'               <a href=" ''',
'                   || IMAGE_URL',
'                   || ''" ',
'                    style="display: block; padding: 1em 0; text-align: center; ">',
'                <img alt=" ''',
'                   || IMAGE_TITLE',
'                   || ''" border="2" class="post-img" ',
'                src=" ''',
'                   || IMAGE_URL',
'                   || '' "',
'                    title=" ''',
'                   || IMAGE_TITLE',
'                   || ''" />  </a></div></xmp>''    IMAGE_URL',
'              FROM BLOG_POST_IMAGE',
'             WHERE POST_OID = P_POST_OID)',
'    LOOP',
'        V_RET := V_RET || X.IMAGE_URL || '''';',
'    END LOOP;',
'',
'    RETURN V_RET;',
'END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_IN_QTY2" (IN_QTY2 INTEGER)  ',
'RETURN NUMBER ',
'IS ',
'    l_total_in_qty NUMBER := 0; ',
'BEGIN  ',
'    -- get total sales ',
'select SUM(QTY) into l_total_in_qty ',
'  from PURCHASE_DETALIS  ',
'  where SUBMIT = 1 and PRODUCT_ID = IN_QTY2-- and rownum <=1 ',
'   GROUP BY (PRODUCT_ID, PROOUCT_SIZE, ITEM_NAME); ',
'     ',
'    -- return the total sales ',
'    RETURN l_total_in_qty; ',
'END; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_LINK_URL" (P_POST_OID INTEGER)',
'    RETURN CLOB',
'IS',
'    V_RET   CLOB;',
'BEGIN',
'    IF P_POST_OID IS NULL',
'    THEN',
'        RETURN '''';',
'    END IF;',
'    FOR X',
unistr('        IN (SELECT    ''<xmp><p style="font-family:Times New Roman,color:black;font-size:18px" ><span ><strong>\D83D\DD17 '' || LINK_URL_TITLE || ''-</strong></span>'),
'		<br><span >&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; URL- </span><a href=" ''|| LINK_URL || ''"rel="nofollow" target="_blank"><span ><s'))
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_shared.append_to_install_script(
 p_id=>wwv_flow_imp.id(34855710406855915282)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'strong> '' || BUTTON_NAME || ''</strong></span></a>',
'		</span><br>&nbsp;</p></xmp>''    LINK_URL_TEX',
'              FROM BLOG_POST_LINK_BUILDER',
'             WHERE POST_OID = P_POST_OID)',
'    LOOP',
'        V_RET := V_RET || X.LINK_URL_TEX || '''';',
'    END LOOP;',
'    RETURN V_RET;',
'END;',
'',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_META_DESCRIPTION" (P_POST_OID INTEGER)',
'    RETURN CLOB',
'IS',
'    V_RET   CLOB;',
'BEGIN',
'    IF P_POST_OID IS NULL',
'    THEN',
'        RETURN '''';',
'    END IF;',
'    FOR X',
'        IN (SELECT    ''<xmp>',
unistr('                 <meta     name=\201Ddescription\201D content=\201D'''),
'                   || META_DESCRIPTION',
unistr('                   || ''\201D>'),
'                </xmp>''    META_DESCRIPTION',
'              FROM BLOG_POST_TITLE',
'             WHERE POST_OID = P_POST_OID)',
'    LOOP',
'        V_RET := V_RET || X.META_DESCRIPTION || '''';',
'    END LOOP;',
'    RETURN V_RET;',
'END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_OUT_QTY" (OUT_QTY INTEGER) RETURN number IS ',
'tmpVar number; ',
'BEGIN ',
'   tmpVar := ''''; ',
'   select (select sum(a.QTY) from SALES_DTLS a where a.ITEM_NAME=b.ITEM_NAME and a.PROOUCT_SIZE = b.PROOUCT_SIZE and b.SUBMIT = 1) into tmpVar ',
'  from SALES_DTLS a, PURCHASE_DETALIS b ',
' where a.PRODUCT_ID = OUT_QTY  ',
' and a.SUBMIT = 1 and rownum <=1; ',
'-- GROUP BY (a.PRODUCT_ID, a.PROOUCT_SIZE, a.ITEM_NAME); ',
'  ',
'   RETURN tmpVar; ',
'   ',
'END; ',
' ',
'--(select sum(b.QTY) from SALES_DTLS b where a.ITEM_NAME=b.ITEM_NAME and a.PROOUCT_SIZE = b.PROOUCT_SIZE and b.SUBMIT = 1) Out_Qty, ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_OUT_QTY2" (OUT_QTY2 INTEGER)  ',
'RETURN NUMBER ',
'IS ',
'    l_total_out_qty NUMBER := 0; ',
'BEGIN  ',
'    -- get total sales ',
'     ',
'select SUM(QTY) into l_total_out_qty ',
'  from SALES_DTLS  ',
'  where SUBMIT = 1 and  ',
'  (select a.PRODUCT_ID from PURCHASE_DETALIS a where a.PRODUCT_ID=PRODUCT_ID) =  OUT_QTY2-- and rownum <=1 ',
'  GROUP BY (PROOUCT_SIZE, PRODUCT_ID, ITEM_NAME); ',
'   ',
'    -- return the total sales ',
'    RETURN l_total_out_qty; ',
'END; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_PARAGRAPH" (P_POST_OID INTEGER)',
'    RETURN CLOB',
'IS',
'    V_RET   CLOB;',
'BEGIN',
'    IF P_POST_OID IS NULL',
'    THEN',
'        RETURN '''';',
'    END IF;',
'    FOR X',
'        IN (SELECT    ''<xmp>',
'                 <p>  <span style="font-size:18px">    <span > ''',
'                   || PARAGRAPH',
'                   || '' </span>  </span></p>',
'                </xmp>''    PARAGRAPH',
'              FROM BLOG_POST_PARAGRAPH',
'             WHERE POST_OID = P_POST_OID)',
'    LOOP',
'        V_RET := V_RET || X.PARAGRAPH || '''';',
'    END LOOP;',
'    RETURN V_RET;',
'END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_PERSON_AGE" (personOid INTEGER, uptoDate date) RETURN INTEGER IS ',
'tmpVar NUMBER; ',
'BEGIN ',
'   tmpVar := ''''; ',
'select (uptoDate-dob)/365 ',
'    into tmpVar   ',
'    from ( select * from dob ',
'    where PERSON_OID = personOid ',
'    nd DOB_MAJO = 1 ',
'    order by oid desc ',
'    ) where  rownum =1 ; ',
'   ',
'IF tmpVar IS NULL THEN ',
'   tmpVar := ''''; ',
'END IF; ',
'return  tmpVar ; ',
'exception when others then ',
'    return ''''; ',
'END ; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_POST_DESCRIPTION" (P_POST_OID INTEGER)',
'    RETURN CLOB',
'IS',
'    V_RET   CLOB;',
'BEGIN',
'    IF P_POST_OID IS NULL',
'    THEN',
'        RETURN '''';',
'    END IF;',
'    FOR X',
'        IN (SELECT    ''<xmp>',
'                 <div>&nbsp;</div><p><span style="font-size:18px"><span >''',
'                   || POST_DESCRIPTION',
'                   || '' </span></span></p>',
'                </xmp>''    POST_DESCRIPTION',
'              FROM BLOG_POST',
'             WHERE POST_OID = P_POST_OID)',
'    LOOP',
'        V_RET := V_RET || X.POST_DESCRIPTION || '''';',
'    END LOOP;',
'    RETURN V_RET;',
'END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_POST_NAME" (P_POST_OID INTEGER)',
'    RETURN CLOB',
'IS',
'    V_RET   CLOB;',
'BEGIN',
'    IF P_POST_OID IS NULL',
'    THEN',
'        RETURN '''';',
'    END IF;',
'    FOR X',
'        IN (SELECT    ''<xmp>',
'                 <p style="text-align:center"> <span > <strong><span style="font-size:22px"><h2>''',
'                   || POST_NAME',
'                   || ''</h2></span></strong></span></p>',
'                </xmp>''    POST_NAME',
'              FROM BLOG_POST',
'             WHERE POST_OID = P_POST_OID)',
'    LOOP',
'        V_RET := V_RET || X.POST_NAME || '''';',
'    END LOOP;',
'    RETURN V_RET;',
'END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_POST_TITLE" (P_POST_OID INTEGER)',
'    RETURN CLOB',
'IS',
'    V_RET   CLOB;',
'BEGIN',
'    IF P_POST_OID IS NULL',
'    THEN',
'        RETURN '''';',
'    END IF;',
'    FOR X',
'        IN (SELECT    ''<xmp>',
'                 <title><span style="font-size:22px"><h2>''',
'                   || POST_TITLE',
'                   || ''</h2></span></title>',
'                </xmp>''    POST_TITLE',
'              FROM BLOG_POST_TITLE',
'             WHERE POST_OID = P_POST_OID)',
'    LOOP',
'        V_RET := V_RET || X.POST_TITLE || '''';',
'    END LOOP;',
'    RETURN V_RET;',
'END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_PRE_CODE" (P_POST_OID INTEGER)',
'    RETURN CLOB',
'IS',
'    V_RET   CLOB;',
'BEGIN',
'    IF P_POST_OID IS NULL',
'    THEN',
'        RETURN '''';',
'    END IF;',
'    FOR X',
'        IN (SELECT    ''<xmp>',
'                 <pre class="prettyprint lang-scm highlight" style=" position: relative; background: #13052e; border-radius: 15px 15px 15px 15px; display: block; margin-top: 0; direction: ltr; unicode-bidi: bidi-override; color: #fff; word-break: nor'
||'mal; border-radius: 0; border: none; border-left: 7px solid #F9BC00; width: 95%; margin: 1em auto; padding: 0em; white-space: pre-wrap; background-color: #13052e; border-radius: 8px;"> ',
'   <code style="font-size:17px; font-family: monospace;">''',
'                   || PRE_CODE',
'                   || ''</code></pre>',
'                </xmp>''    PRE_CODE',
'              FROM BLOG_POST_PRE_CODE',
'             WHERE POST_OID = P_POST_OID)',
'    LOOP',
'        V_RET := V_RET || X.PRE_CODE || '''';',
'    END LOOP;',
'    RETURN V_RET;',
'END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_PRODETAILS" (PROID INTEGER) RETURN VARCHAR2 IS ',
'tmpVar VARCHAR2(4000); ',
'BEGIN ',
'   tmpVar := ''''; ',
'  select  ''Code:-'' || PRODUCT_CODE  || '','' ||   '' Product Name:-'' || PRODUCT_NAME into tmpVar ',
'  from PRODUCT ',
' where   PRODUCT_ID = PROID and rownum <=1; ',
'  ',
'  ',
'   RETURN tmpVar; ',
'   ',
'END; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_PRODETAILSBYCODE" (PROCODE INTEGER) RETURN VARCHAR2 IS ',
'tmpVar VARCHAR2(4000); ',
'BEGIN ',
'   tmpVar := ''''; ',
'  select  ''Code:-'' || PRODUCT_CODE  || '','' ||   '' Product Name:-'' || PRODUCT_NAME into tmpVar ',
'  from PRODUCT ',
' where   PRODUCT_CODE = PROCODE and rownum <=1; ',
'  ',
'  ',
'   RETURN tmpVar; ',
'END; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_PRODUCT_RATING" (p_value IN NUMBER)',
'    RETURN VARCHAR2',
'  IS',
'    l_return     VARCHAR2 (4000);',
'    l_checked    VARCHAR2(240) := ''<span class="fa fa-star" style="color:orange;"></span>'';',
'    l_un_checked VARCHAR2(240) := ''<span class="fa fa-star" style="color:grey;"></span>'';',
'    l_max_value  NUMBER        := 5;',
'    l_remaining  NUMBER;',
'  BEGIN',
'    IF p_value BETWEEN 1 AND 5 THEN -- Check given values are in the range',
'      l_remaining := l_max_value - p_value;',
'      /* Add checked user ratings */',
'      FOR i IN 1..p_value',
'      loop',
'        l_return := l_return||'' ''||l_checked;',
'      END loop;',
'      /* Add unchecked user rating if remaining is greater than Zero */',
'      IF l_remaining > 0 THEN',
'        FOR j IN 1..l_remaining',
'        loop',
'          l_return := l_return||'' ''||l_un_checked;',
'        END loop;',
'      END IF;',
'    ELSE',
'      l_return := NULL;',
'    END IF;',
'    RETURN l_return;',
'  END GET_PRODUCT_RATING;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_PROGRESS_BAR" (p_value IN VARCHAR) ',
'RETURN VARCHAR2 ',
'IS ',
'  l_height NUMBER := 20; ',
'BEGIN ',
'    RETURN ''<span>  <div class="progress" style="height:'' ',
'           ||l_height ',
'           ||''px;"> <div class="progress-bar" style="width:'' ',
'           ||p_value ',
'           ||''%">'' ',
'           ||p_value ',
'           ||'' % </div></div></span>''; ',
'END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_STEPS" (P_POST_OID INTEGER)',
'    RETURN CLOB',
'IS',
'    V_RET   CLOB;',
'BEGIN',
'    IF P_POST_OID IS NULL',
'    THEN',
'        RETURN '''';',
'    END IF;',
'    FOR X',
'        IN (SELECT    ''<xmp>',
'                 <div><span style="font-size:18px"><strong>''',
'                   || STEPS',
'                   || ''</strong>&nbsp;''',
'                   || WITH_OUT_BOLD',
'                   || ''  </span></div>',
'                </xmp>''    STEPS',
'              FROM BLOG_POST_STEPS',
'             WHERE POST_OID = P_POST_OID)',
'    LOOP',
'        V_RET := V_RET || X.STEPS || '''';',
'    END LOOP;',
'    RETURN V_RET;',
'END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_SUB_TITLE" (P_POST_OID INTEGER)',
'    RETURN CLOB',
'IS',
'    V_RET   CLOB;',
'BEGIN',
'    IF P_POST_OID IS NULL',
'    THEN',
'        RETURN '''';',
'    END IF;',
'    FOR X',
'        IN (SELECT    ''<xmp>',
'                 <p>  <span style="font-size:20px"> <strong><span > ''',
'                   || SUB_TITLE',
'                   || '' </span></strong></span>/p>',
'                </xmp>''    SUB_TITLE',
'              FROM BLOG_POST_SUB_TITLE',
'             WHERE POST_OID = P_POST_OID)',
'    LOOP',
'        V_RET := V_RET || X.SUB_TITLE || '''';',
'    END LOOP;',
'    RETURN V_RET;',
'END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_SUB_TITLE_DETELS" (P_POST_OID INTEGER)',
'    RETURN CLOB',
'IS',
'    V_RET   CLOB;',
'BEGIN',
'    IF P_POST_OID IS NULL',
'    THEN',
'        RETURN '''';',
'    END IF;',
'    FOR X',
'        IN (SELECT    ''<xmp>',
'                 <p>  <span style="font-size:18px">    <span > ''',
'                   || SUB_TITLE_DETELS',
'                   || '' </span>  </span></p>',
'                </xmp>''    SUB_TITLE_DETELS',
'              FROM BLOG_POST_SUB_TITLE',
'             WHERE POST_OID = P_POST_OID)',
'    LOOP',
'        V_RET := V_RET || X.SUB_TITLE_DETELS || '''';',
'    END LOOP;',
'    RETURN V_RET;',
'END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_SUPPLIER_DETAILS" (SUPPLIEROID INTEGER) RETURN VARCHAR2 IS ',
'tmpVar VARCHAR2(4000); ',
'BEGIN ',
'   tmpVar := ''''; ',
'  select  ''Supplier Name:- '' || SUPPLIER_NAME  || '', '' ||   '' Mobile :- 0'' || MOBOLE_NO into tmpVar ',
'  from SUPPLIER ',
' where   OID = SUPPLIEROID and rownum <=1; ',
'  ',
'  ',
'   RETURN tmpVar; ',
'   ',
'END; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_USER_ID" return number ',
'is ',
'v_user_id number; ',
'begin ',
'select USER_ID into v_user_id from MY_USERS  ',
'WHERE UPPER (USERNAME) = upper(V(''USER'')); ',
' ',
'return v_user_id ; ',
'exception when others then ',
'return 0; ',
'end; ',
' ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "GET_USER_NAME" return varchar2 as ',
'    v varchar2(255) := null; ',
'    c owa_cookie.cookie; ',
'begin ',
'   c := owa_cookie.get(''LOGIN_USERNAME_COOKIE''); ',
'   v := c.vals(1); ',
'return v; ',
'end; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "MY_SYS_CONTEXT" (PRODUCT_ID in varchar2, PROOUCT_SIZE in varchar2) return varchar2 as ',
'begin ',
'  return sys_context(''PRODUCT_ID'',''PROOUCT_SIZE''); ',
'end; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "POS_CUSTOM_AUTH" ',
'(p_username IN VARCHAR2, p_password IN VARCHAR2) ',
'RETURN BOOLEAN ',
'is ',
'L_password VARCHAR2(250); ',
'L_stored_password VARCHAR2(4000); ',
'L_expires_on date; ',
't NUMBER; ',
'L_count NUMBER ',
'BEGIN ',
't:=0; ',
'SELECT COUNT(*) into L_count from POS_USER where user_name = p_username; ',
'if L_count > 0 and t=0 then ',
'SELECT password, expires_on into L_stored_password, L_expires_on  ',
'from POS_USER where user_name = p_username; ',
'if L_expires_on > sysdate of L_expires_on is null then ',
'L_password := custom_hash(p_username, p_password); ',
'if L_password = L_stored_password then ',
'RETURN TRUE; ',
'else ',
'RETURN FALSE; ',
'end if; ',
'else ',
'RETURN FALSE; ',
'end if; ',
'eles ',
'RETURN FALSE; ',
'end if; ',
'END; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "SENDEMAIL" (sender in varchar2, receiver in varchar2, subject in varchar2, content in CLOB, signature in varchar2) return boolean is ',
'    sent_status boolean := false; ',
'    l_body clob; ',
'    l_body_html clob; ',
'begin ',
'    l_body := ''To view the content of this message, please use an HTML enabled mail client.''||utl_tcp.crlf; ',
' ',
'    l_body_html := ''<html> ',
'        <head> ',
'            <style type="text/css"> ',
'                body{font-family: Arial, Helvetica, sans-serif; ',
'                    font-size:10pt; ',
'                    margin:30px; ',
'                    background-color:#ffffff;} ',
' ',
'                span.sig{font-style:italic; ',
'                    font-weight:bold; ',
'                    color:#811919;} ',
'             </style> ',
'         </head> ',
'         <body>''||utl_tcp.crlf; ',
'    l_body_html := l_body_html ||content || utl_tcp.crlf; ',
'    l_body_html := l_body_html ||'' <span class="sig">''||signature||''</span><br />''||utl_tcp.crlf; ',
'    l_body_html := l_body_html ||''</body></html>''; ',
'    apex_mail.send( ',
'    p_to   => receiver,   -- change to your email address ',
'    p_from => sender, -- change to a real senders email address ',
'    p_bcc => sender, ',
'    p_body      => l_body, ',
'    p_body_html => l_body_html, ',
'    p_subj      => subject); ',
'    sent_status := true;  ',
'    return sent_status; ',
'end; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "STRIPHTML" (',
'                        p_html in varchar2)',
'                        return varchar2',
'                    is',
'                        l_html varchar2(32767);',
'                        l_pos pls_integer;',
'                    begin',
'                        if length(p_html) > 0 then',
'                            l_html := p_html;',
'                            loop',
'                                l_pos := regexp_instr(l_html, ''<[^<>]*>'');',
'                                if l_pos > 0 then',
'                                    l_html := regexp_replace(l_html, ''<[^<>]*>'', null, l_pos);',
'                                else',
'                                    exit;',
'                                end if;',
'                            end loop;',
'                        end if;',
'                       return l_html;',
'                    end striphtml;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE FUNCTION "TOOLTIP_WITH_IMAGE" (',
'      p_img_id     NUMBER,',
'      p_img_name   VARCHAR2,',
'      p_img_link   VARCHAR2,',
'      p_img_width  NUMBER,',
'      p_img_height NUMBER )',
'    RETURN CLOB',
'  AS',
'    l_return CLOB;',
'  BEGIN',
'    l_return := ''<!doctype html>',
'                <html lang="en">',
'                <head>  ',
'                <meta charset="utf-8">  ',
'                <meta name="viewport" content="width=device-width, initial-scale=1">  ',
'                <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/',
'                jquery-ui.css">  ',
'                <script src="https://code.jquery.com/jquery-1.12.4.js"></script>  ',
'                <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>  ',
'                <script>  ',
'                $(document).ready(function() {   ',
'                $("#content_''||p_img_id||''").html(''''<a id="data_''||p_img_id||''" ',
'                href="#" title="">''||p_img_name ||''</a>'''');    ',
'                $("#content_''||p_img_id||'' #data_''||p_img_id||''").tooltip({ content: ',
'                ''''<img src="''||p_img_link||''" style="width:''||nvl(p_img_width,250)||',
'                ''px; height:''||nvl(p_img_height,175)||''px;" />''''});',
'                });  ',
'                </script>',
'                </head>',
'                <body>',
'                <div id="content_''||p_img_id||''">    ',
'                </div>',
'                </body>',
'                </html>'';',
'    RETURN l_return;',
'  END tooltip_with_image;',
'/',
'',
'CREATE UNIQUE INDEX "ACL_GROUP_PAGE_ACCESS_PK" ON "USER_GROUP_PAGE_ACCESS" ("OID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "ACL_GROUP_PAGE_ACCESS_U01" ON "USER_GROUP_PAGE_ACCESS" ("PID_GROUP", "PAGE_ID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "ACL_GROUP_PK" ON "USER_GROUP" ("OID") ',
'  ;',
'',
'CREATE INDEX "ACL_USERLOG_IPADD_IDX" ON "USERS_LOG" ("IP_ADDRESS") ',
'  ;',
'',
'CREATE UNIQUE INDEX "ACL_USER_GROUP_PK" ON "ACL_USER_GROUP" ("OID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "BRAND_PK" ON "BRAND" ("OID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "COURT_IDX1" ON "COURT" ("OID") ',
'  ;',
'',
'CREATE INDEX "E_LOG_PID_IDX" ON "E_LOG" ("PID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "GALLERY_PK" ON "GALLERY" ("ID") ',
'  ;',
'',
'CREATE INDEX "IDX_REP_DT" ON "REPORT_LOG" ("REPORTING_DATE") ',
'  ;',
'',
'CREATE UNIQUE INDEX "IMAGES_PK" ON "IMAGES" ("ID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "IMAGES_UK" ON "IMAGES" ("NAME") ',
'  ;',
'',
'CREATE UNIQUE INDEX "IS_ACTIVATE_PK" ON "IS_ACTIVATE" ("OID") ',
'  ;',
'',
'CREATE INDEX "LOG_ID_ACL_USER_LOG_IDX" ON "USERS_LOG" ("LOG_ID", "LOGIN_USER") ',
'  ;',
'',
'CREATE INDEX "LOG_ID_ACL_USER_LOG_INDX" ON "USERS_LOG" ("LOG_ID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "LOG_ID_PK" ON "USER_LOG_WEB" ("LOG_ID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "MENUS_CON_PK" ON "MENUS" ("OID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "MY_FILE_TABLE_PK" ON "MY_FILE_TABLE" ("FILE_ID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "MY_USERS_PK" ON "MY_USERS" ("USER_ID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "ORDER_PRODUCT_IDX1" ON "ORDER_PRODUCT" ("OID") ',
'  ;',
'',
'CREATE INDEX "PID_ALL_AUDIT_LOG_INDX" ON "ALL_AUDIT_LOG" ("PID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "PK_DOB" ON "DOB" ("OID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "PK_INFOFOLLOWUP" ON "INFOFOLLOWUP" ("OID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "PK_OID" ON "APPS_NAME" ("OID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "PK_PRODUCT_DETELS_ID" ON "PRODUCT_DETELS" ("PRODUCT_DETELS_ID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "PK_PRODUCT_ID" ON "PRODUCT" ("PRODUCT_ID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "PK_PRODUCT_PRICE_OID" ON "PRODUCT_PRICE" ("PRODUCT_PRICE_OID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "PK_PRODUCT_RATING" ON "PRODUCT_RATING" ("OID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "PK_SLIDESHOW_IMG" ON "SLIDESHOW_IMG" ("OID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "PRODUCT_DETELS_UNI" ON "PRODUCT_DETELS" ("PRODUCT_ID", "PRODUCT_CODE") ',
'  ;',
'',
'CREATE UNIQUE INDEX "PRODUCT_PRICE_UNI" ON "PRODUCT_PRICE" ("PRODUCT_ID", "PRODUCT_CODE") ',
'  ;',
'',
'CREATE UNIQUE INDEX "PURCHASE_DETALIS_PK" ON "PURCHASE_DETALIS" ("OID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "PURCHASE_MASTER_IDX1" ON "PURCHASE_MASTER" ("VOUCHER_NO") ',
'  ;',
'',
'CREATE UNIQUE INDEX "REPORT_LOG_PK" ON "REPORT_LOG" ("OID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "RETERN_PURCHASE_DETALIS_PK" ON "RETERN_PURCHASE_DETALIS" ("OID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "SALES_MST_CON" ON "SALES_MST" ("OID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "SALES_ORDER_CON" ON "SALES_ORDER" ("OID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "STUDENT_CON" ON "STUDENT" ("STUDENT_ID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "SURETY_ACCOUNT_PK" ON "SURETY_ACCOUNT" ("OID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "TEST_PK" ON "TEST" ("ID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "UK_DOB" ON "DOB" ("DOB_TYPE_OID", "PERSON_OID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "USER_GROUP_MY_STOCK_PK" ON "USER_GROUP_MY_STOCK" ("PID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "USER_PAGE_PK" ON "USER_PAGE" ("PID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "USER_PAGE_UK1" ON "USER_PAGE" ("PAGE_ID") ',
'  ;',
'',
'CREATE UNIQUE INDEX "USER_TABLE_LOG_CON" ON "USER_TABLE_LOG" ("LOGE_ID") ',
'  ;',
'',
'CREATE OR REPLACE EDITIONABLE PACKAGE "ACL" ',
'AS ',
' ',
' FUNCTION GET_CURRENT_USER_PID ',
'      RETURN NUMBER; ',
'   FUNCTION GET_CURRENT_USER ',
'      RETURN VARCHAR2; ',
'    FUNCTION PAGE_ACCESS_PERMISSION (p_app_id number, p_page_id number)  ',
'      RETURN NUMBER;  ',
'   FUNCTION CUSTOM_AUTH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2) ',
'      RETURN BOOLEAN; ',
'   FUNCTION CUSTOM_HASH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2) ',
'      RETURN VARCHAR2; ',
'END; ',
'/',
'',
'',
'CREATE OR REPLACE EDITIONABLE PACKAGE BODY "ACL" ',
'AS ',
' ',
'FUNCTION GET_CURRENT_USER_PID ',
'      RETURN NUMBER ',
'   IS ',
'      V_PID   NUMBER;--:=length(GET_CURRENT_USER); ',
'   BEGIN ',
'    ',
'   --insert into test(c2) values(''(GET_CURRENT_USER_PID) ''||GET_CURRENT_USER); ',
'    ',
'   --commit; ',
'    ',
'      SELECT USER_ID                       --, A.LOGIN_ID, A.EMAIL_ID, A.USER_NAME ',
'        INTO V_PID ',
'        FROM MY_USERS ',
'       WHERE UPPER (USER_ID) = upper(V(''USER'')); ',
'        ',
'      RETURN V_PID; ',
'   EXCEPTION ',
'      WHEN OTHERS ',
'      THEN ',
'         RETURN -1; ',
'   END; ',
'    ',
'FUNCTION GET_CURRENT_USER ',
'      RETURN VARCHAR2 ',
'   IS ',
'      Va   VARCHAR2 (255) := NULL; ',
'      C   OWA_COOKIE.COOKIE; ',
'   BEGIN ',
'    ',
'   ',
'     /* ',
'      C := OWA_COOKIE.GET (''LOGIN_USERNAME_COOKIE''); ',
'      V := C.VALS (1); ',
'      */ ',
'       --  insert into test(c2) values(to_char(sysdate,''ddmmrr hhmiss'')||''(GET_CURRENT_USER) ''||V); ',
'          ',
'       --  commit; ',
'      RETURN V(''USER''); ',
'   END; ',
' ',
'FUNCTION PAGE_ACCESS_PERMISSION (p_app_id number, p_page_id number)  ',
'      RETURN NUMBER  ',
'   IS  ',
'      V_CNT_PAGE   NUMBER;  ',
'   BEGIN  ',
'         ',
'       return 1;-- need to delete after setup  ',
'         ',
'       select max(PERMISSION)  ',
'       into V_CNT_PAGE  ',
'       from USER_GROUP_PAGE_ACCESS a, ACL_USER_GROUP b  ',
'where a.pid_group = b.pid_group(+)  ',
'and a.page_id = p_page_id  ',
'and b.PID_USER = GET_CURRENT_USER_PID;  ',
'         ',
'       ',
'      RETURN V_CNT_PAGE;  ',
'   EXCEPTION  ',
'      WHEN OTHERS  ',
'      THEN  ',
'         RETURN null;  ',
'   END;  ',
'  ',
'   ',
' ',
'FUNCTION CUSTOM_AUTH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2) ',
'      RETURN BOOLEAN ',
'   IS ',
'      L_PASSWORD          VARCHAR2 (4000); ',
'      L_STORED_PASSWORD   VARCHAR2 (4000); ',
'   BEGIN ',
'      -- return true; ',
'      -- insert into all_debug(info) values(P_USERNAME||''--''||P_PASSWORD); ',
'    --  insert into test5 values( P_USERNAME || '' pass- '' || P_PASSWORD); ',
'     -- commit; ',
'      -- First, check to see if the user is in the user table ',
' ',
'       SELECT PIN ',
'        INTO L_STORED_PASSWORD ',
'        FROM MY_USERS ',
'       WHERE is_active = ''1'' and LOWER (USERNAME) = LOWER (P_USERNAME) and rownum<=1; ',
'      L_PASSWORD := CUSTOM_HASH (P_USERNAME, P_PASSWORD); ',
'      -- Finally, we compare them to see if they are the same and return ',
'      -- either TRUE or FALSE ',
'      -- RETURN TRUE; ',
'      IF L_PASSWORD = L_STORED_PASSWORD ',
'      THEN ',
'         insert into USERS_LOG (LOG_ID,IP_ADDRESS,LOGIN_USER,LOGIN_TIME)   ',
'         values (login_log_id_sec.nextval,owa_util.get_cgi_env(''REMOTE_ADDR''),P_USERNAME,sysdate); ',
'            insert into e_log(pid, msg) values((select nvl(max(pid),0)+1 from e_log),''match - user: ''|| P_USERNAME || ''   pass: '' || P_PASSWORD); ',
' ',
'   RETURN TRUE; ',
'      ELSE ',
'          insert into e_log(pid, msg) values((select nvl(max(pid),0)+1 from e_log),''not match - user: ''|| P_USERNAME || ''   pass: '' || P_PASSWORD); ',
'         RETURN FALSE; ',
'      END IF; ',
' ',
'   EXCEPTION ',
'       when NO_DATA_FOUND  ',
'       ',
'      THEN ',
'       insert into e_log(pid, msg) values((select nvl(max(pid),0)+1 from e_log),''No User Found - user: ''|| P_USERNAME || ''   pass: '' || P_PASSWORD); ',
'         RETURN false; ',
'   END; ',
' ',
' ',
'FUNCTION CUSTOM_HASH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2) ',
'   RETURN VARCHAR2 ',
'IS ',
'   L_PASSWORD   VARCHAR2 (4000); ',
'   L_SALT       VARCHAR2 (4000) := ''D9GE4CORSJZVKADPOJ5C1PERC704WB''; ',
'BEGIN ',
'   -- This function should be wrapped, as the hash algorhythm is exposed here. ',
'   -- You can change the value of l_salt or the method of which to call the ',
'   -- DBMS_OBFUSCATOIN toolkit, but you much reset all of your passwords ',
'   -- if you choose to do this. ',
'   /*  L_PASSWORD := ',
'       UTL_RAW.CAST_TO_RAW(DBMS_OBFUSCATION_TOOLKIT.MD5 ( ',
'                               INPUT_STRING =>   P_PASSWORD || SUBSTR (L_SALT, 10, 13)|| P_USERNAME || SUBSTR (L_SALT, 4, 10))); ',
'  */  ',
'       ',
'      L_PASSWORD := ',
'      UTL_RAW.CAST_TO_RAW ( ',
'         DBMS_OBFUSCATION_TOOLKIT.MD5 (INPUT_STRING => P_PASSWORD)); ',
'    ',
'       RETURN L_PASSWORD; ',
' ',
' ',
'    --return P_PASSWORD; ',
'END; ',
' ',
' ',
'END; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PACKAGE "APP_ERROR_PKG" ',
'as ',
'    -- ',
'    -- Function: apex_error_handling ',
'    -- Purpose: Try to elegantly handle errors that occur while using the application. ',
'    -- ',
'    function apex_error_handling ( ',
'        p_error in apex_error.t_error ) ',
'        return apex_error.t_error_result; ',
'    -- ',
'    -- Procedure: add_error_log ',
'    -- Purpose: logs application errors ',
'    -- ',
'    procedure add_error_log ( ',
'        p_error               in varchar2 default  null, ',
'        p_procedure_name      in varchar2 default  null, ',
'        p_page_item_name      in varchar2 default  null, ',
'        p_region_id           in varchar2 default  null, ',
'        p_column_alias        in varchar2 default  null, ',
'        p_row_num             in varchar2 default  null, ',
'        p_apex_error_code     in varchar2 default  null, ',
'        p_ora_sqlcode         in varchar2 default  null, ',
'        p_ora_sqlerrm         in varchar2 default  null, ',
'        p_error_backtrace     in varchar2 default  null, ',
'        p_arg1_name           in varchar2 default  null, ',
'        p_arg1_val            in varchar2 default  null, ',
'        p_arg2_name           in varchar2 default  null, ',
'        p_arg2_val            in varchar2 default  null, ',
'        p_arg3_name           in varchar2 default  null, ',
'        p_arg3_val            in varchar2 default  null, ',
'        p_arg4_name           in varchar2 default  null, ',
'        p_arg4_val            in varchar2 default  null, ',
'        p_arg5_name           in varchar2 default  null, ',
'        p_arg5_val            in varchar2 default  null, ',
'        p_arg6_name           in varchar2 default  null, ',
'        p_arg6_val            in varchar2 default  null, ',
'        p_arg7_name           in varchar2 default  null, ',
'        p_arg7_val            in varchar2 default  null, ',
'        p_arg8_name           in varchar2 default  null, ',
'        p_arg8_val            in varchar2 default  null, ',
'        p_arg9_name           in varchar2 default  null, ',
'        p_arg9_val            in varchar2 default  null, ',
'        p_arg10_name          in varchar2 default  null, ',
'        p_arg10_val           in varchar2 default  null ',
'        ); ',
'end app_error_pkg; ',
'/',
'',
'',
'CREATE OR REPLACE EDITIONABLE PACKAGE BODY "APP_ERROR_PKG" ',
'as ',
'   -- ',
'    -- Function: apex_error_handling ',
'    -- Purpose: Try to elegantly handle errors that occur while using the application. ',
'    -- ',
'    function apex_error_handling ( p_error in apex_error.t_error ) ',
'      return apex_error.t_error_result is ',
'        l_result          apex_error.t_error_result; ',
'        l_constraint_name varchar2(255); ',
' ',
'        procedure add_error_log ( p_error in apex_error.t_error ) is ',
'            pragma autonomous_transaction; ',
'        begin ',
'            -- Log the error. ',
'            insert into app_error ( ',
'                err_time, ',
'                app_id, ',
'                app_page_id, ',
'                app_user, ',
'                user_agent, ',
'                ip_address, ',
'                ip_address2, ',
'                message, ',
'                page_item_name, ',
'                region_id, ',
'                column_alias, ',
'                row_num, ',
'                apex_error_code, ',
'                ora_sqlcode, ',
'                ora_sqlerrm, ',
'                error_backtrace ) ',
'            values (  ',
'                sysdate, ',
'                sys_context(''APEX$SESSION'',''APP_ID''), ',
'                sys_context(''APEX$SESSION'',''APP_PAGE_ID''), ',
'                sys_context(''APEX$SESSION'',''APP_USER''), ',
'                owa_util.get_cgi_env(''HTTP_USER_AGENT''), ',
'                owa_util.get_cgi_env(''REMOTE_ADDR''), ',
'                sys_context(''USERENV'', ''IP_ADDRESS''), ',
'                substr(p_error.message,1,4000), ',
'                p_error.page_item_name, ',
'                p_error.region_id, ',
'                p_error.column_alias, ',
'                p_error.row_num, ',
'                p_error.apex_error_code, ',
'                p_error.ora_sqlcode, ',
'                substr(p_error.ora_sqlerrm,1,4000), ',
'                substr(p_error.error_backtrace,1,4000)  ',
'            ); ',
'            commit; ',
'        end add_error_log; ',
'    begin ',
'        l_result := apex_error.init_error_result(p_error => p_error ); ',
'        -- If it is an internal error raised by APEX, like an invalid statement or ',
'        -- code which can not be executed, the error text might contain security sensitive ',
'        -- information. To avoid this security problem we can rewrite the error to ',
'        -- a generic error message and log the original error message for further ',
'        -- investigation by the help desk. ',
'        if p_error.is_internal_error then ',
'            -- mask all errors that are not common runtime errors (Access Denied ',
'            -- errors raised by application / page authorization and all errors ',
'            -- regarding session and session state) ',
'            if not p_error.is_common_runtime_error then ',
' ',
'                -- Submit to own error logging table ',
'                add_error_log( p_error ); ',
' ',
'                -- Submit into Team Development as feedback ',
'                apex_util.submit_feedback ( ',
'                    p_comment         => ''Unexpected Error'', ',
'                    p_type            => 3, ',
'                    p_application_id  => v(''APP_ID''), ',
'                    p_page_id         => v(''APP_PAGE_ID''), ',
'                    p_email           => v(''APP_USER''), ',
'                    p_label_01        => ''Session'', ',
'                    p_attribute_01    => v(''APP_SESSION''), ',
'                    p_label_02        => ''Language'', ',
'                    p_attribute_02    => v(''AI_LANGUAGE''), ',
'                    p_label_03        => ''Error orq_sqlcode'', ',
'                    p_attribute_03    => p_error.ora_sqlcode, ',
'                    p_label_04        => ''Error message'', ',
'                    p_attribute_04    => p_error.message, ',
'                    p_label_05        => ''UI Error message'', ',
'                    p_attribute_05    => l_result.message ',
'                ); ',
' ',
'                -- Logger ',
'                logger.log_error(''There is an error in xxx''); ',
'                logger'))
);
null;
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_shared.append_to_install_script(
 p_id=>wwv_flow_imp.id(34855710406855915282)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.log_apex_items(''Debug Items from Error log''); ',
' ',
'                -- Send email             ',
'                l_subject := ''Issue in XXX''; ',
'                l_body := p_error.ora_sqlcode || CHR(10) || p_error.message; ',
'                l_body := l_body || CHR(10) || ''App User: '' || v(''APP_USER''); ',
'                l_body := l_body || CHR(10) || ''Session: '' || v(''APP_SESSION''); ',
'                l_body := l_body || CHR(10) || ''App: '' || v(''APP_ID''); ',
'                l_body := l_body || CHR(10) || ''Page: '' || v(''APP_PAGE_ID''); ',
'                wwv_flow_api.set_security_group_id; ',
'                apex_mail.send( ',
'                    p_from      => ''xxx'', ',
'                    p_to        => ''xxx'', ',
'                    p_subj      => l_subject, ',
'                    p_body      => l_body, ',
'                    p_body_html => l_body); ',
'                apex_mail.push_queue; ',
' ',
'                -- Log an Issues Developer Portal / JIRA      ',
'                -- see other entries in Gist Dimitri Gielis ',
'                --https://gist.github.com/dgielis/e97c94391058dcacb4a2b50e355d9445 ',
' ',
' ',
'                -- Change the message to the generic error message which doesn''t expose ',
'                -- any sensitive information. ',
'                l_result.message         := ''An unexpected internal application error has occurred: '' || substr(p_error.message,0,3500); ',
'                l_result.additional_info := null; ',
'            end if; ',
'        else ',
'            -- Always show the error as inline error ',
'            -- Note: If you have created manual tabular forms (using the package ',
'            --       apex_item/htmldb_item in the SQL statement) you should still ',
'            --       use "On error page" on that pages to avoid loosing entered data ',
'            l_result.display_location := case ',
'                                           when l_result.display_location = apex_error.c_on_error_page then apex_error.c_inline_in_notification ',
'                                           else l_result.display_location ',
'                                         end; ',
'            -- If it''s a constraint violation like ',
'            -- ',
'            --   -) ORA-00001: unique constraint violated ',
'            --   -) ORA-02091: transaction rolled back (-> can hide a deferred constraint) ',
'            --   -) ORA-02290: check constraint violated ',
'            --   -) ORA-02291: integrity constraint violated - parent key not found ',
'            --   -) ORA-02292: integrity constraint violated - child record found ',
'            -- ',
'            -- we try to get a friendly error message from our constraint lookup configuration. ',
'            -- If we don''t find the constraint in our lookup table we fallback to ',
'            -- the original ORA error message. ',
'            if p_error.ora_sqlcode in (-1, -2091, -2290, -2291, -2292) then ',
'                l_constraint_name := apex_error.extract_constraint_name ( ',
'                                         p_error => p_error ); ',
'                begin ',
'                    select message ',
'                      into l_result.message ',
'                      from app_error_lookup ',
'                     where constraint_name = l_constraint_name; ',
'                exception when no_data_found then null; -- not every constraint has to be in our lookup table ',
'                end; ',
'            end if; ',
'            -- If an ORA error has been raised, for example a raise_application_error(-20xxx, ''...'') ',
'            -- in a table trigger or in a PL/SQL package called by a process and we ',
'            -- haven''t found the error in our lookup table, then we just want to see ',
'            -- the actual error text and not the full error stack with all the ORA error numbers. ',
'            if p_error.ora_sqlcode is not null and l_result.message = p_error.message then ',
'                l_result.message := apex_error.get_first_ora_error_text ( ',
'                                        p_error => p_error ); ',
'            end if; ',
'            -- If no associated page item/tabular form column has been set, we can use ',
'            -- apex_error.auto_set_associated_item to automatically guess the affected ',
'            -- error field by examine the ORA error for constraint names or column names. ',
'            if l_result.page_item_name is null and l_result.column_alias is null then ',
'                apex_error.auto_set_associated_item ( ',
'                    p_error        => p_error, ',
'                    p_error_result => l_result ); ',
'            end if; ',
'        end if; ',
'        return l_result; ',
'    end apex_error_handling; ',
'    -- ',
'    -- Procedure: add_error_log ',
'    -- Purpose: logs application errors ',
'    -- ',
'    procedure add_error_log ( ',
'        p_error               in varchar2 default  null, ',
'        p_procedure_name      in varchar2 default  null, ',
'        p_page_item_name      in varchar2 default  null, ',
'        p_region_id           in varchar2 default  null, ',
'        p_column_alias        in varchar2 default  null, ',
'        p_row_num             in varchar2 default  null, ',
'        p_apex_error_code     in varchar2 default  null, ',
'        p_ora_sqlcode         in varchar2 default  null, ',
'        p_ora_sqlerrm         in varchar2 default  null, ',
'        p_error_backtrace     in varchar2 default  null, ',
'        p_arg1_name           in varchar2 default  null, ',
'        p_arg1_val            in varchar2 default  null, ',
'        p_arg2_name           in varchar2 default  null, ',
'        p_arg2_val            in varchar2 default  null, ',
'        p_arg3_name           in varchar2 default  null, ',
'        p_arg3_val            in varchar2 default  null, ',
'        p_arg4_name           in varchar2 default  null, ',
'        p_arg4_val            in varchar2 default  null, ',
'        p_arg5_name           in varchar2 default  null, ',
'        p_arg5_val            in varchar2 default  null, ',
'        p_arg6_name           in varchar2 default  null, ',
'        p_arg6_val            in varchar2 default  null, ',
'        p_arg7_name           in varchar2 default  null, ',
'        p_arg7_val            in varchar2 default  null, ',
'        p_arg8_name           in varchar2 default  null, ',
'        p_arg8_val            in varchar2 default  null, ',
'        p_arg9_name           in varchar2 default  null, ',
'        p_arg9_val            in varchar2 default  null, ',
'        p_arg10_name          in varchar2 default  null, ',
'        p_arg10_val           in varchar2 default  null ) ',
'    is ',
'    begin ',
'        -- Remove old errors ',
'        --delete from app_errors where err_time <= localtimestamp - 21; ',
'        -- Log the error. ',
'        insert into app_error ( ',
'            app_id, ',
'            app_page_id, ',
'            app_user, ',
'            user_agent, ',
'            -- ',
'            ip_address, ',
'            ip_address2, ',
'            message, ',
'            page_item_name, ',
'            -- ',
'            region_id, ',
'            column_alias, ',
'            row_num, ',
'            apex_error_code, ',
'            -- ',
'            ora_sqlcode, ',
'            ora_sqlerrm, ',
'            error_backtrace, ',
'            arg1_name, ',
'            arg1_val, ',
'            arg2_name, ',
'            arg2_val, ',
'            arg3_name, ',
'            arg3_val, ',
'            arg4_name, ',
'            arg4_val, ',
'            arg5_name, ',
'            arg5_val, ',
'            arg6_name, ',
'            arg6_val, ',
'            arg7_name, ',
'            arg7_val, ',
'            arg8_name, ',
'            arg8_val, ',
'            arg9_name, ',
'            arg9_val, ',
'            arg10_name, ',
'            arg10_val ) ',
'        select v(''APP_ID''), ',
'            v(''APP_PAGE_ID''), ',
'            v(''APP_USER''), ',
'            owa_util.get_cgi_env(''HTTP_USER_AGENT''), ',
'            -- ',
'            owa_util.get_cgi_env(''REMOTE_ADDR''), ',
'            sys_context(''USERENV'', ''IP_ADDRESS''), ',
'            substr(p_error,0,4000), ',
'            substr(p_page_item_name,0,4000), ',
'            -- ',
'            p_region_id, ',
'            p_column_alias, ',
'            p_row_num, ',
'            p_apex_error_code, ',
'            -- ',
'            p_ora_sqlcode, ',
'            substr(p_ora_sqlerrm,1,4000), ',
'            substr(p_error_backtrace,1,4000), ',
'            p_arg1_name, ',
'            p_arg1_val, ',
'            p_arg2_name, ',
'            p_arg2_val, ',
'            p_arg3_name, ',
'            p_arg3_val, ',
'            p_arg4_name, ',
'            p_arg4_val, ',
'            p_arg5_name, ',
'            p_arg5_val, ',
'            p_arg6_name, ',
'            p_arg6_val, ',
'            p_arg7_name, ',
'            p_arg7_val, ',
'            p_arg8_name, ',
'            p_arg8_val, ',
'            p_arg9_name, ',
'            p_arg9_val, ',
'            p_arg10_name, ',
'            p_arg10_val ',
'        from dual; ',
'        commit; ',
'    end add_error_log; ',
' ',
'end app_error_pkg; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PACKAGE "BLOG_POST_PKG" ',
'AS',
'    FUNCTION GET_POST_TITLE (P_POST_OID NUMBER)',
'        RETURN CLOB;',
'    FUNCTION GET_META_DESCRIPTION (P_POST_OID NUMBER)',
'        RETURN CLOB;',
'    FUNCTION GET_POST_NAME (P_POST_OID NUMBER)',
'        RETURN CLOB;',
'    FUNCTION GET_POST_DESCRIPTION (P_POST_OID NUMBER)',
'        RETURN CLOB;',
'    FUNCTION GET_IMAGE_URL (P_POST_OID NUMBER)',
'        RETURN CLOB;',
'    FUNCTION GET_LINK_URL (P_POST_OID NUMBER)',
'        RETURN CLOB;',
'    FUNCTION GET_PARAGRAPH (P_POST_OID NUMBER)',
'        RETURN CLOB;',
'    FUNCTION GET_PRE_CODE (P_POST_OID NUMBER)',
'        RETURN CLOB;',
'    FUNCTION GET_STEPS (P_POST_OID NUMBER)',
'        RETURN CLOB;',
'    FUNCTION GET_SUB_TITLE (P_POST_OID NUMBER)',
'        RETURN CLOB;',
'    FUNCTION GET_SUB_TITLE_DETELS (P_POST_OID NUMBER)',
'        RETURN CLOB;',
'END BLOG_POST_PKG;',
'/',
'',
'',
'CREATE OR REPLACE EDITIONABLE PACKAGE BODY "BLOG_POST_PKG" ',
'AS',
'    FUNCTION GET_POST_TITLE (P_POST_OID NUMBER)',
'        RETURN CLOB',
'    IS',
'        V_RET   CLOB;',
'    BEGIN',
'        IF P_POST_OID IS NULL',
'        THEN',
'            RETURN '''';',
'        END IF;',
'',
'        FOR X',
'            IN (SELECT    ''<xmp>',
'                 <title><span style="font-size:22px"><h2>''',
'                       || POST_TITLE',
'                       || ''</h2></span></title>',
'                </xmp>''    POST_TITLE',
'                  FROM BLOG_POST_TITLE',
'                 WHERE POST_OID = P_POST_OID)',
'        LOOP',
'            V_RET := V_RET || X.POST_TITLE || '''';',
'        END LOOP;',
'',
'        RETURN V_RET;',
'    END GET_POST_TITLE;',
'',
'',
'    FUNCTION GET_META_DESCRIPTION (P_POST_OID NUMBER)',
'        RETURN CLOB',
'    IS',
'        V_RET   CLOB;',
'    BEGIN',
'        IF P_POST_OID IS NULL',
'        THEN',
'            RETURN '''';',
'        END IF;',
'',
'        FOR X',
'            IN (SELECT    ''<xmp>',
unistr('                 <meta     name=\201Ddescription\201D content=\201D'''),
'                       || META_DESCRIPTION',
unistr('                       || ''\201D>'),
'                </xmp>''    META_DESCRIPTION',
'                  FROM BLOG_POST_TITLE',
'                 WHERE POST_OID = P_POST_OID)',
'        LOOP',
'            V_RET := V_RET || X.META_DESCRIPTION || '''';',
'        END LOOP;',
'',
'        RETURN V_RET;',
'    END GET_META_DESCRIPTION;',
'',
'',
'    FUNCTION GET_POST_NAME (P_POST_OID NUMBER)',
'        RETURN CLOB',
'    IS',
'        V_RET   CLOB;',
'    BEGIN',
'        IF P_POST_OID IS NULL',
'        THEN',
'            RETURN '''';',
'        END IF;',
'',
'        FOR X',
'            IN (SELECT    ''<xmp>',
'                 <p style="text-align:center"> <span > <strong><span style="font-size:22px"><h2>''',
'                       || POST_NAME',
'                       || ''</h2></span></strong></span></p>',
'                </xmp>''    POST_NAME',
'                  FROM BLOG_POST',
'                 WHERE POST_OID = P_POST_OID)',
'        LOOP',
'            V_RET := V_RET || X.POST_NAME || '''';',
'        END LOOP;',
'',
'        RETURN V_RET;',
'    END GET_POST_NAME;',
'',
'',
'    FUNCTION GET_POST_DESCRIPTION (P_POST_OID NUMBER)',
'        RETURN CLOB',
'    IS',
'        V_RET   CLOB;',
'    BEGIN',
'        IF P_POST_OID IS NULL',
'        THEN',
'            RETURN '''';',
'        END IF;',
'',
'        FOR X',
'            IN (SELECT    ''<xmp>',
'                 <div>&nbsp;</div><p><span style="font-size:18px"><span >''',
'                       || POST_DESCRIPTION',
'                       || '' </span></span></p>',
'                </xmp>''    POST_DESCRIPTION',
'                  FROM BLOG_POST',
'                 WHERE POST_OID = P_POST_OID)',
'        LOOP',
'            V_RET := V_RET || X.POST_DESCRIPTION || '''';',
'        END LOOP;',
'',
'        RETURN V_RET;',
'    END GET_POST_DESCRIPTION;',
'',
'',
'    FUNCTION GET_IMAGE_URL (P_POST_OID NUMBER)',
'        RETURN CLOB',
'    IS',
'        V_RET   CLOB;',
'    BEGIN',
'        IF P_POST_OID IS NULL',
'        THEN',
'            RETURN '''';',
'        END IF;',
'',
'        FOR X',
'            IN (SELECT    ''<xmp><div class="separator" style="clear: both;">',
'               <a href=" ''',
'                       || IMAGE_URL',
'                       || ''" ',
'                    style="display: block; padding: 1em 0; text-align: center; ">',
'                <img alt=" ''',
'                       || IMAGE_TITLE',
'                       || ''" border="2" class="post-img" ',
'                src=" ''',
'                       || IMAGE_URL',
'                       || '' "',
'                    title=" ''',
'                       || IMAGE_TITLE',
'                       || ''" />  </a></div></xmp>''    IMAGE_URL',
'                  FROM BLOG_POST_IMAGE',
'                 WHERE POST_OID = P_POST_OID)',
'        LOOP',
'            V_RET := V_RET || X.IMAGE_URL || '''';',
'        END LOOP;',
'',
'        RETURN V_RET;',
'    END GET_IMAGE_URL;',
'',
'    FUNCTION GET_LINK_URL (P_POST_OID NUMBER)',
'        RETURN CLOB',
'    IS',
'        V_RET   CLOB;',
'    BEGIN',
'        IF P_POST_OID IS NULL',
'        THEN',
'            RETURN '''';',
'        END IF;',
'',
'        FOR X',
unistr('            IN (SELECT    ''<xmp><p style="font-family:Times New Roman,color:black;font-size:18px" ><span ><strong>\D83D\DD17 '''),
'                       || LINK_URL_TITLE',
'                       || ''-</strong></span>',
'		<br><span >&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; URL- </span><a href=" ''',
'                      || LINK_URL',
'                       || ''"rel="nofollow" target="_blank"><span ><strong> ''',
'                       || BUTTON_NAME',
'                       || ''</strong></span></a>',
'		</span><br>&nbsp;</p></xmp>''    LINK_URL_TEX',
'                  FROM BLOG_POST_LINK_BUILDER',
'                 WHERE POST_OID = P_POST_OID)',
'        LOOP',
'            V_RET := V_RET || X.LINK_URL_TEX || '''';',
'        END LOOP;',
'',
'        RETURN V_RET;',
'    END GET_LINK_URL;',
'',
'',
'    FUNCTION GET_PARAGRAPH (P_POST_OID NUMBER)',
'        RETURN CLOB',
'    IS',
'        V_RET   CLOB;',
'    BEGIN',
'        IF P_POST_OID IS NULL',
'        THEN',
'            RETURN '''';',
'        END IF;',
'',
'        FOR X',
'            IN (SELECT    ''<xmp>',
'                 <p>  <span style="font-size:18px">    <span > ''',
'                       || PARAGRAPH',
'                       || '' </span>  </span></p>',
'                </xmp>''    PARAGRAPH',
'                  FROM BLOG_POST_PARAGRAPH',
'                 WHERE POST_OID = P_POST_OID)',
'        LOOP',
'            V_RET := V_RET || X.PARAGRAPH || '''';',
'        END LOOP;',
'',
'        RETURN V_RET;',
'    END GET_PARAGRAPH;',
'',
'',
'',
'    FUNCTION GET_PRE_CODE (P_POST_OID NUMBER)',
'        RETURN CLOB',
'    IS',
'        V_RET   CLOB;',
'    BEGIN',
'        IF P_POST_OID IS NULL',
'        THEN',
'            RETURN '''';',
'        END IF;',
'',
'        FOR X',
'            IN (SELECT    ''<xmp>',
'                 <pre class="prettyprint lang-scm highlight" style=" position: relative; background: #13052e; border-radius: 15px 15px 15px 15px; display: block; margin-top: 0; direction: ltr; unicode-bidi: bidi-override; color: #fff; word-break: nor'
||'mal; border-radius: 0; border: none; border-left: 7px solid #F9BC00; width: 95%; margin: 1em auto; padding: 0em; white-space: pre-wrap; background-color: #13052e; border-radius: 8px;"> ',
'   <code style="font-size:17px; font-family: monospace;">''',
'                       || PRE_CODE',
'                       || ''</code></pre>',
'                </xmp>''    PRE_CODE',
'                  FROM BLOG_POST_PRE_CODE',
'                 WHERE POST_OID = P_POST_OID)',
'        LOOP',
'            V_RET := V_RET || X.PRE_CODE || '''';',
'        END LOOP;',
'',
'        RETURN V_RET;',
'    END GET_PRE_CODE;',
'',
'',
'',
'    FUNCTION GET_STEPS (P_POST_OID NUMBER)',
'        RETURN CLOB',
'    IS',
'        V_RET   CLOB;',
'    BEGIN',
'        IF P_POST_OID IS NULL',
'        THEN',
'            RETURN '''';',
'        END IF;',
'',
'        FOR X',
'            IN (SELECT    ''<xmp>',
'                 <div><span style="font-size:18px"><strong>''',
'                       || STEPS',
'                       || ''</strong>&nbsp;''',
'                       || WITH_OUT_BOLD',
'                       || ''  </span></div>',
'                </xmp>''    STEPS',
'                  FROM BLOG_POST_STEPS',
'                 WHERE POST_OID = P_POST_OID)',
'        LOOP',
'            V_RET := V_RET || X.STEPS || '''';',
'        END LOOP;',
'',
'        RETURN V_RET;',
'    END GET_STEPS;',
'',
'',
'',
'    FUNCTION GET_SUB_TITLE (P_POST_OID NUMBER)',
'        RETURN CLOB',
'    IS',
'        V_RET   CLOB;',
'    BEGIN',
'        IF P_POST_OID IS NULL',
'        THEN',
'            RETURN '''';',
'        END IF;',
'',
'        FOR X',
'            IN (SELECT    ''<xmp>',
'                 <p>  <span style="font-size:20px"> <strong><span > ''',
'                       || SUB_TITLE',
'                       || '' </span></strong></span>/p>',
'                </xmp>''    SUB_TITLE',
'                  FROM BLOG_POST_SUB_TITLE',
'                 WHERE POST_OID = P_POST_OID)',
'        LOOP',
'            V_RET := V_RET || X.SUB_TITLE || '''';',
'        END LOOP;',
'',
'        RETURN V_RET;',
'    END GET_SUB_TITLE;',
'',
'',
'',
'    FUNCTION GET_SUB_TITLE_DETELS (P_POST_OID NUMBER)',
'        RETURN CLOB',
'    IS',
'        V_RET   CLOB;',
'    BEGIN',
'        IF P_POST_OID IS NULL',
'        THEN',
'            RETURN '''';',
'        END IF;',
'',
'        FOR X',
'            IN (SELECT    ''<xmp>',
'                 <p  <span style="font-size:18px">    <span > ''',
'                       || SUB_TITLE_DETELS',
'                       || '' </span>  </span></p>',
'                </xmp>''    SUB_TITLE_DETELS',
'                  FROM BLOG_POST_SUB_TITLE',
'                 WHERE POST_OID = P_POST_OID)',
'        LOOP',
'            V_RET := V_RET || X.SUB_TITLE_DETELS || '''';',
'        END LOOP;',
'',
'        RETURN V_RET;',
'    END GET_SUB_TITLE_DETELS;',
'END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PACKAGE "CUST_NUMBER" ',
'AS ',
'   FUNCTION GET_32_BASE_NUMBER (P_DEC_NUM NUMBER) ',
'      RETURN VARCHAR2; ',
'   FUNCTION GET_10_BASE_NUMBER (P_32_NUM VARCHAR2) ',
'      RETURN NUMBER; ',
'END; ',
'/',
'',
'',
'CREATE OR REPLACE EDITIONABLE PACKAGE BODY "CUST_NUMBER" ',
'AS ',
'   /* FUNCTION GET_NUMBER_SET (ARGG VARCHAR2, P_DEC_NUM NUMBER) ',
'       RETURN VARCHAR2; ',
'    FUNCTION GET_NUMARIC_VALUE (P_DEC_NUM VARCHAR2) ',
'       RETURN NUMBER; ',
'    FUNCTION GET_ALFA_NUMARIC_VALUE (P_DEC_NUM NUMBER) ',
'       RETURN VARCHAR2;*/ ',
'   -- v_aaa varchar2(2000):=  ''"0"=:T:,"1"=:2:,"2"=:1:,"3"=:9:,"4"=:5:,"5"=:4:,"6"=:7:,"7"=:6:,"8"=:3:,"9"=:8:,"10"=:C:,"11"=:D:,"12"=:A:,"13"=:B:,"14"=:J:,"15"=:K:,"16"=:L:,"17"=:H:,"18"=:E:,"19"=:F:,"20"=:G:,"21"=:M:,"22"=:N:,"23"=:P:,"24"=:U:,"25"'
||'=:V:,"26"=:W:,"27"=:X:,"28"=:Y:,"29"=:Q:,"30"=:R:,"31"=:S:''; ',
'   --  TYPE employee_table_struct IS TABLE OF VARCHAR2(30) INDEX BY BINARY_INTEGER; ',
'   --   employee_table   employee_table_struct; ',
'   -- employee_table(0) employee_table_struct:=''T''; ',
'   -- employee_table(1):=''2''; ',
'   -- employee_table(2):=''1''; ',
'   --employee_table(3):=''9''; ',
'   -- employee_table(4):=''5''; ',
'   -- employee_table(5):=''4''; employee_table(6):=''7''; employee_table(7):=''6''; employee_table(8):=''3''; employee_table(9):=''8''; employee_table(10):=''C''; employee_table(11):=''D''; employee_table(12):=''A''; employee_table(13):=''B''; employee_table(14):=''J'';'
||' employee_table(15):=''K''; employee_table(16):=''L''; employee_table(17):=''H''; employee_table(18):=''E''; employee_table(19):=''F''; employee_table(20):=''G''; employee_table(21):=''M''; employee_table(22):=''N''; employee_table(23):=''P''; employee_table(24):=''U'';'
||' employee_table(25):=''V''; employee_table(26):=''W''; employee_table(27):=''X''; employee_table(28):=''Y''; employee_table(29):=''Q''; employee_table(30):=''R''; employee_table(31):=''S''; ',
'   FUNCTION GET_NUMARIC_VALUE (P_DEC_NUM VARCHAR2) ',
'      RETURN NUMBER ',
'   IS ',
'      V_RET   VARCHAR2 (2000); ',
'   --   TYPE employee_table_struct IS TABLE OF VARCHAR2(30) INDEX BY BINARY_INTEGER; ',
'   -- employee_table   employee_table_struct; ',
'   BEGIN ',
'      -- employee_table(0):=''T''; employee_table(1):=''2'';employee_table(2):=''1''; employee_table(3):=''9''; employee_table(4):=''5''; employee_table(5):=''4''; employee_table(6):=''7''; employee_table(7):=''6''; employee_table(8):=''3''; employee_table(9):=''8''; em'
||'ployee_table(10):=''C''; employee_table(11):=''D''; employee_table(12):=''A''; employee_table(13):=''B''; employee_table(14):=''J''; employee_table(15):=''K''; employee_table(16):=''L''; employee_table(17):=''H''; employee_table(18):=''E''; employee_table(19):=''F''; em'
||'ployee_table(20):=''G''; employee_table(21):=''M''; employee_table(22):=''N''; employee_table(23):=''P''; employee_table(24):=''U''; employee_table(25):=''V''; employee_table(26):=''W''; employee_table(27):=''X''; employee_table(28):=''Y''; employee_table(29):=''Q''; em'
||'ployee_table(30):=''R''; employee_table(31):=''S''; ',
'      --select instr(:v_aaa,'':''||:P_DEC_NUM||'':'')-2 ',
'      -- from dual; ',
'      CASE UPPER (P_DEC_NUM) ',
'         WHEN ''S'' ',
'         THEN ',
'            V_RET := ''0''; ',
'         WHEN ''2'' ',
'         THEN ',
'            V_RET := ''1''; ',
'         WHEN ''1'' ',
'         THEN ',
'            V_RET := ''2''; ',
'         WHEN ''9'' ',
'         THEN ',
'            V_RET := ''3''; ',
'         WHEN ''5'' ',
'         THEN ',
'            V_RET := ''4''; ',
'         WHEN ''4'' ',
'         THEN ',
'            V_RET := ''5''; ',
'         WHEN ''7'' ',
'         THEN ',
'            V_RET := ''6''; ',
'         WHEN ''6'' ',
'         THEN ',
'            V_RET := ''7'';                                                  --- ',
'         WHEN ''3'' ',
'         THEN ',
'            V_RET := ''8''; ',
'         WHEN ''8'' ',
'         THEN ',
'            V_RET := ''9''; ',
'         WHEN ''C'' ',
'         THEN ',
'            V_RET := ''10''; ',
'         WHEN ''D'' ',
'         THEN ',
'            V_RET := ''11''; ',
'         WHEN ''A'' ',
'         THEN ',
'            V_RET := ''12'';                                               ---12 ',
'         WHEN ''B'' ',
'         THEN ',
'            V_RET := ''13''; ',
'         WHEN ''J'' ',
'         THEN ',
'            V_RET := ''14'';                                                 --- ',
'         WHEN ''K'' ',
'         THEN ',
'            V_RET := ''15''; ',
'         WHEN ''L'' ',
'         THEN ',
'            V_RET := ''16''; ',
'         WHEN ''H'' ',
'         THEN ',
'            V_RET := ''17''; ',
'         WHEN ''E'' ',
'         THEN ',
'            V_RET := ''18''; ',
'         WHEN ''F'' ',
'         THEN ',
'            V_RET := ''19''; ',
'         WHEN ''G'' ',
'         THEN ',
'            V_RET := ''20''; ',
'         WHEN ''M'' ',
'         THEN ',
'            V_RET := ''21'';                                               ---21 ',
'         WHEN ''N'' ',
'         THEN ',
'            V_RET := ''22''; ',
'         WHEN ''P'' ',
'         THEN ',
'            V_RET := ''23''; ',
'         WHEN ''U'' ',
'         THEN ',
'            V_RET := ''24''; ',
'         WHEN ''V'' ',
'         THEN ',
'            V_RET := ''25''; ',
'         WHEN ''W'' ',
'         THEN ',
'            V_RET := ''26''; ',
'         WHEN ''X'' ',
'         THEN ',
'            V_RET := ''27''; ',
'         WHEN ''Y'' ',
'         THEN ',
'            V_RET := ''28''; ',
'         WHEN ''Q'' ',
'         THEN ',
'            V_RET := ''29'';                                                 --- ',
'         WHEN ''R'' ',
'         THEN ',
'            V_RET := ''30''; ',
'         WHEN ''T'' ',
'         THEN ',
'            V_RET := ''31''; ',
'      END CASE; ',
'      RETURN TO_NUMBER (V_RET); ',
'   END; ',
'   FUNCTION GET_ALFA_NUMARIC_VALUE (P_DEC_NUM NUMBER) ',
'      RETURN VARCHAR2 ',
'   IS ',
'      V_RET   VARCHAR2 (1); ',
'   BEGIN ',
'       CASE UPPER (to_char(P_DEC_NUM)) ',
'         WHEN ''0'' ',
'         THEN ',
'            V_RET := ''S''; ',
'         WHEN ''1'' ',
'         THEN ',
'            V_RET := ''2''; ',
'         WHEN ''2'' ',
'         THEN ',
'            V_RET := ''1''; ',
'         WHEN ''3'' ',
'         THEN ',
'            V_RET := ''9''; ',
'         WHEN ''4'' ',
'         THEN ',
'            V_RET := ''5''; ',
'         WHEN ''5'' ',
'         THEN ',
'            V_RET := ''4''; ',
'         WHEN ''6'' ',
'         THEN ',
'            V_RET := ''7''; ',
'         WHEN ''7'' ',
'         THEN ',
'            V_RET := ''6''; ',
'         WHEN ''8'' ',
'         THEN ',
'            V_RET := ''3''; ',
'         WHEN ''9'' ',
'         THEN ',
'            V_RET := ''8''; ',
'         WHEN ''10'' ',
'         THEN ',
'            V_RET := ''C''; ',
'         WHEN ''11'' ',
'         THEN ',
'            V_RET := ''D''; ',
'         WHEN ''12'' ',
'         THEN ',
'            V_RET := ''A''; ',
'         WHEN ''13'' ',
'         THEN ',
'            V_RET := ''B''; ',
'         WHEN ''14'' ',
'         THEN ',
'            V_RET := ''J''; ',
'         WHEN ''15'' ',
'         THEN ',
'            V_RET := ''K''; ',
'         WHEN ''16'' ',
'         THEN ',
'            V_RET := ''L''; ',
'         WHEN ''17'' ',
'         THEN ',
'            V_RET := ''H''; ',
'         WHEN ''18'' ',
'         THEN ',
'            V_RET := ''E''; ',
'         WHEN ''19'' ',
'         THEN ',
'            V_RET := ''F''; ',
'         WHEN ''20'' ',
'         THEN ',
'            V_RET := ''G''; ',
'         WHEN ''21'' ',
'         THEN ',
'            V_RET := ''M''; ',
'         WHEN ''22'' ',
'         THEN ',
'            V_RET := ''N''; ',
'         WHEN ''23'' ',
'         THEN ',
'            V_RET := ''P''; ',
'         WHEN ''24'' ',
'         THEN ',
'            V_RET := ''U''; ',
'         WHEN ''25'' ',
'         THEN ',
'            V_RET := ''V''; ',
'         WHEN ''26'' ',
'         THEN ',
'            V_RET := ''W''; ',
'         WHEN ''27'' ',
'         THEN ',
'            V_RET := ''X''; ',
'         WHEN ''28'' ',
'         THEN ',
'            V_RET := ''Y''; ',
'         WHEN ''29'' ',
'         THEN ',
'            V_RET := ''Q''; ',
'         WHEN ''30'' ',
'         THEN ',
'            V_RET := ''R''; ',
'         WHEN ''31'' ',
'         THEN ',
'            V_RET := ''T''; ',
'      END CASE; ',
'      RETURN V_RET; ',
'   END; ',
'   FUNCTION GET_NUMBER_SET (ARGG VARCHAR2, P_DEC_NUM NUMBER) ',
'      RETURN VARCHAR2 ',
'   IS ',
'      LNGTEMP      NUMBER; ',
'      STRNUMBERS   VARCHAR2 (2000) := ARGG; ',
'   BEGIN ',
'      LNGTEMP := 0; ',
'      IF P_DEC_NUM >= 32 ',
'      THEN ',
'         LNGTEMP := (P_DEC_NUM - MOD (P_DEC_NUM, 32)) / 32; ',
'         STRNUMBERS := ',
'            GET_ALFA_NUMARIC_VALUE (MOD (P_DEC_NUM, 32)) || STRNUMBERS; ',
'         IF LNGTEMP >= 32 ',
'         THEN ',
'            STRNUMBERS := GET_NUMBER_SET (STRNUMBERS, LNGTEMP); ',
'         ELSE ',
'            STRNUMBERS := GET_ALFA_NUMARIC_VALUE (LNGTEMP) || STRNUMBERS; ',
'         END IF; ',
'      ELSE ',
'         STRNUMBERS := GET_ALFA_NUMARIC_VALUE (P_DEC_NUM); ',
'      END IF; ',
'      RETURN STRNUMBERS; ',
'   END; ',
'   FUNCTION GET_32_BASE_NUMBER (P_DEC_NUM NUMBER) ',
'      RETURN VARCHAR2 ',
'   IS ',
'      STRVALUES   VARCHAR2 (2000) := ''''; ',
'   BEGIN ',
'      IF P_DEC_NUM IS NULL ',
'      THEN ',
'         RETURN NULL; ',
'      ELSE ',
'         STRVALUES := GET_NUMBER_SET ('''', P_DEC_NUM); ',
'         RETURN STRVALUES; ',
'      END IF; ',
'   END; ',
'   FUNCTION GET_10_BASE_NUMBER (P_32_NUM VARCHAR2) ',
'      RETURN NUMBER ',
'   IS ',
'      STRVALUES   VARCHAR2 (2000) := ''''; ',
'      V_ERT       VARCHAR2 (1); ',
'      V_RET       NUMBER := 0; ',
'   BEGIN ',
'        ',
'       IF P_32_NUM IS NULL THEN ',
'          RETURN NULL; ',
'       END IF; ',
'        ',
'      FOR I IN 1 .. LENGTH (P_32_NUM) ',
'      LOOP ',
'         V_ERT := SUBSTR (P_32_NUM, I, 1); ',
'         V_RET := ',
'            V_RET ',
'            + GET_NUMARIC_VALUE (V_ERT) * POWER (32, LENGTH (P_32_NUM) - I); ',
'      END LOOP; ',
'      RETURN V_RET; ',
'   END; ',
'END CUST_NUMBER; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PACKAGE "EC_API" EC_API',
'AS',
'   TYPE PersonalInfo IS RECORD',
'   (',
'      status                     VARCHAR2 (50),',
'      nameBn                     VARCHAR2 (200),',
'      nameEn                     VARCHAR2 (200),',
'      gender                     VARCHAR2 (20),',
'      bloodGroup                 VARCHAR2 (50),',
'      dateOfBirth                DATE,                     --   VARCHAR2 (50),',
'      father                     VARCHAR2 (200),',
'      mother                     VARCHAR2 (200),',
'      spouse                     VARCHAR2 (200),',
'      nationalId                 VARCHAR2 (200),                 --    NUMBER,',
'      division                   VARCHAR2 (100),',
'      district                   VARCHAR2 (100),',
'      rmo                        VARCHAR2 (100),',
'      upozila                    VARCHAR2 (100),',
'      postOffice                 VARCHAR2 (100),',
'      postalCode                 VARCHAR2 (100),                    -- NUMBER,',
'      additionalMouzaOrMoholla   VARCHAR2 (100),',
'      additionalVillageOrRoad    VARCHAR2 (100),',
'      homeOrHoldingNo            VARCHAR2 (100),',
'      region                     VARCHAR2 (200),',
'      photo                      CLOB,',
'      errorMessage                    VARCHAR2 (4000)',
'   );',
'',
'   PROCEDURE EC_TOKEN_API (pToken       OUT VARCHAR2,',
'                           pErrorFlag   OUT VARCHAR2,',
'                           pErrorMsg    OUT VARCHAR2);',
'',
'   PROCEDURE EC_DETAIL_API (pNID                VARCHAR2,',
'                            pDOB                VARCHAR2,',
'                            pDetailInfo     OUT                             pErrorFlag      OUT VARCHAR2,',
'                            pErrorMessage   OUT VARCHAR2);',
'END;',
'/',
'',
'',
'CREATE OR REPLACE EDITIONABLE PACKAGE BODY "EC_API" EC_API',
'IS',
'   PROCEDURE EC_TOKEN_API (pToken       OUT VARCHAR2,',
'                           pErrorFlag   OUT VARCHAR2,',
'                           pErrorMsg    OUT VARCHAR2)',
'   IS',
'      req               UTL_HTTP.REQ;',
'      resp              UTL_HTTP.RESP;',
'      vUrl              VARCHAR2 (200) := ''http://192.168.101.218/ec/login.php'';',
'    '))
);
null;
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_shared.append_to_install_script(
 p_id=>wwv_flow_imp.id(34855710406855915282)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   l_response_body   VARCHAR2 (32767);',
'      vData             VARCHAR2 (32767) := NULL;',
'      vResponse         CLOB;',
'      vStatus           VARCHAR2 (5);',
'      vstatusCode       VARCHAR2 (50);',
'      vUsername         VARCHAR2 (50);',
'      vAccess_token     VARCHAR2 (1000);',
'      vMyException      EXCEPTION;',
'   BEGIN',
'      vData := ''{"username": "phqq","password": "123456"}'';',
'',
'      BEGIN',
'         req := UTL_HTTP.BEGIN_REQUEST (vUrl, ''POST'', ''HTTP/1.1'');',
'         UTL_HTTP.SET_HEADER (req, ''Content-Length'', LENGTH (vData));',
'         UTL_HTTP.set_header (req, ''Content-Type'', ''application/json'');',
'         UTL_HTTP.WRITE_TEXT (req, vData);',
'         resp := UTL_HTTP.GET_RESPONSE (req);',
'         UTL_HTTP.READ_TEXT (resp, l_response_body);',
'         APEX_JSON.parse (l_response_body);',
'         DBMS_OUTPUT.put_line (l_response_body);',
'         -- vStatus := APEX_JSON.GET_VARCHAR2 (p_path => ''status'');',
'         --  vstatusCode := APEX_JSON.GET_VARCHAR2 (p_path => ''statusCode'');',
'         pToken :=',
'            APEX_JSON.GET_VARCHAR2 (p_path => ''success.data.access_token'');',
'      EXCEPTION',
'         WHEN OTHERS',
'         THEN',
'            pToken := NULL;',
'            pErrorMsg := ''Bearer Token Getting Error.'' || SQLERRM;',
'            RAISE vMyException;',
'      END;',
'   EXCEPTION',
'      WHEN vMyException',
'      THEN',
'         pErrorFlag := ''Y'';',
'   END;',
'',
'   PROCEDURE EC_DETAIL_API (pNID                VARCHAR2,',
'                            pDOB                VARCHAR2,',
'                            pDetailInfo     OUT                             pErrorFlag      OUT VARCHAR2,',
'                            pErrorMessage   OUT VARCHAR2)',
'   IS',
'      req               UTL_HTTP.REQ;',
'      resp              UTL_HTTP.RESP;',
'      http_req          UTL_HTTP.req;',
'      vTokenNo          VARCHAR2 (2000);',
'      t_http_version    VARCHAR2 (10) := ''HTTP/1.1'';',
'      pInputBody        VARCHAR2 (32767)',
'         := ''{"NID": "'' || pNID || ''", "DOB":'' || ''"'' || pDOB || ''"'' || ''}'';',
'      pUrl              VARCHAR2 (10000);',
'      l_response_body   CLOB;',
'      vMyException      EXCEPTION;',
'   BEGIN',
'      BEGIN',
'         WKSP_MYSTOCK.EC_API.',
'          EC_TOKEN_API (pToken       => vTokenNo,',
'                        pErrorFlag   => pErrorFlag,',
'                        pErrorMsg    => pErrorMessage);',
'      EXCEPTION',
'         WHEN OTHERS',
'         THEN',
'            pErrorMessage := '' Token Getting Problem.'' || SQLERRM;',
'            RAISE vMyException;',
'      END;',
'',
'      IF NVL (pErrorFlag, ''N'') = ''Y''',
'      THEN',
'         RAISE vMyException;',
'      END IF;',
'',
'      IF vTokenNo IS NULL',
'      THEN',
'         pErrorMessage := ''Token No Can Not Be Blank.'';',
'         RAISE vMyException;',
'      END IF;',
'',
'      BEGIN',
'         pUrl :=',
'               ''http://192.168.101.218/ec/getdetail.php?''',
'            || ''NID=''',
'            || pNID',
'            || ''&DOB=''',
'            || pDOB',
'            || ''&ACCESS_TOKEN=''',
'            || vTokenNo;',
'         req := UTL_HTTP.BEGIN_REQUEST (pUrl, ''POST'', ''HTTP/1.1'');',
'         UTL_HTTP.SET_HEADER (req, ''content-type'', ''application/json'');',
'         UTL_HTTP.SET_HEADER (req, ''Content-Length'', LENGTH (pInputBody));',
'         UTL_HTTP.WRITE_TEXT (req, pInputBody);',
'         resp := UTL_HTTP.GET_RESPONSE (req);',
'         UTL_HTTP.READ_TEXT (resp, l_response_body);',
'         APEX_JSON.parse (l_response_body);',
'         pDetailInfo.status := APEX_JSON.GET_VARCHAR2 (p_path => ''status'');',
'',
'         -- vstatusCode := APEX_JSON.GET_VARCHAR2 (p_path => ''statusCode'');',
'         IF pDetailInfo.status = ''OK''',
'         THEN',
'            pDetailInfo.nameBn :=',
'               APEX_JSON.GET_VARCHAR2 (p_path => ''success.data.name'');',
'            pDetailInfo.nameEn :=',
'               APEX_JSON.GET_VARCHAR2 (p_path => ''success.data.nameEn'');',
'            pDetailInfo.gender :=',
'               APEX_JSON.GET_VARCHAR2 (p_path => ''success.data.gender'');',
'            -- pDetailInfo.bloodGroup :=  APEX_JSON.GET_VARCHAR2 (p_path => ''success.data.bloodGroup'');',
'            pDetailInfo.dateOfBirth :=',
'               TO_DATE (',
'                  APEX_JSON.',
'                   GET_VARCHAR2 (p_path => ''success.data.dateOfBirth''),',
'                  ''YYYY-MM-DD'');',
'            pDetailInfo.father :=',
'               APEX_JSON.GET_VARCHAR2 (p_path => ''success.data.father'');',
'            pDetailInfo.mother :=',
'               APEX_JSON.GET_VARCHAR2 (p_path => ''success.data.mother'');',
'            pDetailInfo.spouse :=',
'               APEX_JSON.GET_VARCHAR2 (p_path => ''success.data.spouse'');',
'            pDetailInfo.nationalId :=',
'               APEX_JSON.GET_VARCHAR2 (p_path => ''success.data.nationalId'');',
'            pDetailInfo.division :=',
'               APEX_JSON.',
'                GET_VARCHAR2 (',
'                  p_path => ''success.data.permanentAddress.division'');',
'            pDetailInfo.district :=',
'               APEX_JSON.',
'                GET_VARCHAR2 (',
'                  p_path => ''success.data.permanentAddress.district'');',
'            -- pDetailInfo.rmo := APEX_JSON. GET_VARCHAR2 (p_path => ''success.data.permanentAddress.rmo'');',
'            pDetailInfo.upozila :=',
'               APEX_JSON.',
'                GET_VARCHAR2 (',
'                  p_path => ''success.data.permanentAddress.upozila'');',
'            pDetailInfo.postOffice :=',
'               APEX_JSON.',
'                GET_VARCHAR2 (',
'                  p_path => ''success.data.permanentAddress.postOffice'');',
'            pDetailInfo.postalCode :=',
'               APEX_JSON.',
'                GET_VARCHAR2 (',
'                  p_path => ''success.data.permanentAddress.postalCode'');',
'            pDetailInfo.additionalMouzaOrMoholla :=',
'               APEX_JSON.',
'                GET_VARCHAR2 (',
'                  p_path => ''success.data.permanentAddress.additionalMouzaOrMoholla'');',
'            pDetailInfo.additionalVillageOrRoad :=',
'               APEX_JSON.',
'                GET_VARCHAR2 (',
'                  p_path => ''success.data.permanentAddress.additionalVillageOrRoad'');',
'            pDetailInfo.homeOrHoldingNo :=',
'               APEX_JSON.',
'                GET_VARCHAR2 (',
'                  p_path => ''success.data.permanentAddress.homeOrHoldingNo'');',
'            pDetailInfo.region :=',
'               APEX_JSON.',
'                GET_VARCHAR2 (',
'                  p_path => ''success.data.permanentAddress.region'');',
'            pDetailInfo.photo :=',
'               APEX_JSON.GET_CLOB (p_path => ''success.data.photo'');',
'         ELSIF pDetailInfo.status != ''OK''',
'         THEN',
'            pDetailInfo.errorMessage :=',
'               APEX_JSON.GET_VARCHAR2 (p_path => ''error.message'');',
'            pErrorMessage := pDetailInfo.errorMessage;',
'            RAISE vMyException;',
'         END IF;',
'      /*EXCEPTION',
'         WHEN UTL_HTTP.END_OF_BODY',
'         THEN',
'            pErrorMessage := ''Body Reached. - '' || SQLERRM;',
'            UTL_HTTP.END_RESPONSE (resp);',
'            RAISE vMyException;',
'         WHEN OTHERS',
'         THEN',
'            pErrorMessage := SQLERRM;',
'            UTL_HTTP.END_RESPONSE (resp);',
'            RAISE vMyException;*/',
'      END;',
'   EXCEPTION',
'      WHEN vMyException',
'      THEN',
'         pErrorFlag := ''Y'';',
'   END;',
'END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PACKAGE "MYPACKAGE1" as',
'    procedure  def_attr_in_context(attr_nam in varchar2, attr_val in ',
'           varchar2);',
'end mypackage1;',
'/',
'',
'',
'CREATE OR REPLACE EDITIONABLE PACKAGE BODY "MYPACKAGE1" as',
'    procedure def_attr_in_context(attr_nam in varchar2, attr_val in varchar2) is',
'    begin     ',
'         DBMS_SESSION.set_context',
'          (namespace => ''context1''',
'          ,attribute => attr_nam',
'          ,value     => attr_val',
'          ,client_id =>sys_context(''USERENV'',''CLIENT_IDENTIFIER''));',
'    end def_attr_in_context;',
'end mypackage1;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PACKAGE "OPR" ',
'AS  ',
'PROCEDURE  GET_REPORT_HEAD (P_REPORT_NAME IN NVARCHAR2, P_OUT IN OUT NVARCHAR2);  ',
'   PROCEDURE  GET_REPORT_HEAD_V2 (P_REPORT_NAME IN NVARCHAR2, P_OUT IN OUT NVARCHAR2);  ',
'   PROCEDURE STORE_SURETY_ACCOUNT (P_SURETY_OID       IN NUMBER,  ',
'                                   P_BAILBOND_OID     IN NUMBER,  ',
'                                   P_TRANSACTION_DT   IN DATE,  ',
'                                   P_DESCRIPTION      IN VARCHAR2,  ',
'                                   P_AMOUNT_DR        IN NUMBER,  ',
'                                   P_AMOUNT_CR        IN NUMBER);  ',
'end;  ',
'/',
'',
'',
'CREATE OR REPLACE EDITIONABLE PACKAGE BODY "OPR" ',
'AS  ',
'   PROCEDURE REPORT_AUTH (P_USER_OID          VARCHAR2,  ',
'                          P_REPORT_NAME       VARCHAR2,  ',
'                          P_REPORT_ID     OUT VARCHAR2)  ',
'   IS  ',
'      V_OID      NUMBER;  ',
'      V_REF_ID   VARCHAR (30);  ',
'      V_TDX      DATE := SYSDATE;  ',
'   BEGIN  ',
'      SELECT NVL (MAX (OID), 0) + 1 INTO V_OID FROM REPORT_LOG;  ',
'  ',
'      V_REF_ID :=  ',
'            TO_CHAR (V_TDX, ''SSMIHH24DDDRR'')  ',
'         || ''-''  ',
'         || CUST_NUMBER.GET_32_BASE_NUMBER (V_OID);  ',
'  ',
'      INSERT INTO REPORT_LOG (OID,  ',
'                              REPORT_NAME,  ',
'                              REPORT_DATE,  ',
'                              REF_ID,  ',
'                              PID_ACL_USER)  ',
'          VALUES (V_OID,  ',
'                  P_REPORT_NAME,  ',
'                  V_TDX,  ',
'                  V_REF_ID,  ',
'                  P_USER_OID);  ',
'      P_REPORT_ID := V_REF_ID;  ',
'      COMMIT;  ',
'   END;  ',
'   PROCEDURE GET_REPORT_HEAD (P_REPORT_NAME   IN     NVARCHAR2,  ',
'                              P_OUT           IN OUT NVARCHAR2)  ',
'   AS  ',
'      V_RET   NVARCHAR2 (4000);  ',
'      V_ID    NVARCHAR2 (500);  ',
'   BEGIN  ',
'      REPORT_AUTH (ACL.GET_CURRENT_USER, P_REPORT_NAME, V_ID);  ',
'      P_OUT :=  ',
'         ''<div class="rpt_report_logid">'' || V_ID || ''</div>'';  ',
'  ',
'   END;  ',
'   PROCEDURE GET_REPORT_HEAD_V2 (P_REPORT_NAME   IN     NVARCHAR2,  ',
'                                 P_OUT           IN OUT NVARCHAR2)  ',
'   AS  ',
'      V_RET   NVARCHAR2 (4000);  ',
'      V_ID    NVARCHAR2 (500);  ',
'   BEGIN  ',
'      REPORT_AUTH (ACL.GET_CURRENT_USER, P_REPORT_NAME, V_ID);  ',
'      P_OUT :=  ',
'         ''<!--<div align="center"  class="rpt_goponio">??????</div>-->  ',
'<table width="100%" border="0" cellspacing="0" cellpadding="3">  ',
'  <tr>  ',
'    <td  valign="top" class="rpt_police_date"><!-- ???????? ?????~''  ',
'         || CONV_ENGLISH_BANGLA_DATE (TO_CHAR (SYSDATE, ''DD MON, YYYY''))  ',
'         || ''--></td>  ',
'    <td   valign="top"></td>  ',
'    <td   align="right" valign="top">  ',
'    <div class="rpt_report_logid">  ',
' ''  ',
'         || V_ID  ',
'         || ''  ',
'</div></td>  ',
'  </tr>  ',
'</table>'';  ',
'   END;  ',
'   PROCEDURE STORE_SURETY_ACCOUNT (P_SURETY_OID       IN NUMBER,  ',
'                                   P_BAILBOND_OID     IN NUMBER,  ',
'                                   P_TRANSACTION_DT   IN DATE,  ',
'                                   P_DESCRIPTION      IN VARCHAR2,  ',
'                                   P_AMOUNT_DR        IN NUMBER,  ',
'                                   P_AMOUNT_CR        IN NUMBER)  ',
'   AS  ',
'   BEGIN  ',
'      INSERT INTO SURETY_ACCOUNT (OID,  ',
'                                  SURETY_OID,  ',
'                                  BAILBOND_OID,  ',
'                                  TRANSACTION_DATE,  ',
'                                  DESCRIPTION,  ',
'                                  AMOUNT_DR,  ',
'                                  AMOUNT_CR)  ',
'          VALUES ( (    SELECT NVL (MAX (OID), 0) + 1 FROM SURETY_ACCOUNT),  ',
'                  P_SURETY_OID,  ',
'                  P_BAILBOND_OID,  ',
'                  P_TRANSACTION_DT,  ',
'                  P_DESCRIPTION,  ',
'                  P_AMOUNT_DR,  ',
'                  P_AMOUNT_CR);  ',
'      ',
'   END;  ',
'END;  ',
' ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PACKAGE "PACKAGE" PLEX AUTHID as ',
' ',
'PACKAGE PLEX AUTHID current_user IS ',
'c_plex_name        CONSTANT VARCHAR2(30 CHAR) := ''PLEX - PL/SQL Export Utilities''; ',
'c_plex_version     CONSTANT VARCHAR2(10 CHAR) := ''2.4.2''; ',
'c_plex_url         CONSTANT VARCHAR2(40 CHAR) := ''https://github.com/ogobrecht/plex''; ',
'c_plex_license     CONSTANT VARCHAR2(10 CHAR) := ''MIT''; ',
'c_plex_license_url CONSTANT VARCHAR2(60 CHAR) := ''https://github.com/ogobrecht/plex/blob/master/LICENSE.txt''; ',
'c_plex_author      CONSTANT VARCHAR2(20 CHAR) := ''Ottmar Gobrecht''; ',
'/',
'',
'',
'CREATE OR REPLACE EDITIONABLE PACKAGE "PKG_PRIMEKEY" ',
'AS',
'-- ATI Limited ...',
'   FUNCTION fnc_primekey (p_nameofseq IN VARCHAR2)',
'      RETURN NUMBER;',
'END pkg_primekey;',
'/',
'',
'',
'CREATE OR REPLACE EDITIONABLE PACKAGE BODY "PKG_PRIMEKEY" ',
'AS',
'   FUNCTION fnc_primekey (p_nameofseq IN VARCHAR2)',
'      RETURN NUMBER',
'   --  ATI Limited ...',
'   IS',
'      PRAGMA AUTONOMOUS_TRANSACTION;',
'      sql_qrystmt   VARCHAR2 (300);',
'      v_returnval   NUMBER;',
'   BEGIN',
'      sql_qrystmt := ''SELECT '' || p_nameofseq || ''.NEXTVAL FROM DUAL'';',
'      EXECUTE IMMEDIATE sql_qrystmt INTO v_returnval;',
'      IF v_returnval < 1000000000',
'      THEN',
'         v_returnval :=',
'              ( ( (TO_NUMBER (TO_CHAR (SYSDATE, ''RRMM'')) * 10)) * 1000000000)',
'            + v_returnval;',
'         RETURN (v_returnval);',
'      ELSE',
'         DBMS_OUTPUT.put_line (',
'            ''Sequence generates a value greater than 999999999 that exceeds convention.'');',
'      END IF;',
'   END;',
'END pkg_primekey;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PACKAGE "PRODUCT_INFORMATION" ',
'AS ',
' ',
' FUNCTION GET_PRODETAILS ',
'      RETURN VARCHAR2; ',
'   FUNCTION GET_IN_QTY ',
'      RETURN NUMBER; ',
'   FUNCTION GET_OUT_QTY ',
'      RETURN NUMBER; ',
'   FUNCTION GET_CORRENT_STOCK ',
'      RETURN NUMBER; ',
' ',
'END; ',
'/',
'',
'',
'CREATE OR REPLACE EDITIONABLE PACKAGE BODY "PRODUCT_INFORMATION" ',
'AS ',
' ',
' ',
'FUNCTION  GET_PRODETAILS (PROID INTEGER) RETURN VARCHAR2 IS ',
'tmpVar VARCHAR2(4000); ',
'BEGIN ',
'   tmpVar := ''''; ',
'  select  ''Code:-'' || PRODUCT_CODE  || '','' ||   '' Product Name:-'' || PRODUCT_NAME into tmpVar ',
'  from PRODUCT ',
' where   PRODUCT_ID = PROID and rownum <=1; ',
' ',
'   RETURN tmpVar; ',
'   ',
'END; ',
' ',
'FUNCTION  GET_IN_QTY (INSTOCK INTEGER) RETURN NUMBER IS ',
'tmpVar NUMBER; ',
'BEGIN ',
'   tmpVar := ''''; ',
'  select  sum (QTY) into tmpVar ',
'  from PURCHASE_DETALIS ',
' where  PRODUCT_DETELS_ID = INSTOCK and SUBMIT = 1 and rownum <=1; ',
'  ',
'  ',
'   RETURN tmpVar; ',
'   ',
'END; ',
'FUNCTION  GET_OUT_QTY (OUTSTOCK INTEGER) RETURN NUMBER IS ',
'tmpVar NUMBER; ',
'BEGIN ',
'   tmpVar := ''''; ',
'  select  sum (QTY) into tmpVar ',
'  from SALES_DTLS ',
' where OID = OUTSTOCK and SUBMIT = 1 and rownum <=1; ',
'  ',
'  ',
'   RETURN tmpVar; ',
'   ',
'END; ',
'FUNCTION  GET_CORRENT_STOCK (CORRENTSTOCK INTEGER) RETURN NUMBER IS ',
'tmpVar NUMBER; ',
'BEGIN ',
'   tmpVar := ''''; ',
'   select (''GET_IN_QTY''- ''GET_OUT_QTY'') into tmpVar ',
'  from dual ',
' where rownum <=1; ',
' ',
'   RETURN tmpVar; ',
'   ',
'END; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PACKAGE "USER_AUTH_IP" ',
'AS ',
' ',
'    FUNCTION CUSTOM_AUTH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2) ',
'       RETURN BOOLEAN; ',
'    FUNCTION CUSTOM_HASH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2)      ',
'    RETURN VARCHAR2; ',
'END; ',
'/',
'',
'',
'CREATE OR REPLACE EDITIONABLE PACKAGE BODY "USER_AUTH_IP" AS FUNCTION CUSTOM_AUTH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2) ',
'       RETURN BOOLEAN ',
'    IS ',
'       L_PASSWORD          VARCHAR2 (4000); ',
'       L_STORED_PASSWORD   VARCHAR2 (4000); ',
'       v_Time VARCHAR2 (6); ',
'       v_ADDR VARCHAR2 (100); ',
'       v_LOGIN_ID VARCHAR2 (100); ',
' ',
'      ',
' ',
'    BEGIN ',
' ',
'      If P_USERNAME Is Null and P_PASSWORD Is Null Then ',
'         Apex_Util.Set_Session_State(''LOGIN_MESSAGE'',''Please enter Username & password.''); ',
'         Return False;      End If; ',
' ',
'      If P_USERNAME Is not Null and P_PASSWORD Is Null Then ',
'         Apex_Util.Set_Session_State(''LOGIN_MESSAGE'',''Please enter valid password.''); ',
'         Return False;      End If; ',
' ',
'      If P_USERNAME Is Null and P_PASSWORD Is not Null Then ',
'         Apex_Util.Set_Session_State(''LOGIN_MESSAGE'',''Please enter valid Username.''); ',
'         Return False;      End If; ',
'         ',
'     select ',
'nvl(round(to_number(to_char(max(SESSION_IDLE_TIMEOUT_ON),''SSSSS'')/60)),0) - round( to_number(to_char(sysdate,''SSSSS'')/60)) into v_Time ',
'    from apex_workspace_sessions where USER_NAME=(select distinct USER_NAME from apex_workspace_sessions where USER_NAME=upper(P_USERNAME)); ',
' ',
' ',
'       if v_Time > 1  then ',
'       select REMOTE_ADDR into v_ADDR  from apex_workspace_sessions where USER_NAME=upper(P_USERNAME) and Rownum=1; ',
'       Apex_Util.Set_Session_State(''LOGIN_MESSAGE'',P_USERNAME ||'' is already logged in from IP ''||v_ADDR); ',
'       Return False; ',
'       else null; ',
'       end if; ',
'        ',
'        ',
'       SELECT PIN ',
'        INTO L_STORED_PASSWORD ',
'        FROM MY_USERS ',
'       WHERE is_active = ''1'' and LOWER (USERNAME) = LOWER (P_USERNAME) and rownum<=1; ',
'              ',
'--        LOWER (USER_ID) = LOWER(P_USERNAME) ',
'         ',
'       L_PASSWORD := CUSTOM_HASH (P_USERNAME, P_PASSWORD); ',
' ',
'       If L_PASSWORD <> L_STORED_PASSWORD Then ',
'         Apex_Util.Set_Session_State(''LOGIN_MESSAGE'',''Please enter your valid Username & password.''); ',
'         Return False;     End If; ',
' ',
' ',
'       IF L_PASSWORD = L_STORED_PASSWORD ',
'       THEN ',
'         insert into USERS_LOG (LOG_ID,IP_ADDRESS,LOGIN_USER,LOGIN_TIME)   ',
'         values (login_log_id_sec.nextval,owa_util.get_cgi_env(''REMOTE_ADDR''),P_USERNAME,sysdate); ',
'         insert into e_log(pid, msg) values((select nvl(max(pid),0)+1  from e_log),''match - user: ''|| P_USERNAME || ''   pass: '' || P_PASSWORD); ',
'    RETURN TRUE; ',
'    END IF; ',
'    END; ',
' ',
' ',
'FUNCTION CUSTOM_HASH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2) ',
'    RETURN VARCHAR2 ',
'IS ',
'    L_PASSWORD   VARCHAR2 (4000); ',
'    L_SALT       VARCHAR2 (4000) := ''D9GE4CORSJZVKADPOJ5C1PERC704WB''; ',
'BEGIN ',
'       L_PASSWORD := ',
'       UTL_RAW.CAST_TO_RAW ( ',
'          DBMS_OBFUSCATION_TOOLKIT.MD5 (INPUT_STRING => P_PASSWORD)); ',
' ',
'        RETURN L_PASSWORD; ',
'END; ',
' ',
'END; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PACKAGE "USER_INFO" ',
'AS ',
' ',
'   FUNCTION GET_USER_ID ',
'      RETURN NUMBER; ',
'   FUNCTION GET_USER_NAME ',
'      RETURN VARCHAR2; ',
'   FUNCTION GET_FULL_NAME ',
'      RETURN VARCHAR2; ',
'   FUNCTION GET_PHONE_NUMBER ',
'      RETURN VARCHAR2; ',
'   FUNCTION GET_EMAIL_ADDRESS ',
'      RETURN VARCHAR2; ',
'   FUNCTION GET_USER_TYPE ',
'      RETURN VARCHAR2; ',
'   FUNCTION GET_SHOP_CATEGORY ',
'      RETURN VARCHAR2; ',
'END; ',
'/',
'',
'',
'CREATE OR REPLACE EDITIONABLE PACKAGE BODY "USER_INFO" ',
'AS ',
' ',
'FUNCTION GET_USER_ID RETURN NUMBER ',
'   IS ',
'      V_ID   NUMBER;--:=length(GET_CURRENT_USER); ',
'   BEGIN ',
'   ',
'      SELECT USER_ID ',
'        INTO V_ID ',
'        FROM MY_USERS ',
'       WHERE UPPER (USERNAME) = upper(V(''USER'')); ',
'        ',
'      RETURN V_ID; ',
'   EXCEPTION ',
'      WHEN OTHERS ',
'      THEN ',
'         RETURN -1; ',
'   END; ',
' ',
' ',
' ',
' ',
' ',
' ',
'FUNCTION GET_USER_NAME RETURN VARCHAR2 ',
'   IS ',
'      Va   VARCHAR2 (255) := NULL; ',
'      C   OWA_COOKIE.COOKIE; ',
'   BEGIN ',
'    ',
'      RETURN V(''USER''); ',
'   END; ',
' ',
'    FUNCTION GET_FULL_NAME RETURN VARCHAR2 ',
'   is ',
'    v_full_name VARCHAR2(255); ',
'      begin ',
'    select FULL_NAME into v_full_name from MY_USERS  ',
'    WHERE UPPER (USERNAME) = upper(V(''USER'')); ',
' ',
'    return v_full_name ; ',
'    exception when others then ',
'    return 0; ',
'end; ',
' ',
'    FUNCTION GET_PHONE_NUMBER RETURN VARCHAR2 ',
'   is ',
'    v_pnumber VARCHAR2(255); ',
'      begin ',
'    select PHONE_NUMBER into v_pnumber from MY_USERS  ',
'    WHERE UPPER (USERNAME) = upper(V(''USER'')); ',
' ',
'    return v_pnumber ; ',
'    exception when others then ',
'    return 0; ',
'end; ',
' ',
' ',
'   FUNCTION GET_EMAIL_ADDRESS RETURN VARCHAR2 ',
'   is ',
'    v_user_email VARCHAR2(255); ',
'      begin ',
'    select EMAIL_ADDRESS into v_user_email from MY_USERS  ',
'    WHERE UPPER (USERNAME) = upper(V(''USER'')); ',
' ',
'    return v_user_email; ',
'    exception when others then ',
'    return 0; ',
'end; ',
' ',
'   FUNCTION GET_USER_TYPE RETURN VARCHAR2 ',
'   is ',
'    v_user_type VARCHAR2(255); ',
'      begin ',
'    select USER_TYPE into v_user_type from MY_USERS  ',
'    WHERE UPPER (USERNAME) = upper(V(''USER'')); ',
' ',
'    return v_user_type; ',
'    exception when others then ',
'    return 0; ',
'END; ',
' ',
'   FUNCTION GET_SHOP_CATEGORY RETURN VARCHAR2 ',
'   is ',
'    v_user_shop_category VARCHAR2(255); ',
'      begin ',
'    select SHOP_CATEGORY into v_user_shop_category from MY_USERS  ',
'    WHERE UPPER (USERNAME) = upper(V(''USER'')); ',
' ',
'    return v_user_shop_category; ',
'    exception when others then ',
'    return 0; ',
'END; ',
' ',
' ',
'END; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "AAW_IMG_DISPLAY" ( p_img_id IN NUMBER) ',
'AS ',
'      ',
' l_mime        VARCHAR2 (255); ',
'   l_length      NUMBER; ',
'   l_file_name   VARCHAR2 (2000); ',
'   lob_loc       BLOB; ',
'BEGIN ',
'  ',
'         SELECT IMG_MIMETYPE, IMG_FILE, DBMS_LOB.getlength (IMG_FILE) ',
'         INTO l_mime, lob_loc, l_length ',
'         FROM aaw_images ',
'         WHERE img_id = p_img_id;    ',
'  ',
'  ',
'   OWA_UTIL.mime_header (NVL (l_mime, ''application/octet''), FALSE); ',
'   HTP.p (''Content-length: '' || l_length); ',
'   OWA_UTIL.http_header_close; ',
'   WPG_DOCLOAD.download_file (lob_loc); ',
'     ',
'END aaw_img_display; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "BARCODE_PR" ( ',
'   code39text    IN   VARCHAR2, ',
'   code39label   IN   VARCHAR2, ',
'   code_height   IN   NUMBER DEFAULT 20, ',
'   code_width    IN   NUMBER DEFAULT 1 ',
') ',
'IS ',
'   v_str                VARCHAR2 (200) := ''''; ',
'   v_barstr             VARCHAR2 (1)   := ''''; ',
'   v_barstrcode         VARCHAR2 (10)  := ''''; ',
'   v_barstrcodeselect   VARCHAR2 (10)  := ''''; ',
'   v_label              VARCHAR2 (10)  := ''''; ',
'   x_pos                NUMBER         := 0; ',
'   x_textstep           NUMBER; ',
'   x_bigstep            NUMBER (10); ',
'   x_smallstep          NUMBER (10); ',
'   x_width              NUMBER         := 0; ',
'   y_height             NUMBER; ',
'BEGIN ',
'-- setting values from the page to the internal PLSQL variables. ',
'   v_str := UPPER (code39text); ',
'   v_label := UPPER (code39label); ',
'   y_height := (code_height); ',
'   x_smallstep := (code_width); ',
'   x_bigstep := 3 * (code_width); ',
'   x_textstep := (x_smallstep * 2 + x_bigstep * 2) / 3; ',
'-- generating header of svg file ',
'   OWA_UTIL.mime_header (ccontent_type      => ''image/svg+xml'', ',
'                         bclose_header      => FALSE, ',
'                         ccharset           => ''utf-8'' ',
'                        ); ',
'   HTP.p (''Cache-Control: no-cache''); ',
'   OWA_UTIL.http_header_close; ',
'-- generating SVG file ',
'   HTP.p (''<?xml version="1.0" encoding="iso-8859-1"?>''); ',
'   HTP.p (   ''<svg width="100%" height="100%" xmlns="'' ',
'          || ''http://www.w3.org/2000/svg" '' ',
'          || ''xmlns:xlink="http://www.w3.org/1999/xlink"'' ',
'          || '' xmlns:a="http://ns.adobe.com'' ',
'          || ''/AdobeSVGViewerExtensions/3.0/" >'' ',
'         ); ',
'-- if I want to have label in the barcode, ',
'-- I need to declare style of text... ',
'   IF v_label = ''YES'' ',
'   THEN ',
'      HTP.p (''<style type="text/css" >''); ',
'      HTP.p (''<![CDATA[ ''); ',
'      HTP.p (''.textlabel {font-size:8.0pt  ; '' ',
'          || ''font-family:Helvetica ;}'' ',
'            ); ',
'      HTP.p ('' ]]>''); ',
'      HTP.p ('' </style> ''); ',
'   END IF; ',
'   HTP.p ('' <g>''); ',
'/* ',
'every char is internally coded to abcd codeing , that: ',
'a means thick black line in the barcode ',
'b means thin black line in the barcode ',
'c means thick white line (bigger space) ',
'd means thin white line (small space) ',
'*/ ',
'   FOR i IN 1 .. LENGTH (v_str) ',
'   LOOP ',
'      v_barstr := SUBSTR (v_str, i, 1); ',
'      v_barstrcode := ',
'         CASE v_barstr ',
'            WHEN ''1'' ',
'               THEN ''adbcbdbdad'' ',
'            WHEN ''2'' ',
'               THEN ''bdacbdbdad'' ',
'            WHEN ''3'' ',
'               THEN ''adacbdbdbd'' ',
'            WHEN ''4'' ',
'               THEN ''bdbcadbdad'' ',
'            WHEN ''5'' ',
'               THEN ''adbcadbdbd'' ',
'            WHEN ''6'' ',
'               THEN ''bdacadbdbd'' ',
'            WHEN ''7'' ',
'               THEN ''bdbcbdadad'' ',
'            WHEN ''8'' ',
'               THEN ''adbcbdadbd'' ',
'            WHEN ''9'' ',
'               THEN ''bdacbdadbd'' ',
'            WHEN ''0'' ',
'               THEN ''bdbcadadbd'' ',
'            WHEN ''A'' ',
'               THEN ''adbdbcbdad'' ',
'            WHEN ''B'' ',
'               THEN ''bdadbcbdad'' ',
'            WHEN ''C'' ',
'               THEN ''adadbcbdbd'' ',
'            WHEN ''D'' ',
'               THEN ''bdbdacbdad'' ',
'            WHEN ''E'' ',
'               THEN ''adbdacbdbd'' ',
'            WHEN ''F'' ',
'               THEN ''bdadacbdbd'' ',
'            WHEN ''G'' ',
'               THEN ''bdbdbcadad'' ',
'            WHEN ''H'' ',
'               THEN ''adbdbcadbd'' ',
'            WHEN ''I'' ',
'               THEN ''bdadbcadbd'' ',
'            WHEN ''J'' ',
'               THEN ''bdbdacadbd'' ',
'            WHEN ''K'' ',
'               THEN ''adbdbdbcad'' ',
'            WHEN ''L'' ',
'               THEN ''bdadbdbcad'' ',
'            WHEN ''M'' ',
'               THEN ''adadbdbcbd'' ',
'            WHEN ''N'' ',
'               THEN ''bdbdadbcad'' ',
'            WHEN ''O'' ',
'               THEN ''adbdadbcbd'' ',
'            WHEN ''P'' ',
'               THEN ''bdadadbcbd'' ',
'            WHEN ''Q'' ',
'               THEN ''bdbdbdacad'' ',
'            WHEN ''R'' ',
'               THEN ''adbdbdacbd'' ',
'            WHEN ''S'' ',
'               THEN ''bdadbdacbd'' ',
'            WHEN ''T'' ',
'               THEN ''bdbdadacbd'' ',
'            WHEN ''U'' ',
'               THEN ''acbdbdbdad'' ',
'            WHEN ''V'' ',
'               THEN ''bcadbdbdad'' ',
'            WHEN ''W'' ',
'               THEN ''acadbdbdbd'' ',
'            WHEN ''X'' ',
'               THEN ''bcbdadbdad'' ',
'            WHEN ''Y'' ',
'               THEN ''acbdadbdbd'' ',
'            WHEN ''Z'' ',
'               THEN ''bcadadbdbd'' ',
'            WHEN ''-'' ',
'               THEN ''bcbdbdadad'' ',
'            WHEN ''+'' ',
'               THEN ''bcbdbcbcbd'' ',
'            WHEN ''*'' ',
'               THEN ''bcbdadadbd'' ',
'            WHEN ''/'' ',
'               THEN ''bcbcbdbcbd'' ',
'            WHEN ''%'' ',
'               THEN ''bdbcbcbcbd'' ',
'            WHEN ''.'' ',
'               THEN ''acbdbdadbd'' ',
'            WHEN ''$'' ',
'               THEN ''bcbcbcbdbd'' ',
'            ELSE ''cccddddddd'' ',
'         END; ',
'      FOR j IN 1 .. LENGTH (v_barstrcode) ',
'      LOOP ',
'         v_barstrcodeselect := (SUBSTR (v_barstrcode, j, 1)); ',
'--drawing thick black line ',
'         IF v_barstrcodeselect = ''a'' ',
'         THEN ',
'            HTP.p (   ''<rect height="'' ',
'                   || y_height ',
'                   || ''" width="'' ',
'                   || x_bigstep ',
'                   || ''" x="'' ',
'                   || x_pos ',
'                   || ''" y="0"/>'' ',
'                  ); ',
'            x_pos := x_pos + x_bigstep; ',
'         END IF; ',
'--drawing thin black line ',
'         IF v_barstrcodeselect = ''b'' ',
'         THEN ',
'            HTP.p (   ''<rect height="'' ',
'                   || y_height ',
'                   || ''" width="'' ',
'                   || x_smallstep ',
'                   || ''" x="'' ',
'                   || TO_CHAR (x_pos) ',
'                   || ''" y="0"/>'' ',
'                  ); ',
'            x_pos := x_pos + x_smallstep; ',
'         END IF; ',
'--drawing thick white line ',
'         IF v_barstrcodeselect = ''c'' ',
'         THEN ',
'            x_pos := x_pos + x_bigstep; ',
'         END IF; ',
'--drawing thin white line ',
'         IF v_barstrcodeselect = ''d'' ',
'         THEN ',
'            x_pos := x_pos + x_smallstep; ',
'         END IF; ',
'      END LOOP; ',
'-- write one char of label ',
'      IF v_label = ''YES'' ',
'      THEN ',
'         HTP.p (   ''<text class="textlabel" x="'' ',
'                || x_textstep ',
'                || ''" y="'' ',
'                || (y_height + 10) ',
'                || ''">'' ',
'                || v_barstr ',
'                || ''</text>'' ',
'               ); ',
'      END IF; ',
'      x_pos := x_pos + x_smallstep; ',
'      x_textstep := x_textstep + (x_smallstep * 6 + x_bigstep * 3) + 3; ',
'   END LOOP; ',
'   HTP.p ('' </g>''); ',
'   HTP.p ('' </svg> ''); ',
'END barcode_pr; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "BLOB_TO_FILE" (p_dir    IN VARCHAR2,',
'                                          p_file   IN VARCHAR2,',
'                                          p_blob   IN BLOB)',
'AS',
'   l_file       UTL_FILE.file_type;',
'   l_buffer     RAW (32767);',
'   l_amount     BINARY_INTEGER := 32767;',
'   l_pos        INTEGER := 1;',
'   l_blob_len   INTEGER;',
'BEGIN',
'   l_blob_len := DBMS_LOB.getlength (p_blob);',
'   l_file :=',
'      UTL_FILE.fopen (p_dir,',
'                      p_file,',
'                      ''WB'',',
'                      32767);',
'   WHILE l_pos < l_blob_len',
'   LOOP',
'      DBMS_LOB.read (p_blob,',
'                     l_amount,',
'                     l_pos,',
'                     l_buffer);',
'      UTL_FILE.put_raw (l_file, l_buffer, TRUE);',
'      l_pos := l_pos + l_amount;',
'   END LOOP;',
'   UTL_FILE.fclose (l_file);',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      IF UTL_FILE.is_open (l_file)',
'      THEN',
'         UTL_FILE.fclose (l_file);',
'      END IF;',
'      RAISE;',
'END blob_to_file;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "CREATE_FILE_FROM_CLOB" (p_dir  IN VARCHAR2,',
'                                                   p_file IN VARCHAR2,',
'                                                   p_clob IN OUT NOCOPY CLOB)',
'AS',
'  l_file  UTL_FILE.file_type;',
'  l_step  PLS_INTEGER := 12000;',
'BEGIN',
'  l_file := UTL_FILE.fopen(p_dir, p_file, ''w'', 32767);',
'  FOR i IN 0 .. TRUNC((DBMS_LOB.getlength(p_clob) - 1 )/l_step) LOOP',
'    UTL_FILE.put(l_file, DBMS_LOB.substr(p_clob, l_step, i * l_step + 1));',
'    UTL_FILE.fflush(l_file);',
'  END LOOP;',
'  UTL_FILE.fclose(l_file);',
'END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "DATA_INSERT_PROC" (p_user varchar2, p_table varchar2) is ',
'/*   begin data_insert_proc(''cid_temp'',''ADDRESSBOOK'' ); end;*/ ',
'v_column_list varchar2(4000);    ',
'v_column_list_a varchar2(4000);    ',
'v_inserted number; ',
'v_duplicate number; ',
'v_total number; ',
'begin ',
'select ''wmsys.wm_concat''(column_name) into v_column_list_a'))
);
null;
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_shared.append_to_install_script(
 p_id=>wwv_flow_imp.id(34855710406855915282)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' from dba_tab_columns where owner=''CID_TEMP''  and table_name=p_table; ',
'select ''wmsys.wm_concat''(''b.''||column_name) into v_column_list from dba_tab_columns where owner=''CID_TEMP''  and table_name=p_table; ',
'execute immediate ''merge into cid_central.''||p_table||''  a using  ''||p_user||''.''||p_table||'' b ',
'on (a.oid=b.oid) when not matched then insert(''||v_column_list_a||'') values(''||v_column_list||'')  '' ; ',
'v_inserted := SQL%ROWCOUNT; ',
'execute immediate '' create or replace view p_table_view as  select count(*) ctr from ''||p_user||''.''||p_table; ',
'select ctr into v_total from p_table_View; ',
'v_duplicate := v_total - v_inserted; ',
'  ',
'insert into merge_report values( p_table, SYSDATE,  p_user ||'' user '', v_inserted, v_duplicate) ; ',
'commit; ',
'end data_insert_proc; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "DOWNLOAD_BLOB" (p_file_id  IN NUMBER) IS',
'  v_blob_content  blob;',
'  v_mime_type     varchar2(500);',
'  v_filename      varchar2(500);',
'BEGIN',
'  SELECT "BLOB_CONTENT",',
'         MIME_TYPE,',
'         FILE_NAME',
'  INTO   v_blob_content,',
'         v_mime_type,',
'         v_filename',
'  FROM   MY_FILE_TABLE',
'  WHERE  FILE_ID = p_file_id;',
'  sys.HTP.init;',
'  sys.OWA_UTIL.mime_header(v_mime_type, FALSE);',
'  sys.HTP.p(''Content-Length: '' || DBMS_LOB.getlength(v_blob_content));',
'  sys.HTP.p(''Content-Disposition: filename="'' || v_filename || ''"'');',
'  sys.OWA_UTIL.http_header_close;',
'  sys.WPG_DOCLOAD.download_file(v_blob_content);',
'  apex_application.stop_apex_engine;',
'EXCEPTION',
'  WHEN apex_application.e_stop_apex_engine THEN',
'    NULL;',
'END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "DOWNLOAD_MY_FILE" (p_file IN NUMBER)',
'AS',
'   v_mime        VARCHAR2 (48);',
'   v_length      NUMBER;',
'   v_file_name   VARCHAR2 (2000);',
'   lob_loc       BLOB;',
'BEGIN',
'   SELECT mime_type, blob_content, NAME, DBMS_LOB.getlength (blob_content)',
'     INTO v_mime, lob_loc, v_file_name, v_length',
'     FROM my_file_table',
'    WHERE ID = p_file;',
'   --',
'   -- set up HTTP header',
'   --',
'         -- use an NVL around the mime type and',
'         -- if it is a null set it to application/octect',
'         -- application/octect may launch a download window from windows',
'   OWA_UTIL.mime_header (NVL (v_mime, ''application/octet''), FALSE);',
'   -- set the size so the browser knows how much to download',
'   HTP.p (''Content-length: '' || v_length);',
'   -- the filename will be used by the browser if the users does a save as',
'   HTP.p (   ''Content-Disposition:  attachment; filename="''',
'          || REPLACE (REPLACE (SUBSTR (v_file_name,',
'                                       INSTR (v_file_name, ''/'') + 1',
'                                      ),',
'                               CHR (10),',
'                               NULL',
'                              ),',
'                      CHR (13),',
'                      NULL',
'                     )',
'          || ''"''',
'         );',
'   -- close the headers',
'   OWA_UTIL.http_header_close;',
'   -- download the BLOB',
'   WPG_DOCLOAD.download_file (lob_loc);',
'END download_my_file;',
'If you want to save the file to your file system',
'instead of saving it to your custom table, you could extend the procedure with the following code:',
'   PROCEDURE load_blob_to_bfile (p_file_id IN NUMBER, p_directory IN VARCHAR2)',
'   IS',
'/* This procedure will transfer a blob to bfile. */',
'      v_blob        BLOB;',
'      v_start       NUMBER             := 1;',
'      v_bytelen     NUMBER             := 2000;',
'      v_len         NUMBER;',
'      v_raw         RAW (2000);',
'      v_x           NUMBER;',
'      v_output      UTL_FILE.file_type;',
'      v_file_name   VARCHAR2 (200);',
'   BEGIN',
'-- get length of blob',
'      SELECT DBMS_LOB.getlength (blob_content), file_name',
'        INTO v_len, v_file_name',
'        FROM wwv_flow_files',
'       WHERE ID = p_file_id;',
'-- define output directory',
'      v_output := UTL_FILE.fopen (p_directory, v_file_name, ''wb'', 32760);',
'-- save blob length',
'      v_x := v_len;',
'-- select blob into variable',
'      SELECT blob_content',
'        INTO v_blob',
'        FROM wwv_flow_files',
'       WHERE ID = p_file_id;',
'      v_start := 1;',
'      WHILE v_start < v_len AND v_bytelen > 0',
'      LOOP',
'         DBMS_LOB.READ (v_blob, v_bytelen, v_start, v_raw);',
'         UTL_FILE.put_raw (v_output, v_raw);',
'         UTL_FILE.fflush (v_output);',
'         /* Text only could be: UTL_RAW.cast_to_varchar2 (v_raw);*/',
'         -- set the start position for the next cut',
'         v_start := v_start + v_bytelen;',
'-- set the end position if less than 32000 bytes',
'         v_x := v_x - v_bytelen;',
'         IF v_x < 2000',
'         THEN',
'            v_bytelen := v_x;',
'         END IF;',
'      END LOOP;',
'      UTL_FILE.fclose (v_output);',
'   END load_blob_to_bfile;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "EC_API2" (pNID                VARCHAR2,',
'                                               pDOB                VARCHAR2,',
'                                               pToken              VARCHAR2,',
'                                               pErrorMessage   OUT VARCHAR2)',
'IS',
'   req               UTL_HTTP.REQ;',
'   resp              UTL_HTTP.RESP;',
'   http_req          UTL_HTTP.req;',
'   t_http_version    VARCHAR2 (10) := ''HTTP/1.1'';',
'   pInputBody        VARCHAR2 (32767)',
'      := ''{"NID": "'' || pNID || ''", "DOB":'' || ''"'' || pDOB || ''"'' || ''}'';',
'  -- vTokenNo          VARCHAR2 (1000)',
'   --   := ''eyJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJwaHFxIiwicm9sZXMiOlsiQ09NTU9OX1VTRVJfRlVMTF9OQU1FIiwiQ09NTU9OX1JPTEVTX0JZX1VTRVIiLCJWT1RFUl9ERVRBSUxTIiwiQUZJU19WRVJJRlkiLCJDT01NT05fQ0hBTkdFX1BBU1NXT1JEIiwiQUZJU19JREVOVElGSUNBV'
||'ElPTiJdLCJpYXQiOjE2MTgzMDY0NTgsImV4cCI6MTYxODM0OTY1OH0.nvn73D1ZLzS0ey9DKBQ3iYUsKlWyjq5fgI9cIcfcp64'';',
'   pUrl              VARCHAR2 (2000)',
'      :=    ''http://192.168.101.218/ec/getdetail.php?''',
'         || ''NID=''',
'         || pNID',
'         || ''&DOB=''',
'         || pDOB',
'         || ''&ACCESS_TOKEN=''',
'         || pToken;',
'   l_response_body   CLOB;                                 --VARCHAR2 (32767);',
'  -- pErrorMessage     VARCHAR2 (32767);',
'   vMyException      EXCEPTION;',
'BEGIN',
'   req := UTL_HTTP.BEGIN_REQUEST (pUrl, ''POST'', ''HTTP/1.1'');',
'   -- UTL_HTTP.END_RESPONSE (resp);',
'   --UTL_HTTP.SET_TRANSFER_TIMEOUT (5);',
'   --UTL_HTTP.SET_DETAILED_EXCP_SUPPORT (TRUE);',
'',
'   UTL_HTTP.SET_HEADER (req, ''content-type'', ''application/json'');',
'   --UTL_HTTP.SET_HEADER (req, ''Authorization'', ''Basic '' || vTokenNo);',
'',
'   /* http_req := utl_http.begin_request(pUrl',
'                         , ''POST'' -- method',
'                         , t_http_version);*/',
'   UTL_HTTP.SET_HEADER (req, ''Content-Length'', LENGTH (pInputBody));',
'   UTL_HTTP.WRITE_TEXT (req, pInputBody);',
'   resp := UTL_HTTP.GET_RESPONSE (req);',
'   UTL_HTTP.READ_TEXT (resp, l_response_body);',
'   dbms_output.put_line(l_response_body);',
'EXCEPTION',
'   WHEN UTL_HTTP.END_OF_BODY',
'   THEN',
'      pErrorMessage := ''Body Reached. - '' || SQLERRM;',
'      UTL_HTTP.END_RESPONSE (resp);',
'      RAISE vMyException;',
'   WHEN OTHERS',
'   THEN',
'      pErrorMessage := SQLERRM;',
'      UTL_HTTP.END_RESPONSE (resp);',
'      RAISE vMyException;',
'END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "EC_API_CALL" (',
'                                  pToken       OUT VARCHAR2,',
'                                  pErrorFlag   OUT VARCHAR2,',
'                                  pErrorMsg    OUT VARCHAR2)',
'   IS',
'      req               UTL_HTTP.REQ;',
'      resp              UTL_HTTP.RESP;',
'      vUrl              VARCHAR2 (200)',
'         := ''http://192.168.101.218/ec/login.php'';',
'      l_response_body   VARCHAR2 (32767);',
'      vData             VARCHAR2 (32767) := NULL;',
'      vMyException      EXCEPTION;',
'   BEGIN',
'      vData := ''{"username": "phqq","password": "123456"}'';',
'',
'      BEGIN',
'         req := UTL_HTTP.BEGIN_REQUEST (vUrl, ''POST'', ''HTTP/1.1'');',
'',
'         UTL_HTTP.SET_HEADER (req, ''Content-Length'', LENGTH (vData));',
'         UTL_HTTP.set_header (req, ''Content-Type'', ''application/json'');',
'         UTL_HTTP.WRITE_TEXT (req, vData);',
'         resp := UTL_HTTP.GET_RESPONSE (req);',
'         UTL_HTTP.READ_TEXT (resp, l_response_body);',
'         --DBMS_OUTPUT.put_line (l_response_body);',
'         pToken := l_response_body;',
'      EXCEPTION',
'         WHEN OTHERS',
'         THEN',
'            pToken := NULL;',
'            pErrorMsg := ''Bearer Token Getting Error.'' || SQLERRM;',
'            RAISE vMyException;',
'      END;',
'   EXCEPTION',
'      WHEN vMyException',
'      THEN',
'         pErrorFlag := ''Y'';',
'   END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "EC_API_DETAILS" (pNID                VARCHAR2,',
'                                               pDOB                VARCHAR2,',
'                                               pToken              VARCHAR2,',
'                                               pErrorMessage   OUT VARCHAR2)',
'IS',
'   req               UTL_HTTP.REQ;',
'   resp              UTL_HTTP.RESP;',
'   http_req          UTL_HTTP.req;',
'   t_http_version    VARCHAR2 (10) := ''HTTP/1.1'';',
'   pInputBody        VARCHAR2 (32767)',
'      := ''{"NID": "'' || pNID || ''", "DOB":'' || ''"'' || pDOB || ''"'' || ''}'';',
'   pUrl              VARCHAR2 (2000)',
'      :=    ''http://192.168.101.218/ec/getdetail.php?''',
'         || ''NID=''',
'         || pNID',
'         || ''&DOB=''',
'         || pDOB',
'         || ''&ACCESS_TOKEN=''',
'         || pToken;',
'   l_response_body   CLOB;',
'   vMyException      EXCEPTION;',
'BEGIN',
'   req := UTL_HTTP.BEGIN_REQUEST (pUrl, ''POST'', ''HTTP/1.1'');',
'   UTL_HTTP.SET_HEADER (req, ''content-type'', ''application/json'');',
'   UTL_HTTP.SET_HEADER (req, ''Content-Length'', LENGTH (pInputBody));',
'   UTL_HTTP.WRITE_TEXT (req, pInputBody);',
'   resp := UTL_HTTP.GET_RESPONSE (req);',
'   UTL_HTTP.READ_TEXT (resp, l_response_body);',
'   dbms_output.put_line(l_response_body);',
'EXCEPTION',
'   WHEN UTL_HTTP.END_OF_BODY',
'   THEN',
'      pErrorMessage := ''Body Reached. - '' || SQLERRM;',
'      UTL_HTTP.END_RESPONSE (resp);',
'      RAISE vMyException;',
'   WHEN OTHERS',
'   THEN',
'      pErrorMessage := SQLERRM;',
'      UTL_HTTP.END_RESPONSE (resp);',
'      RAISE vMyException;',
'END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "EXPORT_APPLICATION" IS',
'CURSOR GET_APP IS',
'select APPLICATION_ID from apex_applications WHERE APPLICATION_ID in (101,108);',
'BEGIN',
'DELETE FROM EXPORT_CLOB;',
'FOR I IN GET_APP LOOP',
'INSERT INTO EXPORT_CLOB(APP_ID,APP_EXPORT)',
'VALUES (I.APPLICATION_ID,WWV_FLOW_UTILITIES.EXPORT_APPLICATION_TO_CLOB(I.APPLICATION_ID));',
'END LOOP;',
'COMMIT;',
'BEGIN',
'WRITE_TO_DIR;',
'COMMIT;',
'END;',
'END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "GET_ENC_IMG_FROM_FS" (p_dir  IN VARCHAR2,',
'                                                 p_file IN VARCHAR2,',
'                                                 p_clob IN OUT NOCOPY CLOB)',
'AS',
'  l_bfile BFILE;',
'  l_step  PLS_INTEGER := 12000;',
'BEGIN',
'  l_bfile := BFILENAME(p_dir, p_file);',
'  DBMS_LOB.fileopen(l_bfile, DBMS_LOB.file_readonly);',
'  FOR i IN 0 .. TRUNC((DBMS_LOB.getlength(l_bfile) - 1 )/l_step) LOOP',
'    p_clob := p_clob || UTL_RAW.cast_to_varchar2(UTL_ENCODE.base64_encode(DBMS_LOB.substr(l_bfile, l_step, i * l_step + 1)));',
'  END LOOP;',
'  DBMS_LOB.fileclose(l_bfile);',
'END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "GET_ENC_IMG_FROM_HTTP" (p_url  IN VARCHAR2,',
'                                                   p_clob IN OUT NOCOPY CLOB)',
'AS',
'BEGIN',
'  p_clob := p_clob || base64encode(HTTPURITYPE.createuri(p_url).getblob());',
'END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "GET_ENC_IMG_FROM_TAB" (p_image_name IN VARCHAR2,',
'                                                  p_clob       IN OUT NOCOPY CLOB)',
'AS',
'BEGIN',
'  SELECT p_clob || base64encode(image)',
'  INTO   p_clob',
'  FROM   images ',
'  WHERE  name = p_image_name;',
'END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "GET_FILE" (p_file_name  IN VARCHAR2) IS',
'  l_blob_content  documents.blob_content%TYPE;',
'  l_mime_type     documents.mime_type%TYPE;',
'BEGIN',
'  SELECT BLOB_CONTENT,',
'         MIME_TYPE',
'  INTO   l_blob_content,',
'         l_mime_type',
'  FROM   MY_FILE_TABLE',
'  WHERE  NAME = p_file_name;',
'  sys.HTP.init;',
'  sys.OWA_UTIL.mime_header(l_mime_type, FALSE);',
'  sys.HTP.p(''Content-Length: '' || DBMS_LOB.getlength(l_blob_content));',
'  sys.HTP.p(''Content-Disposition: filename="'' || p_file_name || ''"'');',
'  sys.OWA_UTIL.http_header_close;',
'  sys.WPG_DOCLOAD.download_file(l_blob_content);',
'  apex_application.stop_apex_engine;',
'EXCEPTION',
'  WHEN apex_application.e_stop_apex_engine THEN',
'    NULL;',
'  WHEN OTHERS THEN',
'    HTP.p(''Whoops'');',
'END;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "GET_NID_RESPONSE" (pNid Varchar2,',
'                                                                                 pNameEn out Varchar2,',
'                                                                                 pNameBng out VARCHAR2,',
'                                                                                  pDob  out DATE,',
'                                                                                  pFather out VARCHAR2,',
'                                                                                  pMother out varchar2,',
'                                                                                  pGender out varchar2,',
'                                                                                  pPerAddr out varchar2,',
'                                                                                  pPrsAddrs out varchar2,',
'                                                                                  pPhotPath out VARCHAR2',
'                                                                                  )',
'   IS',
'  t_http_req     utl_http.req;',
'  t_http_resp    utl_http.resp;',
'  t_request_body clob;',
'  t_respond       clob;           --- varchar2(30000);',
'  t_start_pos    integer := 1;',
'  t_output       clob;',
'  vImgPath     VARCHAR2(1024);',
'--  pDescription VARCHAR2(30000);',
'BEGIN',
'  t_request_body := '''';',
'',
'  t_http_req:= utl_http.begin_request( ''http://192.168.101.218:8080/NIDChecker/services/FetchDetailByNID''',
'                                     , ''POST''',
'                                     , ''HTTP/1.1'');',
'',
'  utl_http.set_header(t_http_req, ''Content-Type'', ''text/plain;charset=ISO-8859-1'');',
'  utl_http.set_header(t_http_req, ''Authorization'', ''Basic bjFkQ2gzY2szcjpuMWRDaDNjazNyUzNjcjN0'');',
'  utl_http.set_header(t_http_req, ''nid'', pNid);',
'',
'--  utl_http.set_header(t_http_req, ''Content-Length'', length(t_request_body));',
'',
'  /*Put the data in de body of the request*/',
'  utl_http.write_text(t_http_req, t_request_body);',
'',
'  /*make the actual request to the webservice en catch the responce in a',
'    variable*/',
'  t_http_resp:= utl_http.get_response(t_http_req);',
'',
'  utl_http.read_text(t_http_resp, t_respond);',
'',
'      dbms_output.put_line(t_respond);',
'  utl_http.end_response(t_http_resp);',
'WITH x(y) AS',
'  (SELECT xmltype(t_respond)',
'  FROM dual',
'  )',
'SELECT EXTRACTVALUE(y, ''/nidResponse/dob'') ,EXTRACTVALUE(y, ''/nidResponse/father'') ,EXTRACTVALUE(y, ''/nidResponse/mother''),EXTRACTVALUE(y, ''/nidResponse/gender''),EXTRACTVALUE(y, ''/nidResponse/permanentAddress''),',
'EXTRACTVALUE(y, ''/nidResponse/presentAddress''),EXTRACTVALUE(y, ''/nidResponse/name''),EXTRACTVALUE(y, ''/nidResponse/photo''),EXTRACTVALUE(y, ''/nidResponse/nameEn'') ',
'into pDob,pFather,pMother,pGender,pPerAddr,pPrsAddrs,pNameBng,vImgPath,pNameEn  FROM x;',
'',
'select ''/i''||substr(vImgPath,36) into pPhotPath from dual;',
'',
'--pNameBng:=t_respond;',
'end;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "GET_REPORT_HEAD_TEST" (P_REPORT_NAME   IN     NVARCHAR2,  ',
'                              P_OUT           IN OUT NVARCHAR2)  ',
'   AS  ',
'      V_RET   NVARCHAR2 (4000);  ',
'      V_ID    NVARCHAR2 (500);  ',
'   BEGIN  ',
'     REPORT_AUTH_test (ACL.GET_CURRENT_USER, P_REPORT_NAME, V_ID);  ',
'      P_OUT :='' ''|| V_ID ||'' " '' || V_ID ||'''';  ',
'  ',
'   END; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "GET_REPORT_ID" (p_report_name VARCHAR2,  ',
'                                            p_pid number,   ',
'                                            p_page_id       number,  ',
'                                            P_return_id     OUT VARCHAR2  ',
'                                                ',
')  ',
'   IS  ',
'      V_OID      NUMBER;  ',
'      V_REF_ID   VARCHAR (30);  ',
'      V_TDX      DATE := SYSDATE;  ',
'   BEGIN  ',
'      --SELECT NVL (MAX (OID), 0) + 1 INTO V_OID FROM report_view_log;  ',
'      select REPORT_VIEW_LOG_SEQ.nextval into V_OID from dual;  ',
'  ',
'      V_REF_ID :=  ',
'            TO_CHAR (V_TDX, ''SSMIHH24DDDRR'')  ',
'         || ''-''|| CUST_NUMBER.GET_32_BASE_NUMBER (p_pid );  ',
'  ',
'     INSERT INTO report_view_log (OID,  ',
'                              REPORT_NAME,  ',
'                              REPORT_DATE,  ',
'                              ref_pid,  ',
'                             CODE_ID,  ',
'                              ACL_USER,  ',
'                        PAGE_ID,  ',
'                        IP)  ',
'          VALUES (V_OID,  ',
'                  p_report_name ,  ',
'                  V_TDX,  ',
'                  p_pid ,  ',
'                  V_REF_ID,  ',
'                  ACL.GET_CURRENT_USER_PID,  ',
'                p_page_id,  ',
'              owa_util.get_cgi_env(''REMOTE_ADDR''));  ',
'  ',
'P_return_id := V_REF_ID;  ',
'   END; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "GET_REPORT_ID_ATI" (p_report_name VARCHAR2,  ',
'                                            p_pid number,   ',
'                                            p_page_id       number,  ',
'                                            P_return_id     OUT VARCHAR2                                                ',
')  ',
'   IS  ',
'      V_OID      NUMBER;  ',
'      V_REF_ID   VARCHAR (30);  ',
'      V_TDX      DATE := SYSDATE;  ',
'   BEGIN  ',
'            select REPORT_VIEW_LOG_SEQ.nextval into V_OID from dual;  ',
'      V_REF_ID :=  ',
'            TO_CHAR (V_TDX, ''SSMIHH24DDDRR'')  ',
'         || ''-''|| CUST_NUMBER.GET_32_BASE_NUMBER (p_pid );  ',
'  ',
'     INSERT INTO report_view_log (OID,  ',
'                              REPORT_NAME,  ',
'                              REPORT_DATE,  ',
'                              ref_pid,  ',
'                             CODE_ID,  ',
'                              ACL_USER,  ',
'                        PAGE_ID,  ',
'                        IP)  ',
'          VALUES (V_OID,  ',
'                  p_report_name ,  ',
'                  V_TDX,  ',
'                  p_pid ,  ',
'                  V_REF_ID,  ',
'                  ACL.GET_CURRENT_USER_PID,  ',
'                p_page_id,  ',
'              owa_util.get_cgi_env(''REMOTE_ADDR''));  ',
'  ',
'P_return_id := '' ''|| V_REF_ID ||'' " '' || V_REF_ID ||'''';  ',
'   END; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "INSERT_XML_EMPS" (',
'p_directory in varchar2, p_filename in varchar2, vtableName in varchar2 )',
'as',
'v_filelocator bfile;',
'v_cloblocator clob;',
'l_ctx dbms_xmlsave.ctxType;',
'l_rows number;',
'begin',
'dbms_lob.createtemporary(v_cloblocator,true);',
'v_filelocator := bfilename(p_directory, p_filename);',
'dbms_lob.open(v_filelocator, dbms_lob.file_readonly);',
'DBMS_LOB.LOADFROMFILE(v_cloblocator, v_filelocator, dbms_lob.getlength(v_filelocator));',
'l_ctx := dbms_xmlsave.newContext(vTableName);',
'l_rows := dbms_xmlsave.insertxml(l_ctx,v_cloblocator);',
'dbms_xmlsave.closeContext(l_ctx);',
'dbms_output.put_line(l_rows || '' rows inserted...'');',
'dbms_lob.close(v_filelocator);',
'DBMS_LOB.FREETEMPORARY(v_cloblocator);',
'end insert_xml_emps;',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "LOAD_XML_TO_EXISTING_TABLE" ( ',
'    p_xml_content blob, ',
'    p_table_name  varchar2, ',
'    p_table_owner varchar2 default sys_context(''userenv'',''current_user'' )) ',
'is ',
'    l_clob                    clob; ',
' ',
'    l_ins_ctx                 dbms_xmlstore.ctxType; ',
'    l_rows                    number; ',
'    l_date_format             varchar2(255);  ',
' ',
'    l_nls_date_format         varchar2(255); ',
'    l_nls_timestamp_format    varchar2(255); ',
'    l_nls_timestamp_tz_format varchar2(255); ',
' ',
'    c_nls_date_format         varchar2(255) := ''rrrr-MM-dd"T"HH24:mi:ss."000"''; ',
'    c_nls_timestamp_format    varchar2(255) := ''rrrr-MM-dd"T"HH24:mi:ss.FF3''; ',
'    c_nls_timestamp_tz_format varchar2(255) := ''rrrr-MM-dd"T"HH24:mi:ss.FF3 TZR''; ',
' ',
'    procedure convert_to_clob is ',
'        l_dest_offset  number := 1; ',
'        l_src_offset   number := 1; ',
'        l_lang_context number := dbms_lob.default_lang_ctx; ',
'        l_warning      number; ',
'    begin ',
'        dbms_lob.createtemporary ( l_clob, true ); ',
' ',
'        dbms_lob.converttoclob( ',
'            dest_lob      => l_clob, ',
'            src_blob      => p_xml_content, ',
'            amount        => dbms_lob.lobmaxsize, ',
'            dest_offset   => l_dest_offset, ',
'            src_offset    => l_src_offset, ',
'            blob_csid     => nls_charset_id(''AL32UTF8''), ',
'            lang_context  => l_lang_context, ',
'            warning       => l_warning ); ',
' ',
'    end convert_to_clob; ',
' ',
'begin ',
'    convert_to_clob;     ',
' ',
'    for c1 in ( ',
'        select parameter, value ',
'          from nls_session_parameters ',
'         where parameter in (''NLS_DATE_FORMAT'', ',
'                             ''NLS_TIMESTAMP_FORMAT'', ',
'                             ''NLS_TIMESTAMP_TZ_FORMAT''))  ',
'    loop ',
'        if c1.parameter = ''NLS_DATE_FORMAT''            then  ',
'            l_nls_date_format         := c1.value; ',
'        elsif c1.parameter = ''NLS_TIMESTAMP_FORMAT''    then  ',
'            l_nls_timestamp_format    := c1.value; ',
'        elsif c1.parameter = ''NLS_TIMESTAMP_TZ_FORMAT'' then  ',
'            l_nls_timestamp_tz_format := c1.value; ',
'        end if; ',
'    end loop; ',
' ',
'    dbms_session.set_nls( ''NLS_DATE_FORMAT'',          ',
'                          '''''''' || c_nls_date_format || ''''''''); ',
'    dbms_session.set_nls( ''NLS_TIMESTAMP_FORMAT'',     ',
'                          '''''''' || c_nls_timestamp_format || ''''''''); ',
'    dbms_session.set_nls( ''NLS_TIMESTAMP_TZ_FORMAT'',  ',
'                          '''''''' || c_nls_timestamp_tz_format || ''''''''); ',
' ',
'    l_ins_ctx := dbms_xmlstore.newContext(  ',
'                                   dbms_assert.enquote_name( p_table_owner ) || ''.'' ||  ',
'                                   dbms_assert.enquote_name( p_table_name ) ); ',
' ',
'    dbms_xmlstore.setrowtag( l_ins_ctx, ''ROW'' ); ',
'    l_rows := dbms_xmlstore.insertxml( l_ins_ctx, l_clob ); ',
'    dbms_xmlstore.closecontext( l_ins_ctx ); ',
' ',
'    dbms_session.set_nls( ''NLS_DATE_FORMAT'',          ',
'                          '''''''' || l_nls_date_format || ''''''''); ',
'    dbms_session.set_nls( ''NLS_TIMESTAMP_FORMAT'',     ',
'                          '''''''' || l_nls_timestamp_format || ''''''''); ',
'    dbms_session.set_nls( ''NLS_TIMESTAMP_TZ_FORMAT'',  ',
'                          '''''''' || l_nls_timestamp_tz_format || ''''''''); ',
' ',
'    if dbms_lob.istemporary( l_clob ) = 1 then ',
'        dbms_lob.freetemporary( l_clob ); ',
'    end if; ',
'end load_xml_to_existing_table; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "PAGE_ACCESS" (p_app_id number, p_page_id number) ',
'   IS ',
'      V_PAGE NUMBER; ',
'      BEGIN ',
'       select max(PERMISSION) into V_PAGE from USER_GROUP_PAGE_ACCESS a, ACL_USER_GROUP b ',
'where a.pid_group = b.pid_group(+) ',
'and a.page_id = p_page_id ',
'and b.PID_USER = upper(V(''USER'')); ',
'     ',
'commit; ',
'end; ',
' ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "PRC_ACCESS_LOG_WEB" (  ',
'   pUserCode                VARCHAR2)  ',
'AS  ',
'   --v_log TStrings := TStrings();  ',
'   vLogId             NUMBER;  ',
'   vRemoteAddress     USER_LOG_WEB.remote_addr%TYPE;  ',
'   vRemoteUser        USER_LOG_WEB.remote_user%TYPE;  ',
'   vHttpUserAgent     USER_LOG_WEB.http_user_agent%TYPE;  ',
'   vHttpHost          USER_LOG_WEB.http_host%TYPE;  ',
'   vHttpCookie        USER_LOG_WEB.http_cookie%TYPE;  ',
'   vServerProtocol    VARCHAR2 (1024);  ',
'   vServerPort        VARCHAR2 (1024);  ',
'   vServerName        VARCHAR2 (1024);  ',
'   vRequestProtocol   VARCHAR2 (1024);  ',
'   vRequestMethod     VARCHAR2 (1024);  ',
'   vHttpReferer       VARCHAR2 (1024);  ',
'   vBrowserVersion    VARCHAR2 (1024);  ',
'   vInTime            DATE;  ',
'   vPcName            VARCHAR2 (1024);  ',
'   vIp                VARCHAR2 (1024);  ',
'   vMacAddress        VARCHAR2 (1024);  ',
'   vHarDiskSl         VARCHAR2 (1024);  ',
'   vUuId              VARCHAR2 (1024);  ',
'   vOsUser            VARCHAR2 (1024);  ',
'   vDns               VARCHAR2 (1024);  ',
'   vSystemDate        DATE;  ',
'   vOsInfo            VARCHAR2 (1024);  ',
'BEGIN  ',
'  vRemoteAddress := OWA_UTIL.get_cgi_env (''REMOTE_ADDR'');  ',
'  vRemoteUser := OWA_UTIL.get_cgi_env (''REMOTE_USER'');  ',
'   vHttpUserAgent := SUBSTR (OWA_UTIL.get_cgi_env (''HTTP_USER_AGENT''), 1, 100);  ',
'  vHttpHost := OWA_UTIL.get_cgi_env (''HTTP_HOST'');  ',
'   --vHttpReferer := OWA_UTIL.get_cgi_env (''HTTP_REFERER'');  ',
'   --vRequestMethod := OWA_UTIL.get_cgi_env (''REQUEST_METHOD'');  ',
'  -- vRequestProtocol := OWA_UTIL.get_cgi_env (''REQUEST_PROTOCOL'');  ',
'   --vServerName := OWA_UTIL.get_cgi_env (''SERVER_NAME'');  ',
' --  vServerPort := OWA_UTIL.get_cgi_env (''SERVER_PORT'');  ',
'   --vServerProtocol := OWA_UTIL.get_cgi_env (''SERVER_PROTOCOL'');  ',
' --  vHttpCookie := SUBSTR (OWA_UTIL.get_cgi_env (''HTTP_COOKIE''), 1, 500);  ',
'  ',
'   SELECT LOG_ID_seq.NEXTVAL INTO vLogId FROM DUAL;  ',
'  ',
'   BEGIN  ',
'      IF vHttpUserAgent LIKE ''%Trident/%''  ',
'      THEN  ',
'         SELECT DECODE (  ',
'                   SUBSTR (  ',
'                      vHttpUserAgent,  ',
'                      INSTR (vHttpUserAgent, ''Trident/'') + 8,  ',
'                      INSTR (vHttpUserAgent,  ',
'                             ''.'',  ',
'                             INSTR (vHttpUserAgent, ''Trident/''))  ',
'                      - (INSTR (vHttpUserAgent, ''Trident/'') + 8)),  ',
'                   4, ''MSIE 8'',  ',
'                   5, ''MSIE 9'',  ',
'                   6, ''MSIE 10'',  ',
'                   7, ''MSIE 11'',  ',
'                   8, ''MSIE 11'')  ',
'           INTO vBrowserVersion  ',
'           FROM DUAL;  ',
'      ELSIF vHttpUserAgent LIKE ''%MSIE%''  ',
'      THEN  ',
'         vBrowserVersion :=  ',
'            ''MSIE ''  ',
'            || SUBSTR (  ',
'                  vHttpUserAgent,  ',
'                  INSTR (vHttpUserAgent, ''MSIE'') + 5,  ',
'                  INSTR (vHttpUserAgent, '';'', INSTR (vHttpUserAgent, ''MSIE''))  ',
'                  - (INSTR (vHttpUserAgent, ''MSIE'') + 5));  ',
'      ELSIF vHttpUserAgent LIKE ''%Firefox/%''  ',
'      THEN  ',
'         vBrowserVersion :=  ',
'            ''Firefox ''  ',
'            || SUBSTR (  ',
'                  vHttpUserAgent,  ',
'                  INSTR (vHttpUserAgent, ''Firefox/'') + 8,  ',
'                  INSTR (vHttpUserAgent,  ',
'                         ''.'',  ',
'                         INSTR (vHttpUserAgent, ''Firefox/''))  ',
'                  - (INSTR (vHttpUserAgent, ''Firefox/'') + 8));  ',
'      ELSIF vHttpUserAgent LIKE ''%Chrome/%''  ',
'      THEN  ',
'         vBrowserVersion :=  ',
'            ''Google Chrome ''  ',
'            || SUBSTR (  ',
'                  vHttpUserAgent,  ',
'                  INSTR (vHttpUserAgent, ''Chrome/'') + 7,  ',
'                  INSTR (vHttpUserAgent,  ',
'                         ''.'',  ',
'                         INSTR (vHttpUserAgent, ''Chrome/''))  ',
'                  - (INSTR (vHttpUserAgent, ''Chrome/'') + 7));  ',
'      ELSIF vHttpUserAgent LIKE ''%Safari/%''  ',
'      THEN  ',
'         vBrowserVersion :=  ',
'            ''Safari ''  ',
'            || SUBSTR (  ',
'                  vHttpUserAgent,  ',
'                  INSTR (vHttpUserAgent, ''Safari/'') + 7,  ',
'                  INSTR (vHttpUserAgent,  ',
'                         ''.'',  ',
'                         INSTR (vHttpUserAgent, ''Safari/''))  ',
'                  - (INSTR (vHttpUserAgent, ''Safari/'') + 7));  ',
'      END IF;  ',
'   END;  ',
'  ',
'      BEGIN  ',
'         INSERT INTO  USER_LOG_WEB (LOG_ID,  ',
'                                           USER_CODE,  ',
'                                           SESSION_ID,  ',
'                                           IN_TIME,  ',
'                                           REMOTE_ADDR,  ',
'                                           HTTP_HOST,  ',
'                                           REMOTE_USER,  ',
'                                           HTTP_USER_AGENT,  ',
'                                           HTTP_COOKIE,  ',
'                                           HTTP_REFERER,  ',
'                                           REQUEST_METHOD,  ',
'                                           REQUEST_PROTOCOL,  ',
'                                           SERVER_NAME,  ',
'                                           SERVER_PORT,  ',
'                                           SERVER_PROTOCOL,  ',
'                                           BROWSER_VERSION,  ',
'                                           REC_STATUS,  ',
'                                           MAC_ADDRESS,  ',
'                                           PC_NAME,  ',
'                                           OS_USER,  ',
'                                           OS_INFO,  ',
'                                           DNS,  ',
'                                           IP,  ',
'                                           LATITUDE,  ',
'                                           LONGITUDE,  ',
'                                           LOCATION,  ',
'                                           COUNTRY)  ',
'              VALUES (vLogId,  ',
'                      pUserCode,  ',
'                      v (''APP_SESSION''),  ',
'                      SYSDATE,  ',
'                      vRemoteAddress,  ',
'                      vHttpHost,  ',
'                      vRemoteUser,  ',
'                      vHttpUserAgent,  ',
'                      vHttpCookie,  ',
'                      vHttpReferer,  ',
'                      vRequestMethod,  ',
'                      vRequestProtocol,  ',
'                      vServerName,  ',
'                      vServerPort,  ',
'                      vServerProtocol,  ',
'                      vBrowserVersion,  ',
'                      ''I'',  ',
'                      vMacAddress,  ',
'                      vPcName,  ',
'                      vOsUser,  ',
'                      NVL(v(''AI_OS_VERSION''),vOsInfo),  ',
'                      vDn'))
);
null;
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_shared.append_to_install_script(
 p_id=>wwv_flow_imp.id(34855710406855915282)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
's,  ',
'                      vIp,  ',
'                      v (''AI_LATITUDE''),  ',
'                      v (''AI_LONGITUDE''),  ',
'                      v (''AI_LOCATION''),  ',
'                      v (''AI_COUNTRY''));  ',
'      EXCEPTION  ',
'         WHEN OTHERS  ',
'         THEN  ',
'            RAISE_APPLICATION_ERROR (-20001,  ',
'                                     ''Log Insertion Problem'' || SQLERRM);  ',
'      END;  ',
'END; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "PRO_LOG_IN" (p_user varchar2) as ',
'ip_address  varchar2(30); ',
'login_user   varchar2(30):= p_user; ',
'begin ',
'--select my_sys_context(''USERENV'', ''IP_ADDRESS'') into ip_address  from dual; ',
'insert into USERS_LOG (log_id,ip_address,login_user,logout_time) ',
'values(login_log_id_sec.nextval,owa_util.get_cgi_env(''REMOTE_ADDR''),V(''APP_USER''),''''); ',
'commit; ',
'end; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "PRO_LOG_OUT" (p_user varchar2) as ',
'v_ip_address  varchar2(30); ',
'--login_user   varchar2(30):= p_user; ',
'v_max_log_id number; ',
'begin ',
'--Select my_sys_context(''USERENV'', ''IP_ADDRESS'') into v_ip_address from dual; ',
'update USERS_LOG set LOGOUT_TIME = sysdate ',
'where log_id=(Select max(log_id) from USERS_LOG where ip_address =owa_util.get_cgi_env(''REMOTE_ADDR'')); ',
'--where upper(login_user)=upper(p_user)); ',
'commit; ',
'end; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "PRO_LOG_OUT_BK" (p_user varchar2) as ',
'v_ip_address  varchar2(30); ',
'login_user   varchar2(30):= p_user; ',
'v_max_log_id number; ',
'begin ',
'select my_sys_context(''USERENV'', ''IP_ADDRESS'') into v_ip_address from dual; ',
'--select max(log_id) into v_max_log_id  from  acl_user_log where ip_address =v_ip_address; ',
'update USERS_LOG set LOGOUT_TIME = sysdate ',
'where --log_id = v_max_log_id; ',
'log_id=(Select max(log_id) from USERS_LOG where ip_address =v_ip_address); ',
'commit; ',
'end; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "PRO_LOG_OUT_BK211218" (p_user varchar2) as ',
'v_ip_address  varchar2(30); ',
'--login_user   varchar2(30):= p_user; ',
'v_max_log_id number; ',
'begin ',
'--Select my_sys_context(''USERENV'', ''IP_ADDRESS'') into v_ip_address from dual; ',
'update USERS_LOG set LOGOUT_TIME = sysdate ',
'where log_id=(Select max(log_id) from USERS_LOG where ip_address =owa_util.get_cgi_env(''REMOTE_ADDR'')); ',
'--where upper(login_user)=upper(p_user)); ',
'commit; ',
'end; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "PRO_LOG_OUT_BKP" (p_user varchar2) as ',
'v_ip_address  varchar2(30); ',
'login_user   varchar2(30):= p_user; ',
'--login_type   varchar2(20):= ''Log Out''; ',
'v_max_log_id number; ',
'begin ',
'select my_sys_context(''USERENV'', ''IP_ADDRESS'') into v_ip_address from dual; ',
'select max(log_id) into v_max_log_id  from  USERS_LOG where ip_address =v_ip_address; ',
'--insert into acl_user_log (log_id,ip_address,login_user,login_type,login_time) ',
'--values(login_log_id_sec.nextval,ip_address,V(''APP_USER''),login_type,''''); ',
'update USERS_LOG set LOGOUT_TIME = sysdate ',
'where log_id = v_max_log_id; ',
'commit; ',
'end; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "PRO_LOG_OUT_TIME" (p_user varchar2) as ',
'v_ip_address  varchar2(30); ',
'--login_user   varchar2(30):= p_user; ',
'v_max_log_id number; ',
'begin ',
'--Select my_sys_context(''USERENV'', ''IP_ADDRESS'') into v_ip_address from dual;  Select max(log_id) from USERS_LOG where ip_address =owa_util.get_cgi_env(''REMOTE_ADDR'') ',
'update USERS_LOG set LOGOUT_TIME = sysdate ',
'where log_id=(Select max(log_id) from USERS_LOG where LOGIN_USER=upper(p_user)); ',
'--where upper(login_user)=upper(p_user)); ',
'commit; ',
'end; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "REPORT_AUTH_TEST" (P_USER_OID          VARCHAR2, ',
'                          P_REPORT_NAME       VARCHAR2, ',
'                          P_REPORT_ID     OUT VARCHAR2) ',
'   IS ',
'      V_OID      NUMBER; ',
'      V_REF_ID   VARCHAR (30); ',
'      V_TDX      DATE := SYSDATE; ',
'   BEGIN ',
'      SELECT NVL (MAX (OID), 0) + 1 INTO V_OID FROM REPORT_LOG; ',
' ',
'      V_REF_ID := ',
'            TO_CHAR (V_TDX, ''SSMIHH24DDDRR'') ',
'         || ''-'' ',
'         || CUST_NUMBER.GET_32_BASE_NUMBER (V_OID); ',
' ',
'      INSERT INTO REPORT_LOG (OID, ',
'                              REPORT_NAME, ',
'                              REPORT_DATE, ',
'                              REF_ID, ',
'                              PID_ACL_USER) ',
'          VALUES (V_OID, ',
'                  P_REPORT_NAME, ',
'                  V_TDX, ',
'                  V_REF_ID, ',
'                  P_USER_OID); ',
'      P_REPORT_ID := V_REF_ID; ',
'      COMMIT; ',
'   END; ',
'/',
'',
'CREATE OR REPLACE EDITIONABLE PROCEDURE "WRITE_TO_DIR" ',
'IS',
'   CURSOR get_clob',
'   IS',
'      SELECT app_export, app_id, clob_to_blob (app_export) b_file',
'        FROM export_clob;',
'BEGIN',
'   FOR i IN get_clob',
'   LOOP',
'      blob_to_file (',
'         ''APEX_TEMP '',',
'         TO_CHAR (SYSDATE, ''DDMONYYHH24MISS'') || ''_'' || i.app_id || ''.sql'',',
'         i.b_file);',
'   END LOOP;',
'END write_to_dir;',
'/',
'create or replace PROCEDURE EXPORT_APPLICATION IS',
' l_files apex_t_export_files;',
' contents clob;',
'CURSOR GET_APP IS',
'select APPLICATION_ID from apex_applications WHERE APPLICATION_ID =101;',
'BEGIN',
'DELETE FROM EXPORT_CLOB;',
'FOR I IN GET_APP LOOP',
'l_files := apex_export.get_application(p_application_id => I.APPLICATION_ID);',
' contents := l_files(1).contents;',
'INSERT INTO EXPORT_CLOB(APP_ID,APP_EXPORT)',
'VALUES (I.APPLICATION_ID,contents);',
'END LOOP;',
'COMMIT;',
'BEGIN',
'WRITE_TO_DIR;',
'COMMIT;',
'END;',
'END;',
'/',
'',
' CREATE SEQUENCE  "AAW_IMG_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 25774097 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "ACL_USER_GROUP_PID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 97498 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "APPS_NAME_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 25774097 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "BLOG_POST_SL_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "DEPT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 50 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "EMP_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 8980 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "EXP_APAX_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "GALLERY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "IMAGES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "INFO_OID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 2183024 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "JOB_ID_SEQ"  MINVALUE 0 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 2 NOCACHE  NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "LIKE_OID"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1121 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "LOGIN_LOG_ID_SEC"  MINVALUE 0 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 8692756 NOCACHE  NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "LOG_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 6 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "MENUS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1587 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "MENU_CODE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 2180684 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "MY_USERS_INFORMATION_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 501 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "MY_USERS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 741 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "NOTI_CATEGORY_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "ORDER_PRODUCT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 801 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "PRODUCT_DETALIS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 401 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "PRODUCT_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 2567 START WITH 2515661 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "PRODUCT_PRICE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 541 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "PRODUCT_RATING_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 461 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "PURCHASE_DETALIS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "PURCHASE_MST_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 2185464 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "PUR_DTL_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 25774097 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "PUR_V"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 141 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "REPORT_VIEW_LOG_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 7089511 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "RETERN_PURCHASE_STOCK"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 230 NOCACHE  NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "SALES_DTL_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 5982 NOCACHE  NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "SALES_MST_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 2184084 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "SEQ_LOG_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 25774097 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "SLIDESHOW_IMG_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 341 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "STOCK_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "STUDENT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 601 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "TEST_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "USERS_LOG_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 248 NOCACHE  NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "USERS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "USER_GROUP_MY_STOCK_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 481 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "USER_LOC_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1179 NOCACHE  NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "USER_PAGE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1727 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "USER_TABLE_LOG_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1701 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "AUTO_AUDIT_LOG_00141" ',
'   AFTER INSERT OR UPDATE OR DELETE',
'   ON MENUS_ACCESS',
'   FOR EACH ROW',
'DECLARE',
'   V_ACT_TYPE   VARCHAR2 (1);',
'   VT_PID       NUMBER;',
'   V_PID        NUMBER;',
'BEGIN',
'   IF INSERTING',
'   THEN',
'      V_ACT_TYPE := ''I'';',
'      VT_PID := :NEW.OID;',
'   ELSIF UPDATING',
'   THEN',
'      V_ACT_TYPE := ''U'';',
'      VT_PID := :OLD.OID;',
'   ELSE',
'      V_ACT_TYPE := ''D'';',
'      VT_PID := :OLD.OID;',
'   END IF;',
'   V_PID := pkg_primekey.fnc_primekey (p_nameofseq => ''ALL_ADT_LOG_SEQ'');',
'   INSERT INTO ALL_AUDIT_LOG (PID,',
'                              TABLE_NAME,',
'                              T_OID,',
'                              TRANSECTION_DATE,',
'                              ACTION_TYPE,',
'                              IP,',
'                              PID_ACL_USER,',
'                              DATA)',
'        VALUES (',
'                  V_PID,',
'                  ''MENUS_ACCESS'',',
'                  VT_PID,',
'                  SYSDATE,',
'                  V_ACT_TYPE,',
'                  OWA_UTIL.get_cgi_env (''REMOTE_ADDR''),',
'                  acl.get_current_user_pid,',
'                     ''<?xml version="1.0"?><ROWSET><MENUS_ACCESS><OID><OLD>''',
'                  || :OLD.OID',
'                  || ''</OLD><NEW>''',
'                  || :NEW.OID',
'                  || ''</NEW></OID><GROUP_OID><OLD>''',
'                  || :OLD.GROUP_OID',
'                  || ''</OLD><NEW>''',
'                  || :NEW.GROUP_OID',
'                  || ''</NEW></GROUP_OID><MENU_OID><OLD>''',
'                  || :OLD.MENU_OID',
'                  || ''</OLD><NEW>''',
'                  || :NEW.MENU_OID',
'                  || ''</NEW></MENU_OID><MENU_LINK_PAGENO><OLD>''',
'                  || :OLD.MENU_LINK_PAGENO',
'                  || ''</OLD><NEW>''',
'                  || :NEW.MENU_LINK_PAGENO',
'                  || ''</NEW></MENU_LINK_PAGENO></MENUS_ACCESS></ROWSET>'');',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      RAISE;',
'END;',
'',
'/',
'',
'',
'ALTER TRIGGER "AUTO_AUDIT_LOG_00141" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "AUTO_AUDIT_LOG_0087" ',
'  BEFORE INSERT OR UPDATE OR DELETE ',
'  ON REPORT_LOG ',
'  REFERENCING NEW AS NEW OLD AS OLD ',
'  FOR EACH ROW ',
'DECLARE ',
'  V_ACT_TYPE   VARCHAR2 (1); ',
'  VT_PID       NUMBER; ',
'BEGIN ',
'  IF INSERTING ',
'  THEN ',
'     V_ACT_TYPE := ''I''; ',
'     VT_PID := :NEW.OID; ',
'  ELSIF UPDATING ',
'  THEN ',
'     V_ACT_TYPE := ''U''; ',
'     VT_PID := :OLD.OID; ',
'  ELSE ',
'     V_ACT_TYPE := ''D''; ',
'     VT_PID := :OLD.OID; ',
'  END IF; ',
'-- ',
'  INSERT INTO ALL_AUDIT_LOG (PID, ',
'                                  TABLE_NAME, ',
'                                  T_OID, ',
'                                  TRANSECTION_DATE, ',
'                                  ACTION_TYPE, ',
'                                  PID_ACL_USER, ',
'                                  DATA) ',
'      VALUES ( (    SELECT NVL (MAX (PID), 0) + 1 FROM ALL_AUDIT_LOG), ',
'              ''REPORT_LOG'', ',
'              VT_PID, ',
'              SYSDATE, ',
'              V_ACT_TYPE, ',
'              ACL.GET_CURRENT_USER_PID, ',
'             ''<?xml version="1.0"?> ',
'<ROWSET> ',
'<REPORT_LOG> ',
'<INSERT_DATE><OLD>''||:OLD.INSERT_DATE||''</OLD><NEW>''||:NEW.INSERT_DATE||''</NEW></INSERT_DATE> ',
'<OID><OLD>''||:OLD.OID||''</OLD><NEW>''||:NEW.OID||''</NEW></OID> ',
'<PID_ACL_USER><OLD>''||:OLD.PID_ACL_USER||''</OLD><NEW>''||:NEW.PID_ACL_USER||''</NEW></PID_ACL_USER> ',
'<PID_EMPLOYEE_INSERT_BY><OLD>''||:OLD.PID_EMPLOYEE_INSERT_BY||''</OLD><NEW>''||:NEW.PID_EMPLOYEE_INSERT_BY||''</NEW></PID_EMPLOYEE_INSERT_BY> ',
'<PID_EMPLOYEE_UPDATE_BY><OLD>''||:OLD.PID_EMPLOYEE_UPDATE_BY||''</OLD><NEW>''||:NEW.PID_EMPLOYEE_UPDATE_BY||''</NEW></PID_EMPLOYEE_UPDATE_BY> ',
'<REF_ID><OLD>''||:OLD.REF_ID||''</OLD><NEW>''||:NEW.REF_ID||''</NEW></REF_ID> ',
'<REPORT_DATE><OLD>''||:OLD.REPORT_DATE||''</OLD><NEW>''||:NEW.REPORT_DATE||''</NEW></REPORT_DATE> ',
'<REPORT_NAME><OLD>''||:OLD.REPORT_NAME||''</OLD><NEW>''||:NEW.REPORT_NAME||''</NEW></REPORT_NAME> ',
'<UPDATE_DATE><OLD>''||:OLD.UPDATE_DATE||''</OLD><NEW>''||:NEW.UPDATE_DATE||''</NEW></UPDATE_DATE> ',
'</REPORT_LOG> ',
'</ROWSET>'' ',
'              ); ',
'-- ',
'EXCEPTION ',
'  WHEN OTHERS ',
'  THEN ',
'     RAISE; ',
'END; ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "AUTO_AUDIT_LOG_0087" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "AUTO_USER_GROUP_MY_STOCK" ',
'  after INSERT ',
'  ON MY_USERS   REFERENCING NEW AS NEW OLD AS OLD ',
'  FOR EACH ROW ',
'DECLARe ',
'begin ',
' INSERT INTO USER_GROUP_MY_STOCK (PID, PID_USER, PID_GROUP, IS_ACTIVE, INSERT_BY, INSERT_DATE, UPDATE_BY, UPDATE_DATE) ',
' VALUES (USER_GROUP_MY_STOCK_SEQ.nextval,:new.USER_ID,:new.USER_TYPE,:new.IS_ACTIVE,upper(V(''USER'')),sysdate,upper(V(''USER'')),sysdate); ',
' ',
'EXCEPTION ',
'  WHEN OTHERS ',
'  THEN ',
'     RAISE; ',
'END; ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "AUTO_USER_GROUP_MY_STOCK" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "BI_GALLERY" ',
' before insert on GALLERY for each row',
' begin ',
'  if :NEW.ID is null then ',
'   select GALLERY_SEQ.nextval into :NEW.ID from sys.dual;',
'  end if;',
' end;',
'',
'/',
'',
'',
'ALTER TRIGGER "BI_GALLERY" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "BI_MY_USERS" ',
'  before insert on "MY_USERS"                ',
'  for each row   ',
'begin    ',
'  if :NEW."USER_ID" is null then  ',
'    select "MY_USERS_SEQ".nextval into :NEW."USER_ID" from sys.dual;  ',
'  end if;  ',
'end;  ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "BI_MY_USERS" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "DEPT_TRG1" ',
'              before insert on dept ',
'              for each row ',
'              begin ',
'                  if :new.deptno is null then ',
'                      select dept_seq.nextval into :new.deptno from sys.dual; ',
'                 end if; ',
'              end; ',
'',
'/',
'',
'',
'ALTER TRIGGER "DEPT_TRG1" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "LOGIN_ID_ACL_USER" ',
'BEFORE INSERT OR UPDATE of USER_ID ',
'ON MY_USERS  ',
'REFERENCING NEW AS New OLD AS Old ',
'FOR EACH ROW ',
'DECLARE ',
'BEGIN ',
':NEW.USER_ID := lower(:NEW.USER_ID); ',
'   EXCEPTION ',
'     WHEN OTHERS THEN ',
'       -- Consider logging the error and then re-raise ',
'       RAISE; ',
'END ; ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "LOGIN_ID_ACL_USER" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "MENUS_USER_PAGE" ',
'  AFTER INSERT ON MENUS ',
'FOR EACH ROW ',
'BEGIN ',
'INSERT INTO USER_PAGE ',
'(PID, PAGE_ID, DESCRIPTION, APP_ID, STATUS, PAGE_NAME, USER_NAME) ',
'VALUES ',
'(USER_PAGE_SEQ.NEXTVAL, :NEW.OID, :NEW.DESCRIPTION, NULL, ''1'', :NEW.MENU_NAME, V(''APP_USER'')); ',
' ',
'END; ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "MENUS_USER_PAGE" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "MY_USERS_NOTI" ',
'  BEFORE DELETE OR INSERT OR UPDATE ON MY_USERS',
'  FOR EACH ROW',
'BEGIN',
'    DBMS_OUTPUT.PUT(''Old USER_ID= '' || :OLD.USER_ID|| '', '');',
'  DBMS_OUTPUT.PUT(''New USER_ID= '' || :NEW.USER_ID );',
'END;',
'',
'/',
'',
'',
'ALTER TRIGGER "MY_USERS_NOTI" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "MY_USERS_NOTIFICON" ',
'  BEFORE DELETE OR INSERT OR UPDATE ON MY_USERS',
'  FOR EACH ROW',
'BEGIN',
'    DBMS_OUTPUT.PUT(''Old USER_ID= '' || :OLD.USER_ID|| '', '');',
'  DBMS_OUTPUT.PUT(''New USER_ID= '' || :NEW.USER_ID );',
'END;',
'/',
'',
'',
'ALTER TRIGGER "MY_USERS_NOTIFICON" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "OID_BLOG_POST_SL_NO" ',
'BEFORE insert or update ON BLOG_POST  ',
'FOR EACH ROW ',
'BEGIN ',
'    INSERT INTO BLOG_POST_SL_NO',
'        (POST_OID, SL_NO) ',
'    VALUES ',
'        (:NEW.POST_OID,  2); ',
'end OID_BLOG_POST_SL_NO;',
'',
'/',
'',
'',
'ALTER TRIGGER "OID_BLOG_POST_SL_NO" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "OID_PRODUCT_RATING" ',
'BEFORE insert or update ON PRODUCT_RATING ',
'FOR EACH ROW',
'BEGIN',
'if :NEW.OID is null THEN',
'        select PRODUCT_RATING_SEQ.nextval into :new.OID from sys.dual;',
'    END IF;',
'    if inserting then ',
'    :new.CREATE_DATE := localtimestamp; ',
'    :new.CREATE_BY := nvl(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'  end if; ',
'  :new.UPDATE_DATE := localtimestamp; ',
'  :new.UPDATE_BY := nvl(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'end OID_PRODUCT_RATING;',
'',
'/',
'',
'',
'ALTER TRIGGER "OID_PRODUCT_RATING" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "OID_PURCHASE_DETALIS" ',
'BEFORE INSERT ON PURCHASE_DETALIS  ',
'FOR EACH ROW ',
'BEGIN ',
'if :NEW.OID is null THEN ',
'        select PURCHASE_DETALIS_SEQ.nextval into :new.OID from sys.dual; ',
'    END IF; ',
'END ; ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "OID_PURCHASE_DETALIS" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "OID_SALES_DTLS" ',
'BEFORE insert or update ON SALES_DTLS  ',
'FOR EACH ROW ',
'BEGIN ',
'if :NEW.OID is null THEN ',
'        select SALES_DTL_SEQ.nextval into :new.OID from sys.dual; ',
'    END IF; ',
'    if inserting then  ',
'    :new.CREATE_DATE := localtimestamp;  ',
'    :new.CREATED_BY := nvl(sys_context(''APEX$SESSION'',''APP_USER''),user);  ',
'    :new.IP := owa_util.get_cgi_env(''REMOTE_ADDR''); ',
'  end if;  ',
'  :new.UPDATE_DATE := localtimestamp;  ',
'  :new.UPDATE_BY := nvl(sys_context(''APEX$SESSION'',''APP_USER''),user);  ',
'end OID_SALES_DTLS;',
'',
'/',
'',
'',
'ALTER TRIGGER "OID_SALES_DTLS" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "ORDER_PRODUCT" ',
'         before insert on "ORDER_PRODUCT" ',
'         for each row ',
'       begin ',
'         if :NEW."OID" is null then ',
'        select "ORDER_PRODUCT_SEQ".nextval into :NEW."OID" from sys.dual; ',
'          END IF; ',
'    END;',
'',
'/',
'',
'',
'ALTER TRIGGER "ORDER_PRODUCT" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "PASSWORD_MY_USER" ',
'BEFORE INSERT OR UPDATE of PIN ',
'ON MY_USERS',
'REFERENCING NEW AS New OLD AS Old',
'FOR EACH ROW',
'DECLARE',
'    PASS VARCHAR2(250);',
'BEGIN',
'    PASS := :new.PIN;',
'',
'IF INSERTING',
'  THEN',
'     :NEW.PASSWORD := PASS;',
'  ELSIF UPDATING',
'  THEN',
'     :NEW.PASSWORD := PASS;',
'  END IF;',
'END ;',
'',
'/',
'',
'',
'ALTER TRIGGER "PASSWORD_MY_USER" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "PIN_MY_USER" ',
'BEFORE INSERT OR UPDATE of PIN  ',
'ON MY_USERS ',
'REFERENCING NEW AS New OLD AS Old ',
'FOR EACH ROW ',
'DECLARE ',
'BEGIN ',
':new.PIN:=USER_AUTH_IP.CUSTOM_HASH ( :new.USER_ID, :new.PIN);  ',
' ',
' ',
'IF INSERTING ',
'  THEN ',
'     :NEW.ADDED_DATE := SYSDATE; ',
'  ELSIF UPDATING ',
'  THEN ',
'     :NEW.UPDATE_DATE := SYSDATE; ',
'  END IF; ',
' ',
' ',
'   EXCEPTION ',
'     WHEN OTHERS THEN ',
'       RAISE; ',
'END ; ',
' ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "PIN_MY_USER" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "PRODUCT_USER_ACTIVITY" ',
'  AFTER INSERT OR UPDATE OR DELETE ',
'  ON PRODUCT ',
'   ',
'FOR EACH ROW ',
' ',
'BEGIN ',
' ',
'IF INSERTING THEN ',
'INSERT INTO USER_TABLE_LOG ',
'(LOGE_ID, TABLE_NAME, PRODUCT_ID, ACTION, ADDED_DATE, CREATE_BY, IP, PRODUCT_CODE, PRODUCT_NAME) ',
'VALUES ',
'(USER_TABLE_LOG_SEQ.NEXTVAL, ''PRODUCT'', :NEW.PRODUCT_ID, ''INSERT'', SYSDATE, V(''APP_USER''), owa_util.get_cgi_env(''REMOTE_ADDR''), :NEW.PRODUCT_CODE, :NEW.PRODUCT_NAME); ',
'END IF; ',
' ',
'IF UPDATING THEN ',
'INSERT INTO USER_TABLE_LOG ',
'(LOGE_ID, TABLE_NAME, PRODUCT_ID, ACTION, ADDED_DATE, CREATE_BY, IP, PRODUCT_CODE, PRODUCT_NAME) ',
'VALUES ',
'(USER_TABLE_LOG_SEQ.NEXTVAL, ''PRODUCT'', :OLD.PRODUCT_ID, ''UPDATE'', SYSDATE, V(''APP_USER''), owa_util.get_cgi_env(''REMOTE_ADDR''), :OLD.PRODUCT_CODE, :OLD.PRODUCT_NAME); ',
'END IF; ',
' ',
'IF DELETING THEN ',
'INSERT INTO USER_TABLE_LOG ',
'(LOGE_ID, TABLE_NAME, PRODUCT_ID, ACTION, ADDED_DATE, CREATE_BY, IP, PRODUCT_CODE, PRODUCT_NAME) ',
'VALUES ',
'(USER_TABLE_LOG_SEQ.NEXTVAL, ''PRODUCT'', :OLD.PRODUCT_ID, ''DELETE'', SYSDATE, V(''APP_USER''), owa_util.get_cgi_env(''REMOTE_ADDR''), :OLD.PRODUCT_CODE, :OLD.PRODUCT_NAME); ',
'END IF; ',
' ',
'END; ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "PRODUCT_USER_ACTIVITY" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "PURCHASE_STOCK" ',
'AFTER INSERT OR UPDATE OF SUBMIT   ',
'   ON PURCHASE_DETALIS ',
'FOR EACH ROW ',
'  WHEN (new.SUBMIT = ''1'') DECLARE ',
'a NUMBER; ',
'BEGIN ',
'SELECT max(PRODUCT_ID) INTO a FROM STOCK WHERE (PROOUCT_SIZE =:NEW.PROOUCT_SIZE and PRODUCT_ID =:NEW.PRODUCT_ID); ',
'IF a is not null THEN ',
'UPDATE STOCK ',
'SET STK_QNTY=NVL(STK_QNTY,0)+NVL(:NEW.QTY,0), ',
'IN_QNTY=NVL(IN_QNTY,0)+NVL(:NEW.QTY,0) ',
'WHERE PRODUCT_ID=:NEW.PRODUCT_ID and PROOUCT_SIZE =:NEW.PROOUCT_SIZE; ',
'ELSE ',
'INSERT INTO STOCK(PRODUCT_ID,PROOUCT_SIZE,IN_QNTY,OUT_QNTY,STK_QNTY) ',
'VALUES(:NEW.PRODUCT_ID,:NEW.PROOUCT_SIZE,:NEW.QTY,NULL,:NEW.QTY); ',
'END IF; ',
'END; ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "PURCHASE_STOCK" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "REPORT_LOG_DT" ',
'  BEFORE INSERT OR UPDATE ',
'  ON REPORT_LOG ',
'  REFERENCING NEW AS NEW OLD AS OLD ',
'  FOR EACH ROW ',
'BEGIN ',
':NEW.REPORTING_DATE:=TRUNC(:NEW.REPORT_DATE); ',
'END; ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "REPORT_LOG_DT" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "RETERN_PURCHASE_STOCK" ',
'  AFTER UPDATE OR DELETE  ',
'  ON PURCHASE_DETALIS ',
'FOR EACH ROW ',
' ',
'BEGIN ',
' ',
' ',
'IF UPDATING AND :OLD.SUBMIT = 1 THEN ',
'INSERT INTO RETERN_PURCHASE_DETALIS ',
'(OID, VOUCHER_NO, PRODUCT_ID, ITEM_NAME, PROOUCT_SIZE, CPU, QTY, TOTAL, SUBMIT, Created_By, ACTION, CREATE_DATE) ',
'VALUES ',
'(RETERN_PURCHASE_STOCK.NEXTVAL, :OLD.VOUCHER_NO,  :OLD.PRODUCT_ID, :OLD.ITEM_NAME,  :OLD.PROOUCT_SIZE,  :OLD.CPU, :NEW.RETERN_PRODUCT, :NEW.REFUND_TO_CUSTOMER, :OLD.SUBMIT, V(''APP_USER''), ''UPDATE'', SYSDATE); ',
'END IF; ',
' ',
' ',
'IF DELETING AND :OLD.SUBMIT = 1 THEN ',
'INSERT INTO RETERN_PURCHASE_DETALIS ',
'(OID, VOUCHER_NO, PRODUCT_ID, ITEM_NAME, PROOUCT_SIZE, CPU, QTY, TOTAL, SUBMIT, Created_By, ACTION, CREATE_DATE) ',
'VALUES ',
'(RETERN_PURCHASE_STOCK.NEXTVAL, :OLD.VOUCHER_NO, :OLD.PRODUCT_ID, :OLD.ITEM_NAME,  :OLD.PROOUCT_SIZE,  :OLD.CPU, :OLD.QTY, :OLD.TOTAL, :OLD.SUBMIT, V(''APP_USER''), ''DELETE'', SYSDATE); ',
'END IF; ',
'END; ',
'',
'/',
'',
'',
'ALTER TRIGGER "RETERN_PURCHASE_STOCK" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "SALES_STOCK" ',
'AFTER INSERT OR UPDATE OF SUBMIT   ',
'ON SALES_DTLS ',
'FOR EACH ROW ',
'   WHEN (new.SUBMIT = ''1'') DECLARE ',
'A NUMBER; ',
'BEGIN ',
'SELECT STK_QNTY INTO a from STOCK WHERE PRODUCT_ID=:NEW.PRODUCT_ID and PROOUCT_SIZE =:NEW.PROOUCT_SIZE; ',
'if :NEW.QTY <= a then ',
'UPDATE STOCK ',
'SET STK_QNTY=NVL(STK_QNTY,0)-NVL(:NEW.QTY,0), ',
'OUT_QNTY=NVL(OUT_QNTY,0)+NVL(:NEW.QTY,0) ',
'WHERE PRODUCT_ID=:NEW.PRODUCT_ID and PROOUCT_SIZE =:NEW.PROOUCT_SIZE; ',
'  ELSE ',
unistr('  raise_application_error(-20111,''\0986\09AA\09A8\09BE\09B0 \09B8\09CD\099F\0995 \0995\09AE''); '),
'  end if; ',
'END; ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "SALES_STOCK" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "SLIDESHOW_IMG" ',
'  before insert on "SLIDESHOW_IMG"                ',
'  for each row   ',
'begin    ',
'  if :NEW."OID" is null then  ',
'    select "SLIDESHOW_IMG_SEQ".nextval into :NEW."OID" from sys.dual;  ',
'  end if;  ',
'end; ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "SLIDESHOW_IMG" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "STUDENT" ',
'         before insert on "STUDENT" ',
'         for each row ',
'       begin ',
'         if :NEW."STUDENT_ID" is null then ',
'        select "STUDENT_SEQ".nextval into :NEW."STUDENT_ID" from sys.dual; ',
'          END IF; ',
'    END; ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "STUDENT" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "USER_T" ',
'BEFORE INSERT OR UPDATE ON POS_USER ',
'FOR EACH ROW ',
'BEGIN ',
'IF :NEW.PASSWORD IS NOT NULL THEN ',
':NEW.PASSWORD:=CUSTOM_HASH(UPPER(:NEW.USER_NAME),(:NEW.PASSWORD)); ',
'END IF; ',
'IF INSERTING THEN ',
'IF :NEW.USER_ID IS NULL THEN ',
'SELECT NVL(MAX(USER_ID)+1,1) INTO :NEW.USER_ID FROM POS_USER; ',
'END IF; ',
'END IF; ',
'END; ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "USER_T" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "USER_TABLE_DETELS" ',
'  before insert or update on MY_USERS ',
'  for each row ',
'begin ',
'  if inserting then ',
'    :new.ADDED_DATE := localtimestamp; ',
'    :new.CREATE_BY := nvl(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'  end if; ',
'  :new.UPDATE_DATE := localtimestamp; ',
'  :new.UPDATE_BY := nvl(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'end USER_TABLE_DETELS;',
'',
'/',
'',
'',
'ALTER TRIGGER "USER_TABLE_DETELS" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "USER_UPDATE_LOGS" ',
'  before insert or update on USERS_LOG  ',
'  for each row  ',
'begin  ',
'  if :new.LOG_ID is null then  ',
'    :new.LOG_ID := to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');  ',
'  end if;  ',
'  if inserting then  ',
'    :new.created := localtimestamp;  ',
'    :new.created_by := nvl(sys_context(''APEX$SESSION'',''APP_USER''),user);  ',
'  end if;  ',
'  :new.updated := localtimestamp;  ',
'  :new.updated_by := nvl(sys_context(''APEX$SESSION'',''APP_USER''),user);  ',
'end user_update_logs; ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "USER_UPDATE_LOGS" ENABLE;',
'',
''))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855710839817915286)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'BASE64ENCODE'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855711233809915286)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'BLOG_POST_REPORT'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855711513386915287)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'CONV_BANGLA_ENGLISH'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855711776134915287)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'CONV_BANGLA_ENGLISH_DATE'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855711908271915287)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'CONV_ENGLISH_BANGLA'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855712183004915287)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'CONV_ENGLISH_BANGLA_DATE'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855712522693915287)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'F$IS_USER_ALLOWED_TO_PAGE_YN'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855712733348915287)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'FILE_TO_BLOB'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855712968529915287)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'FN_GEN_INSERTS'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855713131984915287)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_BANGLA_MONTH'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855713498300915288)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_BANGLA_MONTH_SMALL'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855713637322915288)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_CORRENT_STOCK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855713886677915288)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_CURRENT_USER_ID'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855714006932915288)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_DML'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855714201839915288)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_EMAIL_ADDRESS'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855714421633915288)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_IMAGE_URL'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855714669796915288)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_IN_QTY2'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855714869292915289)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_LINK_URL'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855715000667915289)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_META_DESCRIPTION'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855715225758915289)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_OUT_QTY'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855715429834915289)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_OUT_QTY2'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855715642548915289)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_PARAGRAPH'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855715898461915289)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_PERSON_AGE'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855716074831915289)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_POST_DESCRIPTION'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855716289247915289)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_POST_NAME'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855716475667915290)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_POST_TITLE'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855716635955915290)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_PRE_CODE'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855716824372915290)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_PRODETAILS'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855717035200915290)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_PRODETAILSBYCODE'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855717267737915290)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_PRODUCT_RATING'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855717494775915290)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_PROGRESS_BAR'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855717602869915291)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_STEPS'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855717885724915291)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_SUB_TITLE'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855718084899915291)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_SUB_TITLE_DETELS'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855718259171915291)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_SUPPLIER_DETAILS'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855718464050915291)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_USER_ID'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855718609609915291)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_USER_NAME'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855718864206915291)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'MY_SYS_CONTEXT'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855719070341915291)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'POS_CUSTOM_AUTH'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855719282934915292)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'SENDEMAIL'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855719440291915292)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'STRIPHTML'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855719658931915292)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'TOOLTIP_WITH_IMAGE'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855719816460915292)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'ACL_GROUP_PAGE_ACCESS_PK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855720044595915292)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'ACL_GROUP_PAGE_ACCESS_U01'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855720230837915292)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'ACL_GROUP_PK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855720454676915292)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'ACL_USERLOG_IPADD_IDX'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855720676273915292)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'ACL_USER_GROUP_PK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855720867314915293)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'BRAND_PK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855721037379915293)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'COURT_IDX1'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855721244638915293)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'E_LOG_PID_IDX'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855721469875915293)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'GALLERY_PK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855721682706915293)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'IDX_REP_DT'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855721898722915293)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'IMAGES_PK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855722028549915293)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'IMAGES_UK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855722263949915293)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'IS_ACTIVATE_PK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855722406104915293)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'LOG_ID_ACL_USER_LOG_IDX'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855722604063915294)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'LOG_ID_ACL_USER_LOG_INDX'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855722808643915294)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'LOG_ID_PK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855723095979915294)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'MENUS_CON_PK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855723264750915294)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'MY_FILE_TABLE_PK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855723469294915294)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'MY_USERS_PK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855723686120915294)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'ORDER_PRODUCT_IDX1'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855723848987915294)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'PID_ALL_AUDIT_LOG_INDX'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855724010668915294)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'PK_DOB'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855724212035915294)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'PK_INFOFOLLOWUP'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855724488066915295)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'PK_OID'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855724635212915295)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'PK_PRODUCT_DETELS_ID'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855724846574915295)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'PK_PRODUCT_ID'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855725048687915295)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'PK_PRODUCT_PRICE_OID'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855725213024915295)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'PK_PRODUCT_RATING'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855725411648915295)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'PK_SLIDESHOW_IMG'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855725607105915295)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'PRODUCT_DETELS_UNI'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855725874757915295)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'PRODUCT_PRICE_UNI'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855726067021915295)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'PURCHASE_DETALIS_PK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855726244671915295)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'PURCHASE_MASTER_IDX1'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855726407677915296)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'REPORT_LOG_PK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855726620617915296)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'RETERN_PURCHASE_DETALIS_PK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855726873087915296)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'SALES_MST_CON'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855727073293915296)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'SALES_ORDER_CON'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855727255746915296)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'STUDENT_CON'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855727405695915296)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'SURETY_ACCOUNT_PK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855727633201915296)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TEST_PK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855727873356915297)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'UK_DOB'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855728076678915297)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'USER_GROUP_MY_STOCK_PK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855728273219915297)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'USER_PAGE_PK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855728449667915297)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'USER_PAGE_UK1'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855728654099915297)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'USER_TABLE_LOG_CON'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855728808303915297)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'ACL'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855729029524915297)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'APP_ERROR_PKG'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855729257002915297)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'BLOG_POST_PKG'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855729495954915297)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'CUST_NUMBER'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855729695177915298)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'EC_API'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855729827890915298)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'MYPACKAGE1'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855730036442915298)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'OPR'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855730235145915298)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'PACKAGE'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855730459467915298)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'PKG_PRIMEKEY'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855730685614915298)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'PRODUCT_INFORMATION'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855730880844915298)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'USER_AUTH_IP'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855731073821915298)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'USER_INFO'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855731270536915298)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'AAW_IMG_DISPLAY'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855731402314915299)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'BARCODE_PR'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855731628900915299)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'BLOB_TO_FILE'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855731892238915299)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'CREATE_FILE_FROM_CLOB'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855732039641915299)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'DATA_INSERT_PROC'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855732235831915299)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'DOWNLOAD_BLOB'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855732439083915299)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'DOWNLOAD_MY_FILE'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855732638668915299)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'EC_API2'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855732884050915299)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'EC_API_CALL'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855733089212915299)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'EC_API_DETAILS'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855733201499915300)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'EXPORT_APPLICATION'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855733423173915300)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'GET_ENC_IMG_FROM_FS'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855733659100915300)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'GET_ENC_IMG_FROM_HTTP'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855733852095915300)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'GET_ENC_IMG_FROM_TAB'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855734066772915300)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'GET_FILE'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855734269243915300)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'GET_NID_RESPONSE'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855734433772915300)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'GET_REPORT_HEAD_TEST'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855734689951915300)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'GET_REPORT_ID'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855734886843915300)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'GET_REPORT_ID_ATI'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855735070278915301)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'INSERT_XML_EMPS'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855735233946915301)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'LOAD_XML_TO_EXISTING_TABLE'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855735482544915301)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'PAGE_ACCESS'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855735641624915301)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'PRC_ACCESS_LOG_WEB'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855735869675915301)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'PRO_LOG_IN'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855736019329915301)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'PRO_LOG_OUT'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855736202365915301)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'PRO_LOG_OUT_BK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855736486760915302)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'PRO_LOG_OUT_BK211218'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855736676481915302)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'PRO_LOG_OUT_BKP'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855736892107915302)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'PRO_LOG_OUT_TIME'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855737085176915302)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'REPORT_AUTH_TEST'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855737275241915302)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'WRITE_TO_DIR'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855737473325915302)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'AAW_IMG_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855737696096915302)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'ACL_USER_GROUP_PID_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855737899820915302)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'APPS_NAME_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855738019618915303)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'BLOG_POST_SL_NO_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855738278830915303)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'DEPT_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855738441169915303)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'EMP_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855738611041915303)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'EXP_APAX_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855738852308915303)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'GALLERY_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855739069162915303)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'IMAGES_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855739225687915303)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'INFO_OID_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855739418028915303)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'ISEQ$$_115244465'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855739658161915303)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'ISEQ$$_118474287'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855739818792915304)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'ISEQ$$_125454921'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855740026878915304)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'ISEQ$$_125521139'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855740209959915304)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'JOB_ID_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855740493500915304)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'LIKE_OID'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855740667352915304)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'LOGIN_LOG_ID_SEC'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855740823324915304)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'LOG_ID_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855741068445915304)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'MENUS_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855741260563915304)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'MENU_CODE_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855741452607915305)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'MY_USERS_INFORMATION_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855741605099915305)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'MY_USERS_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855741864463915305)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'NOTI_CATEGORY_ID'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855742077215915305)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'ORDER_PRODUCT_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855742287075915305)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'PRODUCT_DETALIS_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855742461741915305)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'PRODUCT_ID_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855742633099915305)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'PRODUCT_PRICE_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855742840390915306)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'PRODUCT_RATING_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855743052114915306)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'PURCHASE_DETALIS_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855743209194915306)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'PURCHASE_MST_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855743445009915306)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'PUR_DTL_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855743687154915306)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'PUR_V'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855743997963915306)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'REPORT_VIEW_LOG_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855744193877915306)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'RETERN_PURCHASE_STOCK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855751094444915310)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'RETERN_PURCHASE_STOCK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855744442360915306)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'SALES_DTL_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855744621073915307)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'SALES_MST_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855744883762915307)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'SEQ_LOG_ID'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855745029431915307)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'SLIDESHOW_IMG_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855745240972915307)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'STOCK_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855745499377915307)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'STUDENT_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855745608628915307)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'TEST_S'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855745828616915307)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'USERS_LOG_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855746092878915307)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'USERS_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855746206612915308)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'USER_GROUP_MY_STOCK_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855746418737915308)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'USER_LOC_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855746602433915308)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'USER_PAGE_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855746822046915308)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'USER_TABLE_LOG_SEQ'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855749832060915310)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'ORDER_PRODUCT'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855751483336915311)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'SLIDESHOW_IMG'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855751673530915311)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'STUDENT'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855747022331915308)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'AUTO_AUDIT_LOG_00141'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855747228357915308)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'AUTO_AUDIT_LOG_0087'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855747496327915308)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'AUTO_USER_GROUP_MY_STOCK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855747630960915308)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'BI_GALLERY'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855747849089915309)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'BI_MY_USERS'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855748043483915309)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'DEPT_TRG1'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855748208419915309)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'LOGIN_ID_ACL_USER'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855748405405915309)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'MENUS_USER_PAGE'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855748626775915309)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'MY_USERS_NOTI'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855748858416915309)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'MY_USERS_NOTIFICON'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855749019541915309)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'OID_BLOG_POST_SL_NO'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855749291627915309)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'OID_PRODUCT_RATING'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855749471976915310)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'OID_PURCHASE_DETALIS'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855749635322915310)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'OID_SALES_DTLS'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855750045437915310)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'PASSWORD_MY_USER'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855750238602915310)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'PIN_MY_USER'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855750459315915310)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'PRODUCT_USER_ACTIVITY'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855750613899915310)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'PURCHASE_STOCK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855750838934915310)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'REPORT_LOG_DT'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855751234860915311)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'SALES_STOCK'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855751831869915311)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'USER_T'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855752044993915311)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'USER_TABLE_DETELS'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(34855752292876915311)
,p_script_id=>wwv_flow_imp.id(34855710406855915282)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'USER_UPDATE_LOGS'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_updated_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
,p_created_by=>'JABER0181@GMAIL.COM'
,p_created_on=>to_date('20220128125508','YYYYMMDDHH24MISS')
);
wwv_flow_imp.component_end;
end;
/
