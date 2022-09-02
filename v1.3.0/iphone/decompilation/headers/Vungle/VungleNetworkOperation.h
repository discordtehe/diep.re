// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLENETWORKOPERATION_H
#define VUNGLENETWORKOPERATION_H

@class NSURLSessionTask;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class VungleBackoffCalculator;
@class VungleNetworkResponse;
@protocol NSURLSessionDataDelegate;
@protocol NSURLConnectionDataDelegate;
@protocol VungleNetworkOperationDelegate;

@interface VungleNetworkOperation : NSOperation <NSURLSessionDataDelegate, NSURLConnectionDataDelegate>



@property (retain, nonatomic) NSURLSessionTask *task; // ivar: _task
@property (retain, nonatomic) NSDictionary *requestParameters; // ivar: _requestParameters
@property (weak, nonatomic) NSURLSession *session; // ivar: _session
@property (nonatomic) NSUInteger requestType; // ivar: _requestType
@property (copy, nonatomic) id *taskSetupCompletionBlock; // ivar: _taskSetupCompletionBlock
@property (retain, nonatomic) VungleBackoffCalculator *backoffCalculator; // ivar: _backoffCalculator
@property (retain, nonatomic) NSURL *url; // ivar: _url
@property (nonatomic) BOOL running; // ivar: _running
@property (retain, nonatomic) NSURLConnection *connection; // ivar: _connection
@property (nonatomic) NSUInteger currentBackoffIndex; // ivar: _currentBackoffIndex
@property (nonatomic) BOOL hasQueryParameters; // ivar: _hasQueryParameters
@property (copy, nonatomic) NSDictionary *parameters; // ivar: _parameters
@property (copy, nonatomic) NSDictionary *extraHeaders; // ivar: _extraHeaders
@property (copy, nonatomic) NSString *sdkVersion; // ivar: _sdkVersion
@property (nonatomic) NSUInteger maxAttempts; // ivar: _maxAttempts
@property (nonatomic) CGFloat timeout; // ivar: _timeout
@property (readonly, nonatomic) BOOL shouldKeepTrying;
@property (nonatomic) BOOL isInternal; // ivar: _isInternal
@property (retain, nonatomic) NSString *pluginName; // ivar: _pluginName
@property (copy, nonatomic) NSString *navigatorUserAgent; // ivar: _navigatorUserAgent
@property (nonatomic, getter=isTPAT) BOOL TPAT; // ivar: _TPAT
@property (copy, nonatomic) id *networkCompletionBlock; // ivar: _networkCompletionBlock
@property (weak, nonatomic) NSObject<VungleNetworkOperationDelegate> *delegate; // ivar: _delegate
@property (retain, nonatomic) VungleNetworkResponse *response; // ivar: _response
@property (retain, nonatomic) NSError *error; // ivar: _error
@property (nonatomic) BOOL didCancel; // ivar: _didCancel
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


// -(id)initWithURL:(id)arg0 requestType:(NSUInteger)arg1 parameters:(id)arg2 session:(id)arg3 taskSetupCompletionBlock:(id)arg4 taskCompletionBlock:(unk)arg5  ;
-(void)setName:(id)arg0 ;
-(void)start;
-(id)taskWithRequest:(id)arg0 session:(id)arg1 ;
-(BOOL)isConcurrent;
-(BOOL)isAsynchronous;
-(BOOL)isExecuting;
-(BOOL)isFinished;
-(BOOL)isCancelled;
-(void)cancel;
-(void)retryBaseRequestWithBackoff;
-(void)terminate;
-(BOOL)handleData:(id)arg0 error:(*id)arg1 ;
-(void)finishOperation;
-(void)setObject:(id)arg0 forKey:(id)arg1 inDict:(id)arg2 ;
-(void)prepareRequest:(id)arg0 ;
-(id)encodedURLParametersStringWithDictionary:(id)arg0 ;
-(void)dispatchBackoffConnectionWithRequest:(id)arg0 ;
-(BOOL)isFirstAttempt;
-(BOOL)didReachMaxAttempts;
-(NSUInteger)attemptsRemaining;
-(NSUInteger)retryState;
+(id)URLEncodeString:(id)arg0 ;


@end


#endif