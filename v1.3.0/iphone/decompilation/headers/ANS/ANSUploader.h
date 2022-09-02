// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSUPLOADER_H
#define ANSUPLOADER_H


#import <Foundation/Foundation.h>

@protocol NSURLSessionDelegate;
@protocol ANSUploaderDelegate;

@interface ANSUploader : NSObject <NSURLSessionDelegate>

 {
    NSURLSession *_session;
}


@property (readonly, nonatomic) NSOperationQueue *operationQueue; // ivar: _operationQueue
@property (readonly, nonatomic) BOOL lowPowerMode;
@property (weak, nonatomic) NSObject<ANSUploaderDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic) BOOL supportsBackgroundRequests;
@property (nonatomic) CGFloat defaultUploadTimeout; // ivar: _defaultUploadTimeout
@property (nonatomic) CGFloat lowPowerUploadTimeout; // ivar: _lowPowerUploadTimeout
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithQueue:(id)arg0 delegate:(id)arg1 ;
-(void)powerStageChanged:(id)arg0 ;
-(BOOL)supportsPowerStateNotifications;
-(BOOL)shouldUseBackgroundRequests;
-(void)attemptToReconnectBackgroundSessionWithCompletionBlock:(id)arg0 ;
-(Class)urlSessionClass;
-(Class)urlSessionConfigurationClass;
-(id)createBackgroundSessionConfiguration;
-(id)session;
-(void)startUploadRequest:(id)arg0 filePath:(id)arg1 uniqueName:(id)arg2 ;
-(id)errorWithCode:(NSInteger)arg0 userInfo:(id)arg1 ;
-(id)errorUserInfoWithFilePath:(id)arg0 uniqueName:(id)arg1 ;
-(void)startNewUploadRequest:(id)arg0 filePath:(id)arg1 uniqueName:(id)arg2 ;
-(BOOL)taskArray:(id)arg0 hasTaskMatchingDescription:(id)arg1 ;
-(void)checkSession:(id)arg0 forTasksMatchingDescription:(id)arg1 completionBlock:(id)arg2 ;
-(void)checkForExistingTaskMatchingDescription:(id)arg0 completionBlock:(id)arg1 ;
-(void)restartTask:(id)arg0 ;
-(void)handleTask:(id)arg0 completedWithError:(id)arg1 ;
-(void)handleTaskDescription:(id)arg0 completedWithError:(id)arg1 ;
-(void)URLSession:(id)arg0 didBecomeInvalidWithError:(id)arg1 ;
-(void)URLSession:(id)arg0 didReceiveChallenge:(id)arg1 completionHandler:(id)arg2 ;
-(void)URLSession:(id)arg0 task:(id)arg1 didCompleteWithError:(id)arg2 ;


@end


#endif