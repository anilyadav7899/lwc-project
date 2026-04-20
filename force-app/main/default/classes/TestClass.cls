@isTest(seeAllData = false) private class TestClass {
   @isTest private static void testMethod1(){
       Integer count = [select count() from contact];
      system.debug('the test method is executed :'+count);
    }
   @istest private static void testMethod2(){
       integer count = [select count() from contact];
        system.debug('the method is executed :'+count);
    }
}