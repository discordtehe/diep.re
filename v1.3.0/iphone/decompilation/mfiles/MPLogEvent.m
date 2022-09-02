@implementation MPLogEvent

-(void *)initWithMessage:(void *)arg2 {
    r0 = [self initWithMessage:arg2 level:0x14];
    return r0;
}

-(void *)initWithMessage:(void *)arg2 level:(unsigned long long)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r21 = arg2;
    r20 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            objc_storeStrong(r22 + 0x8, r21);
            *(r22 + 0x10) = r19;
    }
    [r20 release];
    r0 = r22;
    return r0;
}

+(void *)eventWithMessage:(void *)arg2 level:(unsigned long long)arg3 {
    r21 = [arg2 retain];
    r19 = [objc_alloc() initWithMessage:r21 level:arg3];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)error:(void *)arg2 message:(void *)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg3;
    r20 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [NSString stringWithFormat:r2];
            r29 = r29;
            r19 = [r0 retain];
    }
    else {
            r19 = @"";
    }
    r21 = @selector(stringWithFormat:);
    r23 = [[NSNumber numberWithInteger:[r20 code]] retain];
    r24 = [[r20 localizedDescription] retain];
    [r20 release];
    r20 = [objc_msgSend(@class(NSString), r21) retain];
    [r24 release];
    [r23 release];
    r21 = [objc_alloc() initWithMessage:r20];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)message {
    r0 = objc_getProperty(self, _cmd, 0x8, 0x0);
    return r0;
}

-(unsigned long long)logLevel {
    r0 = *(self + 0x10);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

+(void *)adRequestedWithRequest:(void *)arg2 {
    r19 = [[NSString stringWithFormat:@"Requesting an ad from Adserver: %@"] retain];
    r20 = [objc_alloc() initWithMessage:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)adRequestReceivedResponse:(void *)arg2 {
    r19 = [[NSString stringWithFormat:@"Adserver responded with:\n%@"] retain];
    r20 = [objc_alloc() initWithMessage:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)adLoadAttempt {
    r0 = objc_alloc();
    r0 = [r0 initWithMessage:@"Attempting to load ad" level:0x1e];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)adShowAttempt {
    r0 = objc_alloc();
    r0 = [r0 initWithMessage:@"Attempting to show ad" level:0x1e];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)adShowSuccess {
    r0 = objc_alloc();
    r0 = [r0 initWithMessage:@"Ad shown" level:0x1e];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)adShowFailedWithError:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = [[NSNumber numberWithInteger:[r0 code]] retain];
    r21 = [[r0 localizedDescription] retain];
    [r0 release];
    r19 = [[NSString stringWithFormat:@"Ad failed to show: (%@) %@"] retain];
    [r21 release];
    [r20 release];
    r20 = [objc_alloc() initWithMessage:r19 level:0x1e];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)adDidLoad {
    r0 = objc_alloc();
    r0 = [r0 initWithMessage:@"Ad loaded" level:0x1e];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)adExpiredWithTimeInterval:(double)arg2 {
    r19 = @class(NSString);
    r0 = @class(NSNumber);
    r1 = @selector(numberWithDouble:);
    asm { fdiv       d0, d0, d1 };
    r20 = [objc_msgSend(r0, r1) retain];
    r19 = [[r19 stringWithFormat:@"Ad expired since it was not shown within %@ minutes of it being loaded"] retain];
    [r20 release];
    r20 = [objc_alloc() initWithMessage:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)adFailedToLoadWithError:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = [[NSNumber numberWithInteger:[r0 code]] retain];
    r21 = [[r0 localizedDescription] retain];
    [r0 release];
    r19 = [[NSString stringWithFormat:@"Ad failed to load: (%@) %@"] retain];
    [r21 release];
    [r20 release];
    r20 = [objc_alloc() initWithMessage:r19 level:0x1e];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)adWillPresentModal {
    r0 = objc_alloc();
    r0 = [r0 initWithMessage:@"Ad will present modal"];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)adDidDismissModal {
    r0 = objc_alloc();
    r0 = [r0 initWithMessage:@"Ad did dismiss modal"];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)adTapped {
    r0 = objc_alloc();
    r0 = [r0 initWithMessage:@"Ad tapped"];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)adWillAppear {
    r0 = objc_alloc();
    r0 = [r0 initWithMessage:@"Ad will appear"];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)adDidAppear {
    r0 = objc_alloc();
    r0 = [r0 initWithMessage:@"Ad did appear"];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)adWillDisappear {
    r0 = objc_alloc();
    r0 = [r0 initWithMessage:@"Ad will disappear"];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)adDidDisappear {
    r0 = objc_alloc();
    r0 = [r0 initWithMessage:@"Ad did disappear"];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)adShouldRewardUserWithReward:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = [[r0 amount] retain];
    r22 = [[r0 currencyType] retain];
    [r0 release];
    r19 = [[NSString stringWithFormat:@"Should rewarded user with %@ %@"] retain];
    [r22 release];
    [r20 release];
    r20 = [objc_alloc() initWithMessage:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)adWillLeaveApplication {
    r0 = objc_alloc();
    r0 = [r0 initWithMessage:@"Ad will leave application"];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)adLoadAttemptForAdapter:(void *)arg2 dspCreativeId:(void *)arg3 dspName:(void *)arg4 {
    r31 = r31 - 0x70;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (r20 != 0x0) {
            r0 = [NSString stringWithFormat:r2];
            r29 = r29;
            r22 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [NSString stringWithFormat:r2];
                    r29 = r29;
                    r23 = [r0 retain];
            }
            else {
                    r23 = @"";
            }
    }
    else {
            r22 = @"";
            if (r21 == 0x0) {
                    r23 = @"";
            }
            else {
                    r0 = [NSString stringWithFormat:r2];
                    r29 = r29;
                    r23 = [r0 retain];
            }
    }
    r24 = [[NSString stringWithFormat:r2] retain];
    r25 = [objc_alloc() initWithMessage:r24];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r25 autorelease];
    return r0;
}

