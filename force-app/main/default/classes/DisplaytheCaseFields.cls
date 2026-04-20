@RestResource(urlmapping = '/swizz/anil/peyyala/*')
global class DisplaytheCaseFields {
    @httpget global static List<case> getcasefields(){
        List<case>caselist = [SELECT id,Origin,Status FROM Case];
        return caselist;
    }
}