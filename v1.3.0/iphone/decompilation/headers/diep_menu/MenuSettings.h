// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUSETTINGS_H
#define MENUSETTINGS_H



@class BaseState;
@class MenuSettingsView;

@interface MenuSettings : BaseState {
    MenuSettingsView *_CCBRootNode;
}




-(void)setupWithStateId:(NSUInteger)arg0 parameters:(id)arg1 ;
-(CGFloat)enterWithPreviousState:(NSUInteger)arg0 fromStack:(BOOL)arg1 ;
-(CGFloat)leaveWithNewState:(NSUInteger)arg0 toStack:(BOOL)arg1 ;
-(void)processContextEvent:(id)arg0 withData:(id)arg1 ;
-(void)disableInput;
-(void)enableInput;
-(BOOL)isRootState;
-(BOOL)occupiesFullScreen;
-(id)view;
-(void)backButtonCallback;
-(void)fixedJoysticksHintButtonCallback;
-(void)stopOnReleaseHintButtonCallback;
-(void)shootJoystickHintButtonCallback;
-(void)shootOnReleaseHintButtonCallback;
-(void)showArrowHintButtonCallback;
-(void)showMinimapHintButtonCallback;
-(void)closeHelpButtonCallback;
-(void)stopOnReleaseToggleCallback:(BOOL)arg0 ;
-(void)fixedJoysticksToggleCallback:(BOOL)arg0 ;
-(void)shootOnReleaseToggleCallback:(BOOL)arg0 ;
-(void)showDeadZonesToggleCallback:(BOOL)arg0 ;
-(void)showArrowToggleCallback:(BOOL)arg0 ;
-(void)showMinimapToggleCallback:(BOOL)arg0 ;
-(void)rightControlsButtonCallback;
-(void)leftControlsButtonCallback;
-(void)cornersControlsButtonCallback;
-(void)allowTargetedAdsButtonCallback;
-(void)denyTargetedAdsButtonCallback;
-(void)googlePermissionResponse:(BOOL)arg0 ;
-(void)moreGamesButtonCallback;
-(void)privacyPolicyCallback;
-(void)termsAndConditionsCallback;
-(void)creditsButtonCallback;
+(id)makeVersionLabel;


@end


#endif