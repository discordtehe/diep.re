// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADPERSISTENTSTATEMONITOR_H
#define GADPERSISTENTSTATEMONITOR_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADObserverCollection;

@interface GADPersistentStateMonitor : NSObject {
    GADObserverCollection *_observers;
    NSMutableDictionary *_state;
}




-(id)initWithMessageSource:(id)arg0 ;
-(id)savedState;
-(void)saveState:(id)arg0 ;


@end


#endif