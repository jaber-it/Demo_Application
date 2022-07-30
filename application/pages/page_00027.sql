prompt --application/pages/page_00027
begin
--   Manifest
--     PAGE: 00027
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_page.create_page(
 p_id=>27
,p_user_interface_id=>wwv_flow_imp.id(14551754411696634465)
,p_name=>'Product Card UI Design'
,p_alias=>'PRODUCT-CARD-UI-DESIGN'
,p_step_title=>'Product Card UI Design'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var validity, message,',
'    ui = this.data;',
'  ',
'//This is to calculate total Weighting and alert',
'// create a private scope where $ is set to apex.jQuery',
'(function($) {',
'    // This is the function that calculates over all the rows of the model and then',
'    // updates something else.',
'    // Call this whenever the model data changes.',
'    function update(model) {',
'        var salKey = model.getFieldKey("SAL"), ',
'            empnoKey = model.getFieldKey("EMPNO"),',
'             recObj = [],',
'             recArray = [];',
'        model.forEach(function(record, index, id) {',
'            var sal = parseInt(record[salKey], 10),  // record[salKey] should be a little faster than using model.getValue in a loop',
'                empno = parseInt(record[empnoKey], 10),',
'                meta = model.getRecordMetadata(id);',
'            if (!isNaN(sal) && !meta.deleted && !meta.agg) {',
'               recObj = {ID: id, salary: sal, EMPNO: empno};',
'               recArray.push(recObj);                    ',
'            }         ',
'        });        ',
'        //************************mark found duplicates*************************        ',
'        var duplicateIds = recArray',
'                         .map(e => e[''salary''])',
'                         .map((e, i, final) => final.indexOf(e) !== i && i)',
'                         .filter(obj => recArray[obj])',
'                         .map(e => recArray[e]["salary"]);',
'        var duplObjects = recArray.filter(obj=> duplicateIds.includes(obj.salary));',
'              ',
'        if (duplicateIds.length > 0) { ',
'          apex.message.clearErrors();      ',
'          $(''#emp button[data-action="save"]'').hide();',
'           // Now show new errors',
'          apex.message.showErrors([',
'                {',
'                    type:       "error",',
'                    location:   "page",',
'                    message:    "Duplicates found on rows!" + "\r\n" + JSON.stringify(duplObjects),',
'                    unsafe:     false',
'                }',
'                  ]);',
'          } else {',
'              apex.message.clearErrors(); ',
'              $(''#emp button[data-action="save"]'').show();      ',
'          }               ',
'    }',
'',
'    //',
'    // This is the general pattern for subscribing to model notifications',
'    //',
'    // need to do this here rather than in Execute when Page Loads so that the handler',
'    // is setup BEFORE the IG is initialized otherwise miss the first model created event',
'    $(function() {',
'        // the model gets released and created at various times such as when the report changes',
'        // listen for model created events so that we can subscribe to model notifications',
'        $("#emp").on("interactivegridviewmodelcreate", function(event, ui) {',
'            var sid, model = ui.model;',
'            ',
'            // note this is only done for the grid veiw. It could be done for',
'            // other views if desired. The important thing to realize is that each',
'            // view has its own model',
'            if ( ui.viewId === "grid" ) {',
'                sid = model.subscribe( {',
'                    onChange: function(type, change) {',
'                        if ( type === "set" ) {',
'                            // don''t bother to recalculate if other columns change',
'                            if (change.field === "SAL" ) {',
'                                update( model );',
'                            }',
'                        } else if (type !== "move" && type !== "metaChange") {',
'                            // any other change except for move and metaChange affect the calculation',
'                            update( model );',
'                        }',
'                    }',
'                } );',
'                // if not lazy loaded there is no notification for initial data so update',
'                update(model); ',
'                // just in case fetch all the data. Model notifications will',
'                // cause calls to update so nothing to do in the callback function.',
'                // can remove if data will always be less than 50 records',
'                model.fetchAll(function() {});',
'            }',
'        });',
'    });',
'})(apex.jQuery);'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.tooltip {',
'  position: relative;',
'  display: inline-block;',
'  border-bottom: 1px dotted black;',
'}',
'.tooltip .tooltiptext {',
'  visibility: hidden;',
'  width: 120px;',
'  background-color: black;',
'  color: #fff;',
'  text-align: center;',
'  border-radius: 6px;',
'  padding: 5px 0;',
'font-size: 12px;',
'  /* Position the tooltip */',
'  position: absolute;',
'  z-index: 1;',
'        LEFT: 20;',
'}',
'.tooltip:hover .tooltiptext {',
'  visibility: visible;',
'}',
'',
'',
'',
'============================',
'.t-Cards {',
'    width: 100%;',
'    list-style: none;',
'    padding: 0;',
'    flex-wrap: wrap;',
'    display: flex;',
'    flex-wrap: wrap;',
'    justify-content: center;',
'    align-items: center;',
'    align-content: center;',
'    align-self: center;',
'    text-align: center;',
'    transition: 0.5s ease; ',
'    cursor: pointer; ',
'}',
'',
'.card {',
'',
'    transition: 0.5s ease;',
'    cursor: pointer;',
'    justify-content: center;',
'    display: flex;',
'}',
'',
'.card:hover {',
'    transform: scale(1.03);',
'}',
'',
'img {',
'    width: 100%;',
'    height: 200px;',
'    padding: 10px 10px 10px 10px;',
'    border-radius: 32px 32px 0 0;',
'/*    margin-top: 10px;  */',
'}',
'',
'.product-size h4 {',
'    font-size: 13px;',
'    padding: 0px 10px;  ',
'    margin-top: 3px;',
'    /* padding-bottom: 3px; */',
'    /* text-transform: uppercase; */',
'    text-align: left;',
'    /* margin-left: 21px; */',
'}',
'',
'.ul-size {',
'    margin: auto;',
'    padding: 0px 0px 0px 10px;',
'}',
'',
'.ul-size li {',
'  list-style: none;',
'  float: left;',
'  margin-right: 5px;',
'  text-align: left;',
'}',
'',
'',
'.ul-size li a {',
'    display: inline-block;',
'    /* text-decoration: none; */',
'    font-size: 10px;',
'    font-weight: 600;',
'    width: 23px;',
'    height: 23px;',
'    border-radius: 100%;',
'    text-align: center;',
'    line-height: 25px;',
'    color: #000;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'JABER0181@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220729111133'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(26037564070493645601)
,p_name=>'Product Card'
,p_template=>wwv_flow_imp.id(14551664721457634427)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--accent8:t-Region--noBorder:t-Region--scrollBody:t-Form--stretchInputs'
,p_component_template_options=>'t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.PRODUCT_ID,',
'       DBMS_LOB.getlength (a.PRODUCT_IMAGE) AS CARD_IMAGE,',
'       a.PRODUCT_DESCRIPTION AS DESCRIPTION,',
'       a.PRODUCT_NAME as CARD_TEXT,',
'       a.PRODUCT_CODE,',
'       (SELECT p.ORIGINAL_PRICE FROM PRODUCT_PRICE p WHERE a.PRODUCT_ID = p.PRODUCT_ID) AS PRICE,',
'       (SELECT p.SELLING_PRICE FROM PRODUCT_PRICE p WHERE a.PRODUCT_ID = p.PRODUCT_ID) AS SELLPRICE,',
'       (SELECT p.DISCOUNT FROM PRODUCT_PRICE p WHERE a.PRODUCT_ID = p.PRODUCT_ID) AS DISPRICE,',
'       a.PRODUCT_ID AS LINK',
'    --    ''<a  href="f?p=95068:56::NO:46:P56_PRODUCT_CODE:''||a.PRODUCT_CODE||''"> LINK </a>'' AS LINK',
'',
'',
'',
'',
'  FROM PRODUCT a',
'  where upper(substr(a.PRODUCT_NAME,1, nvl(length(:P27_SHERCH), length(a.PRODUCT_NAME)))) = upper(nvl(:P27_SHERCH, a.PRODUCT_NAME))',
'  ',
'  ',
' -- a.PRODUCT_DESCRIPTION = nvl(:P27_SHERCH, a.PRODUCT_DESCRIPTION)',
'  ',
'  --a.PRODUCT_NAME = nvl(:P27_SHERCH, a.PRODUCT_NAME)',
'',
'',
'  ',
'  ',
' -- (   :P27_SHERCH IS NULL OR UPPER (a.PRODUCT_NAME) = UPPER (:P27_SHERCH)) ',
'  --and (:P27_SHERCH is null or upper(a.PRODUCT_DESCRIPTION)= upper(:P27_SHERCH)) ',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P27_SHERCH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(26037435492843164126)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26037564134243645602)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Product Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26037564214435645603)
,p_query_column_id=>2
,p_column_alias=>'CARD_IMAGE'
,p_column_display_sequence=>20
,p_column_heading=>'Card Image'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:PRODUCT:PRODUCT_IMAGE:PRODUCT_ID::MIME_TYPE:PRODUCT_NAME:UPDATE_DATE::::'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26037564371727645604)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>30
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26037564445363645605)
,p_query_column_id=>4
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>40
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26037564512733645606)
,p_query_column_id=>5
,p_column_alias=>'PRODUCT_CODE'
,p_column_display_sequence=>50
,p_column_heading=>'Product Code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26037564648558645607)
,p_query_column_id=>6
,p_column_alias=>'PRICE'
,p_column_display_sequence=>60
,p_column_heading=>'Price'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26037564721745645608)
,p_query_column_id=>7
,p_column_alias=>'SELLPRICE'
,p_column_display_sequence=>70
,p_column_heading=>'Sellprice'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26037564899238645609)
,p_query_column_id=>8
,p_column_alias=>'DISPRICE'
,p_column_display_sequence=>80
,p_column_heading=>'Disprice'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34893074273182641830)
,p_query_column_id=>9
,p_column_alias=>'LINK'
,p_column_display_sequence=>90
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:56:P56_PRODUCT_CODE:#PRODUCT_CODE#'
,p_column_linktext=>'#LINK#'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27489893307092502332)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26037564070493645601)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14551729833166634454)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'TEMPLATE_DEFAULT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27489893249173502331)
,p_name=>'P27_SHERCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26037564070493645601)
,p_prompt=>'Sherch'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14551727356915634453)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp.component_end;
end;
/
