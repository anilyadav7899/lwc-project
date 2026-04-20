@RestResource(urlMapping ='/get/accounts/contacts/*')
global class RestApex {
    @httpget
    global static list<Account> getMethod(){
        system.debug('the getMethod() is executed');
        
    return [select id,name,rating,(select id,LastName,phone from contacts) from account];
    }
}