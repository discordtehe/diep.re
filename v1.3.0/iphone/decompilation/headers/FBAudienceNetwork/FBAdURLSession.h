// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADURLSESSION_H
#define FBADURLSESSION_H


#import <Foundation/Foundation.h>

@class FBAdConcurrentQueue;
@class FBAdNetworkQuality;
@protocol NSURLSessionDelegate;
@protocol NSURLSessionDataDelegate;

@interface FBAdURLSession : NSObject <NSURLSessionDelegate, NSURLSessionDataDelegate>



@property (retain) NSURLSession *session; // ivar: _session
@property (retain) FBAdConcurrentQueue *queue; // ivar: _queue
@property (nonatomic, getter=isSSLValidationDisabled) BOOL SSLValidationDisabled; // ivar: _SSLValidationDisabled
@property (nonatomic) NSInteger customRequestTimeout; // ivar: _customRequestTimeout
@property (readonly, nonatomic) FBAdNetworkQuality *networkQuality; // ivar: _networkQuality
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)clearCustomRequestTimeout;
-(id)defaultConfiguration;
-(void)updateSession;
-(void)setupSessionWithUserAgent:(id)arg0 ;
-(BOOL)valid;
-(void)enqueueOrExecuteRequest:(id)arg0 ;
-(void)emptyQueue;
-(id)requestWithURLRequest:(id)arg0 responseHandler:(id)arg1 ;
-(id)requestWithURL:(id)arg0 HTTPMethod:(id)arg1 queryParameters:(id)arg2 responseHandler:(id)arg3 ;
-(BOOL)isEmptyURL:(id)arg0 ;
-(id)urlRequestWithURL:(id)arg0 HTTPMethod:(id)arg1 queryParameters:(id)arg2 ;
-(BOOL)isSandboxHost:(id)arg0 ;
-(void)setupNetworkQualityMeasurementIfNeeded;
-(void)URLSession:(id)arg0 didReceiveChallenge:(id)arg1 completionHandler:(id)arg2 ;
-(void)URLSession:(id)arg0 task:(id)arg1 didFinishCollectingMetrics:(id)arg2 ;
+(id)sharedSession;


@end


#endif