public class AccountService {
    public static void updateAccountIndustry(Id accid){
   Account ac = [select id,industry from account];
        ac.industry = 'IT';
        update ac;
    }
}