// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADADVISIBILITYMONITOR_H
#define GADADVISIBILITYMONITOR_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;
@class GADAd;

@interface GADAdVisibilityMonitor : NSObject {
    GADObserverCollection *_observers;
    GADAd *_ad;
}




-(id)initWithAd:(id)arg0 messageSource:(id)arg1 ;


@end


#endif