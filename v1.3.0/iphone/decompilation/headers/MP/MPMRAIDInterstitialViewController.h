// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPMRAIDINTERSTITIALVIEWCONTROLLER_H
#define MPMRAIDINTERSTITIALVIEWCONTROLLER_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class MPInterstitialViewController;
@class MPAdConfiguration;
@class MRController;
@protocol MRControllerDelegate;
@protocol MPForceableOrientationProtocol;

@interface MPMRAIDInterstitialViewController : MPInterstitialViewController <MRControllerDelegate, MPForceableOrientationProtocol>



@property (retain, nonatomic) MPAdConfiguration *configuration; // ivar: _configuration
@property (retain, nonatomic) MRController *mraidController; // ivar: _mraidController
@property (retain, nonatomic) UIView *interstitialView; // ivar: _interstitialView
@property (nonatomic) NSUInteger supportedOrientationMask; // ivar: _supportedOrientationMask
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithAdConfiguration:(id)arg0 ;
-(void)startLoading;
-(void)willPresentInterstitial;
-(void)didPresentInterstitial;
-(void)willDismissInterstitial;
-(void)didDismissInterstitial;
-(id)location;
-(id)adUnitId;
-(id)adConfiguration;
-(id)viewControllerForPresentingModalView;
-(void)adDidLoad:(id)arg0 ;
-(void)adDidFailToLoad:(id)arg0 ;
-(void)adWillClose:(id)arg0 ;
-(void)adDidClose:(id)arg0 ;
-(void)appShouldSuspendForAd:(id)arg0 ;
-(void)appShouldResumeFromAd:(id)arg0 ;
-(void)rewardedVideoEnded;
-(NSUInteger)supportedInterfaceOrientations;
-(BOOL)shouldAutorotate;


@end


#endif