+(void *)adLoadSuccessForAdapter:(void *)arg2 {
    r19 = [[NSString stringWithFormat:@"Adapter %@ sucessfully loaded ad"] retain];
    r20 = [objc_alloc() initWithMessage:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)adLoadFailedForAdapter:(void *)arg2 error:(void *)arg3 {
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r22 = [[NSNumber numberWithInteger:[r0 code]] retain];
    r23 = [[r0 localizedDescription] retain];
    [r0 release];
    r20 = [[NSString stringWithFormat:@"Adapter %@ failed to load ad: (%@) %@"] retain];
    [r19 release];
    [r23 release];
    [r22 release];
    r19 = [objc_alloc() initWithMessage:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)adShowAttemptForAdapter:(void *)arg2 {
    r19 = [[NSString stringWithFormat:@"Adapter %@ attempting to show ad"] retain];
    r20 = [objc_alloc() initWithMessage:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)adShowSuccessForAdapter:(void *)arg2 {
    r19 = [[NSString stringWithFormat:@"Adapter %@ sucessfully showed ad"] retain];
    r20 = [objc_alloc() initWithMessage:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)adShowFailedForAdapter:(void *)arg2 error:(void *)arg3 {
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r22 = [[NSNumber numberWithInteger:[r0 code]] retain];
    r23 = [[r0 localizedDescription] retain];
    [r0 release];
    r20 = [[NSString stringWithFormat:@"Adapter %@ failed to show ad: (%@) %@"] retain];
    [r19 release];
    [r23 release];
    [r22 release];
    r19 = [objc_alloc() initWithMessage:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)adWillPresentModalForAdapter:(void *)arg2 {
    r19 = [[NSString stringWithFormat:@"Adapter ad from %@ will present modal"] retain];
    r20 = [objc_alloc() initWithMessage:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)adDidDismissModalForAdapter:(void *)arg2 {
    r19 = [[NSString stringWithFormat:@"Adapter ad from %@ did dismiss modal"] retain];
    r20 = [objc_alloc() initWithMessage:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)adTappedForAdapter:(void *)arg2 {
    r19 = [[NSString stringWithFormat:@"Adapter ad from %@ received tap event"] retain];
    r20 = [objc_alloc() initWithMessage:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)adWillAppearForAdapter:(void *)arg2 {
    r19 = [[NSString stringWithFormat:@"Adapter ad from %@ will appear"] retain];
    r20 = [objc_alloc() initWithMessage:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)adDidAppearForAdapter:(void *)arg2 {
    r19 = [[NSString stringWithFormat:@"Adapter ad from %@ did appear"] retain];
    r20 = [objc_alloc() initWithMessage:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)adWillDisappearForAdapter:(void *)arg2 {
    r19 = [[NSString stringWithFormat:@"Adapter ad from %@ will disappear"] retain];
    r20 = [objc_alloc() initWithMessage:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)adDidDisappearForAdapter:(void *)arg2 {
    r19 = [[NSString stringWithFormat:@"Adapter ad from %@ did disappear"] retain];
    r20 = [objc_alloc() initWithMessage:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)adWillLeaveApplicationForAdapter:(void *)arg2 {
    r19 = [[NSString stringWithFormat:@"Adapter ad from %@ will leave application"] retain];
    r20 = [objc_alloc() initWithMessage:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)sdkInitializedWithNetworks:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r21 = r0;
    r0 = [NSMutableArray arrayWithCapacity:[r0 count]];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r0 = [r0 retain];
    r19 = r0;
    var_28 = r0;
    [r21 enumerateObjectsUsingBlock:&var_48];
    [r21 release];
    if ([r19 count] != 0x0) {
            r0 = [r19 componentsJoinedByString:r2];
            r29 = r29;
            r20 = [r0 retain];
    }
    else {
            r20 = @"No adapters initialized";
    }
    r21 = [[NSString stringWithFormat:@"SDK initialized and ready to display ads.\n\tInitialized adapters:\n\t%@\n"] retain];
    r22 = [objc_alloc() initWithMessage:r21 level:0x1e];
    [r21 release];
    [r20 release];
    [var_28 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

+(void *)consentSyncAttempted {
    r0 = objc_alloc();
    r0 = [r0 initWithMessage:@"Attempting to synchronize consent state"];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)consentSyncFailedWithError:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = [[NSNumber numberWithInteger:[r0 code]] retain];
    r21 = [[r0 localizedDescription] retain];
    [r0 release];
    r19 = [[NSString stringWithFormat:@"Consent synchronization failed: (%@) %@"] retain];
    [r21 release];
    [r20 release];
    r20 = [objc_alloc() initWithMessage:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)consentSyncCompletedWithMessage:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r2 != 0x0) {
            r0 = [NSString stringWithFormat:r2];
            r29 = r29;
            r19 = [r0 retain];
    }
    else {
            r19 = @"";
    }
    r20 = [[NSString stringWithFormat:r2] retain];
    r21 = [objc_alloc() initWithMessage:r20];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)consentShouldShowDialog {
    r0 = objc_alloc();
    r0 = [r0 initWithMessage:@"Consent dialog should be shown"];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)consentDialogLoadSuccess {
    r0 = objc_alloc();
    r0 = [r0 initWithMessage:@"Consent dialog loaded"];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)consentDialogLoadAttempted {
    r0 = objc_alloc();
    r0 = [r0 initWithMessage:@"Attempting to load consent dialog"];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)consentUpdatedTo:(long long)arg2 from:(long long)arg3 reason:(void *)arg4 canCollectPersonalInfo:(bool)arg5 {
    r4 = arg4;
    r31 = r31 - 0x70;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg5;
    r22 = arg3;
    r23 = arg2;
    if (r4 != 0x0) {
            r0 = [NSString stringWithFormat:r2];
            r29 = r29;
            r19 = [r0 retain];
    }
    else {
            r19 = @"";
    }
    r23 = [[NSString stringFromConsentStatus:r23] retain];
    r0 = @class(NSString);
    r0 = [r0 stringFromConsentStatus:r22];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    r8 = @"not";
    if (r20 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"not";
            }
            else {
                    r8 = @"";
            }
    }
    r20 = [[NSString stringWithFormat:r2] retain];
    [r22 release];
    [r23 release];
    r21 = [objc_alloc() initWithMessage:r20];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)consentDialogShowAttempted {
    r0 = objc_alloc();
    r0 = [r0 initWithMessage:@"Attempting to show consent dialog"];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)consentDialogLoadFailedWithError:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = [[NSNumber numberWithInteger:[r0 code]] retain];
    r21 = [[r0 localizedDescription] retain];
    [r0 release];
    r19 = [[NSString stringWithFormat:@"Consent dialog failed to load: (%@) %@"] retain];
    [r21 release];
    [r20 release];
    r20 = [objc_alloc() initWithMessage:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)consentDialogShowSuccess {
    r0 = objc_alloc();
    r0 = [r0 initWithMessage:@"Consent dialog shown"];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)consentDialogShowFailedWithError:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = [[NSNumber numberWithInteger:[r0 code]] retain];
    r21 = [[r0 localizedDescription] retain];
    [r0 release];
    r19 = [[NSString stringWithFormat:@"Consent dialog failed to show: (%@) %@"] retain];
    [r21 release];
    [r20 release];
    r20 = [objc_alloc() initWithMessage:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)javascriptConsoleLogWithMessage:(void *)arg2 {
    r19 = [[arg2 stringByReplacingOccurrencesOfString:@"ios-log: " withString:@""] retain];
    r20 = objc_alloc();
    r21 = [[NSString stringWithFormat:@"Javascript console logged: %@"] retain];
    r20 = [r20 initWithMessage:r21];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

@end