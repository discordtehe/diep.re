// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADIMPRESSIONMONITOR_H
#define GADIMPRESSIONMONITOR_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;

@interface GADImpressionMonitor : NSObject {
    GADObserverCollection *_observers;
}




-(id)initWithAd:(id)arg0 impressionDefinition:(NSInteger)arg1 ;
+(void)addMonitorToAd:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 ;


@end


#endif