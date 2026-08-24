@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data Definition Tipos de Activos'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR005_R_ASSET_TYPE
  as select from zr005_asset_type as AssetTypes
{
  key asset_type_uuid as AssetTypeUUID,
  key asset_type_code as AssetTypeCode,
      description     as Description
}
