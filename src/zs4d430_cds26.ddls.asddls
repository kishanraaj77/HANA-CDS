@AbapCatalog.sqlViewAppendName: 'ZCDS26ENH1'
@EndUserText.label: 'CDS36'
extend view ZS4D430_CDS25 
with
 ZS4D430_CDS26 {
    c.airpfrom,
       c.countryfr,
       c.airpto,
       c.countryto
}
