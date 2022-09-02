// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCPROFILINGTIMER_H
#define CCPROFILINGTIMER_H


#import <Foundation/Foundation.h>


@interface CCProfilingTimer : NSObject {
    NSString *name;
    timeval startTime;
    CGFloat averageTime;
    CGFloat minTime;
    CGFloat maxTime;
    CGFloat totalTime;
    NSUInteger numberOfCalls;
}




-(id)initWithName:(id)arg0 ;
-(void)dealloc;
-(id)description;
-(void)reset;


@end


#endif