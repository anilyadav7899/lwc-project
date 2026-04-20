@isTest
public class AccountServiceTest {
@isTest
    public static void updateAccount(){
        Account acc = new Account();
        acc.Name = 'AnilInfra';
        acc.Industry = 'banking';
        insert acc;
        
        test.startTest();
        AccountService.updateAccountIndustry(acc.Id);
        test.stopTest();
         
        // verify the industry is chamged or not 
        Account updateacc = [select id,industry from account where id =:acc.Id];
        system.AssertEquals('IT',updateacc.Industry);
    }
}