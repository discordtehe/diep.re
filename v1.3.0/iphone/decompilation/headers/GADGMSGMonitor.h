// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADGMSGMONITOR_H
#define GADGMSGMONITOR_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;

@interface GADGMSGMonitor : NSObject {
    GADObserverCollection *_observers;
}




-(id)init;
-(void)handleGMSGNotification:(id)arg0 ;
+(id)sharedInstance;


@end


#endif