@implementation Adjust

+(void)appDidLaunch:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [Adjust getInstance];
    r0 = [r0 retain];
    [r0 appDidLaunch:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)trackSubsessionStart {
    r0 = [Adjust getInstance];
    r0 = [r0 retain];
    [r0 trackSubsessionStart];
    [r0 release];
    return;
}

+(void)trackEvent:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [Adjust getInstance];
    r0 = [r0 retain];
    [r0 trackEvent:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)trackSubsessionEnd {
    r0 = [Adjust getInstance];
    r0 = [r0 retain];
    [r0 trackSubsessionEnd];
    [r0 release];
    return;
}

+(void)setEnabled:(bool)arg2 {
    r0 = [Adjust getInstance];
    r0 = [r0 retain];
    [r0 setEnabled:r2];
    [r20 release];
    return;
}

+(void)appWillOpenUrl:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [Adjust getInstance];
    r0 = [r0 retain];
    [r0 appWillOpenUrl:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)setDeviceToken:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [Adjust getInstance];
    r0 = [r0 retain];
    [r0 setDeviceToken:r21];
    [r21 release];
    [r0 release];
    return;
}

+(bool)isEnabled {
    r0 = [Adjust getInstance];
    r0 = [r0 retain];
    r20 = [r0 isEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

+(void)setOfflineMode:(bool)arg2 {
    r0 = [Adjust getInstance];
    r0 = [r0 retain];
    [r0 setOfflineMode:arg2];
    [r0 release];
    return;
}

+(void *)convertUniversalLink:(void *)arg2 scheme:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [Adjust getInstance];
    r0 = [r0 retain];
    r22 = [r0 convertUniversalLink:r20 scheme:r19];
    [r19 release];
    [r20 release];
    r19 = [r22 retain];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)idfa {
    r0 = [Adjust getInstance];
    r0 = [r0 retain];
    r20 = [[r0 idfa] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)sendAdWordsRequest {
    r0 = [ADJAdjustFactory logger];
    r0 = [r0 retain];
    [r0 warn:@"Send AdWords Request functionality removed"];
    [r0 release];
    return;
}

+(void)sendFirstPackages {
    r0 = [Adjust getInstance];
    r0 = [r0 retain];
    [r0 sendFirstPackages];
    [r0 release];
    return;
}

+(void)addSessionCallbackParameter:(void *)arg2 value:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [Adjust getInstance];
    r0 = [r0 retain];
    [r0 addSessionCallbackParameter:r20 value:r19];
    [r19 release];
    [r20 release];
    [r0 release];
    return;
}

+(void)addSessionPartnerParameter:(void *)arg2 value:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [Adjust getInstance];
    r0 = [r0 retain];
    [r0 addSessionPartnerParameter:r20 value:r19];
    [r19 release];
    [r20 release];
    [r0 release];
    return;
}

+(void)removeSessionCallbackParameter:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [Adjust getInstance];
    r0 = [r0 retain];
    [r0 removeSessionCallbackParameter:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)removeSessionPartnerParameter:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [Adjust getInstance];
    r0 = [r0 retain];
    [r0 removeSessionPartnerParameter:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)resetSessionCallbackParameters {
    r0 = [Adjust getInstance];
    r0 = [r0 retain];
    [r0 resetSessionCallbackParameters];
    [r0 release];
    return;
}

+(void)resetSessionPartnerParameters {
    r0 = [Adjust getInstance];
    r0 = [r0 retain];
    [r0 resetSessionPartnerParameters];
    [r0 release];
    return;
}

+(void *)attribution {
    r0 = [Adjust getInstance];
    r0 = [r0 retain];
    r20 = [[r0 attribution] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)adid {
    r0 = [Adjust getInstance];
    r0 = [r0 retain];
    r20 = [[r0 adid] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)getInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011daa90 != -0x1) {
            dispatch_once(0x1011daa90, &var_28);
    }
    r0 = *0x1011daa88;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)trackEvent:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 checkActivityHandler] != 0x0) {
            r0 = [r20 activityHandler];
            r0 = [r0 retain];
            [r0 trackEvent:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)appDidLaunch:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 activityHandler];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 logger];
            r0 = [r0 retain];
            [r0 error:@"Adjust already initialized"];
            r0 = r0;
    }
    else {
            r22 = [[r20 sessionParametersActionsArray] retain];
            r23 = [[r20 deviceTokenData] retain];
            r21 = [[ADJAdjustFactory activityHandlerWithConfig:r19 sessionParametersActionsArray:r22 deviceToken:r23] retain];
            [r20 setActivityHandler:r21];
            [r21 release];
            [r23 release];
            r0 = r22;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setActivityHandler:0x0];
            r20 = [[ADJAdjustFactory logger] retain];
            [r19 setLogger:r20];
            [r20 release];
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)trackSubsessionStart {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self checkActivityHandler] != 0x0) {
            r0 = [r19 activityHandler];
            r0 = [r0 retain];
            [r0 applicationDidBecomeActive];
            [r0 release];
    }
    return;
}

