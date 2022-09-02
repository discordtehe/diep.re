// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FABRIC_H
#define FABRIC_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FABSettingsOnboardingManager;
@class FABApplicationIdentifierModel;

@interface Fabric : NSObject

@property (copy, nonatomic) NSString *APIKey; // ivar: _APIKey
@property (readonly, copy, nonatomic) NSString *installID; // ivar: _installID
@property (readonly, nonatomic) BOOL isFirstInstall; // ivar: _isFirstInstall
@property (readonly, copy, nonatomic) NSString *executionIdentifier; // ivar: _executionIdentifier
@property (copy, nonatomic) NSString *advertisingToken; // ivar: _advertisingToken
@property (readonly, nonatomic) NSDictionary *settings;
@property (readonly, nonatomic) NSString *instanceIdentifier;
@property (copy, nonatomic) NSArray *kitClasses; // ivar: _kitClasses
@property (copy, nonatomic) NSDictionary *fabricConfig; // ivar: _fabricConfig
@property (retain, nonatomic) FABSettingsOnboardingManager *settingsAndOnboardingManager; // ivar: _settingsAndOnboardingManager
@property (readonly, nonatomic) FABApplicationIdentifierModel *applicationIdentifierModel; // ivar: _applicationIdentifierModel
@property (nonatomic) NSUInteger installationMode; // ivar: _installationMode
@property (copy, nonatomic) NSString *firebaseGoogleAppId; // ivar: _firebaseGoogleAppId
@property (nonatomic) BOOL debug; // ivar: _debug


-(id)init;
-(void)onboardAppAndDownloadSettings;
-(id)kitVersionsByKitBundleIdentifier;
-(id)readInstallationUUID;
-(id)generateInstallationUUID;
-(id)validFabricConfigFromInfoPlist:(id)arg0 ;
-(id)configurationDictionaryForKit:(id)arg0 ;
-(BOOL)firebaseMode;
-(BOOL)shouldAutoInitialize:(id)arg0 ;
-(void)regenerateInstallIDIfNeededWithManager:(Class)arg0 ;
+(id)sharedSDK;
+(id)with:(id)arg0 ;
+(id)convertToKitClassesIfNeeded:(id)arg0 ;
+(void)validateFABKitConformance:(id)arg0 ;
+(id)kitClassesByAddingDigitsIfFound:(id)arg0 ;
+(id)kitClassesByAddingAnswersIfFound:(id)arg0 ;
+(id)kitClassesByEnsuringAppseeIsFirst:(id)arg0 ;
+(id)kitClassesByAddingAdMobIfFound:(id)arg0 ;
+(void)disableUninitializedKitMessagingForKit:(Class)arg0 ;
+(void)initializeKit:(Class)arg0 ;
+(void)setCrashlyticsCollectionEnabled:(BOOL)arg0 ;
+(BOOL)isCrashlyticsCollectionEnabled;
+(id)configurationDictionaryForKitClass:(Class)arg0 ;
+(void)load;
+(void)autoInitialize:(id)arg0 ;


@end


#endif