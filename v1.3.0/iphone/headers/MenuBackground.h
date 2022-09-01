// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUBACKGROUND_H
#define MENUBACKGROUND_H



@class BaseState;
@class MenuBackgroundView;

@interface MenuBackground : BaseState {
    MenuBackgroundView *_view;
    NSUInteger _nextState;
}




-(void)setupWithStateId:(NSUInteger)arg0 parameters:(id)arg1 ;
-(void)processContextEvent:(id)arg0 withData:(id)arg1 ;
-(BOOL)occupiesFullScreen;
-(BOOL)isRootState;
-(BOOL)hasLowerZOrder;
-(void)finishEnter:(BOOL)arg0 ;
-(void)backButtonCallback;


@end


#endif