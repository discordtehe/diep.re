// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SSEREACHABILITY_H
#define SSEREACHABILITY_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>


@interface SSEReachability : NSObject

@property (nonatomic) *__SCNetworkReachability reachabilityRef; // ivar: _reachabilityRef
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *reachabilitySerialQueue; // ivar: _reachabilitySerialQueue
@property (retain, nonatomic) id *reachabilityObject; // ivar: _reachabilityObject
@property (copy, nonatomic) id *reachableBlock; // ivar: _reachableBlock
@property (copy, nonatomic) id *unreachableBlock; // ivar: _unreachableBlock
@property (copy, nonatomic) id *reachabilityBlock; // ivar: _reachabilityBlock
@property (nonatomic) BOOL reachableOnWWAN; // ivar: _reachableOnWWAN


-(id)initWithReachabilityRef:(struct __SCNetworkReachability *)arg0 ;
-(void)dealloc;
-(BOOL)startNotifier;
-(void)stopNotifier;
-(BOOL)isReachableWithFlags:(unsigned int)arg0 ;
-(BOOL)isReachable;
-(BOOL)isReachableViaWWAN;
-(BOOL)isReachableViaWiFi;
-(BOOL)isConnectionRequired;
-(BOOL)connectionRequired;
-(BOOL)isConnectionOnDemand;
-(BOOL)isInterventionRequired;
-(NSInteger)currentReachabilityStatus;
-(unsigned int)reachabilityFlags;
-(id)currentReachabilityString;
-(BOOL)hasConnectivity;
-(id)currentReachabilityFlags;
-(id)getDeviceReachabilityType;
-(void)reachabilityChanged:(unsigned int)arg0 ;
-(id)description;
+(id)reachabilityWithHostName:(id)arg0 ;
+(id)reachabilityWithHostname:(id)arg0 ;
+(id)reachabilityWithAddress:(*void)arg0 ;
+(id)reachabilityForInternetConnection;


@end


#endif