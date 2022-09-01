// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVCONNECTIVITYMONITOR_H
#define USRVCONNECTIVITYMONITOR_H


#import <Foundation/Foundation.h>


@interface USRVConnectivityMonitor : NSObject



+(void)setConnectionMonitoring:(BOOL)arg0 ;
+(void)startListening:(id)arg0 ;
+(void)stopListening:(id)arg0 ;
+(void)stopAll;
+(void)updateListeningStatus;
+(void)startReachabilityListener;
+(void)stopReachabilityListener;
+(void)dealloc;
+(void)sendToWebview:(struct __SCNetworkReachability *)arg0 flags:(unsigned int)arg1 ;


@end


#endif