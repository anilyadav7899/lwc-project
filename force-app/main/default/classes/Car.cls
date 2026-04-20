public class Car {
public string brand;
    public string colour;
    public integer noOfAirBags;
    public boolean hasSunRoof;
    // what does a car do 
    public void drive(){
        system.debug(brand +'car is driving on te road ');
         } 
    public void park(){
        system.debug('car isparked in the garage ');
           }  
    public void showSpecs(){
        system.debug('specifications');
        system.debug('brand:'+brand);
        system.debug('colour:'+colour);
        system.debug('number of air bags:'+noOfAirBags);
        system.debug('Is sun Roof Available:'+hasSunRoof);
    }
}