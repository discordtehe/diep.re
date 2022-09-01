// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUHOURLYREWARD_H
#define MENUHOURLYREWARD_H



@class BaseState;
@class MenuHourlyRewardView;

@interface MenuHourlyReward : BaseState {
    MenuHourlyRewardView *_view;
}




-(void)setupWithStateId:(NSUInteger)arg0 parameters:(id)arg1 ;
-(void)processContextEvent:(id)arg0 withData:(id)arg1 ;
-(CGFloat)enterWithPreviousState:(NSUInteger)arg0 fromStack:(BOOL)arg1 ;
-(CGFloat)leaveWithNewState:(NSUInteger)arg0 toStack:(BOOL)arg1 ;
-(void)disableInput;
-(void)enableInput;
-(BOOL)occupiesFullScreen;
-(void)actionButtonCallback;
-(void)backButtonCallback;


@end


#endif