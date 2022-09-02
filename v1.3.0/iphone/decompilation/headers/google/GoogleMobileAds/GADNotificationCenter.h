// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADNOTIFICATIONCENTER_H
#define GADNOTIFICATIONCENTER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADNotificationCenter : NSObject {
    NSNotificationCenter *_notificationCenter;
    NSArray *_observers;
    NSObject<OS_dispatch_queue> *_lockQueue;
    NSMutableSet *_handledNotificationIDs;
}




-(id)init;
-(void)dealloc;
-(id)notificationCenter;
-(void)postNotificationName:(id)arg0 object:(id)arg1 userInfo:(id)arg2 ;
-(id)addObserverForName:(id)arg0 object:(id)arg1 queue:(id)arg2 usingBlock:(id)arg3 ;
-(void)removeEventObserver:(id)arg0 ;
+(id)sharedInstance;


@end


#endif