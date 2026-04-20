@RestResource(urlMapping='/v1/ananth')
global with sharing class ExampleRestResource {
    @Httpget
    global static void doPost() {
        RestRequest req = RestContext.request; 
        String body = req.requestBody.toString();
        
    }
}