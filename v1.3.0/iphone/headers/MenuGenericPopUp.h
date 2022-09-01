// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUGENERICPOPUP_H
#define MENUGENERICPOPUP_H



@class BaseState;
@class MenuGenericPopUpView;

@interface MenuGenericPopUp : BaseState {
    MenuGenericPopUpView *_view;
}




-(void)setupWithStateId:(NSUInteger)arg0 parameters:(id)arg1 ;
-(void)processContextEvent:(id)arg0 withData:(id)arg1 ;
-(CGFloat)enterWithPreviousState:(NSUInteger)arg0 fromStack:(BOOL)arg1 ;
-(CGFloat)leaveWithNewState:(NSUInteger)arg0 toStack:(BOOL)arg1 ;
-(void)disableInput;
-(void)enableInput;
-(BOOL)occupiesFullScreen;
-(void)setupLargeLayout:(id)arg0 title:(id)arg1 ;
-(void)setupSmallLayout:(id)arg0 title:(id)arg1 yesLabel:(id)arg2 noLabel:(id)arg3 ;
-(void)setupSmallLayout:(id)arg0 title:(id)arg1 actionLabel:(id)arg2 ;
-(void)setupSmallLayout:(id)arg0 ;
-(void)backButtonCallback;
-(void)noButtonCallback;
-(void)yesButtonCallback;
-(void)actionButtonCallback;


@end


#endif