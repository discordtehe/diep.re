// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VNGMOATWEBTRACKER_H
#define VNGMOATWEBTRACKER_H

@class VNGMoatBridge<VNGMoatBridgeProtocol>;

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@class VNGMoatBaseTracker;

@interface VNGMoatWebTracker : VNGMoatBaseTracker

@property (retain, nonatomic) NSString *failureReason; // ivar: _failureReason
@property (weak) UIView *trackedView; // ivar: _trackedView
@property (weak) id *uiWebView; // ivar: _uiWebView
@property (weak) WKWebView *wkWebView; // ivar: _wkWebView
@property (retain) VNGMoatBridge<VNGMoatBridgeProtocol> *webBridge; // ivar: _webBridge
@property BOOL cleanedUp; // ivar: _cleanedUp


-(BOOL)startTracking;
-(void)stopTracking;
-(id)initWithWebViewComponent:(id)arg0 ;
-(id)initWithView:(id)arg0 withWebComponent:(id)arg1 ;
-(id)initWithView:(id)arg0 withWebComponent:(id)arg1 isNative:(BOOL)arg2 ;
-(void)setupTrackerForView:(id)arg0 withWebComponent:(id)arg1 isNative:(BOOL)arg2 ;
-(BOOL)setViewToTrack:(id)arg0 withWebComponent:(id)arg1 ;
-(BOOL)installBridge;
-(BOOL)installWKWebViewBridge;
-(BOOL)installUIWebViewBridge;
-(void)cleanUp;
-(void)dealloc;
+(id)trackerWithWebComponent:(id)arg0 ;
+(id)trackerWithAdView:(id)arg0 withWebComponent:(id)arg1 ;


@end


#endif