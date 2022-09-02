// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADVIDEOLOGGINGEVENT_H
#define FBADVIDEOLOGGINGEVENT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdVideoLoggingEvent : NSObject

@property (readonly, copy, nonatomic) NSDictionary *loggingParams; // ivar: _loggingParams


-(id)init;
-(id)initWithLoggingParams:(id)arg0 ;
+(id)loggingEventWithAction:(NSInteger)arg0 targetView:(id)arg1 autoplay:(BOOL)arg2 currentTime:(CGFloat)arg3 cardIndex:(id)arg4 cardCount:(id)arg5 ;
+(id)loggingEventWithAction:(NSInteger)arg0 targetView:(id)arg1 autoplay:(BOOL)arg2 currentTime:(CGFloat)arg3 viewabilityStatistics:(id)arg4 audibilityStatistics:(id)arg5 cardIndex:(id)arg6 cardCount:(id)arg7 ;
+(id)loggingEventWithAction:(NSInteger)arg0 targetView:(id)arg1 autoplay:(BOOL)arg2 currentTime:(CGFloat)arg3 previousTime:(CGFloat)arg4 viewabilityStatistics:(id)arg5 audibilityStatistics:(id)arg6 cardIndex:(id)arg7 cardCount:(id)arg8 ;


@end


#endif