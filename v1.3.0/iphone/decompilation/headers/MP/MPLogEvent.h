// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPLOGEVENT_H
#define MPLOGEVENT_H


#import <Foundation/Foundation.h>


@interface MPLogEvent : NSObject

@property (readonly, copy, nonatomic) NSString *message; // ivar: _message
@property (readonly, nonatomic) NSUInteger logLevel; // ivar: _logLevel


-(id)initWithMessage:(id)arg0 ;
-(id)initWithMessage:(id)arg0 level:(NSUInteger)arg1 ;
+(id)javascriptConsoleLogWithMessage:(id)arg0 ;
+(id)consentSyncAttempted;
+(id)consentSyncCompletedWithMessage:(id)arg0 ;
+(id)consentSyncFailedWithError:(id)arg0 ;
+(id)consentUpdatedTo:(NSInteger)arg0 from:(NSInteger)arg1 reason:(id)arg2 canCollectPersonalInfo:(BOOL)arg3 ;
+(id)consentShouldShowDialog;
+(id)consentDialogLoadAttempted;
+(id)consentDialogLoadSuccess;
+(id)consentDialogLoadFailedWithError:(id)arg0 ;
+(id)consentDialogShowAttempted;
+(id)consentDialogShowSuccess;
+(id)consentDialogShowFailedWithError:(id)arg0 ;
+(id)sdkInitializedWithNetworks:(id)arg0 ;
+(id)adLoadAttemptForAdapter:(id)arg0 dspCreativeId:(id)arg1 dspName:(id)arg2 ;
+(id)adLoadSuccessForAdapter:(id)arg0 ;
+(id)adLoadFailedForAdapter:(id)arg0 error:(id)arg1 ;
+(id)adShowAttemptForAdapter:(id)arg0 ;
+(id)adShowSuccessForAdapter:(id)arg0 ;
+(id)adShowFailedForAdapter:(id)arg0 error:(id)arg1 ;
+(id)adWillPresentModalForAdapter:(id)arg0 ;
+(id)adDidDismissModalForAdapter:(id)arg0 ;
+(id)adTappedForAdapter:(id)arg0 ;
+(id)adWillAppearForAdapter:(id)arg0 ;
+(id)adDidAppearForAdapter:(id)arg0 ;
+(id)adWillDisappearForAdapter:(id)arg0 ;
+(id)adDidDisappearForAdapter:(id)arg0 ;
+(id)adWillLeaveApplicationForAdapter:(id)arg0 ;
+(id)adRequestedWithRequest:(id)arg0 ;
+(id)adRequestReceivedResponse:(id)arg0 ;
+(id)adLoadAttempt;
+(id)adShowAttempt;
+(id)adShowSuccess;
+(id)adShowFailedWithError:(id)arg0 ;
+(id)adDidLoad;
+(id)adFailedToLoadWithError:(id)arg0 ;
+(id)adExpiredWithTimeInterval:(CGFloat)arg0 ;
+(id)adWillPresentModal;
+(id)adDidDismissModal;
+(id)adTapped;
+(id)adWillAppear;
+(id)adDidAppear;
+(id)adWillDisappear;
+(id)adDidDisappear;
+(id)adShouldRewardUserWithReward:(id)arg0 ;
+(id)adWillLeaveApplication;
+(id)error:(id)arg0 message:(id)arg1 ;
+(id)eventWithMessage:(id)arg0 level:(NSUInteger)arg1 ;


@end


#endif