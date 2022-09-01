// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSBETACONTROLLER_H
#define CLSBETACONTROLLER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FABNetworkClient;
@class CLSBetaUpdate;
@protocol NSURLSessionDelegate;
@protocol CLSBetaControllerDelegate;

@interface CLSBetaController : NSObject <NSURLSessionDelegate>

 {
    NSString *_betaToken;
}


@property (readonly, nonatomic) FABNetworkClient *networkClient; // ivar: _networkClient
@property (retain, nonatomic) CLSBetaUpdate *activeUpdate; // ivar: _activeUpdate
@property (retain, nonatomic) NSTimer *checkSuspensionTimer; // ivar: _checkSuspensionTimer
@property (nonatomic) BOOL checksSuspended; // ivar: _checksSuspended
@property (nonatomic) BOOL retrying; // ivar: _retrying
@property (readonly, nonatomic) NSObject<OS_dispatch_queue> *queue; // ivar: _queue
@property (weak, nonatomic) NSObject<CLSBetaControllerDelegate> *delegate; // ivar: _delegate
@property (readonly, copy, nonatomic) NSString *betaToken;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithDelegate:(id)arg0 ;
-(BOOL)start;
-(void)dealloc;
-(id)settings;
-(id)betaUpdateSuspendDurationSecs;
-(id)betaEndpoint;
-(id)appBundleIdentifier;
-(id)appBuildVersion;
-(id)appDisplayVersion;
-(id)appInstanceIdentifier;
-(id)appInstallationSource;
-(id)APIKey;
-(id)betaUpdateURL;
-(void)checkForUpdate;
-(void)maybeGetUpdate:(id)arg0 ;
-(void)loadUpdateWithCompletionBlock:(id)arg0 ;
-(void)handledCompletedBetaRequestWithData:(id)arg0 error:(id)arg1 completionBlock:(id)arg2 ;
-(id)updateWithData:(id)arg0 error:(*id)arg1 ;
-(void)temporarilySuspendChecks;
-(void)allowChecks;
-(void)applicationWillEnterForeground;
-(BOOL)shouldGetUpdates;
-(void)didGetUpdate:(id)arg0 ;
-(void)showBetaAlertForUpdate:(id)arg0 ;
-(void)fabricSettingsDownloaded:(id)arg0 ;
-(void)applicationWillEnterForeground:(id)arg0 ;
-(void)alertView:(id)arg0 clickedButtonAtIndex:(NSInteger)arg1 ;
+(BOOL)isBetaSupported;
+(id)pinnnedCertificates;


@end


#endif