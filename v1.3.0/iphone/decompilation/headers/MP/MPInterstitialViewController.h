// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPINTERSTITIALVIEWCONTROLLER_H
#define MPINTERSTITIALVIEWCONTROLLER_H


#import <UIKit/UIKit.h>

@class MPExtendedHitBoxButton;
@protocol MPInterstitialViewControllerDelegate;

@interface MPInterstitialViewController : UIViewController

@property (nonatomic) NSUInteger closeButtonStyle; // ivar: _closeButtonStyle
@property (nonatomic) NSUInteger orientationType; // ivar: _orientationType
@property (retain, nonatomic) MPExtendedHitBoxButton *closeButton; // ivar: _closeButton
@property (weak, nonatomic) NSObject<MPInterstitialViewControllerDelegate> *delegate; // ivar: _delegate


-(void)viewDidLoad;
-(BOOL)prefersHomeIndicatorAutoHidden;
-(void)presentInterstitialFromViewController:(id)arg0 complete:(id)arg1 ;
-(void)willPresentInterstitial;
-(void)didPresentInterstitial;
-(void)willDismissInterstitial;
-(void)didDismissInterstitial;
-(BOOL)shouldDisplayCloseButton;
-(void)layoutCloseButton;
-(void)dismissInterstitialAnimated:(BOOL)arg0 ;
-(BOOL)prefersStatusBarHidden;
-(NSUInteger)supportedInterfaceOrientations;
-(NSInteger)preferredInterfaceOrientationForPresentation;


@end


#endif