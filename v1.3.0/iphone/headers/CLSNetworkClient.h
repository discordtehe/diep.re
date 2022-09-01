// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSNETWORKCLIENT_H
#define CLSNETWORKCLIENT_H


#import <Foundation/Foundation.h>

@class FABCertificatePinner;
@class CLSFileManager;
@protocol NSURLSessionDelegate;
@protocol CLSNetworkClientDelegate;

@interface CLSNetworkClient : NSObject <NSURLSessionDelegate>

 {
    NSURLSession *_session;
}


@property (readonly, nonatomic) FABCertificatePinner *certPinner; // ivar: _certPinner
@property (copy, nonatomic) id *backgroundCompletionHandler; // ivar: _backgroundCompletionHandler
@property (readonly, nonatomic) NSURLSession *session;
@property (nonatomic) BOOL canUseBackgroundSession; // ivar: _canUseBackgroundSession
@property (retain, nonatomic) CLSFileManager *fileManager; // ivar: _fileManager
@property (weak, nonatomic) NSObject<CLSNetworkClientDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic) NSOperationQueue *operationQueue; // ivar: _operationQueue
@property (readonly, nonatomic) BOOL supportsBackgroundRequests;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithQueue:(id)arg0 fileManager:(id)arg1 delegate:(id)arg2 ;
-(BOOL)NSURLSessionAvailable;
-(void)attemptToReconnectBackgroundSessionWithCompletionBlock:(id)arg0 ;
-(void)startUploadRequest:(id)arg0 filePath:(id)arg1 immediately:(BOOL)arg2 ;
-(void)startImmediateUploadRequest:(id)arg0 filePath:(id)arg1 ;
-(void)startNewUploadRequest:(id)arg0 filePath:(id)arg1 ;
-(id)rootPath;
-(id)absolutePathForRelativeTaskPath:(id)arg0 ;
-(id)relativeTaskPathForAbsolutePath:(id)arg0 ;
-(BOOL)taskArray:(id)arg0 hasTaskMatchingDescription:(id)arg1 ;
-(void)checkSession:(id)arg0 forTasksMatchingDescription:(id)arg1 completionBlock:(id)arg2 ;
-(void)checkForExistingTaskMatchingDescription:(id)arg0 completionBlock:(id)arg1 ;
-(void)runAfterRetryValueFromResponse:(id)arg0 block:(id)arg1 ;
-(void)restartTask:(id)arg0 ;
-(void)handleTask:(id)arg0 completedWithError:(id)arg1 ;
-(void)handleTaskDescription:(id)arg0 completedWithError:(id)arg1 ;
-(void)URLSession:(id)arg0 didBecomeInvalidWithError:(id)arg1 ;
-(void)URLSession:(id)arg0 didReceiveChallenge:(id)arg1 completionHandler:(id)arg2 ;
-(void)URLSessionDidFinishEventsForBackgroundURLSession:(id)arg0 ;
-(void)URLSession:(id)arg0 task:(id)arg1 didCompleteWithError:(id)arg2 ;
+(id)pinner;


@end


#endif