public class CreateContactForAccount {
    public static void createContactForAccount(list<Account> aclist, map<id,Account> accmap){
        list<contact> contactlist = new list<contact>();
        for(Account ac :aclist){
            Account oldac = accmap.get(ac.id);
            if(ac.Rating != oldac.Rating){
                contact con = new contact();
                con.LastName = ac.Name;
                con.AccountId = ac.Id;
                
                
            }
        }
    }

}