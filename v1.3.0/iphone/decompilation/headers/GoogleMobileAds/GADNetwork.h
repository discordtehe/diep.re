// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADNETWORK_H
#define GADNETWORK_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreTelephony/CoreTelephony.h>

@class GADObserverCollection;
@protocol GADSignalSource;
@protocol GADSignal;

@interface GADNetwork : NSObject <GADSignalSource, GADSignal>

 {
    NSUInteger _networkType;
    NSUInteger _lastKnownNetworkType;
    NSObject<OS_dispatch_queue> *_lockQueue;
    NSObject<OS_dispatch_queue> *_enableCheckingQueue;
    *__SCNetworkReachability _networkReachabilityRef;
    CTTelephonyNetworkInfo *_telephonyNetworkInfo;
    NSString *_radioAccessTechnology;
    NSString *_lastKnownRadioAccessTechnology;
    NSString *_userAgentString;
    GADObserverCollection *_observers;
}


@property (copy) NSString *userAgentString;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)dealloc;
-(void)enableRadioAccessTechnologyChecking;
-(void)setNetworkType:(NSUInteger)arg0 ;
-(void)setNetworkTypeFromFlags:(unsigned int)arg0 ;
-(void)setRadioAccessTechnology:(id)arg0 ;
-(void)getSignalUpdateQueue:(*id)arg0 signalCreationBlock:(*id)arg1 ;
-(void)addSignalEntriesToMutableDictionary:(id)arg0 ;
+(id)sharedInstance;


@end


#endif