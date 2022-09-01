// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPHTMLINTERSTITIALVIEWCONTROLLER_H
#define MPHTMLINTERSTITIALVIEWCONTROLLER_H


#import <Foundation/Foundation.h>

@class MPInterstitialViewController;
@class MPWebView;
@class MPAdWebViewAgent;
@protocol MPAdWebViewAgentDelegate;

@interface MPHTMLInterstitialViewController : MPInterstitialViewController <MPAdWebViewAgentDelegate>



@property (retain, nonatomic) MPWebView *backingView; // ivar: _backingView
@property (retain, nonatomic) MPAdWebViewAgent *backingViewAgent; // ivar: _backingViewAgent
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)dealloc;
-(void)viewDidLoad;
-(void)loadConfiguration:(id)arg0 ;
-(void)willPresentInterstitial;
-(void)didPresentInterstitial;
-(void)willDismissInterstitial;
-(void)didDismissInterstitial;
-(void)viewWillTransitionToSize:(struct CGSize )arg0 withTransitionCoordinator:(id)arg1 ;
-(id)location;
-(id)adUnitId;
-(id)viewControllerForPresentingModalView;
-(void)adDidFinishLoadingAd:(id)arg0 ;
-(void)adDidFailToLoadAd:(id)arg0 ;
-(void)adActionWillBegin:(id)arg0 ;
-(void)adActionWillLeaveApplication:(id)arg0 ;
-(void)adActionDidFinish:(id)arg0 ;
-(void)adDidClose:(id)arg0 ;


@end


#endif