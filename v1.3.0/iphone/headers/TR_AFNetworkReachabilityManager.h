// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_AFNETWORKREACHABILITYMANAGER_H
#define TR_AFNETWORKREACHABILITYMANAGER_H


#import <Foundation/Foundation.h>


@interface TR_AFNetworkReachabilityManager : NSObject

@property (readonly, nonatomic) *__SCNetworkReachability networkReachability; // ivar: _networkReachability
@property (nonatomic) NSInteger networkReachabilityStatus; // ivar: _networkReachabilityStatus
@property (copy, nonatomic) id *networkReachabilityStatusBlock; // ivar: _networkReachabilityStatusBlock
@property (readonly, nonatomic, getter=isReachable) BOOL reachable;
@property (readonly, nonatomic, getter=isReachableViaWWAN) BOOL reachableViaWWAN;
@property (readonly, nonatomic, getter=isReachableViaWiFi) BOOL reachableViaWiFi;


-(id)initWithReachability:(struct __SCNetworkReachability *)arg0 ;
-(id)init;
-(void)dealloc;
-(void)startMonitoring;
-(void)stopMonitoring;
-(id)localizedNetworkReachabilityStatusString;
-(void)setReachabilityStatusChangeBlock:(id)arg0 ;
+(id)sharedManager;
+(id)managerForDomain:(id)arg0 ;
+(id)managerForAddress:(*void)arg0 ;
+(id)manager;
+(id)keyPathsForValuesAffectingValueForKey:(id)arg0 ;


@end


#endif