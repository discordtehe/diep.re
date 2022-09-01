// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMODEBUGSCREEN_H
#define MCPROMODEBUGSCREEN_H

@protocol MCPromoSystemClientDelegate;


@class CCNode;
@class MCPromoDebugBadges;
@class MCPromoSystemBase;
@class MCLocalizationManager;
@class CCMenu;
@class CCSprite;

@interface MCPromoDebugScreen : CCNode {
    MCPromoDebugBadges *_debugBadgesScreen;
    MCPromoSystemBase *_promoSystem;
    id<MCPromoSystemClientDelegate> *_gameDelegate;
    MCLocalizationManager *_localizationManager;
    CCNode *_mainDebugScreen;
    CCMenu *_mainDebugMenu;
    CCSprite *_mainFrame;
}




-(id)initPromoDebugScreenWithSystem:(id)arg0 delegate:(id)arg1 mainDebugScreen:(id)arg2 mainDebugMenu:(id)arg3 withLocalizationManager:(id)arg4 ;
-(void)activateOffersCallback;
-(void)displayBadgesCallback;
-(void)closeDebugScreen;
-(void)hideMainDebugScreen;
-(void)showMainDebugScreen;
-(void)hideBadgesScreen;
-(void)activateOffer:(id)arg0 ;
-(void)activateAllOffers;
-(void)dealloc;
-(void)enableInput;
-(void)disableInput;
+(id)getPromoDebugScreenWithSystem:(id)arg0 delegate:(id)arg1 mainDebugScreen:(id)arg2 mainDebugMenu:(id)arg3 ;
+(id)getPromoDebugScreenWithSystem:(id)arg0 delegate:(id)arg1 mainDebugScreen:(id)arg2 mainDebugMenu:(id)arg3 withLocalizationManager:(id)arg4 ;


@end


#endif