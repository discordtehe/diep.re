// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADVIDEOPINGMONITOR_H
#define GADVIDEOPINGMONITOR_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADObserverCollection;

@interface GADVideoPingMonitor : NSObject {
    atomic_flag _hasHandledVideoEvent;
    NSArray *_URLStrings;
    GADObserverCollection *_observers;
}




-(id)initWithAd:(id)arg0 notificationName:(id)arg1 URLStrings:(id)arg2 ;
-(void)handleVideoEvents:(id)arg0 ;
+(void)addMonitorToAd:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 ;


@end


#endif