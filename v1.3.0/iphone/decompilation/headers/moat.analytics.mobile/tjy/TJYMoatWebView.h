// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJYMOATWEBVIEW_H
#define TJYMOATWEBVIEW_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@class TJYMoatUIWebViewBridge;
@protocol UIWebViewDelegate;

@interface TJYMoatWebView : NSObject <UIWebViewDelegate>



@property (retain) UIWebView *moatWebView; // ivar: _moatWebView
@property BOOL webViewDidLoad; // ivar: _webViewDidLoad
@property BOOL amITracking; // ivar: _amITracking
@property BOOL amCleanedUp; // ivar: _amCleanedUp
@property BOOL initialized; // ivar: _initialized
@property CGFloat wLoadStart; // ivar: _wLoadStart
@property (retain) NSMutableDictionary *adParams; // ivar: _adParams
@property (retain) NSString *moatTrackerName; // ivar: _moatTrackerName
@property (weak) UIView *attachmentView; // ivar: _attachmentView
@property (retain) NSMutableArray *queuedCalls; // ivar: _queuedCalls
@property (retain) TJYMoatUIWebViewBridge *delegateDecorator; // ivar: _delegateDecorator
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithPartnerCode:(id)arg0 ;
-(void)doInit:(id)arg0 ;
-(void)startTracking:(id)arg0 withPlayerDims:(struct CGRect )arg1 withAttachmentView:(id)arg2 withLayerToTrack:(id)arg3 ;
-(void)prepareWebView;
-(void)destroy;
-(void)vivifyWebView;
-(id)checkAndFormatEvent:(id)arg0 ;
-(id)serializeEvent:(id)arg0 ;
-(void)dispatchEvent:(id)arg0 ;
-(void)queueEvent:(id)arg0 ;
-(void)flushQueue;
-(void)webViewDidFinishLoad:(id)arg0 ;
-(void)changeTargetLayer:(id)arg0 ;
-(void)changeAttachmentView:(id)arg0 newTargetLayer:(id)arg1 becauseFullScreen:(BOOL)arg2 ;
+(id)withPartnerCode:(id)arg0 ;


@end


#endif