-(void)trackSubsessionEnd {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self checkActivityHandler] != 0x0) {
            r0 = [r19 activityHandler];
            r0 = [r0 retain];
            [r0 applicationWillResignActive];
            [r0 release];
    }
    return;
}

-(bool)isEnabled {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self checkActivityHandler] != 0x0) {
            r0 = [r19 activityHandler];
            r0 = [r0 retain];
            r19 = [r0 isEnabled];
            [r0 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)setEnabled:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r20 = self;
    if ([self checkActivityHandler] != 0x0) {
            r0 = [r20 activityHandler];
            r0 = [r0 retain];
            [r0 setEnabled:r2];
            [r20 release];
    }
    return;
}

-(void)appWillOpenUrl:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 checkActivityHandler] != 0x0) {
            r0 = [r20 activityHandler];
            r0 = [r0 retain];
            [r0 appWillOpenUrl:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)setDeviceToken:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    [r20 setDeviceTokenData:r19];
    r0 = [r20 activityHandler];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 activityHandler];
            r0 = [r0 retain];
            [r0 setDeviceToken:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void *)idfa {
    r0 = [ADJUtil idfa];
    return r0;
}

-(void)setOfflineMode:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r20 = self;
    if ([self checkActivityHandler] != 0x0) {
            r0 = [r20 activityHandler];
            r0 = [r0 retain];
            [r0 setOfflineMode:r19];
            [r0 release];
    }
    return;
}

-(void *)convertUniversalLink:(void *)arg2 scheme:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [ADJUtil convertUniversalLink:r20 scheme:arg3];
    [r20 release];
    r0 = [r19 retain];
    r0 = [r0 autorelease];
    return r0;
}

-(void)sendFirstPackages {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self checkActivityHandler] != 0x0) {
            r0 = [r19 activityHandler];
            r0 = [r0 retain];
            [r0 sendFirstPackages];
            [r0 release];
    }
    return;
}

