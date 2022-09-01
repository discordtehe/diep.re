// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPRATELIMITCONFIGURATION_H
#define MPRATELIMITCONFIGURATION_H


#import <Foundation/Foundation.h>

@class MPRealTimeTimer;

@interface MPRateLimitConfiguration : NSObject

@property (retain, nonatomic) MPRealTimeTimer *timer; // ivar: _timer
@property (readonly, nonatomic) NSUInteger lastRateLimitMilliseconds; // ivar: _lastRateLimitMilliseconds
@property (readonly, copy, nonatomic) NSString *lastRateLimitReason; // ivar: _lastRateLimitReason
@property (readonly, nonatomic) BOOL isRateLimited;


-(void)setRateLimitTimerWithMilliseconds:(NSInteger)arg0 reason:(id)arg1 ;


@end


#endif