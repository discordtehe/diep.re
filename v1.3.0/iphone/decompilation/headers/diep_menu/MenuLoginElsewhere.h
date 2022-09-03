// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENULOGINELSEWHERE_H
#define MENULOGINELSEWHERE_H



@class BaseState;
@class MenuLoginElsewhereView;

@interface MenuLoginElsewhere : BaseState {
    MenuLoginElsewhereView *_view;
}




-(void)setupWithStateId:(NSUInteger)arg0 parameters:(id)arg1 ;
-(void)dealloc;
-(void)processContextEvent:(id)arg0 withData:(id)arg1 ;
-(CGFloat)enterWithPreviousState:(NSUInteger)arg0 fromStack:(BOOL)arg1 ;
-(void)finishEnter:(BOOL)arg0 ;
-(CGFloat)leaveWithNewState:(NSUInteger)arg0 toStack:(BOOL)arg1 ;
-(void)disableInput;
-(void)enableInput;
-(void)backButtonCallback;


@end


#endif