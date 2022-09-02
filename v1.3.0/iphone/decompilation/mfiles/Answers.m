@implementation Answers

+(void *)sharedInstance {
    if (*qword_1011d1e30 != -0x1) {
            dispatch_once(0x1011d1e30, 0x100e6bd10);
    }
    r0 = *0x1011d1e38;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)startWithBetaToken:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [Answers sharedInstance];
    r0 = [r0 retain];
    [r0 startWithBetaToken:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)logPreviousSessionCrashedOnDate:(void *)arg2 {
    r2 = arg2;
    if (r2 != 0x0) {
            r21 = [r2 retain];
            r19 = [[ANSCrashEvent alloc] initWithTimestamp:r21 crashState:0x0];
            [r21 release];
            r0 = [Answers sharedInstance];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 answersController];
            r0 = [r0 retain];
            [r0 logCrashEvent:r19];
            [r0 release];
            [r20 release];
            [r19 release];
    }
    return;
}

+(void)logInviteWithMethod:(void *)arg2 customAttributes:(void *)arg3 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = _cmd;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [Fabric sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (([r0 respondsToSelector:r2] & 0x1) != 0x0) {
            r0 = [Fabric sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 firebaseMode];
            [r0 release];
            [r22 release];
            if (r24 != 0x0) {
                    r21 = [NSStringFromSelector(r21) retain];
                    [Answers printMethodUnavailableWithSelector:r21];
            }
            else {
                    r21 = [[ANSPredefinedEvent inviteEventWithMethod:r19 customAttributes:r20] retain];
                    r0 = [Answers sharedInstance];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 answersController];
                    r0 = [r0 retain];
                    [r0 logEvent:r21];
                    [r0 release];
                    [r22 release];
            }
    }
    else {
            [r22 release];
            r21 = [[ANSPredefinedEvent inviteEventWithMethod:r19 customAttributes:r20] retain];
            r0 = [Answers sharedInstance];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 answersController];
            r0 = [r0 retain];
            [r0 logEvent:r21];
            [r0 release];
            [r22 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)logSignUpWithMethod:(void *)arg2 success:(void *)arg3 customAttributes:(void *)arg4 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = _cmd;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [Fabric sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if (([r0 respondsToSelector:r2] & 0x1) != 0x0) {
            r0 = [Fabric sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 firebaseMode];
            [r0 release];
            [r23 release];
            if (r25 != 0x0) {
                    r22 = [NSStringFromSelector(r22) retain];
                    [Answers printMethodUnavailableWithSelector:r22];
            }
            else {
                    r22 = [[ANSPredefinedEvent signUpEventWithMethod:r19 success:r20 customAttributes:r21] retain];
                    r0 = [Answers sharedInstance];
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 answersController];
                    r0 = [r0 retain];
                    [r0 logEvent:r22];
                    [r0 release];
                    [r23 release];
            }
    }
    else {
            [r23 release];
            r22 = [[ANSPredefinedEvent signUpEventWithMethod:r19 success:r20 customAttributes:r21] retain];
            r0 = [Answers sharedInstance];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 answersController];
            r0 = [r0 retain];
            [r0 logEvent:r22];
            [r0 release];
            [r23 release];
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)logLoginWithMethod:(void *)arg2 success:(void *)arg3 customAttributes:(void *)arg4 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = _cmd;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [Fabric sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if (([r0 respondsToSelector:r2] & 0x1) != 0x0) {
            r0 = [Fabric sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 firebaseMode];
            [r0 release];
            [r23 release];
            if (r25 != 0x0) {
                    r22 = [NSStringFromSelector(r22) retain];
                    [Answers printMethodUnavailableWithSelector:r22];
            }
            else {
                    r22 = [[ANSPredefinedEvent loginEventWithMethod:r19 success:r20 customAttributes:r21] retain];
                    r0 = [Answers sharedInstance];
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 answersController];
                    r0 = [r0 retain];
                    [r0 logEvent:r22];
                    [r0 release];
                    [r23 release];
            }
    }
    else {
            [r23 release];
            r22 = [[ANSPredefinedEvent loginEventWithMethod:r19 success:r20 customAttributes:r21] retain];
            r0 = [Answers sharedInstance];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 answersController];
            r0 = [r0 retain];
            [r0 logEvent:r22];
            [r0 release];
            [r23 release];
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)logShareWithMethod:(void *)arg2 contentName:(void *)arg3 contentType:(void *)arg4 contentId:(void *)arg5 customAttributes:(void *)arg6 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r24 = _cmd;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [arg6 retain];
    r0 = [Fabric sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = r0;
    if (([r0 respondsToSelector:r2] & 0x1) != 0x0) {
            r0 = [Fabric sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r27 = [r0 firebaseMode];
            [r0 release];
            [r25 release];
            if (r27 != 0x0) {
                    r24 = [NSStringFromSelector(r24) retain];
                    [Answers printMethodUnavailableWithSelector:r24];
            }
            else {
                    r24 = [[ANSPredefinedEvent shareEventWithMethod:r19 contentName:r20 contentType:r21 contentId:r22 customAttributes:r23] retain];
                    r0 = [Answers sharedInstance];
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 answersController];
                    r0 = [r0 retain];
                    [r0 logEvent:r24];
                    [r0 release];
                    [r25 release];
            }
    }
    else {
            [r25 release];
            r24 = [[ANSPredefinedEvent shareEventWithMethod:r19 contentName:r20 contentType:r21 contentId:r22 customAttributes:r23] retain];
            r0 = [Answers sharedInstance];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 answersController];
            r0 = [r0 retain];
            [r0 logEvent:r24];
            [r0 release];
            [r25 release];
    }
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)logPurchaseWithPrice:(void *)arg2 currency:(void *)arg3 success:(void *)arg4 itemName:(void *)arg5 itemType:(void *)arg6 itemId:(void *)arg7 customAttributes:(void *)arg8 {
    r31 = r31 - 0x80;
    var_50 = r28;
    stack[-88] = r27;
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
    var_60 = _cmd;
    var_58 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [arg6 retain];
    r24 = [arg7 retain];
    r25 = [arg8 retain];
    r0 = [Fabric sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r27 = r0;
    if (([r0 respondsToSelector:r2] & 0x1) != 0x0) {
            r0 = [Fabric sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 firebaseMode];
            [r0 release];
            [r27 release];
            r19 = var_58;
            if (r26 != 0x0) {
                    r27 = [NSStringFromSelector(var_60) retain];
                    [Answers printMethodUnavailableWithSelector:r27];
                    r0 = r27;
            }
            else {
                    r26 = [[ANSPredefinedEvent purchaseEventWithPrice:r19 currency:r20 success:r21 itemName:r22 itemType:r23 itemId:r24 customAttributes:r25] retain];
                    r0 = [Answers sharedInstance];
                    r0 = [r0 retain];
                    r27 = r0;
                    r0 = [r0 answersController];
                    r0 = [r0 retain];
                    [r0 logEvent:r26];
                    [r0 release];
                    [r27 release];
                    r0 = r26;
            }
    }
    else {
            [r27 release];
            r19 = var_58;
            r26 = [[ANSPredefinedEvent purchaseEventWithPrice:r19 currency:r20 success:r21 itemName:r22 itemType:r23 itemId:r24 customAttributes:r25] retain];
            r0 = [Answers sharedInstance];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 answersController];
            r0 = [r0 retain];
            [r0 logEvent:r26];
            [r0 release];
            [r27 release];
            r0 = r26;
    }
    [r0 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)logLevelStart:(void *)arg2 customAttributes:(void *)arg3 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = _cmd;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [Fabric sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (([r0 respondsToSelector:r2] & 0x1) != 0x0) {
            r0 = [Fabric sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 firebaseMode];
            [r0 release];
            [r22 release];
            if (r24 != 0x0) {
                    r21 = [NSStringFromSelector(r21) retain];
                    [Answers printMethodUnavailableWithSelector:r21];
            }
            else {
                    r21 = [[ANSPredefinedEvent levelStartEventWithLevelName:r19 customAttributes:r20] retain];
                    r0 = [Answers sharedInstance];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 answersController];
                    r0 = [r0 retain];
                    [r0 logEvent:r21];
                    [r0 release];
                    [r22 release];
            }
    }
    else {
            [r22 release];
            r21 = [[ANSPredefinedEvent levelStartEventWithLevelName:r19 customAttributes:r20] retain];
            r0 = [Answers sharedInstance];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 answersController];
            r0 = [r0 retain];
            [r0 logEvent:r21];
            [r0 release];
            [r22 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)logLevelEnd:(void *)arg2 score:(void *)arg3 success:(void *)arg4 customAttributes:(void *)arg5 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r23 = _cmd;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r0 = [Fabric sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = r0;
    if (([r0 respondsToSelector:r2] & 0x1) != 0x0) {
            r0 = [Fabric sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 firebaseMode];
            [r0 release];
            [r24 release];
            if (r26 != 0x0) {
                    r23 = [NSStringFromSelector(r23) retain];
                    [Answers printMethodUnavailableWithSelector:r23];
            }
            else {
                    r23 = [[ANSPredefinedEvent levelEndEventWithLevelName:r19 score:r20 success:r21 customAttributes:r22] retain];
                    r0 = [Answers sharedInstance];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 answersController];
                    r0 = [r0 retain];
                    [r0 logEvent:r23];
                    [r0 release];
                    [r24 release];
            }
    }
    else {
            [r24 release];
            r23 = [[ANSPredefinedEvent levelEndEventWithLevelName:r19 score:r20 success:r21 customAttributes:r22] retain];
            r0 = [Answers sharedInstance];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 answersController];
            r0 = [r0 retain];
            [r0 logEvent:r23];
            [r0 release];
            [r24 release];
    }
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)logAddToCartWithPrice:(void *)arg2 currency:(void *)arg3 itemName:(void *)arg4 itemType:(void *)arg5 itemId:(void *)arg6 customAttributes:(void *)arg7 {
    r31 = r31 - 0x70;
    var_50 = r28;
    stack[-88] = r27;
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
    r19 = _cmd;
    var_58 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [arg6 retain];
    r24 = [arg7 retain];
    r0 = [Fabric sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r26 = r0;
    if (([r0 respondsToSelector:r2] & 0x1) != 0x0) {
            r0 = [Fabric sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r28 = [r0 firebaseMode];
            [r0 release];
            [r26 release];
            if (r28 != 0x0) {
                    r25 = [NSStringFromSelector(r19) retain];
                    [Answers printMethodUnavailableWithSelector:r25];
                    [r25 release];
                    r19 = var_58;
            }
            else {
                    r19 = var_58;
                    r25 = [[ANSPredefinedEvent addToCartEventWithPrice:r19 currency:r20 itemName:r21 itemType:r22 itemId:r23 customAttributes:r24] retain];
                    r0 = [Answers sharedInstance];
                    r0 = [r0 retain];
                    r26 = r0;
                    r0 = [r0 answersController];
                    r0 = [r0 retain];
                    [r0 logEvent:r25];
                    [r0 release];
                    [r26 release];
                    [r25 release];
            }
    }
    else {
            [r26 release];
            r19 = var_58;
            r25 = [[ANSPredefinedEvent addToCartEventWithPrice:r19 currency:r20 itemName:r21 itemType:r22 itemId:r23 customAttributes:r24] retain];
            r0 = [Answers sharedInstance];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 answersController];
            r0 = [r0 retain];
            [r0 logEvent:r25];
            [r0 release];
            [r26 release];
            [r25 release];
    }
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)logStartCheckoutWithPrice:(void *)arg2 currency:(void *)arg3 itemCount:(void *)arg4 customAttributes:(void *)arg5 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r23 = _cmd;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r0 = [Fabric sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = r0;
    if (([r0 respondsToSelector:r2] & 0x1) != 0x0) {
            r0 = [Fabric sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 firebaseMode];
            [r0 release];
            [r24 release];
            if (r26 != 0x0) {
                    r23 = [NSStringFromSelector(r23) retain];
                    [Answers printMethodUnavailableWithSelector:r23];
            }
            else {
                    r23 = [[ANSPredefinedEvent startCheckoutEventWithPrice:r19 currency:r20 itemCount:r21 customAttributes:r22] retain];
                    r0 = [Answers sharedInstance];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 answersController];
                    r0 = [r0 retain];
                    [r0 logEvent:r23];
                    [r0 release];
                    [r24 release];
            }
    }
    else {
            [r24 release];
            r23 = [[ANSPredefinedEvent startCheckoutEventWithPrice:r19 currency:r20 itemCount:r21 customAttributes:r22] retain];
            r0 = [Answers sharedInstance];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 answersController];
            r0 = [r0 retain];
            [r0 logEvent:r23];
            [r0 release];
            [r24 release];
    }
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)logRating:(void *)arg2 contentName:(void *)arg3 contentType:(void *)arg4 contentId:(void *)arg5 customAttributes:(void *)arg6 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r24 = _cmd;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [arg6 retain];
    r0 = [Fabric sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = r0;
    if (([r0 respondsToSelector:r2] & 0x1) != 0x0) {
            r0 = [Fabric sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r27 = [r0 firebaseMode];
            [r0 release];
            [r25 release];
            if (r27 != 0x0) {
                    r24 = [NSStringFromSelector(r24) retain];
                    [Answers printMethodUnavailableWithSelector:r24];
            }
            else {
                    r24 = [[ANSPredefinedEvent ratingEventWithRating:r19 contentName:r20 contentType:r21 contentId:r22 customAttributes:r23] retain];
                    r0 = [Answers sharedInstance];
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 answersController];
                    r0 = [r0 retain];
                    [r0 logEvent:r24];
                    [r0 release];
                    [r25 release];
            }
    }
    else {
            [r25 release];
            r24 = [[ANSPredefinedEvent ratingEventWithRating:r19 contentName:r20 contentType:r21 contentId:r22 customAttributes:r23] retain];
            r0 = [Answers sharedInstance];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 answersController];
            r0 = [r0 retain];
            [r0 logEvent:r24];
            [r0 release];
            [r25 release];
    }
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)logContentViewWithName:(void *)arg2 contentType:(void *)arg3 contentId:(void *)arg4 customAttributes:(void *)arg5 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r23 = _cmd;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r0 = [Fabric sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = r0;
    if (([r0 respondsToSelector:r2] & 0x1) != 0x0) {
            r0 = [Fabric sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 firebaseMode];
            [r0 release];
            [r24 release];
            if (r26 != 0x0) {
                    r23 = [NSStringFromSelector(r23) retain];
                    [Answers printMethodUnavailableWithSelector:r23];
            }
            else {
                    r23 = [[ANSPredefinedEvent contentViewEventWithName:r19 contentType:r20 contentId:r21 customAttributes:r22] retain];
                    r0 = [Answers sharedInstance];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 answersController];
                    r0 = [r0 retain];
                    [r0 logEvent:r23];
                    [r0 release];
                    [r24 release];
            }
    }
    else {
            [r24 release];
            r23 = [[ANSPredefinedEvent contentViewEventWithName:r19 contentType:r20 contentId:r21 customAttributes:r22] retain];
            r0 = [Answers sharedInstance];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 answersController];
            r0 = [r0 retain];
            [r0 logEvent:r23];
            [r0 release];
            [r24 release];
    }
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)logSearchWithQuery:(void *)arg2 customAttributes:(void *)arg3 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = _cmd;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [Fabric sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (([r0 respondsToSelector:r2] & 0x1) != 0x0) {
            r0 = [Fabric sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 firebaseMode];
            [r0 release];
            [r22 release];
            if (r24 != 0x0) {
                    r21 = [NSStringFromSelector(r21) retain];
                    [Answers printMethodUnavailableWithSelector:r21];
            }
            else {
                    r21 = [[ANSPredefinedEvent searchEventWithQuery:r19 customAttributes:r20] retain];
                    r0 = [Answers sharedInstance];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 answersController];
                    r0 = [r0 retain];
                    [r0 logEvent:r21];
                    [r0 release];
                    [r22 release];
            }
    }
    else {
            [r22 release];
            r21 = [[ANSPredefinedEvent searchEventWithQuery:r19 customAttributes:r20] retain];
            r0 = [Answers sharedInstance];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 answersController];
            r0 = [r0 retain];
            [r0 logEvent:r21];
            [r0 release];
            [r22 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)logCustomEventWithName:(void *)arg2 customAttributes:(void *)arg3 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = _cmd;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [Fabric sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (([r0 respondsToSelector:r2] & 0x1) != 0x0) {
            r0 = [Fabric sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 firebaseMode];
            [r0 release];
            [r22 release];
            if (r24 != 0x0) {
                    r21 = [NSStringFromSelector(r21) retain];
                    [Answers printMethodUnavailableWithSelector:r21];
            }
            else {
                    r21 = [[ANSCustomEvent alloc] initWithCustomEventName:r19 customAttributes:r20];
                    r0 = [Answers sharedInstance];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 answersController];
                    r0 = [r0 retain];
                    [r0 logEvent:r21];
                    [r0 release];
                    [r22 release];
            }
    }
    else {
            [r22 release];
            r21 = [[ANSCustomEvent alloc] initWithCustomEventName:r19 customAttributes:r20];
            r0 = [Answers sharedInstance];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 answersController];
            r0 = [r0 retain];
            [r0 logEvent:r21];
            [r0 release];
            [r22 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)configureLogging {
    r0 = [Fabric sharedSDK];
    r0 = [r0 retain];
    r19 = r0;
    r20 = [r0 debug];
    r0 = [ANSLogger sharedLogger];
    r0 = [r0 retain];
    [r0 setDebugMode:r20];
    [r0 release];
    [r19 release];
    return;
}

