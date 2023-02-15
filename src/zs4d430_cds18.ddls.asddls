@AbapCatalog.sqlViewName: 'ZCDS15SE11'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'customunionall'
define view ZS4D430_CDS18 as select from scustom  {
 key id 
    
}
where city ='Walldorf'
and 
id  between '00000000' and '00000012'

union all 
select from sbook {
key  customid as id  }
where agencynum = '00000100' and 
customid between  '00000000' and '00000012'
