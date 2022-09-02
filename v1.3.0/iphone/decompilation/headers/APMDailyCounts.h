// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMDAILYCOUNTS_H
#define APMDAILYCOUNTS_H


#import <Foundation/Foundation.h>


@interface APMDailyCounts : NSObject

@property (readonly, nonatomic) int day; // ivar: _day
@property (readonly, nonatomic) int conversionsCount; // ivar: _conversionsCount
@property (readonly, nonatomic) int allEventsCount; // ivar: _allEventsCount
@property (readonly, nonatomic) int publicEventsCount; // ivar: _publicEventsCount
@property (readonly, nonatomic) int errorEventsCount; // ivar: _errorEventsCount
@property (readonly, nonatomic) int realtimeCount; // ivar: _realtimeCount


-(id)initWithDay:(int)arg0 conversionsCount:(int)arg1 allEventsCount:(int)arg2 publicEventsCount:(int)arg3 errorEventsCount:(int)arg4 realtimeCount:(int)arg5 ;
-(void)incrementCountsForCurrentDay:(int)arg0 isPublicEvent:(BOOL)arg1 isConversion:(BOOL)arg2 ;
-(void)incrementErrorEventsCountForCurrentDay:(int)arg0 ;
-(void)incrementRealtimeCountsForCurrentDay:(int)arg0 ;
-(void)decrementAllEventsCount;
-(void)resetWithNewDay:(int)arg0 ;


@end


#endif