+(void)printMethodUnavailableWithSelector:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [ANSLogger sharedLogger];
    r0 = [r0 retain];
    [r0 log:@"%@ is not supported when using Crashlytics through Firebase."];
    [r21 release];
    [r0 release];
    return;
}

-(void)startWithBetaToken:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    var_18 = r19;
    if (*qword_1011d1e40 == -0x1) {
            r0 = [r0 retain];
    }
    else {
            [r0 retain];
            dispatch_once(0x1011d1e40, &var_40);
            r0 = var_18;
    }
    [r0 release];
    [r19 release];
    return;
}

+(void *)bundleIdentifier {
    objc_retainAutorelease(@"com.twitter.answers.ios");
    return @"com.twitter.answers.ios";
}

+(void *)kitDisplayVersion {
    objc_retainAutorelease(@"1.4.0");
    return @"1.4.0";
}

+(void *)kitBuildVersion {
    objc_retainAutorelease(@"31");
    return @"31";
}

-(void *)answersController {
    r0 = self->_answersController;
    return r0;
}

+(void)initializeIfNeeded {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = NSClassFromString(@"Crashlytics");
    if (r19 != 0x0 && [r19 conformsToProtocol:@protocol(FABKit)] != 0x0) {
            [r19 initializeIfNeeded];
    }
    else {
            r0 = [Answers sharedInstance];
            r0 = [r0 retain];
            [r0 startWithBetaToken:0x0];
            [r0 release];
    }
    return;
}

-(void)setAnswersController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_answersController, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_answersController, 0x0);
    return;
}

@end