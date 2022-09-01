// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOSYSTEMBASE_H
#define MCPROMOSYSTEMBASE_H

@protocol MCPromoPersistanceDelegate, MCPromoSystemDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol MCPromoOfferDelegate;
@protocol MCPromoActionDelegate;

@interface MCPromoSystemBase : NSObject <MCPromoOfferDelegate>

 {
    BOOL mInitialized;
    NSMutableDictionary *mStoreChangesProductActivationState;
    NSMutableDictionary *mStoreChangesReplacedProducts;
    id<MCPromoActionDelegate> *mDefaultActionDelegate;
    id<MCPromoPersistanceDelegate> *mPersistanceDelegate;
    NSMutableDictionary *mOffers;
    NSMutableArray *mDisabledOffers;
    NSUInteger mDisabledOfferIndex;
    NSUInteger mNumDisabledOffersToCheck;
    NSMutableArray *mActiveOffers;
    NSMutableArray *mOfferPopUpPrioritizedQueue;
    NSMutableArray *mOfferPopUpQueue;
}


@property (retain, nonatomic) NSString *promoSystemId; // ivar: mPromoSystemId
@property (nonatomic) CGFloat currentTimestamp; // ivar: mCurrentTimestamp
@property (retain, nonatomic) NSObject<MCPromoSystemDelegate> *delegate; // ivar: mDelegate
@property (retain, nonatomic) NSString *defaultSaveDataKey; // ivar: mDefaultSaveDataKey
@property (retain, nonatomic) NSString *currentSaveDataKey; // ivar: mCurrentSaveDataKey
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)dealloc;
-(void)reset;
-(void)initWithOffersConfiguration:(id)arg0 persistanceDelegate:(id)arg1 defaultActionDelegate:(id)arg2 withNumDisabledOffersToCheck:(NSUInteger)arg3 forUser:(id)arg4 ;
-(void)initWithOffersConfiguration:(id)arg0 persistanceDelegate:(id)arg1 defaultActionDelegate:(id)arg2 forUser:(id)arg3 ;
-(void)initWithOffersConfiguration:(id)arg0 ;
-(void)initWithOffersConfiguration:(id)arg0 forUser:(id)arg1 ;
-(void)loadOffersConfiguration:(id)arg0 ;
-(void)loadOffersConfiguration:(id)arg0 withError:(*id)arg1 ;
-(void)addStoreChange:(id)arg0 ;
-(void)removeStoreChange:(id)arg0 ;
-(void)removeAllStoreChanges;
-(id)getProductReplacement:(id)arg0 ;
-(id)getReplacedProduct:(id)arg0 ;
-(id)getProductReplacements;
-(BOOL)isProductActivated:(id)arg0 ;
-(BOOL)isProductDeactivated:(id)arg0 ;
-(id)getActivatedProducts;
-(id)getDeactivatedProducts;
-(id)getProductReplacementsForOffer:(id)arg0 ;
-(id)getActivatedProductsForOffer:(id)arg0 ;
-(id)getDeactivatedProductsForOffer:(id)arg0 ;
-(BOOL)isOfferActive:(id)arg0 ;
-(BOOL)isOfferKilled:(id)arg0 ;
-(BOOL)isOfferHidden:(id)arg0 ;
-(id)getDisabledOffers;
-(id)getActiveOffers;
-(id)getActiveOffersTokens;
-(id)getTokenForOffer:(id)arg0 onlyActive:(BOOL)arg1 ;
-(id)getAllOffersPrioritized;
-(void)setOfferPopUpState:(id)arg0 isActive:(BOOL)arg1 ;
-(BOOL)isOfferPopUpActive:(id)arg0 ;
-(id)getOfferFromID:(id)arg0 ;
-(id)getOffers;
-(id)getTopActiveOffer;
-(id)getBadgeInfoForOffer:(id)arg0 ;
-(CGFloat)getRemainingBadgeTimeForOffer:(id)arg0 ;
-(BOOL)isOfferCloseToBegin:(id)arg0 ;
-(BOOL)isOfferCloseToEnd:(id)arg0 ;
-(id)getBeforeBeginNotificationTextForOffer:(id)arg0 ;
-(id)getBeforeEndNotificationTextForOffer:(id)arg0 ;
-(id)getActiveNotificationTextForOffer:(id)arg0 ;
-(id)getAfterStartDateNotificationTextForOffer:(id)arg0 ;
-(id)getBeforeEndDateNotificationTextForOffer:(id)arg0 ;
-(id)getEnqueuedOfferPopUps;
-(id)getTopOfferPopUp;
-(id)getPopUpInfoForOffer:(id)arg0 ;
-(void)runPopUpAction:(id)arg0 forOffer:(id)arg1 withDelegate:(id)arg2 ;
-(void)runPopUpAction:(id)arg0 forOffer:(id)arg1 withDelegate:(id)arg2 withError:(*id)arg3 ;
-(void)runPopUpActionForOffer:(id)arg0 withDelegate:(id)arg1 ;
-(void)runPopUpActionForOffer:(id)arg0 ;
-(void)runPopUpActionForOffer:(id)arg0 withError:(*id)arg1 ;
-(void)getPopupAction:(id)arg0 forOffer:(id)arg1 withDelegate:(id)arg2 withError:(*id)arg3 ;
-(void)getPopupActionDataForOffer:(id)arg0 withDelegate:(id)arg1 ;
-(void)getPopupActionDataForOffer:(id)arg0 ;
-(void)getPopupActionDataForOffer:(id)arg0 withError:(*id)arg1 ;
-(void)killOffer:(id)arg0 ;
-(void)activateStoreChanges:(id)arg0 forOffer:(id)arg1 ;
-(void)deactivateStoreChanges:(id)arg0 forOffer:(id)arg1 ;
-(void)showOfferPopUp:(id)arg0 prioritize:(BOOL)arg1 ;
-(void)hideOfferPopUp:(id)arg0 ;
-(void)offerActivated:(id)arg0 ;
-(void)offerDeactivated:(id)arg0 ;
-(CGFloat)getDeltaToDisplayCloseToBeginNotificationForOffer:(id)arg0 ;
-(CGFloat)getDeltaToDisplayActiveNotificationForOffer:(id)arg0 ;
-(CGFloat)getDeltaToDisplayCloseToEndNotificationForOffer:(id)arg0 ;
-(CGFloat)getDeltaToDisplayAfterStartDateNotificationForOffer:(id)arg0 ;
-(CGFloat)getDeltaToDisplayBeforeEndDateNotificationForOffer:(id)arg0 ;
-(id)getState;
-(void)setState:(id)arg0 ;
-(void)setState:(id)arg0 withError:(*id)arg1 ;
-(void)loadData;
-(void)saveDataAndSynchronize:(BOOL)arg0 ;
-(void)saveData;
-(id)getSaveDataKeyForUser:(id)arg0 ;
+(BOOL)useNewUserDefaults;
+(void)setUseNewUserDefaults:(BOOL)arg0 ;


@end


#endif