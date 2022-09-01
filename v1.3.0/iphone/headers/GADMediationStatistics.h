// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMEDIATIONSTATISTICS_H
#define GADMEDIATIONSTATISTICS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADMediationStatistics : NSObject {
    NSMutableDictionary *_mediationStatistics;
}




-(id)init;
-(void)startTimingForAllocationID:(id)arg0 ;
-(void)endTimingForAllocationID:(id)arg0 exitStatus:(NSInteger)arg1 ;
-(id)mediationStatisticsParameterOrderedByAllocationIDs:(id)arg0 ;


@end


#endif