// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VNGNETWORKMANAGER_H
#define VNGNETWORKMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class VungleReachability;
@class VunglePublisherInformationProvider;
@class VungleURLConfiguration;
@protocol NSURLSessionTaskDelegate;
@protocol NSURLSessionDataDelegate;
@protocol NSURLSessionDownloadDelegate;
@protocol VungleNetworkOperationDelegate;

@interface VNGNetworkManager : NSObject <NSURLSessionTaskDelegate, NSURLSessionDataDelegate, NSURLSessionDownloadDelegate, VungleNetworkOperationDelegate>



@property (retain, nonatomic) NSOperationQueue *queue; // ivar: _queue
@property (retain, nonatomic) NSOperationQueue *delegateQueue; // ivar: _delegateQueue
@property (retain, nonatomic) NSURLSession *session; // ivar: _session
@property (retain, nonatomic) NSURLSessionConfiguration *sessionConfiguration; // ivar: _sessionConfiguration
@property (retain, nonatomic) VungleReachability *reachability; // ivar: _reachability
@property (nonatomic) BOOL isValidSession; // ivar: _isValidSession
@property (nonatomic, getter=isTerminating) BOOL terminating; // ivar: _terminating
@property (copy, nonatomic) NSString *defaultUserAgent; // ivar: _defaultUserAgent
@property (copy, nonatomic) NSString *sdkVersionNumber; // ivar: _sdkVersionNumber
@property (copy, nonatomic) NSDictionary *HTTPHeaders; // ivar: _HTTPHeaders
@property (retain, nonatomic) VunglePublisherInformationProvider *publisherInformation; // ivar: _publisherInformation
@property (nonatomic) CGFloat streamingRequestTimeout; // ivar: _streamingRequestTimeout
@property (retain, nonatomic) VungleURLConfiguration *URLConfiguration; // ivar: _URLConfiguration
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)configOperationWithBackgroundInit:(BOOL)arg0 complete:(id)arg1 ;
-(id)adsOperationWithPlacement:(id)arg0 headerBiddingEnabled:(BOOL)arg1 complete:(id)arg2 ;
-(id)requestStreamingAdOperationWithPlacement:(id)arg0 playOptions:(id)arg1 complete:(id)arg2 ;
-(id)reportAdOperationWithInfo:(id)arg0 complete:(id)arg1 ;
-(id)reportIncentivizedOperationWithInfo:(id)arg0 complete:(id)arg1 ;
-(id)TPATRequestOperationWithURL:(id)arg0 complete:(id)arg1 ;
-(id)CTARequestOperationWithURL:(id)arg0 complete:(id)arg1 ;
-(id)registerUserOperation:(id)arg0 ;
-(id)operationWithURL:(id)arg0 name:(id)arg1 complete:(id)arg2 ;
-(void)didCancelOperation:(id)arg0 ;
-(void)didAbortOperation:(id)arg0 ;
-(BOOL)isURLSessionValid;
-(void)willTerminateOperation:(id)arg0 ;
-(void)didTerminateOperation:(id)arg0 ;
-(void)willCancelOperation:(id)arg0 ;
-(id)initWithConfiguration:(id)arg0 reachability:(id)arg1 ;
-(void)dealloc;
-(id)cancelAllTransactions;
-(NSUInteger)countOfQueuedOperations;
-(void)appDidEnterBackground;
-(void)appWillEnterForeground;
-(BOOL)wifiAvailable;
-(BOOL)networkAvailable;
-(id)connectionQualityString;
-(id)errorForResponseWithCode:(NSInteger)arg0 headerFields:(id)arg1 ;
-(id)getQueueString;
-(void)URLSession:(id)arg0 task:(id)arg1 didCompleteWithError:(id)arg2 ;
-(void)URLSession:(id)arg0 downloadTask:(id)arg1 didFinishDownloadingToURL:(id)arg2 ;
-(void)URLSession:(id)arg0 dataTask:(id)arg1 didReceiveData:(id)arg2 ;
-(void)URLSession:(id)arg0 dataTask:(id)arg1 didReceiveResponse:(id)arg2 completionHandler:(id)arg3 ;
-(void)URLSession:(id)arg0 didBecomeInvalidWithError:(id)arg1 ;
-(void)URLSessionDidFinishEventsForBackgroundURLSession:(id)arg0 ;
-(NSUInteger)ongoingOperationsCount;
-(void)terminateSessionWithCompletion:(id)arg0 ;
-(id)vungleOperationWithURL:(id)arg0 requestType:(NSUInteger)arg1 name:(id)arg2 responseBlock:(id)arg3 ;
-(id)vungleUploadOperationWithRemoteURL:(id)arg0 content:(id)arg1 responseBlock:(id)arg2 ;
-(id)vungleDownloadOperationWithRemoteURL:(id)arg0 localFileURL:(id)arg1 placementID:(id)arg2 error:(*id)arg3 responseBlock:(id)arg4 ;
-(void)addOperation:(id)arg0 ;
-(void)sendVungleOperation:(id)arg0 ;
-(void)sendVungleOperation:(id)arg0 waitUntilFinished:(BOOL)arg1 ;
-(void)logNetworkOperation:(id)arg0 ;
-(void)logResponse:(id)arg0 error:(id)arg1 ;
-(id)operationForTask:(id)arg0 ;
-(id)operationForTask:(id)arg0 inQueue:(id)arg1 ;
-(NSInteger)countOfExecutingOperations:(id)arg0 ;
+(id)networkError:(id)arg0 errorCode:(NSInteger)arg1 ;
+(id)sharedManager;


@end


#endif