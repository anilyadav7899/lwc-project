@RestResource (urlMapping ='/swizz/anil/service3')
global class Rest2 {
  @httpget global static Account getsecondmethod(){
        system.debug('the getsecondmethod() is executed');
      return [select id,name,rating from account where unique_customer_id__c = '456'];
          }     
}