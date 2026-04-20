@RestResource(urlMapping = '/get/the/contact/*')
 global class Rest5 {
     @httpget
    global static contact getcontactdetails(){
        system.debug('the getcontactdetails() method is executed');
        return [select id,lastname from contact where id = '003d200000Ut0cPAAR' ];
    }
}