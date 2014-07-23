trigger AnonChatterPostTrigger on askit__Anonymous_Post__c (after update) {
    
    List<FeedItem> newFeedPosts = new List<FeedItem>();
    
    Id groupId = AskItServices.kCollabGroupId;
    Id anonUserId = AskItServices.kUserId;
    
    for (askit__Anonymous_Post__c ap : Trigger.new){
    
        if (ap.Status__c == 'Approved' && !ap.askit__Is_Posted__c){
            FeedItem feedPost = new FeedItem();
            feedPost.Body = ap.askit__Post__c;
            feedPost.ParentId = groupId;
            feedPost.Type = 'TextPost';
            feedPost.CreatedById = anonUserId;
            newFeedPosts.add(feedPost);            
        }
    
    }
    insert newFeedPosts;

}