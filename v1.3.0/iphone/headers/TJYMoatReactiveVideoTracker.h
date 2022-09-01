// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJYMOATREACTIVEVIDEOTRACKER_H
#define TJYMOATREACTIVEVIDEOTRACKER_H


#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@class TJYMoatBootstrap;
@class TJYMoatWebView;

@interface TJYMoatReactiveVideoTracker : TJYMoatBootstrap

@property (readonly) NSUInteger state; // ivar: _state
@property (retain) NSMutableDictionary *adIds; // ivar: _adIds
@property CGRect playerDims; // ivar: _playerDims
@property (weak) UIView *attachmentView; // ivar: _attachmentView
@property (weak) CALayer *targetLayer; // ivar: _targetLayer
@property (readonly) TJYMoatWebView *mWebView; // ivar: _mWebView
@property CGFloat duration; // ivar: _duration
@property BOOL startedPlaying; // ivar: _startedPlaying


-(id)initTracker:(id)arg0 ;
-(BOOL)trackVideoAd:(id)arg0 withLayer:(id)arg1 withContainingView:(id)arg2 withDurationMillis:(CGFloat)arg3 ;
-(BOOL)checkOkToTrack;
-(BOOL)setTrackingParams:(id)arg0 playerDims:(struct CGRect )arg1 attachmentView:(id)arg2 targetLayer:(id)arg3 ;
-(void)dispatchEvent:(id)arg0 ;
-(void)changeTargetLayer:(id)arg0 withContainingView:(id)arg1 ;
-(void)startTracking:(CGFloat)arg0 ;
-(void)dealloc;
-(void)destroy;
+(id)trackerWithPartnerCode:(id)arg0 ;


@end


#endif