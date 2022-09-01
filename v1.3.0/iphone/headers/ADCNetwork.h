// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCNETWORK_H
#define ADCNETWORK_H


#import <Foundation/Foundation.h>


@interface ADCNetwork : NSObject {
    NSString *_host_name;
    *__SCNetworkReachability _reachability_ref;
}


@property (retain, nonatomic) NSString *host; // ivar: _host
@property (nonatomic) NSUInteger currentReachabilityStatus; // ivar: _currentReachabilityStatus


-(BOOL)startMonitoringWithReachabilityChangeHandler:(id)arg0 ;
-(void)stopMonitoring;
-(NSUInteger)networkStatusForFlags:(unsigned int)arg0 ;
-(void)dealloc;
+(id)sharedNetwork;


@end


#endif