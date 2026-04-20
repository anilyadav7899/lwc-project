public class WrapperDemoApexClass {
   public integer num1 = 10;
    public integer num2 = 5;
    public list<integer> sdm(){
        integer sum = num1+num2;
        integer diff = num1-num2;
        integer multiply = num1*num2;
        list<Integer> result = new list<Integer>();
        result.add(sum);
        result.add(diff);
        result.add(multiply);
        return result;
        
    }
}