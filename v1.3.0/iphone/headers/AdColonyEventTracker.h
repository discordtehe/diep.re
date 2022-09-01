// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONYEVENTTRACKER_H
#define ADCOLONYEVENTTRACKER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface AdColonyEventTracker : NSObject {
    NSUInteger _eventQueueIndex;
    NSMutableArray *_eventQueue;
}




-(id)init;
+(id)privateInstance;
+(void)logEvent:(id)arg0 withDictionary:(id)arg1 ;
+(void)logQueuedEvents;
+(void)logTransactionWithID:(id)arg0 quantity:(NSInteger)arg1 price:(id)arg2 currencyCode:(id)arg3 receipt:(id)arg4 store:(id)arg5 description:(id)arg6 ;
+(void)logCreditsSpentWithName:(id)arg0 quantity:(NSInteger)arg1 value:(id)arg2 currencyCode:(id)arg3 ;
+(void)logPaymentInfoAdded;
+(void)logAchievementUnlocked:(id)arg0 ;
+(void)logLevelAchieved:(NSInteger)arg0 ;
+(void)logAppRated;
+(void)logActivated;
+(void)logTutorialCompleted;
+(void)logSocialSharingEventWithNetwork:(id)arg0 description:(id)arg1 ;
+(void)logRegistrationCompletedWithMethod:(id)arg0 description:(id)arg1 ;
+(void)logCustomEvent:(id)arg0 description:(id)arg1 ;
+(void)logAddToCartWithID:(id)arg0 ;
+(void)logAddToWishlistWithID:(id)arg0 ;
+(void)logCheckoutInitiated;
+(void)logContentViewWithID:(id)arg0 contentType:(id)arg1 ;
+(void)logInvite;
+(void)logLoginWithMethod:(id)arg0 ;
+(void)logReservation;
+(void)logSearchWithQuery:(id)arg0 ;


@end


#endif