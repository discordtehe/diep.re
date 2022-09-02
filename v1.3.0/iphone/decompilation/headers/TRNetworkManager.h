// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TRNETWORKMANAGER_H
#define TRNETWORKMANAGER_H

@class AFHTTPSessionManager;

#import <CoreFoundation/CoreFoundation.h>


@interface TRNetworkManager : AFHTTPSessionManager

@property (retain, nonatomic) NSMutableArray *requests; // ivar: _requests
@property (retain, nonatomic) NSTimer *requestTimer; // ivar: _requestTimer
@property (nonatomic) BOOL isWorking; // ivar: _isWorking
@property (nonatomic) BOOL asleep; // ivar: _asleep


-(id)initWithBaseURL:(id)arg0 sessionConfiguration:(id)arg1 ;
-(void)startup;
-(void)applicationWillBecomeActive;
-(void)applicationWillBecomeInactive;
-(void)postVersions:(id)arg0 ;
-(void)postEvents:(id)arg0 completionHandler:(id)arg1 ;
-(void)sendRequest:(id)arg0 ;
-(void)getWithRequest:(id)arg0 completion:(id)arg1 ;
-(void)postWithRequest:(id)arg0 completion:(id)arg1 ;
-(void)sendRequest;
-(void)addRequest:(id)arg0 ;
-(void)removeRequest:(id)arg0 ;
-(void)disableQueue;
-(void)handleResponse:(id)arg0 error:(id)arg1 originalRequest:(id)arg2 ;
+(id)sharedManager;


@end


#endif