// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADRTBADAPTERMANAGER_H
#define GADRTBADAPTERMANAGER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADObserverCollection;

@interface GADRTBAdapterManager : NSObject {
    NSObject<OS_dispatch_queue> *_lockQueue;
    NSMutableSet *_registeredRTBClassNames;
    NSMutableDictionary *_adUnitToAdapterNames;
    GADObserverCollection *_observers;
    NSMutableDictionary *_mediationCredentials;
}




-(id)init;
-(void)updateRTBAdapters;
-(void)updateAdUnitAdapterConfiguration:(id)arg0 ;
-(void)registerMediationAdapterClassName:(id)arg0 ;
-(id)registeredAdapterNamesForAdUnitID:(id)arg0 ;
-(id)credentialsForAdapterClass:(Class)arg0 adUnitID:(id)arg1 defaultFormat:(NSInteger)arg2 ;
+(id)sharedInstance;


@end


#endif