// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADDEVICEORIENTATIONSIGNALCACHE_H
#define GADDEVICEORIENTATIONSIGNALCACHE_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>

@class GADDeviceOrientationSignals;
@class GADObserverCollection;

@interface GADDeviceOrientationSignalCache : NSObject {
    GADDeviceOrientationSignals *_cachedSignals;
    NSObject<OS_dispatch_queue> *_lockQueue;
    GADObserverCollection *_orientationChangeObserver;
}


@property (readonly) GADDeviceOrientationSignals *cachedSignals;


-(id)init;
-(void)updateSignals;
+(id)sharedInstance;


@end


#endif