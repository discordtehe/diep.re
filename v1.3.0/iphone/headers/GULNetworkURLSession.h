// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GULNETWORKURLSESSION_H
#define GULNETWORKURLSESSION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSURLSessionDelegate;
@protocol NSURLSessionTaskDelegate;
@protocol NSURLSessionDownloadDelegate;
@protocol GULNetworkLoggerDelegate;

@interface GULNetworkURLSession : NSObject <NSURLSessionDelegate, NSURLSessionTaskDelegate, NSURLSessionDownloadDelegate>

 {
    id *_completionHandler;
    NSString *_sessionID;
    NSURLSessionConfiguration *_sessionConfig;
    NSURLSession *_URLSession;
    NSURL *_networkDirectoryURL;
    NSData *_downloadedData;
    NSURL *_uploadingFileURL;
    NSURLRequest *_request;
}


@property (nonatomic, getter=isBackgroundNetworkEnabled) BOOL backgroundNetworkEnabled; // ivar: _backgroundNetworkEnabled
@property (weak, nonatomic) NSObject<GULNetworkLoggerDelegate> *loggerDelegate; // ivar: _loggerDelegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithNetworkLoggerDelegate:(id)arg0 ;
-(id)sessionIDFromAsyncPOSTRequest:(id)arg0 completionHandler:(id)arg1 ;
-(id)sessionIDFromAsyncGETRequest:(id)arg0 completionHandler:(id)arg1 ;
-(void)URLSession:(id)arg0 downloadTask:(id)arg1 didFinishDownloadingToURL:(id)arg2 ;
-(void)URLSessionDidFinishEventsForBackgroundURLSession:(id)arg0 ;
-(void)URLSession:(id)arg0 task:(id)arg1 didCompleteWithError:(id)arg2 ;
-(void)URLSession:(id)arg0 task:(id)arg1 didReceiveChallenge:(id)arg2 completionHandler:(id)arg3 ;
// -(void)addSystemCompletionHandler:(id)arg0 forSession:(unk)arg1  ;
-(void)callSystemCompletionHandler:(id)arg0 ;
-(void)setSessionID:(id)arg0 ;
-(id)backgroundSessionConfigWithSessionID:(id)arg0 ;
-(void)maybeRemoveTempFilesAtURL:(id)arg0 expiringTime:(CGFloat)arg1 ;
-(void)removeTempItemAtURL:(id)arg0 ;
-(id)temporaryFilePathWithSessionID:(id)arg0 ;
-(BOOL)ensureTemporaryDirectoryExists;
-(void)excludeFromBackupForURL:(id)arg0 ;
-(void)URLSession:(id)arg0 task:(id)arg1 willPerformHTTPRedirection:(id)arg2 newRequest:(id)arg3 completionHandler:(id)arg4 ;
// -(void)callCompletionHandler:(id)arg0 withResponse:(unk)arg1 data:(id)arg2 error:(id)arg3  ;
-(void)populateSessionConfig:(id)arg0 withRequest:(id)arg1 ;
+(void)handleEventsForBackgroundURLSessionID:(id)arg0 completionHandler:(id)arg1 ;
+(id)fetcherWithSessionIdentifier:(id)arg0 ;
+(id)sessionIDToFetcherMap;
+(id)sessionIDToFetcherMapReadWriteLock;
+(id)sessionIDToSystemCompletionHandlerDictionary;
+(void)setSessionInFetcherMap:(id)arg0 forSessionID:(id)arg1 ;
+(id)sessionFromFetcherMapForSessionID:(id)arg0 ;


@end


#endif