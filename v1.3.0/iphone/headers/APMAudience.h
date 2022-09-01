// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMAUDIENCE_H
#define APMAUDIENCE_H


#import <Foundation/Foundation.h>

@class APMDatabase;

@interface APMAudience : NSObject {
    APMDatabase *_database;
}




-(id)initWithDatabase:(id)arg0 ;
-(BOOL)evaluateFiltersForEvent:(id)arg0 eventAggregates:(id)arg1 cachedSequenceEvaluationTimestamps:(id)arg2 ;
-(BOOL)evaluateFiltersForEventName:(id)arg0 eventParameters:(id)arg1 eventAggregates:(id)arg2 eventTimestamp:(CGFloat)arg3 cachedSequenceEvaluationTimestamps:(id)arg4 ;
-(BOOL)evaluateFiltersForUserProperty:(id)arg0 cachedSequenceEvaluationTimestamps:(id)arg1 ;
-(BOOL)evaluateFiltersForUserProperty:(id)arg0 ;
-(BOOL)evaluateFiltersForNanoUserProperty:(id)arg0 cachedSequenceEvaluationTimestamps:(id)arg1 ;
-(BOOL)updateAudiences:(id)arg0 ;
-(BOOL)maybeDeleteStaleFilterResults:(id)arg0 ;
-(BOOL)resultsForBundling:(*id)arg0 ;
+(BOOL)isFilterResult:(id)arg0 trueForFilterID:(int)arg1 ;
+(id)updatedFilterResultWithFilterID:(int)arg0 audienceID:(int)arg1 currentFilterResult:(id)arg2 newEvaluationResult:(id)arg3 dynamicFilterTimestamps:(id)arg4 sequenceFilterTimestamps:(id)arg5 ;
+(BOOL)isValidAudienceProto:(id)arg0 usedAudienceIDs:(id)arg1 error:(*id)arg2 ;


@end


#endif