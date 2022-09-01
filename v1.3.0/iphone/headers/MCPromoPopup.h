// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOPOPUP_H
#define MCPROMOPOPUP_H

@class CCNodeRGBA<CCLabelProtocol>;
@protocol MCPromoSystemClientDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MCMenuItemNodeRGBAStatic;
@class MCPromoSystemBase;
@class CCMenu;
@class MCLocalizationManager;
@class MCMenuItemNodeRGBA;
@protocol MCCycleTableItem;
@protocol MCPromoActionDelegate;

@interface MCPromoPopup : MCMenuItemNodeRGBAStatic <MCCycleTableItem>

 {
    NSString *_timerText;
    CCNodeRGBA<CCLabelProtocol> *_timerLabel;
    id<MCPromoSystemClientDelegate> *_gameDelegate;
    id<MCPromoActionDelegate> *_actionDelegate;
    MCPromoSystemBase *_promoSystem;
    CCMenu *_menu;
    NSMutableArray *_pendingInAppInfo;
    MCLocalizationManager *_localizationManager;
    float _cycleDuration;
    MCMenuItemNodeRGBA *_exitButton;
    BOOL _isClosing;
}


@property (readonly, nonatomic) NSString *offerId; // ivar: _offerId
@property (readonly, nonatomic) NSArray *buttonList; // ivar: _buttonList
@property (readonly, nonatomic) NSString *onPopupEnterSound; // ivar: _onPopupEnterSound


-(id)initWithOffer:(id)arg0 actionDelegate:(id)arg1 gameDelegate:(id)arg2 promoSystem:(id)arg3 localizationManager:(id)arg4 ;
-(id)initWithOffer:(id)arg0 actionDelegate:(id)arg1 gameDelegate:(id)arg2 promoSystem:(id)arg3 localizationManager:(id)arg4 atPosition:(struct CGPoint )arg5 ;
-(void)createExitButtonOnMenu:(id)arg0 AtPosition:(struct CGPoint )arg1 clientDelegate:(id)arg2 promoSystem:(id)arg3 ;
-(id)createFrame:(id)arg0 clientDelegate:(id)arg1 promoSystem:(id)arg2 ;
-(id)createButtonsOnMenu:(id)arg0 data:(id)arg1 gameDelegate:(id)arg2 system:(id)arg3 actionDelegate:(id)arg4 localizationManager:(id)arg5 offerId:(id)arg6 ;
-(id)getCopy;
-(void)enableButtons;
-(void)disableButtons;
-(void)setPosition:(struct CGPoint )arg0 ;
-(void)dealloc;
-(void)exitButtonCallback;
-(void)update:(CGFloat)arg0 ;
-(void)updatePendingInApps;
-(id)getActionBlockForOffer:(SEL)arg0 actionKey:(id)arg1 gameDelegate:(id)arg2 promoSystem:(id)arg3 actionDelegate:(id)arg4 ;
-(BOOL)activateTableItem;
-(void)enterPopup;
-(void)closePopup;
-(int)getPriority;
-(float)getCycleDuration;
-(BOOL)isPressingButton;
+(id)getPromoPopupWithOfferId:(id)arg0 actionDelegate:(id)arg1 gameDelegate:(id)arg2 promoSystem:(id)arg3 localizationManager:(id)arg4 ;
+(id)getPromoPopupWithOfferId:(id)arg0 actionDelegate:(id)arg1 gameDelegate:(id)arg2 promoSystem:(id)arg3 localizationManager:(id)arg4 atPosition:(struct CGPoint )arg5 ;


@end


#endif