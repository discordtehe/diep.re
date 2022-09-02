// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADWEBCONTENTCONTAINER_H
#define FBADWEBCONTENTCONTAINER_H

@protocol FBAdContentContainerDelegate, FBAdViewNavigationPolicy;

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@class FBAdJSBridgedInterface;
@class FBAdDataModel;
@protocol UIWebViewDelegate;
@protocol FBAdTouchGestureRecognizerDelegate;
@protocol FBAdJSBridgedInterfaceDelegate;
@protocol FBAdContentContainer;

@interface FBAdWebContentContainer : NSObject <UIWebViewDelegate, FBAdTouchGestureRecognizerDelegate, FBAdJSBridgedInterfaceDelegate, FBAdContentContainer>



@property (retain, nonatomic) UIWebView *webView; // ivar: _webView
@property (copy, nonatomic) NSString *activationCommand; // ivar: _activationCommand
@property (nonatomic) BOOL isJavascriptAdControlInitialized; // ivar: _isJavascriptAdControlInitialized
@property (nonatomic, getter=isMarkupImpressionEventReceived) BOOL markupImpressionEventReceived; // ivar: _markupImpressionEventReceived
@property (copy, nonatomic) NSURL *requestURL; // ivar: _requestURL
@property (retain, nonatomic) FBAdJSBridgedInterface *jsBridgedInterface; // ivar: _jsBridgedInterface
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
@property (readonly, nonatomic, getter=isTerminated) BOOL terminated; // ivar: _terminated
@property (nonatomic) CGFloat firstImpressionTime; // ivar: _firstImpressionTime
@property (readonly, nonatomic) BOOL overrideMarkupImpressionCheck; // ivar: _overrideMarkupImpressionCheck
@property (readonly, nonatomic, getter=getView) UIView *view;
@property (readonly, nonatomic) BOOL logImpression;


-(id)initWithAdView:(id)arg0 actualAdSize:(struct CGSize )arg1 adSizeType:(struct FBAdSize )arg2 overrideMarkupImpressionCheck:(BOOL)arg3 ;
-(id)htmlDataModel;
-(id)rewardedVideoDataModel;
-(void)dealloc;
-(void)setFrame:(struct CGRect )arg0 ;
-(BOOL)loadAdData:(id)arg0 minViewability:(int)arg1 ;
-(BOOL)loadAdMarkup:(id)arg0 activationCommand:(id)arg1 ;
-(void)initializeJavascriptAdControl;
-(BOOL)logClickWithExtraData:(id)arg0 ;
-(BOOL)webView:(id)arg0 shouldStartLoadWithRequest:(id)arg1 navigationType:(NSInteger)arg2 ;
-(void)webViewDidFinishLoad:(id)arg0 ;
-(void)gestureRecognizer:(id)arg0 beganWithTouches:(id)arg1 andEvent:(id)arg2 ;
-(void)gestureRecognizer:(id)arg0 movedWithTouches:(id)arg1 andEvent:(id)arg2 ;
-(void)gestureRecognizer:(id)arg0 endedWithTouches:(id)arg1 andEvent:(id)arg2 ;
-(void)gestureRecognizer:(id)arg0 cancelledWithTouches:(id)arg1 andEvent:(id)arg2 ;
-(void)updateTouchDataWithTouches:(id)arg0 andEvent:(id)arg1 logTouch:(BOOL)arg2 ;
-(void)gestureRecognizerTapped:(id)arg0 ;
-(BOOL)gestureRecognizer:(id)arg0 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)arg1 ;
-(void)onCTAClick;
+(void)initialize;


@end


#endif