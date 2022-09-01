// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FABONBOARDINGOPERATION_H
#define FABONBOARDINGOPERATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FABNetworkOperation;
@class FABApplicationIdentifierModel;
@class FABNetworkClient;
@protocol FABOnboardingOperationDelegate;

@interface FABOnboardingOperation : FABNetworkOperation

@property (nonatomic) BOOL shouldCreate; // ivar: _shouldCreate
@property (readonly, nonatomic) FABApplicationIdentifierModel *appIdentifierModel; // ivar: _appIdentifierModel
@property (readonly, nonatomic) NSString *appEndpoint; // ivar: _appEndpoint
@property (readonly, nonatomic) NSObject<FABOnboardingOperationDelegate> *delegate; // ivar: _delegate
@property (readonly, weak, nonatomic) FABNetworkClient *networkClient; // ivar: _networkClient
@property (readonly, copy, nonatomic) NSDictionary *kitVersionsByKitBundleIdentifier; // ivar: _kitVersionsByKitBundleIdentifier
@property (readonly, nonatomic) NSError *error; // ivar: _error


-(id)initWithAPIKey:(id)arg0 ;
-(id)initWithDelegate:(id)arg0 shouldCreate:(BOOL)arg1 APIKey:(id)arg2 kitVersionsByKitBundleIdentifier:(id)arg3 appIdentifierModel:(id)arg4 endpointString:(id)arg5 networkClient:(id)arg6 ;
-(void)main;
-(void)beginAppConfigure;
-(id)appBundleIdentifier;
-(id)appPlatform;
-(id)appName;
-(id)appBuildVersion;
-(id)appDisplayVersion;
-(id)appInstallSource;
-(id)errorForCode:(NSUInteger)arg0 userInfo:(id)arg1 ;
-(id)appCreateURL;
-(id)appUpdateURL;
-(id)onboardingRequestForAppCreate:(BOOL)arg0 ;


@end


#endif