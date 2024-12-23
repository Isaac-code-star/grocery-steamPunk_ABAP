@Metadata.allowExtensions: true
@EndUserText.label: 'Protection View for ZR_10_GROCERY'
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_10_GROCERY
  provider contract transactional_query
  as projection on ZR_10_GROCERY
{
  key Id,
  Product,
  Category,
  Brand,
  Price,
  @Semantics.currencyCode: true
  Currency,
  Quantity,
  Purchasedate,
  Expirationdate,
  Expired,
  Rating,
  Note,
  Createdby,
  Createdat,
  Lastchangedby,
  Lastchangedat,
  Locallastchanged
  
}
