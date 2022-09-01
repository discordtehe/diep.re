// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADDELAYPAGECLOSEMONITOR_H
#define GADDELAYPAGECLOSEMONITOR_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;
@class GADAd;

@interface GADDelayPageCloseMonitor : NSObject {
    GADObserverCollection *_observers;
    GADAd *_ad;
    GADAd *_strongAd;
    NSInteger _timeoutIdentifier;
}




-(id)initWithAd:(id)arg0 messageSource:(id)arg1 ;
-(void)handleDelayPageCloseTimeout:(NSInteger)arg0 ;
-(void)handleDelayPageCloseNotification:(id)arg0 ;


@end


#endif