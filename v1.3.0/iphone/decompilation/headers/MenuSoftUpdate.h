// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUSOFTUPDATE_H
#define MENUSOFTUPDATE_H



@class BaseState;
@class MenuSoftUpdateView;

@interface MenuSoftUpdate : BaseState {
    MenuSoftUpdateView *_view;
}




-(void)setupWithStateId:(NSUInteger)arg0 parameters:(id)arg1 ;
-(CGFloat)enterWithPreviousState:(NSUInteger)arg0 fromStack:(BOOL)arg1 ;
-(CGFloat)leaveWithNewState:(NSUInteger)arg0 toStack:(BOOL)arg1 ;
-(void)disableInput;
-(void)enableInput;
-(void)backButtonCallback;
-(void)actionButtonCallback;
-(void)processContextEvent:(id)arg0 withData:(id)arg1 ;
+(void)showSoftUpdatePopUp;


@end


#endif