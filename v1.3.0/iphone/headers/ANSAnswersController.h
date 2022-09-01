// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSANSWERSCONTROLLER_H
#define ANSANSWERSCONTROLLER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ANSMetadata;
@class ANSCrashMetadata;
@class ANSUploader;
@class ANSNetworkRetryHandler;
@class ANSEventFilter;
@class ANSSettings;
@class ANSTimer;
@class ANSFirebaseAnalyticsBridge;
@protocol ANSUploaderDelegate;

@interface ANSAnswersController : NSObject <ANSUploaderDelegate>



@property (readonly, nonatomic) NSOperationQueue *eventQueue; // ivar: _eventQueue
@property (readonly, nonatomic) NSString *rootEventDirectory; // ivar: _rootEventDirectory
@property (readonly, nonatomic) ANSMetadata *metadata; // ivar: _metadata
@property (readonly, nonatomic) ANSCrashMetadata *previousExecutionMetadata; // ivar: _previousExecutionMetadata
@property (readonly, nonatomic) ANSUploader *uploader; // ivar: _uploader
@property (readonly, nonatomic) ANSNetworkRetryHandler *networkRetryHandler; // ivar: _networkRetryHandler
@property (readonly, nonatomic) NSURL *currentLogURL; // ivar: _currentLogURL
@property (readonly, nonatomic) ANSEventFilter *eventFilter; // ivar: _eventFilter
@property (readonly, nonatomic) ANSSettings *settings; // ivar: _settings
@property (readonly, nonatomic) ANSTimer *flushTimer; // ivar: _flushTimer
@property (readonly, nonatomic) ANSFirebaseAnalyticsBridge *firebaseAnalyticsBridge; // ivar: _firebaseAnalyticsBridge
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithBetaToken:(id)arg0 ;
-(id)initWithBetaToken:(id)arg0 rootDirectory:(id)arg1 ;
-(id)eventDirectoryForRootDirectory:(id)arg0 ;
-(id)crashMetadataPathForRootDirectory:(id)arg0 ;
-(id)sharedFabricSDK;
-(id)uploaderWithQueue:(id)arg0 delegate:(id)arg1 ;
-(void)registerForApplicationLifecycleEvents;
-(void)applicationLifecycleEvent:(id)arg0 ;
-(id)generateNewLogPath;
-(void)fabricSettingsDidBecomeAvailable:(id)arg0 ;
-(void)initializeSettingsIfNeededWithFabricSettings:(id)arg0 ;
-(void)setupFlushTimer;
-(void)removeAllLogs;
-(id)replacePreviousExecutionMetadataWithCurrentMetadata:(id)arg0 inRootDirectory:(id)arg1 ;
-(void)logEvent:(id)arg0 ;
-(BOOL)shouldLogEvent;
-(void)logCrashEvent:(id)arg0 ;
-(void)enqueueEvent:(id)arg0 ;
-(void)logEventToFirebase:(id)arg0 ;
-(BOOL)shouldSubmitLogAtURL:(id)arg0 ;
-(void)rotateAndSubmitCurrentLog;
-(id)operationsForUncompressedLog:(id)arg0 ;
-(id)operationsForCompressedLog:(id)arg0 ;
-(id)uploadOperationForFileAtURL:(id)arg0 withBoundary:(id)arg1 ;
-(void)cleanupAndProcessExistingFiles;
-(void)uploadAllMultipartFiles;
-(void)uploadMultipartFiles:(id)arg0 ;
-(id)boundaryFromURL:(id)arg0 ;
-(id)multipartMimeURLWithBoundary:(id)arg0 ;
-(id)uploader:(id)arg0 filePathForUniqueName:(id)arg1 ;
-(void)uploader:(id)arg0 didFinishUploadWithUniqueName:(id)arg1 error:(id)arg2 ;
-(void)uploader:(id)arg0 session:(id)arg1 didReceiveChallenge:(id)arg2 completionHandler:(id)arg3 ;
-(void)uploader:(id)arg0 completedRequest:(id)arg1 withResponse:(id)arg2 uniqueName:(id)arg3 error:(id)arg4 completionHandler:(id)arg5 ;
+(id)rootDirectory;


@end


#endif