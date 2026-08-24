@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data Definition Interfaz para MaintAct'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR005_I_MAINT_ACTIVOS
  as projection on ZR005_R_MANT_ACT as MaintSchedule
{
  key MaintUUID,
      AssetUUID,
      MaintType,
      Description,
      ScheduleDate,
      CompletedDate,
      Technician,
      MaintStatus,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      Cost,
      CurrencyCode,
      Notes,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      /* Associations */
      _Asset : redirected to parent ZR005_I_ACTIVOS
}
