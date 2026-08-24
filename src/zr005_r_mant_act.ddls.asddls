@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DDR para Mantenimiento de Activos'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR005_R_MANT_ACT
  as select from zr005_mant_act as MaintSchedule
  association to parent ZR005_R_ACTIVOS as _Asset on $projection.AssetUUID = _Asset.AssetUUID
{
  key maint_uuid            as MaintUUID,
      asset_parent_uuid     as AssetUUID,
      maint_type            as MaintType,
      description           as Description,
      schedule_date         as ScheduleDate,
      completed_date        as CompletedDate,
      technician            as Technician,
      maint_status          as MaintStatus,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      cost                  as Cost,
      currency_code         as CurrencyCode,
      notes                 as Notes,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,

      //Asociación
      _Asset
}
