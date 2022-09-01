// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADPLACEMENTDEFINITION_H
#define FBADPLACEMENTDEFINITION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdPlacementDefinition : NSObject

@property (nonatomic) NSInteger type; // ivar: _type
@property (nonatomic) NSInteger minViewabilityPercentage; // ivar: _minViewabilityPercentage
@property (nonatomic) NSInteger minViewabilityTicks; // ivar: _minViewabilityTicks
@property (nonatomic) NSInteger refreshInterval; // ivar: _refreshInterval
@property (nonatomic) NSInteger refreshThreshold; // ivar: _refreshThreshold
@property (nonatomic) NSInteger requestTimeout; // ivar: _requestTimeout
@property (retain, nonatomic) NSNumber *requestTime; // ivar: _requestTime
@property (nonatomic) NSInteger invalidationDuration; // ivar: _invalidationDuration
@property (nonatomic) NSInteger clientMaxRetryCount; // ivar: _clientMaxRetryCount
@property (nonatomic) CGFloat viewabilityCheckInitialDelay; // ivar: _viewabilityCheckInitialDelay
@property (nonatomic) CGFloat viewabilityCheckInterval; // ivar: _viewabilityCheckInterval
@property (nonatomic) CGFloat videoTimePollingInterval; // ivar: _videoTimePollingInterval
@property (nonatomic) FBAdSize placementSize; // ivar: _placementSize
@property (nonatomic, getter=isCacheable) BOOL cacheable; // ivar: _cacheable
@property (copy, nonatomic) NSArray *cookieData; // ivar: _cookieData


-(id)init;
-(id)initWithPlacementData:(id)arg0 ;
-(void)ingestPlacementData:(id)arg0 ;
+(void)initialize;


@end


#endif