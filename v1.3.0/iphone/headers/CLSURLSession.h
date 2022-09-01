// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSURLSESSION_H
#define CLSURLSESSION_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol CLSURLSessionDownloadDelegate;
@protocol NSURLSessionDelegate;

@interface CLSURLSession : NSObject <CLSURLSessionDownloadDelegate>

 {
    NSMutableSet *_taskSet;
    NSObject<OS_dispatch_queue> *_queue;
}


@property (retain, nonatomic) NSOperationQueue *delegateQueue; // ivar: _delegateQueue
@property (retain, nonatomic) NSObject<NSURLSessionDelegate> *delegate; // ivar: _delegate
@property (copy, nonatomic) NSURLSessionConfiguration *configuration; // ivar: _configuration
@property (copy, nonatomic) NSString *sessionDescription; // ivar: _sessionDescription
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)invalidateAndCancel;
-(void)finishTasksAndInvalidate;
-(void)getTasksWithCompletionHandler:(id)arg0 ;
-(void)removeTaskFromSet:(id)arg0 ;
-(void)configureTask:(id)arg0 withRequest:(id)arg1 block:(id)arg2 ;
-(BOOL)shouldInvokeDelegateSelector:(SEL)arg0 forTask:(id)arg1 ;
-(id)uploadTaskWithRequest:(id)arg0 fromFile:(id)arg1 ;
-(id)downloadTaskWithRequest:(id)arg0 ;
-(id)downloadTaskWithURL:(id)arg0 ;
-(id)dataTaskWithRequest:(id)arg0 completionHandler:(id)arg1 ;
-(id)dataTaskWithRequest:(id)arg0 ;
-(id)uploadTaskWithRequest:(id)arg0 fromFile:(id)arg1 completionHandler:(id)arg2 ;
-(id)downloadTaskWithRequest:(id)arg0 completionHandler:(id)arg1 ;
-(id)task:(id)arg0 willPerformHTTPRedirection:(id)arg1 newRequest:(id)arg2 ;
-(void)task:(id)arg0 didCompleteWithError:(id)arg1 ;
-(void)task:(id)arg0 didReceiveResponse:(id)arg1 ;
-(void)task:(id)arg0 didReceiveData:(id)arg1 ;
-(void)downloadTask:(id)arg0 didFinishDownloadingToURL:(id)arg1 ;
+(BOOL)NSURLSessionShouldBeUsed;
+(id)sessionWithConfiguration:(id)arg0 ;
+(id)sessionWithConfiguration:(id)arg0 delegate:(id)arg1 delegateQueue:(id)arg2 ;
+(id)newDefaultDelegateQueue;


@end


#endif