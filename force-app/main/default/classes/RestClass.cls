@RestResource(urlMapping = '/anil/peyyala/services2')
global class RestClass {
 @HttpGet global static string doSomething() {
      system.debug('the doSomething() is executed ');
     return 'anil peyyala';
    }
}