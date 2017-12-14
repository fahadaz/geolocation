public with sharing class AccountController {
    public AccountController() {

    }

    public static List<Account> findAll(){
        return [Select Id, Name, Location__Latitude__s, Location__Longitude__s
            from Account
            where Location__Latitude__s != Null AND Location__Longitude__s != Null
            limit 50
            ];
    }
}
