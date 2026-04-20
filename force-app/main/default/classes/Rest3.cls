@RestResource(urlMapping = '/anil/peyyala/services3/*')
global class Rest3 {
    global class OelCustomer{
        global string  recordid;
        global string  name;
        global string  phone;
        global string  fax;
        global string  industry;
    }
    
   @HttpGet global static void sendProspect(){
        system.debug('the sendProspect() is executed ');
       RestRequest req = RestContext.request;
       RestResponse res = RestContext.response;
       system.debug('request:'+req);
       system.debug('reuestUri:'+req.requestURI.lastIndexOf('/')+1);
       system.debug('parameter:'+req.requestURI.substring(req.requestURI.lastIndexOf('/')+1));
       string reoel = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
       try{
           Account ac = [select id,name,phone,fax,industry from account where 	AccountNumber = '321456987' ];
          OelCustomer oel = new OelCustomer();
         oel.recordid = ac.id;
         oel.name = ac.name;
         oel.phone = ac.phone;
         oel.industry = ac.industry;
            res.statusCode = 200; 
           res.responseBody= blob.valueof(json.serialize(oel));
       }catch(Exception e){
            res.statusCode = 400; 
           res.responseBody= blob.valueof(json.serialize('no customer found with this id '));
       }
     }
}