public with sharing class AccountPhoneFetcher {
    @InvocableMethod(label='Get Account Phones' description='Fetch phone numbers for given Accounts')
    public static List<String> getPhones(List<Id> accountIds) {  
        List<Account> accList = [SELECT Phone FROM Account WHERE Id IN :accountIds];
        List<String> phones = new List<String>();
        for(Account acc : accList){
            phones.add(acc.Phone);
        }
        return phones;
    }
}