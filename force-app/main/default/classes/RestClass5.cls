@RestResource(urlMapping='/anil/peyyala/service8')
global class RestClass5 {
    public class JsonContact{
	public String ActualName;	
	public String Surname;	
	public String MobileNumber;	
	public String FaxNumber;	
	public String PersonalEmail;
    }
    @HttpPost
    global static void consumeMethod(){
        system.debug('consumeMethod() is executed');
          RestRequest req = RestContext.request;
          system.debug('req :'+ req);
          string requestbodysent = req.requestBody.toString();
          system.debug('requestbodysent :'+ requestbodysent);

        system.debug('the requestboady:'+requestbodysent);
        // converrt json to JsonContact object data
        JsonContact obj = (JsonContact)json.deserialize(requestbodysent,JsonContact.class);
        system.debug('the data :'+obj);
        
        // create contcat with the above data//
        contact con = new contact();
        con.LastName = obj.ActualName;
        con.LastName = obj.Surname;
        con.phone = obj.MobileNumber;
        insert con;
        system.debug('contact is created :'+con);
    }

}