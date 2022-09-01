// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPADWEBVIEWAGENT_H
#define MPADWEBVIEWAGENT_H


#import <Foundation/Foundation.h>

@class MPAdConfiguration;
@class MPAdDestinationDisplayAgent;
@class MPUserInteractionGestureRecognizer;
@class MPViewabilityTracker;
@class MPWebView;
@protocol UIGestureRecognizerDelegate;
@protocol MPWebViewDelegate;
@protocol MPAdDestinationDisplayAgentDelegate;
@protocol MPAdAlertManagerProtocol;
@protocol MPAdWebViewAgentDelegate;

@interface MPAdWebViewAgent : NSObject <UIGestureRecognizerDelegate, MPWebViewDelegate, MPAdDestinationDisplayAgentDelegate>



@property (retain, nonatomic) MPAdConfiguration *configuration; // ivar: _configuration
@property (retain, nonatomic) MPAdDestinationDisplayAgent *destinationDisplayAgent; // ivar: _destinationDisplayAgent
@property (nonatomic) BOOL shouldHandleRequests; // ivar: _shouldHandleRequests
@property (retain, nonatomic) NSObject<MPAdAlertManagerProtocol> *adAlertManager; // ivar: _adAlertManager
@property (nonatomic) BOOL userInteractedWithWebView; // ivar: _userInteractedWithWebView
@property (retain, nonatomic) MPUserInteractionGestureRecognizer *userInteractionRecognizer; // ivar: _userInteractionRecognizer
@property (nonatomic) CGRect frame; // ivar: _frame
@property (retain, nonatomic) MPViewabilityTracker *viewabilityTracker; // ivar: _viewabilityTracker
@property (nonatomic) BOOL didFireClickImpression; // ivar: _didFireClickImpression
@property (retain, nonatomic) MPWebView *view; // ivar: _view
@property (weak, nonatomic) NSObject<MPAdWebViewAgentDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithAdWebViewFrame:(struct CGRect )arg0 delegate:(id)arg1 ;
-(void)dealloc;
-(void)handleInteraction:(id)arg0 ;
-(BOOL)gestureRecognizer:(id)arg0 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)arg1 ;
-(void)adAlertManagerDidTriggerAlert:(id)arg0 ;
-(void)loadConfiguration:(id)arg0 ;
-(void)invokeJavaScriptForEvent:(NSUInteger)arg0 ;
-(void)startViewabilityTracker;
-(void)disableRequestHandling;
-(void)enableRequestHandling;
-(void)displayAgentWillPresentModal;
-(void)displayAgentWillLeaveApplication;
-(void)displayAgentDidDismissModal;
-(id)adConfiguration;
-(BOOL)webView:(id)arg0 shouldStartLoadWithRequest:(id)arg1 navigationType:(NSInteger)arg2 ;
-(void)webViewDidStartLoad:(id)arg0 ;
-(void)performActionForMoPubSpecificURL:(id)arg0 ;
-(BOOL)shouldIntercept:(id)arg0 navigationType:(NSInteger)arg1 ;
-(void)interceptURL:(id)arg0 ;
-(void)init3rdPartyViewabilityTrackers;
-(BOOL)shouldStartViewabilityDuringInitialization;
-(BOOL)isInterstitialAd;
-(void)initAdAlertManager;
-(void)rotateToOrientation:(NSInteger)arg0 ;
-(void)forceRedraw;


@end


#endif