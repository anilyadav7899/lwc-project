@RestResource(urlMapping = '/swhizz/anil/service2')
global class Rest1 {
    @HttpGet
    global static void getmethod(){
        system.debug('the method getmethod() executed' );
    } 
}