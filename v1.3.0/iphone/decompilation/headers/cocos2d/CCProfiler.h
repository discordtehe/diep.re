// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCPROFILER_H
#define CCPROFILER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface CCProfiler : NSObject {
    NSMutableDictionary *activeTimers;
}




-(id)createAndAddTimerWithName:(id)arg0 ;
-(void)releaseTimer:(id)arg0 ;
-(void)releaseAllTimers;
-(id)init;
-(void)dealloc;
-(void)displayTimers;
+(id)sharedProfiler;


@end


#endif