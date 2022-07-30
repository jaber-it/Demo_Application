prompt --application/shared_components/logic/application_computations/p0_order_id
begin
--   Manifest
--     APPLICATION COMPUTATION: P0_ORDER_ID
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>12825755979766489243
,p_default_application_id=>95068
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYSTOCK'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(14013456988180393165)
,p_computation_sequence=>10
,p_computation_item=>'P0_ORDER_ID'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(OID) from ORDER_PRODUCT',
'WHERE CONFIRM_ORDER IS NULL AND CANCEL_ORDER IS NULL;'))
);
wwv_flow_imp.component_end;
end;
/
