public with sharing class LwcUtility {

    @AuraEnabled(cacheable = true)
    public static String sendMessage() {
        System.debug('sendMessage() is executed');
        return 'salesforce is the world\'s first crm';
    }

    @AuraEnabled(cacheable = true)
    public static String sendGreeting(String personName) {
        System.debug('sendGreeting(' + personName + ') is executed');
        return 'Hi ' + personName + ' welcome to apex data binding class';
    }

    @AuraEnabled
    public static Integer calculate(Integer x, Integer y, String oper) {

        System.debug('calculate(' + x + ',' + y + ',' + oper + ') is executed');

        switch on oper {

            when 'sum' {
                System.debug('operation: sum, RESULT: ' + (x + y));
                return x + y;
            }

            when 'diff' {
                System.debug('operation: diff, RESULT: ' + (x - y));
                return x - y;
            }

            when 'mul' {
                System.debug('operation: mul, RESULT: ' + (x * y));
                return x * y;
            }

            when 'div' {
                    System.debug('operation: div, RESULT: ' + (x / y));
                    return x / y;
            }

            when else {
                System.debug('Invalid operation');
                return 0;
            }
        }
    }
}