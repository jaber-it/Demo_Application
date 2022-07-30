prompt --application/shared_components/logic/application_computations/p0_order_product_oid
begin
--   Manifest
--     APPLICATION COMPUTATION: P0_ORDER_PRODUCT_OID
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
 p_id=>wwv_flow_imp.id(34927264830716251981)
,p_computation_sequence=>10
,p_computation_item=>'P0_ORDER_PRODUCT_OID'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'select count(oid) from ORDER_PRODUCT'
);
wwv_flow_imp.component_end;
end;
/
