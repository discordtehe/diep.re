// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADWEBKITCONTENTCONTAINER_H
#define FBADWEBKITCONTENTCONTAINER_H

@protocol FBAdContentContainerDelegate, FBAdViewNavigationPolicy;

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@class FBAdTimer;
@class FBAdDataModel;
@protocol WKNavigationDelegate;
@protocol WKUIDelegate;
@protocol FBAdTouchGestureRecognizerDelegate;
@protocol UIGestureRecognizerDelegate;
@protocol FBAdContentContainer;

@interface FBAdWebKitContentContainer : NSObject <WKNavigationDelegate, WKUIDelegate, FBAdTouchGestureRecognizerDelegate, UIGestureRecognizerDelegate, FBAdContentContainer>



@property (retain, nonatomic) WKWebView *webView; // ivar: _webView
@property (copy, nonatomic) NSString *activationCommand; // ivar: _activationCommand
@property (nonatomic) BOOL isJavascriptAdControlInitialized; // ivar: _isJavascriptAdControlInitialized
@property (nonatomic, getter=isMarkupImpressionEventReceived) BOOL markupImpressionEventReceived; // ivar: _markupImpressionEventReceived
@property (copy, nonatomic) NSURL *requestURL; // ivar: _requestURL
@property (nonatomic, getter=isTerminated) BOOL terminated; // ivar: _terminated
@property (retain, nonatomic) FBAdTimer *impressionRetryTimer; // ivar: _impressionRetryTimer
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (weak, nonatomic) NSObject<FBAdContentContainerDelegate> *delegate; // ivar: _delegate
@property (weak, nonatomic) NSObject<FBAdViewNavigationPolicy> *parent; // ivar: _parent
@property (nonatomic) CGSize actualAdSize; // ivar: _actualAdSize
@property (nonatomic) FBAdSize adSizeType; // ivar: _adSizeType
@property (retain, nonatomic) FBAdDataModel *offsiteAd; // ivar: _offsiteAd
@property (nonatomic) CGSize minimumSize; // ivar: _minimumSize
@property (nonatomic) CGSize maximumSize; // ivar: _maximumSize
@property (nonatomic) CGPoint lastTouchStartLocation; // ivar: _lastTouchStartLocation
@property (nonatomic) CGPoint lastTouchCurrentLocation; // ivar: _lastTouchCurrentLocation
@property (nonatomic) CGFloat lastTouchStartTimestamp; // ivar: _lastTouchStartTimestamp
@property (nonatomic) CGFloat lastTouchCurrentTimestamp; // ivar: _lastTouchCurrentTimestamp
@property (nonatomic) CGFloat lastTouchRadius; // ivar: _lastTouchRadius
@property (nonatomic) CGFloat lastTouchPressure; // ivar: _lastTouchPressure
@property (nonatomic, getter=hasLoggedImpression) BOOL loggedImpression; // ivar: _loggedImpression
@property (nonatomic) CGFloat firstImpressionTime; // ivar: _firstImpressionTime
@property (readonly, nonatomic) BOOL overrideMarkupImpressionCheck; // ivar: _overrideMarkupImpressionCheck
@property (readonly, nonatomic, getter=getView) UIView *view;
@property (readonly, nonatomic) BOOL logImpression;


-(id)initWithAdView:(id)arg0 actualAdSize:(struct CGSize )arg1 adSizeType:(struct FBAdSize )arg2 overrideMarkupImpressionCheck:(BOOL)arg3 ;
-(void)setFrame:(struct CGRect )arg0 ;
-(BOOL)loadAdData:(id)arg0 minViewability:(int)arg1 ;
-(BOOL)loadAdMarkup:(id)arg0 activationCommand:(id)arg1 ;
-(void)initializeJavascriptAdControl;
-(void)initializeJavascriptAdControlWithRetries:(NSInteger)arg0 ;
-(BOOL)logClickWithExtraData:(id)arg0 ;
-(void)webView:(id)arg0 decidePolicyForNavigationAction:(id)arg1 decisionHandler:(id)arg2 ;
-(void)webView:(id)arg0 didFinishNavigation:(id)arg1 ;
-(void)webView:(id)arg0 didFailProvisionalNavigation:(id)arg1 withError:(id)arg2 ;
-(void)webView:(id)arg0 didFailNavigation:(id)arg1 withError:(id)arg2 ;
-(void)webViewWebContentProcessDidTerminate:(id)arg0 ;
-(void)gestureRecognizer:(id)arg0 beganWithTouches:(id)arg1 andEvent:(id)arg2 ;
-(void)gestureRecognizer:(id)arg0 movedWithTouches:(id)arg1 andEvent:(id)arg2 ;
-(void)gestureRecognizer:(id)arg0 endedWithTouches:(id)arg1 andEvent:(id)arg2 ;
-(void)gestureRecognizer:(id)arg0 cancelledWithTouches:(id)arg1 andEvent:(id)arg2 ;
-(void)updateTouchDataWithTouches:(id)arg0 andEvent:(id)arg1 ;
-(void)gestureRecognizerTapped:(id)arg0 ;
-(BOOL)gestureRecognizer:(id)arg0 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)arg1 ;
+(void)initialize;


@end


#endif