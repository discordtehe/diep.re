// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADONEPIXELIMPRESSIONMONITOR_H
#define GADONEPIXELIMPRESSIONMONITOR_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;

@interface GADOnePixelImpressionMonitor : NSObject {
    GADObserverCollection *_observers;
    atomic_flag _didPostImpression;
}




-(id)initWithAd:(id)arg0 ;
-(void)postImpressionNotificationForAd:(id)arg0 ;


@end


#endif