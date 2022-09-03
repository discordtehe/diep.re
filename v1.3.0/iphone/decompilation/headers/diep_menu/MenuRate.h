// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENURATE_H
#define MENURATE_H



@class BaseState;
@class MenuRateView;

@interface MenuRate : BaseState {
    MenuRateView *_view;
    *unk _rateInvocation;
    *unk _cancelInvocation;
}




-(void)setupWithStateId:(NSUInteger)arg0 parameters:(id)arg1 ;
-(void)dealloc;
-(CGFloat)enterWithPreviousState:(NSUInteger)arg0 fromStack:(BOOL)arg1 ;
-(CGFloat)leaveWithNewState:(NSUInteger)arg0 toStack:(BOOL)arg1 ;
-(void)disableInput;
-(void)enableInput;
-(void)backButtonCallback;
-(void)processContextEvent:(id)arg0 withData:(id)arg1 ;
-(void)noButtonCallback;
-(void)yesButtonCallback;


@end


#endif