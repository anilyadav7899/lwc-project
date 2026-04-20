@RestResource (urlMapping ='/akshaya/varsha/ammu')
global class res1 {
    @httpget global static Account getmethod (){
        return [SELECT id,Name, Rating FROM Account WHERE id = '001d200000s1YOlAAM'];
    } 
}