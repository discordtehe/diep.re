// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJCNETREACHABILITY_H
#define TJCNETREACHABILITY_H


#import <Foundation/Foundation.h>


@interface TJCNetReachability : NSObject {
    *__SCNetworkReachability _reachabilityRef;
}




-(BOOL)startNotifier;
-(void)stopNotifier;
-(void)dealloc;
-(NSInteger)networkStatusForFlags:(unsigned int)arg0 ;
-(BOOL)connectionRequired;
-(NSInteger)currentReachabilityStatus;
+(id)reachabilityWithHostName:(id)arg0 ;
+(id)reachabilityWithAddress:(struct sockaddr *)arg0 ;
+(id)reachabilityForInternetConnection;
+(BOOL)isUsingWifi;
+(BOOL)isUsingInternet;
+(id)getReachabilityType;
+(id)reachabilitySubType;
+(BOOL)isNetworkReachable;


@end


#endif