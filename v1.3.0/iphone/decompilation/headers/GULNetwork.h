// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GULNETWORK_H
#define GULNETWORK_H


#import <Foundation/Foundation.h>

@class GULReachabilityChecker;
@class GULMutableDictionary;
@protocol GULReachabilityDelegate;
@protocol GULNetworkLoggerDelegate;
@protocol GULNetworkReachabilityDelegate;
@protocol GULNetworkLoggerDelegate;

@interface GULNetwork : NSObject <GULReachabilityDelegate, GULNetworkLoggerDelegate>

 {
    GULReachabilityChecker *_reachability;
    GULMutableDictionary *_requests;
}


@property (readonly, nonatomic, getter=isNetworkConnected) BOOL networkConnected; // ivar: _networkConnected
@property (readonly, nonatomic, getter=hasUploadInProgress) BOOL uploadInProgress;
@property (weak, nonatomic) NSObject<GULNetworkReachabilityDelegate> *reachabilityDelegate; // ivar: _reachabilityDelegate
@property (weak, nonatomic) NSObject<GULNetworkLoggerDelegate> *loggerDelegate; // ivar: _loggerDelegate
@property (nonatomic) BOOL isDebugModeEnabled; // ivar: _isDebugModeEnabled
@property (nonatomic) CGFloat timeoutInterval; // ivar: _timeoutInterval
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithReachabilityHost:(id)arg0 ;
-(void)dealloc;
-(id)postURL:(id)arg0 payload:(id)arg1 queue:(id)arg2 usingBackgroundSession:(BOOL)arg3 completionHandler:(id)arg4 ;
-(id)getURL:(id)arg0 headers:(id)arg1 queue:(id)arg2 usingBackgroundSession:(BOOL)arg3 completionHandler:(id)arg4 ;
-(void)reachability:(id)arg0 statusChanged:(int)arg1 ;
-(void)handleErrorWithCode:(NSInteger)arg0 queue:(id)arg1 withHandler:(id)arg2 ;
-(void)GULNetwork_logWithLevel:(NSInteger)arg0 messageCode:(NSInteger)arg1 message:(id)arg2 contexts:(id)arg3 ;
-(void)GULNetwork_logWithLevel:(NSInteger)arg0 messageCode:(NSInteger)arg1 message:(id)arg2 context:(id)arg3 ;
-(void)GULNetwork_logWithLevel:(NSInteger)arg0 messageCode:(NSInteger)arg1 message:(id)arg2 ;
+(void)handleEventsForBackgroundURLSessionID:(id)arg0 completionHandler:(id)arg1 ;


@end


#endif