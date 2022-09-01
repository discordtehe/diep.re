// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEMRAIDVIEWCONTROLLER_H
#define VUNGLEMRAIDVIEWCONTROLLER_H


#import <UIKit/UIKit.h>

@class VungleFlexViewPresentationManager;
@class VungleCustomPresentationViewController;

@interface VungleMRAIDViewController : UIViewController

@property (retain, nonatomic) VungleFlexViewPresentationManager *presentationManager; // ivar: _presentationManager
@property (nonatomic, getter=isInterstitial) BOOL interstitial; // ivar: _interstitial
@property (nonatomic) BOOL playCommandEnabled; // ivar: _playCommandEnabled
@property (nonatomic) NSUInteger orientationMask; // ivar: _orientationMask
@property (retain, nonatomic) UIViewController *presenterController; // ivar: _presenterController
@property (retain, nonatomic) VungleCustomPresentationViewController *parentPresentationController; // ivar: _parentPresentationController


-(id)init;
-(void)presentAdFromViewController:(id)arg0 isInterstitial:(BOOL)arg1 animated:(BOOL)arg2 ;
-(void)willPresentInterstitialAd;
-(void)didPresentInterstitialAd;
-(void)willDismissInterstitialAd;
-(void)didDismissInterstitialAd;
-(void)presentViewController:(id)arg0 fromViewController:(id)arg1 ;
-(void)presentIOS7TransparentController:(id)arg0 fromViewController:(id)arg1 ;
-(void)presentIOS8orHigherTransparentController:(id)arg0 fromViewController:(id)arg1 ;
-(void)dismissInterstitialAdAnimated:(BOOL)arg0 complete:(id)arg1 ;
-(BOOL)prefersStatusBarHidden;
-(BOOL)shouldAutorotate;
-(NSUInteger)supportedInterfaceOrientations;
-(void)enableAVPlayerObservation;
-(void)restoreCommandCenterControls;
-(void)disableRemoteCommandCenterControls:(id)arg0 ;
+(id)playCommand;


@end


#endif