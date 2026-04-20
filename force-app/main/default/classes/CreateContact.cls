public class CreateContact {
    public string doCreateSobjectWithContact(contact c){
        string message;
        insert c;
        if(c.id != null){
            message = 'contact is created:'+c.LastName +'first name:'+ c.firstname;
                } else{
                    message = 'contact is not created';
                }
        return message;
        
    }
}