// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCNETWORKAPI_H
#define ADCNETWORKAPI_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ADCNetworkAPI : NSObject {
    NSTimer *_networkRequestQueueTimer;
    NSMutableArray *_cachedNetworkRequests;
    NSMutableArray *_currentNetworkRequests;
}




-(id)init;
-(void)startPropogatingCachedNetworkRequests;
-(void)stopPropogatingCachedNetworkRequests;
-(void)queueCachedNetworkRequest;
-(id)sanitizeCachedRequest:(id)arg0 ;
-(BOOL)addCurrentNetworkRequest:(id)arg0 ;
-(BOOL)addCurrentNetworkRequest:(id)arg0 fromCache:(BOOL)arg1 ;
-(void)addPrioritizedNetworkRequest:(id)arg0 ;
-(BOOL)removeCurrentNetworkRequestWithGUID:(id)arg0 ;
-(BOOL)updateAttempts:(NSInteger)arg0 forRequestWithGUID:(id)arg1 ;
-(void)saveCurrentNetworkRequests;
-(void)destroyTimer;
-(void)startMonitoring;
+(id)sharedAPI;


@end


#endif