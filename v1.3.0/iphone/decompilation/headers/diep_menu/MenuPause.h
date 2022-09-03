// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUPAUSE_H
#define MENUPAUSE_H



@class BaseState;
@class CCMenu;
@class MenuPauseView;
@class CCNode;
@class CCSprite;

@interface MenuPause : BaseState {
    CCMenu *mMenu;
    MenuPauseView *mCCBRootNode;
    CCNode *mMenuContainer;
    CCSprite *mBackground;
    unsigned char mBackgroundOpacity;
}




-(void)setupWithStateId:(NSUInteger)arg0 parameters:(id)arg1 ;
-(CGFloat)enterWithPreviousState:(NSUInteger)arg0 fromStack:(BOOL)arg1 ;
-(CGFloat)leaveWithNewState:(NSUInteger)arg0 toStack:(BOOL)arg1 ;
-(void)processContextEvent:(id)arg0 withData:(id)arg1 ;
-(void)disableInput;
-(void)enableInput;
-(BOOL)isRootState;
-(BOOL)occupiesFullScreen;
-(void)quitConfirmButtonCallback;
-(void)quitCancelButtonCallback;
-(void)dismissPopupCallback;


@end


#endif