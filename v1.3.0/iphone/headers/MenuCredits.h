// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUCREDITS_H
#define MENUCREDITS_H



@class BaseState;
@class MenuCreditsView;

@interface MenuCredits : BaseState {
    MenuCreditsView *_view;
}




-(void)setupWithStateId:(NSUInteger)arg0 parameters:(id)arg1 ;
-(void)processContextEvent:(id)arg0 withData:(id)arg1 ;
-(void)disableInput;
-(void)enableInput;
-(CGFloat)enterWithPreviousState:(NSUInteger)arg0 fromStack:(BOOL)arg1 ;
-(CGFloat)leaveWithNewState:(NSUInteger)arg0 toStack:(BOOL)arg1 ;
-(void)backButtonCallback;


@end


#endif