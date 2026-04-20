@RestResource (urlmapping = '/akshaya/kanna/anil')
global class Restcontact {
@httpget global static List<Account> getcon(){
        List<Account>acclist =[SELECT id,Name,Rating,(select id,LastName,Phone FROM Contacts)FROM Account];
       return acclist;
    }
}