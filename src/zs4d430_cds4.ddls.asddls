@AbapCatalog.sqlViewName: 'ZCDSE11_4'
@AbapCatalog.compiler.compareFilter: true

@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'this label of ddic view join selection'

--- Annotations 
---- view specific 
--- element specific 

--- ABAP speicfic or --- Frame work specific 
-- end user text - text for ddic view , short description 

------ bufferin status # active= active , swiched offf - bufferinf allowed but not active , #not allowed - buffering not all allowed 
------ bufferin type  # single - single record  ,none- no bufferinf , genereic- gerenric  , full - full 


--- view enhcancement caterogy 
---- none - no enchancement at all 
---projection_list = ENCHANCEMENT TO THE CDS VIEW ALLOWED 
----ONLY IF THERE IS GROUP_BY CLAUSE - ADD AGGREAGTED , NON AGRREGATED COLUMNS TO MY SELECT STATEMENT IFIT HAS GROUP BY 
----ONLY IF THERE IS UNION CLAUSE - T IFIT HAS UNION IN CDS 

@AbapCatalog: {
    buffering: {
        status:        #NOT_ALLOWED,
        type:      #NONE ,
        numberOfKeyFields: 000
    },       
    preserveKey: true ,
    dataMaintenance: #RESTRICTED
}

---preserved key = false -- even though key fields are not given in the cds, the ddic view takes the source db tbale key fields and assignes 
---preserved key = true --   wht ever 

define view ZS4D430_CDS4 as select  
    from sbook as b inner join scustom as c 
                                         on b.customid = c.id
                  {  key b.carrid,
                    key  b.connid,
                    b.fldate,
                    b.bookid,
                        b.class,
                        b.forcuram as amount,
                        b.forcurkey as currency,
                        b.luggweight,
                        b.wunit,
                        b.order_date,
                        b.agencynum,
                        b.counter,
                        b.customid, 
                        c.name,
                        c.street,
                        c.postcode,
                        c.city,
                        c.country
                    }
                   where cancelled <> 'X'
