// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMSEQUENCETIMESTAMPSCACHE_H
#define APMSEQUENCETIMESTAMPSCACHE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface APMSequenceTimestampsCache : NSObject {
    NSMutableDictionary *_allSequenceTimestampsByFilterID;
}


@property (readonly, copy, nonatomic) NSNumber *audienceID; // ivar: _audienceID


-(id)initWithAudienceID:(id)arg0 ;
-(id)sequenceTimestampsForFilterID:(id)arg0 ;
-(void)addTimestamp:(CGFloat)arg0 forFilterID:(id)arg1 ;
-(id)sequenceFilterResultTimestamps;


@end


#endif