// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FABSETTINGSONBOARDINGMANAGER_H
#define FABSETTINGSONBOARDINGMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FABSettings;
@class FABOnboardingOperation;
@class FABApplicationIdentifierModel;
@class FABNetworkClient;
@protocol FABDownloadAndSaveSettingsOperationDelegate;
@protocol FABOnboardingOperationDelegate;

@interface FABSettingsOnboardingManager : NSObject <FABDownloadAndSaveSettingsOperationDelegate, FABOnboardingOperationDelegate>



@property (retain, nonatomic) FABSettings *settingsModel; // ivar: _settingsModel
@property (retain, nonatomic) FABOnboardingOperation *onboardingOperation; // ivar: _onboardingOperation
@property (retain, nonatomic) FABApplicationIdentifierModel *appIdentifierModel; // ivar: _appIdentifierModel
@property (retain, nonatomic) NSFileManager *fileManager; // ivar: _fileManager
@property (nonatomic) BOOL hasAttemptedAppConfigure; // ivar: _hasAttemptedAppConfigure
@property (retain, nonatomic) NSDictionary *configuration; // ivar: _configuration
@property (retain, nonatomic) NSDictionary *defaultConfiguration; // ivar: _defaultConfiguration
@property (copy, nonatomic) NSString *APIKey; // ivar: _APIKey
@property (copy, nonatomic) NSDictionary *kitVersionsByKitBundleIdentifier; // ivar: _kitVersionsByKitBundleIdentifier
@property (readonly, nonatomic) FABNetworkClient *networkClient; // ivar: _networkClient
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithApplicationIdentifierModel:(id)arg0 ;
-(void)beginSettingsAndOnboardingOperationsWithAPIKey:(id)arg0 kitVersionsByKitBundleIdentifier:(id)arg1 ;
-(void)beginSettingsDownload;
-(void)beginOnboarding:(BOOL)arg0 endpointString:(id)arg1 ;
-(id)advertisingToken;
-(void)finishNetworkingSession;
-(id)valueForConfigurationKey:(id)arg0 ;
-(void)onboardingOperation:(id)arg0 didCompleteAppCreationWithError:(id)arg1 ;
-(void)onboardingOperation:(id)arg0 didCompleteAppUpdateWithError:(id)arg1 ;
-(void)operation:(id)arg0 didDownloadAndSaveSettingsWithError:(id)arg1 ;
-(id)settingsURL;
-(id)settingsPath;
-(void)postSettingsDownloadCompletedNotification;
+(id)settingsDirectoryPath;


@end


#endif