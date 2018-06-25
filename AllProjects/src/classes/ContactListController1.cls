public class ContactListController1 {
 
 @AuraEnabled
    public static List<Contact> findByName(String searchKey){
        
        String name = '%'+searchKey+'%';
            return[select name,phone from contact where name like :name limit 50];
    }
    @AuraEnabled
    public static List<Contact> findAll(){
        
        
            return[select name,phone from contact limit 50];
    }
         
}