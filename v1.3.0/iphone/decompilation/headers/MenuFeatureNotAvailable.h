// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUFEATURENOTAVAILABLE_H
#define MENUFEATURENOTAVAILABLE_H



@class BaseState;
@class MenuFeatureNotAvailableView;

@interface MenuFeatureNotAvailable : BaseState {
    MenuFeatureNotAvailableView *_view;
}




-(void)setupWithStateId:(NSUInteger)arg0 parameters:(id)arg1 ;
-(void)processContextEvent:(id)arg0 withData:(id)arg1 ;
-(CGFloat)enterWithPreviousState:(NSUInteger)arg0 fromStack:(BOOL)arg1 ;
-(CGFloat)leaveWithNewState:(NSUInteger)arg0 toStack:(BOOL)arg1 ;
-(void)disableInput;
-(void)enableInput;
-(BOOL)occupiesFullScreen;
-(void)backButtonCallback;
-(void)googleButtonCallback;
-(void)googlePermissionResponse:(BOOL)arg0 ;
-(void)facebookButtonCallback;


@end


#endif