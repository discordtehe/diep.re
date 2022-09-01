// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFIDLETIMEOUTMANAGER_H
#define FNFIDLETIMEOUTMANAGER_H

@protocol FBSetIdleTimerApplicationProtocol;

#import <Foundation/Foundation.h>


@interface FNFIdleTimeoutManager : NSObject {
    mutex _lock;
    NSHashTable *_clients;
    id<FBSetIdleTimerApplicationProtocol> *_application;
}




-(id)init;
-(void)addNonIdlingClient:(id)arg0 ;
-(void)removeNonIdlingClient:(id)arg0 ;
-(void)_setApplication:(id)arg0 ;
+(id)sharedInstance;


@end


#endif