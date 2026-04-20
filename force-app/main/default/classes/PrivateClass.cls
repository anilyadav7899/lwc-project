@isTest(seeAllData = true) public class PrivateClass {
    @isTest public  static void testMethod1(){
        integer count = [select count() from contact];
        system.debug('the count if the contact:'+count);
    }
}