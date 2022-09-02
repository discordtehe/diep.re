// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADQUALITYSTATISTICS_H
#define FBADQUALITYSTATISTICS_H


#import <Foundation/Foundation.h>

@class FBAdQualityMetric;

@interface FBAdQualityStatistics : NSObject

@property (readonly, nonatomic) FBAdQualityMetric *audibilityStatistics; // ivar: _audibilityStatistics
@property (readonly, nonatomic) FBAdQualityMetric *viewabilityStatistics; // ivar: _viewabilityStatistics


-(id)initWithViewableThreshold:(float)arg0 audibleThreshold:(float)arg1 ;
-(id)initWithViewableThreshold:(float)arg0 ;
-(id)init;
-(void)registerAudibilityProgress:(CGFloat)arg0 volume:(float)arg1 ;
-(void)registerViewabilityProgress:(CGFloat)arg0 viewableRatio:(float)arg1 ;
-(void)resetStatistics;
-(void)resetStatisticsAndContinuity;
+(id)statisticsWithViewableThreshold:(float)arg0 audibleThreshold:(float)arg1 ;
+(id)statisticsWithViewableThreshold:(float)arg0 ;


@end


#endif