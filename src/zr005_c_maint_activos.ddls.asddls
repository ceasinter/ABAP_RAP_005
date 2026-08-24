@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data Definition Projection para MantAct'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZR005_C_MAINT_ACTIVOS
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
      _Asset : redirected to parent ZR005_C_ACTIVOS
}
