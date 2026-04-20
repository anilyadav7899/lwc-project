public class Delete_Contacts_Bulkly {
    public static void delateContacts(){
        List<contact> conlist = [select id,LastName from contact where CreatedDate= Today];
        if(!conlist.isEmpty()){
            delete conlist;
        }
        system.debug('the deleted '  + conlist.size() + 'contacts' );
        }
    }