// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CRASHLYTICS_H
#define CRASHLYTICS_H

@protocol CrashlyticsDelegate;

#import <Foundation/Foundation.h>

@class CLSCrashReportingController;
@class CLSBetaController;
@protocol FABKit;
@protocol CLSCrashReportingControllerDelegate;
@protocol CLSBetaControllerDelegate;
@protocol WKScriptMessageHandler;

@interface Crashlytics : NSObject <FABKit, CLSCrashReportingControllerDelegate, CLSBetaControllerDelegate, WKScriptMessageHandler>

 {
    id<CrashlyticsDelegate> *_delegate;
    CLSCrashReportingController *_crashReportingController;
}


@property (readonly, nonatomic) CLSBetaController *betaController; // ivar: _betaController
@property (readonly, copy, nonatomic) NSString *APIKey;
@property (readonly, copy, nonatomic) NSString *version;
@property (nonatomic) BOOL debugMode;
@property (nonatomic) NSObject<CrashlyticsDelegate> *delegate;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithSuper;
-(void)start;
-(id)bundleIdentifier;
-(id)kitInfo;
-(void)setKitInfo:(id)arg0 ;
-(id)installID;
-(BOOL)isFirstInstall;
-(id)settingsDictionary;
-(BOOL)isCrashlyticsStarted;
-(void)crash;
-(void)throwException;
-(void)setUserIdentifier:(id)arg0 ;
-(void)setUserName:(id)arg0 ;
-(void)setUserEmail:(id)arg0 ;
-(void)setObjectValue:(id)arg0 forKey:(id)arg1 ;
-(void)setIntValue:(int)arg0 forKey:(id)arg1 ;
-(void)setBoolValue:(BOOL)arg0 forKey:(id)arg1 ;
-(void)setFloatValue:(float)arg0 forKey:(id)arg1 ;
-(id)developmentPlatformName;
-(void)setDevelopmentPlatformName:(id)arg0 ;
-(id)developmentPlatformVersion;
-(void)setDevelopmentPlatformVersion:(id)arg0 ;
-(void)recordError:(id)arg0 ;
-(void)recordError:(id)arg0 withAdditionalUserInfo:(id)arg1 ;
-(void)recordCustomExceptionName:(id)arg0 reason:(id)arg1 frameArray:(id)arg2 ;
-(void)monitorErrorsForUIWebView:(id)arg0 ;
-(BOOL)handleWebView:(id)arg0 shouldStartLoadWithRequest:(id)arg1 navigationType:(NSInteger)arg2 ;
-(void)monitorErrorsForWKWebViewConfiguration:(id)arg0 ;
-(void)warnDelegateAboutMethods;
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
-(id)APIKeyForBetaController:(id)arg0 ;
-(id)settingsForBetaController:(id)arg0 ;
-(void)userContentController:(id)arg0 didReceiveScriptMessage:(id)arg1 ;
-(void)logEvent:(id)arg0 ;
-(void)logEvent:(id)arg0 attributes:(id)arg1 ;
+(id)sharedInstance;
+(id)bundleIdentifier;
+(id)kitDisplayVersion;
+(id)kitBuildVersion;
+(void)initializeIfNeeded;
+(void)disableUninitializedKitMessaging;
+(id)startWithAPIKey:(id)arg0 ;
+(id)startWithAPIKey:(id)arg0 delegate:(id)arg1 ;
+(id)startWithAPIKey:(id)arg0 afterDelay:(CGFloat)arg1 ;
+(id)startWithAPIKey:(id)arg0 delegate:(id)arg1 afterDelay:(CGFloat)arg2 ;
+(void)setUserIdentifier:(id)arg0 ;
+(void)setUserName:(id)arg0 ;
+(void)setUserEmail:(id)arg0 ;
+(void)setObjectValue:(id)arg0 forKey:(id)arg1 ;
+(void)setIntValue:(int)arg0 forKey:(id)arg1 ;
+(void)setBoolValue:(BOOL)arg0 forKey:(id)arg1 ;
+(void)setFloatValue:(float)arg0 forKey:(id)arg1 ;
+(void)setDevelopmentPlatformName:(id)arg0 ;
+(void)setDevelopmentPlatformVersion:(id)arg0 ;
+(void)logEvent:(id)arg0 ;
+(void)logEvent:(id)arg0 attributes:(id)arg1 ;


@end


#endif