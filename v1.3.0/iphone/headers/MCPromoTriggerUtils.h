// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOTRIGGERUTILS_H
#define MCPROMOTRIGGERUTILS_H


#import <Foundation/Foundation.h>


@interface MCPromoTriggerUtils : NSObject



+(CGFloat)getNextTimestampForDateComponents:(id)arg0 startTimestamp:(CGFloat)arg1 ;
+(CGFloat)getPreviousTimestampForDateComponents:(id)arg0 startTimestamp:(CGFloat)arg1 ;
+(id)getNextDateForDateComponents:(id)arg0 startDate:(id)arg1 ;
+(id)getPreviousDateForDateComponents:(id)arg0 startDate:(id)arg1 ;
+(id)getCurrentLocalTime;
+(id)convertDateFromGMTToLocalTimezone:(id)arg0 ;
+(id)converStringToDate:(id)arg0 withFormat:(id)arg1 ;
+(id)convertDateToString:(id)arg0 withFormat:(id)arg1 ;
+(id)convertDateToDateComponents:(id)arg0 ;
+(BOOL)dateList:(id)arg0 containsAtLeastOneEqualDateTo:(id)arg1 ;
+(BOOL)date:(id)arg0 isEqualToDate:(id)arg1 ;


@end


#endif