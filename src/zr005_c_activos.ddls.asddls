@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data Definition Projection para Activos'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity ZR005_C_ACTIVOS
  provider contract transactional_query
  as projection on ZR005_R_ACTIVOS as Assets

{
  key AssetUUID,
    @Search.defaultSearchElement: true
      AssetCode,
      @Search.defaultSearchElement: true
      AssetType,
      @Search.defaultSearchElement: true
      Description,
      @Search.defaultSearchElement: true
      Category,
      @Search.defaultSearchElement: true
      Manufacturer,
      @Search.defaultSearchElement: true
      Model,
      SerialNumber,
      AcquisitionDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      PurchaseCost,
      CurrencyCode,
      @Search.defaultSearchElement: true
      Location,
      AssignedUser,
      Status,
      WarrantyEndDate,
      Criticality,
      LastMaintenanceDate,
      NextMaintenanceDate,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      /* Associations */
      _AssetTypes,
      _MaintSchedule : redirected to composition child ZR005_C_MAINT_ACTIVOS
}
