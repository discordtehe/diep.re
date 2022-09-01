// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_AFURLSESSIONMANAGER_H
#define TR_AFURLSESSIONMANAGER_H

@protocol OS_dispatch_queue, OS_dispatch_group;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class TR_AFSecurityPolicy;
@class TR_AFNetworkReachabilityManager;
@protocol NSURLSessionDelegate;
@protocol NSURLSessionTaskDelegate;
@protocol NSURLSessionDataDelegate;
@protocol NSURLSessionDownloadDelegate;
@protocol NSSecureCoding;
@protocol NSCopying;
@protocol AFURLResponseSerialization;

@interface TR_AFURLSessionManager : NSObject <NSURLSessionDelegate, NSURLSessionTaskDelegate, NSURLSessionDataDelegate, NSURLSessionDownloadDelegate, NSSecureCoding, NSCopying>



@property (retain, nonatomic) NSURLSessionConfiguration *sessionConfiguration; // ivar: _sessionConfiguration
@property (retain, nonatomic) NSOperationQueue *operationQueue; // ivar: _operationQueue
@property (retain, nonatomic) NSURLSession *session; // ivar: _session
@property (retain, nonatomic) NSMutableDictionary *mutableTaskDelegatesKeyedByTaskIdentifier; // ivar: _mutableTaskDelegatesKeyedByTaskIdentifier
@property (readonly, copy, nonatomic) NSString *taskDescriptionForSessionTasks;
@property (retain, nonatomic) NSLock *lock; // ivar: _lock
@property (copy, nonatomic) id *sessionDidBecomeInvalid; // ivar: _sessionDidBecomeInvalid
@property (copy, nonatomic) id *sessionDidReceiveAuthenticationChallenge; // ivar: _sessionDidReceiveAuthenticationChallenge
@property (copy, nonatomic) id *didFinishEventsForBackgroundURLSession; // ivar: _didFinishEventsForBackgroundURLSession
@property (copy, nonatomic) id *taskWillPerformHTTPRedirection; // ivar: _taskWillPerformHTTPRedirection
@property (copy, nonatomic) id *taskDidReceiveAuthenticationChallenge; // ivar: _taskDidReceiveAuthenticationChallenge
@property (copy, nonatomic) id *taskNeedNewBodyStream; // ivar: _taskNeedNewBodyStream
@property (copy, nonatomic) id *taskDidSendBodyData; // ivar: _taskDidSendBodyData
@property (copy, nonatomic) id *taskDidComplete; // ivar: _taskDidComplete
@property (copy, nonatomic) id *dataTaskDidReceiveResponse; // ivar: _dataTaskDidReceiveResponse
@property (copy, nonatomic) id *dataTaskDidBecomeDownloadTask; // ivar: _dataTaskDidBecomeDownloadTask
@property (copy, nonatomic) id *dataTaskDidReceiveData; // ivar: _dataTaskDidReceiveData
@property (copy, nonatomic) id *dataTaskWillCacheResponse; // ivar: _dataTaskWillCacheResponse
@property (copy, nonatomic) id *downloadTaskDidFinishDownloading; // ivar: _downloadTaskDidFinishDownloading
@property (copy, nonatomic) id *downloadTaskDidWriteData; // ivar: _downloadTaskDidWriteData
@property (copy, nonatomic) id *downloadTaskDidResume; // ivar: _downloadTaskDidResume
@property (retain, nonatomic) NSObject<AFURLResponseSerialization> *responseSerializer; // ivar: _responseSerializer
@property (retain, nonatomic) TR_AFSecurityPolicy *securityPolicy; // ivar: _securityPolicy
@property (retain, nonatomic) TR_AFNetworkReachabilityManager *reachabilityManager; // ivar: _reachabilityManager
@property (readonly, nonatomic) NSArray *tasks;
@property (readonly, nonatomic) NSArray *dataTasks;
@property (readonly, nonatomic) NSArray *uploadTasks;
@property (readonly, nonatomic) NSArray *downloadTasks;
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *completionQueue; // ivar: _completionQueue
@property (retain, nonatomic) NSObject<OS_dispatch_group> *completionGroup; // ivar: _completionGroup
@property (nonatomic) BOOL attemptsToRecreateUploadTasksForBackgroundSessions; // ivar: _attemptsToRecreateUploadTasksForBackgroundSessions
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithSessionConfiguration:(id)arg0 ;
-(void)dealloc;
-(void)taskDidResume:(id)arg0 ;
-(void)taskDidSuspend:(id)arg0 ;
-(id)delegateForTask:(id)arg0 ;
-(void)setDelegate:(id)arg0 forTask:(id)arg1 ;
// -(void)addDelegateForDataTask:(id)arg0 uploadProgress:(id)arg1 downloadProgress:(unk)arg2 completionHandler:(id)arg3  ;
// -(void)addDelegateForUploadTask:(id)arg0 progress:(id)arg1 completionHandler:(unk)arg2  ;
// -(void)addDelegateForDownloadTask:(id)arg0 progress:(id)arg1 destination:(unk)arg2 completionHandler:(id)arg3  ;
-(void)removeDelegateForTask:(id)arg0 ;
-(id)tasksForKeyPath:(id)arg0 ;
-(void)invalidateSessionCancelingTasks:(BOOL)arg0 ;
-(void)addNotificationObserverForTask:(id)arg0 ;
-(void)removeNotificationObserverForTask:(id)arg0 ;
-(id)dataTaskWithRequest:(id)arg0 completionHandler:(id)arg1 ;
// -(id)dataTaskWithRequest:(id)arg0 uploadProgress:(id)arg1 downloadProgress:(unk)arg2 completionHandler:(id)arg3  ;
// -(id)uploadTaskWithRequest:(id)arg0 fromFile:(id)arg1 progress:(id)arg2 completionHandler:(unk)arg3  ;
// -(id)uploadTaskWithRequest:(id)arg0 fromData:(id)arg1 progress:(id)arg2 completionHandler:(unk)arg3  ;
// -(id)uploadTaskWithStreamedRequest:(id)arg0 progress:(id)arg1 completionHandler:(unk)arg2  ;
// -(id)downloadTaskWithRequest:(id)arg0 progress:(id)arg1 destination:(unk)arg2 completionHandler:(id)arg3  ;
// -(id)downloadTaskWithResumeData:(id)arg0 progress:(id)arg1 destination:(unk)arg2 completionHandler:(id)arg3  ;
-(id)uploadProgressForTask:(id)arg0 ;
-(id)downloadProgressForTask:(id)arg0 ;
-(BOOL)respondsToSelector:(SEL)arg0 ;
-(void)URLSession:(id)arg0 didBecomeInvalidWithError:(id)arg1 ;
-(void)URLSession:(id)arg0 didReceiveChallenge:(id)arg1 completionHandler:(id)arg2 ;
-(void)URLSession:(id)arg0 task:(id)arg1 willPerformHTTPRedirection:(id)arg2 newRequest:(id)arg3 completionHandler:(id)arg4 ;
-(void)URLSession:(id)arg0 task:(id)arg1 didReceiveChallenge:(id)arg2 completionHandler:(id)arg3 ;
-(void)URLSession:(id)arg0 task:(id)arg1 needNewBodyStream:(id)arg2 ;
-(void)URLSession:(id)arg0 task:(id)arg1 didSendBodyData:(NSInteger)arg2 totalBytesSent:(NSInteger)arg3 totalBytesExpectedToSend:(NSInteger)arg4 ;
-(void)URLSession:(id)arg0 task:(id)arg1 didCompleteWithError:(id)arg2 ;
-(void)URLSession:(id)arg0 dataTask:(id)arg1 didReceiveResponse:(id)arg2 completionHandler:(id)arg3 ;
-(void)URLSession:(id)arg0 dataTask:(id)arg1 didBecomeDownloadTask:(id)arg2 ;
-(void)URLSession:(id)arg0 dataTask:(id)arg1 didReceiveData:(id)arg2 ;
-(void)URLSession:(id)arg0 dataTask:(id)arg1 willCacheResponse:(id)arg2 completionHandler:(id)arg3 ;
-(void)URLSessionDidFinishEventsForBackgroundURLSession:(id)arg0 ;
-(void)URLSession:(id)arg0 downloadTask:(id)arg1 didFinishDownloadingToURL:(id)arg2 ;
-(void)URLSession:(id)arg0 downloadTask:(id)arg1 didWriteData:(NSInteger)arg2 totalBytesWritten:(NSInteger)arg3 totalBytesExpectedToWrite:(NSInteger)arg4 ;
-(void)URLSession:(id)arg0 downloadTask:(id)arg1 didResumeAtOffset:(NSInteger)arg2 expectedTotalBytes:(NSInteger)arg3 ;
-(id)initWithCoder:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
+(BOOL)supportsSecureCoding;


@end


#endif