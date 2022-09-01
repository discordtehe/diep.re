// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSCRASHREPORTINGCONTROLLER_H
#define CLSCRASHREPORTINGCONTROLLER_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class CLSFileManager;
@class CLSReportsController;
@class CLSSettings;
@class CLSInternalReport;
@class CLSNetworkClient;
@protocol CLSNetworkClientDelegate;
@protocol CLSReportsControllerDelegate;
@protocol CLSCrashReportingControllerDelegate;

@interface CLSCrashReportingController : NSObject <CLSNetworkClientDelegate, CLSReportsControllerDelegate>

 {
    CLSFileManager *_fileMananger;
    CLSReportsController *_reportsController;
    CLSSettings *_settings;
    NSInteger _alwaysSendButtonIndex;
    UIAlertView *_crashReportSubmissionAlert;
    CLSInternalReport *_promptedReport;
    NSInteger _promptChoice;
    BOOL _registeredAnalyticsEventListener;
}


@property (retain, nonatomic) NSOperationQueue *operationQueue; // ivar: _operationQueue
@property (retain, nonatomic) CLSNetworkClient *networkClient; // ivar: _networkClient
@property (readonly, nonatomic) CLSReportsController *reportsController;
@property (retain, nonatomic) CLSFileManager *fileManager; // ivar: _fileManager
@property (weak, nonatomic) NSObject<CLSCrashReportingControllerDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithFileManager:(id)arg0 delegate:(id)arg1 ;
-(id)clientWithOperationQueue:(id)arg0 ;
-(BOOL)startWithProfilingMark:(NSUInteger)arg0 betaToken:(id)arg1 ;
-(BOOL)startCrashReporterWithAPIKey:(id)arg0 betaToken:(id)arg1 profilingMark:(NSUInteger)arg2 report:(id)arg3 ;
-(void)crashReportingSetupCompleted:(NSUInteger)arg0 ;
-(BOOL)checkPreconditions;
-(BOOL)firstInstall;
-(id)installIdentifier;
-(id)APIKey;
-(id)settings;
-(unsigned int)machExceptionMask;
-(void)deliverCrashDelegateCallback;
-(BOOL)attemptCurrentReportSubmission;
-(BOOL)potentiallySubmittableCrashOccurred;
-(void)checkForUserPromptSetting;
-(BOOL)packagingEnabled;
-(BOOL)canProcessUrgentReports;
-(BOOL)needsToPrompt;
-(id)bundleIdentifier;
-(BOOL)prepareForNewLaunch;
-(BOOL)installCrashReportingHandlers:(struct ? *)arg0 ;
-(id)setupCurrentReport;
-(void)processExistingReportPaths:(id)arg0 asUrgent:(BOOL)arg1 ;
-(void)processExistingActiveReportPath:(id)arg0 asUrgent:(BOOL)arg1 ;
-(void)handleDelegateCompletionForReport:(id)arg0 submit:(BOOL)arg1 ;
-(void)removeReport:(id)arg0 ;
-(void)handleContentsInOtherReportingDirectories;
-(void)handleExistingFilesInProcessing;
-(void)handleExistingFilesInPrepared;
-(void)uploadPreexistingFiles:(id)arg0 ;
-(void)retryUploadForReportAtPath:(id)arg0 ;
-(void)displayPermissionAlertForReport:(id)arg0 ;
-(void)setupAndDisplayAlertWithTitle:(id)arg0 message:(id)arg1 cancel:(id)arg2 send:(id)arg3 alwaysSend:(id)arg4 report:(id)arg5 ;
-(void)handlePromptCompleteForReport:(id)arg0 shouldSubmit:(BOOL)arg1 shouldMarkAlwaysSubmit:(BOOL)arg2 ;
-(void)alertViewCancel:(id)arg0 ;
-(void)alertView:(id)arg0 clickedButtonAtIndex:(NSInteger)arg1 ;
-(id)launchFailureMarkerPath;
-(BOOL)createLaunchFailureMarker;
-(BOOL)launchFailureMarkerPresent;
-(BOOL)removeLaunchFailureMarker;
-(BOOL)checkForAndCreateLaunchMarker;
-(void)registerAnalyticsEventListener;
-(void)setupStateNotifications;
-(void)captureInitialNotificationStates;
-(void)willBecomeActive:(id)arg0 ;
-(void)didBecomeInactive:(id)arg0 ;
-(void)didChangeOrientation:(id)arg0 ;
-(void)didChangeUIOrientation:(id)arg0 ;
-(void)fabricSettingsDownloaded:(id)arg0 ;
-(BOOL)networkClientCanUseBackgroundSessions:(id)arg0 ;
-(void)networkClient:(id)arg0 didFinishUploadWithPath:(id)arg1 error:(id)arg2 ;
-(id)settingsForReportsController:(id)arg0 ;
-(id)APIKeyForReportsController:(id)arg0 ;
-(id)bundleIdentifierForReportsController:(id)arg0 ;
-(void)reportsController:(id)arg0 didCompletePackageSubmission:(id)arg1 error:(id)arg2 ;
-(void)reportsControllerDidCompleteAllSubmissions:(id)arg0 ;


@end


#endif