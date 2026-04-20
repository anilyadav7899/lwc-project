@isTest(seeAllData = false) private class TestClasses1 {
   @isTest 
    private static void testMethod1(){
       integer concount  = [select count() from contact ];
        system.debug('the count of contact  :'+concount);
    }
    @isTest private static void testMethod2(){
        system.debug('the test method is testMethod2() ');
          }
}