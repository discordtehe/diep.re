// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADQUALITYMETRIC_H
#define FBADQUALITYMETRIC_H


#import <Foundation/Foundation.h>


@interface FBAdQualityMetric : NSObject

@property (nonatomic) float sum; // ivar: _sum
@property (readonly, nonatomic) float avg; // ivar: _avg
@property (readonly, nonatomic) CGFloat continuousEligibleSeconds; // ivar: _continuousEligibleSeconds
@property (readonly, nonatomic) float current; // ivar: _current
@property (readonly, nonatomic) CGFloat eligibleSeconds; // ivar: _eligibleSeconds
@property (readonly, nonatomic) float eligibleThreshold; // ivar: _eligibleThreshold
@property (readonly, nonatomic) float max; // ivar: _max
@property (readonly, nonatomic) CGFloat maxContinuousEligibleSeconds; // ivar: _maxContinuousEligibleSeconds
@property (readonly, nonatomic) NSInteger measurementCount; // ivar: _measurementCount
@property (readonly, nonatomic) CGFloat measurementSeconds; // ivar: _measurementSeconds
@property (readonly, nonatomic) float min; // ivar: _min


-(id)initWithEligibleThreshold:(float)arg0 ;
-(id)init;
-(void)registerProgress:(CGFloat)arg0 value:(float)arg1 ;
-(void)resetMetrics;
-(void)resetMetricsAndContinuity;
+(id)metricWithEligibleThreshold:(float)arg0 ;


@end


#endif