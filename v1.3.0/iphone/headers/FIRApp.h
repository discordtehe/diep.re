// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FIRAPP_H
#define FIRAPP_H


#import <Foundation/Foundation.h>

@class FIRComponentContainer;
@class FIROptions;

@interface FIRApp : NSObject

@property (readonly, nonatomic) BOOL isDefaultApp; // ivar: _isDefaultApp
@property (retain, nonatomic) FIRComponentContainer *container; // ivar: _container
@property (readonly, copy, nonatomic) NSString *name; // ivar: _name
@property (readonly, copy, nonatomic) FIROptions *options; // ivar: _options
@property (nonatomic, getter=isDataCollectionDefaultEnabled) BOOL dataCollectionDefaultEnabled;


-(void)deleteApp:(id)arg0 ;
-(id)initInstanceWithName:(id)arg0 options:(id)arg1 ;
-(BOOL)configureCore;
-(void)checkExpectedBundleID;
-(BOOL)isAppIDValid;
-(id)expectedBundleID;
-(void)clearDataCollectionSwitchFromUserDefaults;
-(void)sendLogsWithServiceName:(id)arg0 version:(id)arg1 error:(id)arg2 ;
+(void)configure;
+(void)configureWithOptions:(id)arg0 ;
+(void)configureWithName:(id)arg0 options:(id)arg1 ;
+(id)defaultApp;
+(id)appNamed:(id)arg0 ;
+(id)allApps;
+(void)resetApps;
+(void)addAppToAppDictionary:(id)arg0 ;
+(void)sendNotificationsToSDKs:(id)arg0 ;
+(id)errorForMissingOptions;
+(id)errorForSubspecConfigurationFailureWithDomain:(id)arg0 errorCode:(NSInteger)arg1 service:(id)arg2 reason:(id)arg3 ;
+(id)errorForInvalidAppID;
+(void)registerLibrary:(id)arg0 withVersion:(id)arg1 ;
+(void)registerInternalLibrary:(Class)arg0 withName:(id)arg1 withVersion:(id)arg2 ;
+(id)firebaseUserAgent;
+(BOOL)validateAppID:(id)arg0 ;
+(id)actualBundleID;
+(BOOL)validateAppIDFormat:(id)arg0 withVersion:(id)arg1 ;
+(BOOL)validateAppIDFingerprint:(id)arg0 withVersion:(id)arg1 ;
+(id)readDataCollectionSwitchFromUserDefaultsForApp:(id)arg0 ;
+(id)readDataCollectionSwitchFromPlist;


@end


#endif