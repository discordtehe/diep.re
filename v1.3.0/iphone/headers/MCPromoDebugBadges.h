// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMODEBUGBADGES_H
#define MCPROMODEBUGBADGES_H

@protocol MCPromoSystemClientDelegate;


@class CCNode;
@class MCPromoSystemBase;
@class CCTable;

@interface MCPromoDebugBadges : CCNode {
    MCPromoSystemBase *_promoSystem;
    id<MCPromoSystemClientDelegate> *_gameDelegate;
    CCTable *_badgesTable;
}




-(id)initPromoBadgeDebugScreenForSystem:(id)arg0 withDelegate:(id)arg1 withLocalizationManager:(id)arg2 ;
-(void)initializeBadgesViewWithSystem:(id)arg0 withDelegate:(id)arg1 withLocalizationManager:(id)arg2 ;
-(void)dealloc;
-(void)enableInput;
-(void)disableInput;
+(id)getPromoBadgeDebugScreenForSystem:(id)arg0 withDelegate:(id)arg1 withLocalizationManager:(id)arg2 ;


@end


#endif