// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOOFFER_H
#define MCPROMOOFFER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MCPromoDataAccess;
@class MCPromoTrigger;
@class MCPromoWaitForEventTrigger;
@protocol MCPromoOfferDelegate;

@interface MCPromoOffer : NSObject {
    MCPromoDataAccess *mDisableOfferDataAccess;
    CGFloat mEndOfActivationTimestamp;
    MCPromoTrigger *mStartTrigger;
    MCPromoTrigger *mWakeUpTrigger;
    MCPromoTrigger *mBadgeEndTrigger;
    MCPromoTrigger *mPopUpTrigger;
    MCPromoWaitForEventTrigger *mPopUpDismissedTrigger;
    MCPromoTrigger *mResetTrigger;
    MCPromoTrigger *mKillTrigger;
    MCPromoTrigger *mInterruptTrigger;
    MCPromoTrigger *mResumeTrigger;
    BOOL mActivatePopUpOnOfferActivation;
    BOOL mPopUpActive;
}


@property (readonly, nonatomic) BOOL disableOffer; // ivar: mDisableOffer
@property (readonly, nonatomic) NSString *name; // ivar: mName
@property (readonly, nonatomic) NSString *uniqueId; // ivar: mUniqueId
@property (readonly, nonatomic) NSString *groupId; // ivar: mGroupId
@property (readonly, nonatomic) NSString *campaignId; // ivar: mCampaignId
@property (readonly, nonatomic) int offerType; // ivar: mOfferType
@property (readonly, nonatomic) CGFloat startTimestamp; // ivar: mStartTimestamp
@property (readonly, nonatomic) CGFloat endTimestamp; // ivar: mEndTimestamp
@property (readonly, nonatomic) NSArray *storeChanges; // ivar: mStoreChanges
@property (readonly, nonatomic) CGFloat beforeBeginNotificationDeltaTime; // ivar: mBeforeBeginNotificationDeltaTime
@property (readonly, nonatomic) CGFloat activeNotificationDeltaTime; // ivar: mActiveNotificationDeltaTime
@property (readonly, nonatomic) CGFloat beforeEndNotificationDeltaTime; // ivar: mBeforeEndNotificationDeltaTime
@property (readonly, nonatomic) CGFloat afterStartDateNotificationDeltaTime; // ivar: mAfterStartDateNotificationDeltaTime
@property (readonly, nonatomic) CGFloat beforeEndDateNotificationDeltaTime; // ivar: mBeforeEndDateNotificationDeltaTime
@property (readonly, nonatomic) NSString *beforeBeginNotificationText; // ivar: mBeforeBeginNotificationText
@property (readonly, nonatomic) NSString *activeNotificationText; // ivar: mActiveNotificationText
@property (readonly, nonatomic) NSString *beforeEndNotificationText; // ivar: mBeforeEndNotificationText
@property (readonly, nonatomic) NSString *afterStartDateNotificationText; // ivar: mAfterStartDateNotificationText
@property (readonly, nonatomic) NSString *beforeEndDateNotificationText; // ivar: mBeforeEndDateNotificationText
@property (readonly, nonatomic) int offerState; // ivar: mState
@property (readonly, nonatomic) unsigned int badgePriority; // ivar: mBadgePriority
@property (readonly, nonatomic) NSString *badgeText; // ivar: mBadgeText
@property (readonly, nonatomic) NSString *badgeImage; // ivar: mBadgeImage
@property (readonly, nonatomic) NSDictionary *badgeConfiguration; // ivar: mBadgeConfiguration
@property (readonly, nonatomic) CGFloat badgeCycleCooldown; // ivar: mBadgeCycleCooldown
@property (readonly, nonatomic) CGFloat badgeRemainingTime;
@property (readonly, nonatomic) NSString *popUpImage; // ivar: mPopUpImage
@property (readonly, nonatomic) NSString *popUpButtonText; // ivar: mPopUpButtonText
@property (readonly, nonatomic) id *popUpCustomData; // ivar: mPopUpCustomData
@property (readonly, nonatomic) BOOL popUpActionDismissesPopUp; // ivar: mPopUpActionDismissesPopUp
@property (readonly, nonatomic) BOOL popUpActionDeactivatesOffer; // ivar: mPopUpActionDeactivatesOffer
@property (readonly, nonatomic) BOOL popUpActionKillsOffer; // ivar: mPopUpActionKillsOffer
@property (readonly, nonatomic) NSDictionary *popUpActions; // ivar: mPopUpActions
@property (nonatomic) CGFloat currentTimestamp; // ivar: mCurrentTimestamp
@property (nonatomic) CGFloat lastActivationTimestamp; // ivar: mLastActivationTimestamp
@property (nonatomic) NSObject<MCPromoOfferDelegate> *delegate; // ivar: mDelegate
@property (readonly, nonatomic) BOOL hidePromotion; // ivar: mHidePromotion
@property (readonly, nonatomic) BOOL interruptPromotion; // ivar: mInterruptPromotion
@property (readonly, nonatomic) NSString *promoToken; // ivar: mPromoToken
@property (readonly, nonatomic) NSDictionary *promoTokenParameter; // ivar: mPromoTokenParameter
@property (readonly, nonatomic) id *clientCustomData; // ivar: mClientCustomData


-(id)init;
-(id)initWithConfiguration:(id)arg0 ;
-(id)initWithConfiguration:(id)arg0 withError:(*id)arg1 ;
-(int)getPromoTypeFromStringId:(id)arg0 ;
-(CGFloat)loadDeltaTimeFromConfig:(id)arg0 ;
-(void)dealloc;
-(void)reset;
-(void)kill;
-(id)getPopUpDismissedEvent;
-(id)getKillEvent;
-(void)setPopUpActiveState:(BOOL)arg0 ;
-(BOOL)isPopUpActive;
-(void)processTime:(CGFloat)arg0 ;
-(void)startTriggerActivated;
-(void)popUpTriggerActivated;
-(void)popUpDismissedTriggerActivated;
-(void)badgeEndTriggerActivated;
-(void)wakeUpTriggerActivated;
-(void)killTriggerActivated;
-(void)resetTriggerActivated;
-(void)interruptTriggerActivated;
-(void)resumeTriggerActivated;
-(void)actionSuccess:(id)arg0 ;
-(void)actionFailure:(id)arg0 ;
-(int)getCurrentOfferState;
-(id)getState;
-(void)setState:(id)arg0 ;
-(void)setState:(id)arg0 withError:(*id)arg1 ;
-(BOOL)isOfferActive;
-(BOOL)isOfferCloseToBegin;
-(BOOL)isOfferCloseToEnd;
-(void)updateDisableOffer;
-(CGFloat)getDeltaToDisplayCloseToBeginNotification;
-(CGFloat)getDeltaToDisplayActiveNotification;
-(CGFloat)getDeltaToDisplayCloseToEndNotification;
-(CGFloat)getDeltaToDisplayAfterStartDateNotification;
-(CGFloat)getDeltaToDisplayBeforeEndDateNotification;
-(id)getClientCustomData;
-(id)getValueFromClientCustomData:(id)arg0 ;
+(id)getOfferFromConfiguration:(id)arg0 ;
+(id)getOfferFromConfiguration:(id)arg0 withError:(*id)arg1 ;


@end


#endif