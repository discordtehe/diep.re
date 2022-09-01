// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOSYSTEMCLIENT_H
#define MCPROMOSYSTEMCLIENT_H

@protocol MCPromoSystemClientDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MCPromoSystemBase;
@class MCLocalizationManager;
@protocol MCPromoActionDelegate;

@interface MCPromoSystemClient : NSObject <MCPromoActionDelegate>

 {
    NSString *_previousShownBadgesSaveKey;
    CGFloat _lastBadgeChange;
    BOOL _badgeCyclingActive;
}


@property (readonly, nonatomic) MCPromoSystemBase *promoSystem; // ivar: _promoSystem
@property (readonly, nonatomic) NSObject<MCPromoSystemClientDelegate> *gameDelegate; // ivar: _gameDelegate
@property (readonly, nonatomic) MCLocalizationManager *localizationManager; // ivar: _localizationManager
@property (readonly, nonatomic) NSMutableArray *shownBadgeForOfferIds; // ivar: _shownBadgeForOfferIds
@property (readonly, nonatomic) NSMutableArray *shownPopupForOfferIds; // ivar: _shownPopupForOfferIds
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initClientForSystem:(id)arg0 withGameDelegate:(id)arg1 withLocalizationManager:(id)arg2 ;
-(void)dealloc;
-(void)loadPreviouslyShownOffers;
-(void)setCurrentTimestamp:(CGFloat)arg0 ;
-(void)checkIfOffersShouldBeKilled;
-(int)executeAction:(id)arg0 withParameters:(id)arg1 successEvents:(id)arg2 successOnFirstEvent:(BOOL)arg3 failureEvents:(id)arg4 failureOnFirstEvent:(BOOL)arg5 ;
-(void)addOfferIdToShownPopups:(id)arg0 ;
-(void)addOfferIdToShownBadges:(id)arg0 ;
-(id)getPopupForOffer:(id)arg0 atPosition:(struct CGPoint )arg1 isAuto:(BOOL)arg2 ;
-(id)getPopupForOffer:(id)arg0 isAuto:(BOOL)arg1 ;
-(id)getBadgeForOffer:(id)arg0 atPosition:(struct CGPoint )arg1 ;
-(id)getBadgeForOffer:(id)arg0 ;
-(id)getNextShowablePopupOfferIdIsAuto:(BOOL)arg0 ;
-(id)getNextShowablePopupOfferId;
-(id)getNextShowablePopupIsAuto:(BOOL)arg0 ;
-(id)getNextShowablePopup;
-(id)getTopShowableBadgeOfferId;
-(id)getNextShowableBadgeOfferId;
-(void)activateBadgeCycling;
-(void)deactivateBadgeCycling;
-(id)getNextShowableBadge;
-(BOOL)offerHasBadgeConfiguration:(id)arg0 ;
-(float)getBadgeCycleCooldownTime;
-(void)resetShownBadges;
-(void)updatePromotionBadge;
+(id)getClientForSystem:(id)arg0 withGameDelegate:(id)arg1 withLocalizationManager:(id)arg2 ;
+(id)getClientForSystem:(id)arg0 withGameDelegate:(id)arg1 ;
+(id)getClientWithConfiguration:(id)arg0 withDefaultSaveKey:(id)arg1 forUser:(id)arg2 withGameDelegate:(id)arg3 withLocalizationManager:(id)arg4 ;
+(id)getClientWithConfiguration:(id)arg0 withDefaultSaveKey:(id)arg1 forUser:(id)arg2 withGameDelegate:(id)arg3 ;
+(id)getClientWithConfiguration:(id)arg0 withSystemId:(id)arg1 forUser:(id)arg2 withPromoClientDelegate:(id)arg3 withPromoSystemDelegate:(id)arg4 withLocalizationManager:(id)arg5 ;


@end


#endif