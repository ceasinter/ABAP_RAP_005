@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data Definition Root para Activos'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR005_R_ACTIVOS
  as select from zr005_activos as Assets
  composition [0..*] of ZR005_R_MANT_ACT   as _MaintSchedule
  association [0..1] to ZR005_R_ASSET_TYPE as _AssetTypes on $projection.AssetType = _AssetTypes.AssetTypeUUID

{
  key asset_uuid            as AssetUUID,
      asset_code            as AssetCode,
      asset_type            as AssetType,
      description           as Description,
      category              as Category,
      manufacturer          as Manufacturer,
      model                 as Model,
      serial_number         as SerialNumber,
      acquisition_date      as AcquisitionDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      purchase_cost         as PurchaseCost,
      currency_code         as CurrencyCode,
      location              as Location,
      assigned_user         as AssignedUser,
      status                as Status,
      warranty_end_date     as WarrantyEndDate,
      criticality           as Criticality,
      last_maintenance_date as LastMaintenanceDate,
      next_maintenance_date as NextMaintenanceDate,
      @Semantics.user.createdBy: true
      created_by            as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by       as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,

      //Asociaciones
      _MaintSchedule,
      _AssetTypes
}
