public class contactBirthdaywishes {
    public static void method1(list<account> acclist){
        set<id> acc= new set<id>();
        for(account a: acclist){
            acc.add(a.id);
        }
        set<id> cc = new set<id>();
list<contact> con = [select id ,lastname from contact where accountid IN: acc];
        
        for(contact c: con){
            if(c.accountid !=null && acc.contains(c.AccountId)){
                cc.add(c.AccountId);
             
            }
            
        }
        for(account a: acclist){
            if(cc.contains(a.id)){
                a.adderror('cant dlt account it is havingchild contacts  ');
            }
        }
    }
        
}