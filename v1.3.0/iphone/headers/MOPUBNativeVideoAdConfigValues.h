// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MOPUBNATIVEVIDEOADCONFIGVALUES_H
#define MOPUBNATIVEVIDEOADCONFIGVALUES_H


#import <CoreFoundation/CoreFoundation.h>

@class MPNativeAdConfigValues;

@interface MOPUBNativeVideoAdConfigValues : MPNativeAdConfigValues

@property (readonly, nonatomic) NSInteger playVisiblePercent; // ivar: _playVisiblePercent
@property (readonly, nonatomic) NSInteger pauseVisiblePercent; // ivar: _pauseVisiblePercent
@property (readonly, nonatomic) CGFloat maxBufferingTime; // ivar: _maxBufferingTime
@property (readonly, nonatomic) NSDictionary *trackers; // ivar: _trackers
@property (readonly, nonatomic) BOOL isValid;


-(id)initWithPlayVisiblePercent:(NSInteger)arg0 pauseVisiblePercent:(NSInteger)arg1 impressionMinVisiblePixels:(CGFloat)arg2 impressionMinVisiblePercent:(NSInteger)arg3 impressionMinVisibleSeconds:(CGFloat)arg4 maxBufferingTime:(CGFloat)arg5 trackers:(id)arg6 ;


@end


#endif