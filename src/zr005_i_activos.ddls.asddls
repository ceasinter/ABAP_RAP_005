@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Interfaz para Activos'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR005_I_ACTIVOS
provider contract transactional_interface
  as projection on ZR005_R_ACTIVOS as Assets
{
  key AssetUUID,
      AssetCode,
      AssetType,
      Description,
      Category,
      Manufacturer,
      Model,
      SerialNumber,
      AcquisitionDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      PurchaseCost,
      CurrencyCode,
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
      _MaintSchedule : redirected to composition child ZR005_I_MAINT_ACTIVOS
}
