// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOBUTTON_H
#define MCPROMOBUTTON_H

@class CCNodeRGBA<CCLabelProtocol>;
@protocol MCPromoSystemClientDelegate;

#import <Foundation/Foundation.h>

@class MCMenuItemNodeRGBA;
@class MCPromoSystemBase;

@interface MCPromoButton : MCMenuItemNodeRGBA {
    NSString *_timerText;
    CCNodeRGBA<CCLabelProtocol> *_timerLabel;
    BOOL _canActivateButton;
    NSString *_onClickSound;
    MCPromoSystemBase *_promoSystem;
    id<MCPromoSystemClientDelegate> *_gameDelegate;
}


@property (readonly, nonatomic) NSString *offerId; // ivar: _offerId


// -(id)initWithOfferId:(id)arg0 configuration:(id)arg1 block:(id)arg2 pendingPurchases:(unk)arg3 gameDelegate:(id)arg4 promoSystem:(id)arg5 localizationManager:(id)arg6  ;
-(void)update:(CGFloat)arg0 ;
-(void)dealloc;
-(void)setCanActivateButton:(BOOL)arg0 ;
-(void)setIsEnabled:(BOOL)arg0 ;
-(void)selected;
// +(id)getPromoButtonForOffer:(id)arg0 withConfiguration:(id)arg1 block:(id)arg2 gameDelegate:(unk)arg3 promoSystem:(id)arg4 localizationManager:(id)arg5  ;
// +(id)getPromoButtonForOffer:(id)arg0 withConfiguration:(id)arg1 block:(id)arg2 pendingPurchases:(unk)arg3 gameDelegate:(id)arg4 promoSystem:(id)arg5 localizationManager:(id)arg6  ;
+(id)getPromoButtonForOffer:(id)arg0 withConfiguration:(id)arg1 target:(id)arg2 selector:(SEL)arg3 gameDelegate:(id)arg4 promoSystem:(id)arg5 localizationManager:(id)arg6 ;
+(id)getPromoButtonForOffer:(id)arg0 withConfiguration:(id)arg1 target:(id)arg2 selector:(SEL)arg3 pendingPurchases:(id)arg4 gameDelegate:(id)arg5 promoSystem:(id)arg6 localizationManager:(id)arg7 ;


@end


#endif