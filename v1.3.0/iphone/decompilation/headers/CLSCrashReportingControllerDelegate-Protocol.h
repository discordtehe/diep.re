// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol CLSCrashReportingControllerDelegate


-(BOOL)shouldInstallCrashCallback;
-(void)detectedCrash;
-(BOOL)reportingControllerCanUseBackgroundSessions:(id)arg0 ;
-(BOOL)reportingControllerMustInformDelegateOfReports:(id)arg0 ;
-(void)reportingController:(id)arg0 didDetectReportForLastExecution:(id)arg1 completionHandler:(id)arg2 ;
-(void)reportingController:(id)arg0 internalDidDetectReportForLastExecution:(id)arg1 ;
-(BOOL)reportingController:(id)arg0 ensureDeliveryOfUnixSignal:(int)arg1 ;
-(id)APIKeyForCrashReportingController:(id)arg0 ;
-(id)installIDForCrashReportingController:(id)arg0 ;
-(BOOL)isFirstInstallForCrashReportingController:(id)arg0 ;
-(id)settingsForCrashReportingController:(id)arg0 ;

@end

