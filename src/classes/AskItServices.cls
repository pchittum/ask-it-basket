public without sharing class AskItServices {

    public static final String kUserSettingName = 'User';
    public static final String kCollabGroupSettingName = 'Group';
    public static String kUserId;
    public static String kUserName;
    public static String kCollabGroupId;
    public static String kCollabGroupName;
    
    static{
        Map<String,askit__Settings__c> settings = askit__Settings__c.getAll();
        kUserId = settings.get(kUserSettingName).askit__Value_Id__c;
        kCollabGroupId = settings.get(kCollabGroupSettingName).askit__Value_Id__c;
        System.debug('groupid: ' + kCollabGroupId + ' userid: ' +kUserId);
    }    
    
    public AskItServices() {}

}