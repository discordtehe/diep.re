// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FABNETWORKCLIENT_H
#define FABNETWORKCLIENT_H


#import <Foundation/Foundation.h>

@class FABCertificatePinner;
@protocol NSURLSessionDelegate;
@protocol NSURLSessionTaskDelegate;

@interface FABNetworkClient : NSObject <NSURLSessionDelegate, NSURLSessionTaskDelegate>



@property (readonly, nonatomic) FABCertificatePinner *certPinner; // ivar: _certPinner
@property (readonly, nonatomic) NSURLSession *session; // ivar: _session
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithQueue:(id)arg0 ;
-(id)initWithQueue:(id)arg0 pinnedCertificates:(id)arg1 ;
-(id)initWithSessionConfiguration:(id)arg0 queue:(id)arg1 pinnedCertificates:(id)arg2 ;
-(void)dealloc;
-(CGFloat)randomDoubleWithMin:(CGFloat)arg0 max:(CGFloat)arg1 ;
-(CGFloat)generateRandomJitter;
-(CGFloat)computeDelayForResponse:(id)arg0 withRetryCount:(NSUInteger)arg1 ;
-(void)runAfterRetryValueFromResponse:(id)arg0 attempts:(NSUInteger)arg1 onQueue:(id)arg2 block:(id)arg3 ;
-(void)runAfterRetryValueFromResponse:(id)arg0 attempts:(NSUInteger)arg1 block:(id)arg2 ;
-(void)startDataTaskWithRequest:(id)arg0 retryLimit:(NSUInteger)arg1 tries:(NSUInteger)arg2 completionHandler:(id)arg3 ;
-(void)startDataTaskWithRequest:(id)arg0 retryLimit:(NSUInteger)arg1 completionHandler:(id)arg2 ;
-(void)startDataTaskWithRequest:(id)arg0 completionHandler:(id)arg1 ;
-(void)startDownloadTaskWithRequest:(id)arg0 retryLimit:(NSUInteger)arg1 tries:(NSUInteger)arg2 completionHandler:(id)arg3 ;
-(void)startDownloadTaskWithRequest:(id)arg0 retryLimit:(NSUInteger)arg1 completionHandler:(id)arg2 ;
-(void)startDownloadTaskWithRequest:(id)arg0 completionHandler:(id)arg1 ;
-(void)invalidateAndCancel;
-(void)URLSession:(id)arg0 didBecomeInvalidWithError:(id)arg1 ;
-(void)URLSession:(id)arg0 didReceiveChallenge:(id)arg1 completionHandler:(id)arg2 ;


@end


#endif