-(void)addSessionCallbackParameter:(void *)arg2 value:(void *)arg3 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r21 activityHandler];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r21 activityHandler];
            r0 = [r0 retain];
            [r0 addSessionCallbackParameter:r19 value:r20];
            r0 = r0;
    }
    else {
            r0 = [r21 sessionParametersActionsArray];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r23 = [[NSMutableArray alloc] init];
                    [r21 setSessionParametersActionsArray:r23];
                    [r23 release];
            }
            r21 = [[r21 sessionParametersActionsArray] retain];
            var_40 = [r19 retain];
            var_38 = [r20 retain];
            r0 = objc_retainBlock(&var_60);
            [r21 addObject:r2];
            [r22 release];
            [r21 release];
            [var_38 release];
            r0 = var_40;
    }
    [r0 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)addSessionPartnerParameter:(void *)arg2 value:(void *)arg3 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r21 activityHandler];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r21 activityHandler];
            r0 = [r0 retain];
            [r0 addSessionPartnerParameter:r19 value:r20];
            r0 = r0;
    }
    else {
            r0 = [r21 sessionParametersActionsArray];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r23 = [[NSMutableArray alloc] init];
                    [r21 setSessionParametersActionsArray:r23];
                    [r23 release];
            }
            r21 = [[r21 sessionParametersActionsArray] retain];
            var_40 = [r19 retain];
            var_38 = [r20 retain];
            r0 = objc_retainBlock(&var_60);
            [r21 addObject:r2];
            [r22 release];
            [r21 release];
            [var_38 release];
            r0 = var_40;
    }
    [r0 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)removeSessionCallbackParameter:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 activityHandler];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 activityHandler];
            r0 = [r0 retain];
            [r0 removeSessionCallbackParameter:r19];
            r0 = r0;
    }
    else {
            r0 = [r20 sessionParametersActionsArray];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r22 = [[NSMutableArray alloc] init];
                    [r20 setSessionParametersActionsArray:r22];
                    [r22 release];
            }
            r20 = [[r20 sessionParametersActionsArray] retain];
            var_28 = [r19 retain];
            r0 = objc_retainBlock(&var_48);
            [r20 addObject:r2];
            [r21 release];
            [r20 release];
            r0 = var_28;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void)removeSessionPartnerParameter:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 activityHandler];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 activityHandler];
            r0 = [r0 retain];
            [r0 removeSessionPartnerParameter:r19];
            r0 = r0;
    }
    else {
            r0 = [r20 sessionParametersActionsArray];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r22 = [[NSMutableArray alloc] init];
                    [r20 setSessionParametersActionsArray:r22];
                    [r22 release];
            }
            r20 = [[r20 sessionParametersActionsArray] retain];
            var_28 = [r19 retain];
            r0 = objc_retainBlock(&var_48);
            [r20 addObject:r2];
            [r21 release];
            [r20 release];
            r0 = var_28;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void)resetSessionCallbackParameters {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self activityHandler];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 activityHandler];
            r0 = [r0 retain];
            r19 = r0;
            [r0 resetSessionCallbackParameters];
    }
    else {
            r0 = [r19 sessionParametersActionsArray];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r21 = [[NSMutableArray alloc] init];
                    [r19 setSessionParametersActionsArray:r21];
                    [r21 release];
            }
            r19 = [[r19 sessionParametersActionsArray] retain];
            objc_retainBlock(0x100e8a5d0);
            [r19 addObject:r2];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)resetSessionPartnerParameters {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self activityHandler];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 activityHandler];
            r0 = [r0 retain];
            r19 = r0;
            [r0 resetSessionPartnerParameters];
    }
    else {
            r0 = [r19 sessionParametersActionsArray];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r21 = [[NSMutableArray alloc] init];
                    [r19 setSessionParametersActionsArray:r21];
                    [r21 release];
            }
            r19 = [[r19 sessionParametersActionsArray] retain];
            objc_retainBlock(0x100e8a610);
            [r19 addObject:r2];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void *)attribution {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self checkActivityHandler] != 0x0) {
            r0 = [r19 activityHandler];
            r0 = [r0 retain];
            r19 = [[r0 attribution] retain];
            [r0 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)adid {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self checkActivityHandler] != 0x0) {
            r0 = [r19 activityHandler];
            r0 = [r0 retain];
            r19 = [[r0 adid] retain];
            [r0 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)teardown:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = [self activityHandler];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 activityHandler];
            r0 = [r0 retain];
            [r0 teardown:r20];
            [r0 release];
            [r19 setActivityHandler:0x0];
    }
    else {
            r0 = [r19 logger];
            r0 = [r0 retain];
            [r0 error:@"Adjust already down or not initialized"];
            [r0 release];
    }
    return;
}

-(bool)checkActivityHandler {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self activityHandler];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = 0x1;
    }
    else {
            r0 = [r19 logger];
            r0 = [r0 retain];
            [r0 error:@"Please initialize Adjust by calling 'appDidLaunch' before"];
            [r0 release];
            r0 = 0x0;
    }
    return r0;
}

-(void *)logger {
    r0 = objc_loadWeakRetained((int64_t *)&self->_logger);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)activityHandler {
    r0 = self->_activityHandler;
    return r0;
}

-(void)setLogger:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_logger, arg2);
    return;
}

-(void)setActivityHandler:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_activityHandler, arg2);
    return;
}

-(void *)sessionParametersActionsArray {
    r0 = self->_sessionParametersActionsArray;
    return r0;
}

-(void *)deviceTokenData {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_deviceTokenData)), 0x0);
    return r0;
}

-(void)setSessionParametersActionsArray:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_sessionParametersActionsArray, arg2);
    return;
}

-(void)setDeviceTokenData:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_deviceTokenData, 0x0);
    objc_storeStrong((int64_t *)&self->_sessionParametersActionsArray, 0x0);
    objc_storeStrong((int64_t *)&self->_activityHandler, 0x0);
    objc_destroyWeak((int64_t *)&self->_logger);
    return;
}

@end