// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMANUALIMPRESSIONMONITOR_H
#define GADMANUALIMPRESSIONMONITOR_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADObserverCollection;

@interface GADManualImpressionMonitor : NSObject {
    NSArray *_manualImpressionURLStrings;
    NSOperationQueue *_observationQueue;
    GADObserverCollection *_observers;
}




-(id)initWithAd:(id)arg0 manualImpressionURLStrings:(id)arg1 ;
-(void)handleManualImpressionInContext:(id)arg0 ;
+(void)addMonitorToAd:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 ;


@end


#endif