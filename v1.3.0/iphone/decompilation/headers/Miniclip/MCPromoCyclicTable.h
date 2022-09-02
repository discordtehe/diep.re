// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOCYCLICTABLE_H
#define MCPROMOCYCLICTABLE_H


#import <CoreFoundation/CoreFoundation.h>

@class MCCycleTableWithNavigation;
@class MCPromoSystemClient;
@class MCPromoPopup;

@interface MCPromoCyclicTable : MCCycleTableWithNavigation {
    MCPromoSystemClient *_promoClient;
    NSArray *_promoClients;
    MCPromoPopup *_currentPopup;
}




-(id)initWithPromoSystemClient:(id)arg0 defaultCyclePeriod:(float)arg1 leftButton:(id)arg2 rightButton:(id)arg3 bookmarkNormalSpriteDict:(id)arg4 bookmarkHiglightedSpriteDict:(id)arg5 bookmarkDisabledSpriteDictionary:(id)arg6 ;
-(id)initWithPromoSystemClients:(id)arg0 defaultCyclePeriod:(float)arg1 leftButton:(id)arg2 rightButton:(id)arg3 bookmarkNormalSpriteDict:(id)arg4 bookmarkHiglightedSpriteDict:(id)arg5 bookmarkDisabledSpriteDictionary:(id)arg6 ordered:(BOOL)arg7 ;
-(id)getActiveOffersPopUpsFromMultipleSystems:(id)arg0 ordered:(BOOL)arg1 ;
-(void)dealloc;
-(void)onEnter;
-(void)onExit;
-(void)update:(CGFloat)arg0 ;
-(void)promoActivated:(id)arg0 ;
-(void)promoDeactivated:(id)arg0 ;
-(id)getActivePromotions;
-(id)getCurrentItem;
-(void)closeCycleTable;
-(void)postDismissEventForPopup:(id)arg0 inSystem:(id)arg1 ;
-(id)getClientWithPromo:(id)arg0 ;


@end


#endif