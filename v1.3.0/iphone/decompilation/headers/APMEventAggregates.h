// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMEVENTAGGREGATES_H
#define APMEVENTAGGREGATES_H


#import <Foundation/Foundation.h>


@interface APMEventAggregates : NSObject

@property (readonly, nonatomic) NSString *name; // ivar: _name
@property (readonly, nonatomic) int lifetimeCount; // ivar: _lifetimeCount
@property (readonly, nonatomic) int currentBundleCount; // ivar: _currentBundleCount
@property (nonatomic) CGFloat lastFireTimestamp; // ivar: _lastFireTimestamp
@property (nonatomic) CGFloat lastBundledTimestamp; // ivar: _lastBundledTimestamp
@property (retain, nonatomic) NSNumber *lastSampledComplexEventID; // ivar: _lastSampledComplexEventID
@property (nonatomic) int lastSamplingRate; // ivar: _lastSamplingRate
@property (nonatomic) BOOL lastExemptFromSampling; // ivar: _lastExemptFromSampling
@property (nonatomic) int lastBundledDay; // ivar: _lastBundledDay


-(id)initWithName:(id)arg0 lifetimeCount:(int)arg1 currentBundleCount:(int)arg2 lastFireTimestamp:(CGFloat)arg3 ;
-(void)incrementLifetimeCount;
-(void)incrementCurrentBundleCount;


@end


#endif