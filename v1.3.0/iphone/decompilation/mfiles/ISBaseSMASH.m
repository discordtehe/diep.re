@implementation ISBaseSMASH

-(void *)initWithAdapterConfig:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = [r21 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_adapterConfig, r21);
            r0 = NSClassFromString(@"ISAdapterLoggerProxy");
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_logger));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [NSOperationQueue new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_delegateQueue));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [NSBlockOperation new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_initiatedStatusReportOperation));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r20->_mediationState = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setConsent:(bool)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r22 = [[self adUnitString] retain];
    r23 = [[self->_adapterConfig providerName] retain];
    r21 = [[NSString stringWithFormat:@"setConsent:adUnit:%@, providerName:%@, value:%d"] retain];
    [r23 release];
    [r22 release];
    r0 = [self logger];
    r0 = [r0 retain];
    [r0 log:r21];
    [r0 release];
    *(int8_t *)(int64_t *)&self->_consent = r19;
    *(int8_t *)(int64_t *)&self->_didSetConsent = 0x1;
    r0 = self->_adapter;
    if (r0 != 0x0) {
            [r0 setConsent:r19];
    }
    [r21 release];
    return;
}

-(void)setAdapter:(void *)arg2 {
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
    r29 = &saved_fp;
    r22 = arg2;
    r20 = self;
    r19 = [r22 retain];
    if (r19 != 0x0) {
            r21 = (int64_t *)&r20->_adapter;
            objc_storeStrong(r21, r22);
            r23 = *r21;
            r0 = @class(ISConfigurations);
            r0 = [r0 getConfigurations];
            r0 = [r0 retain];
            [r23 setUsersAge:[r0 userAge]];
            [r0 release];
            r23 = *r21;
            r0 = @class(ISConfigurations);
            r0 = [r0 getConfigurations];
            r0 = [r0 retain];
            [r23 setUsersGender:[r0 userGender]];
            [r0 release];
            r23 = *r21;
            r0 = @class(ISConfigurations);
            r0 = [r0 getConfigurations];
            r0 = [r0 retain];
            [r23 setAdaptersDebug:[r0 adaptersDebug]];
            [r0 release];
            if (*(int8_t *)(int64_t *)&r20->_didSetConsent != 0x0) {
                    [*r21 setConsent:*(int8_t *)(int64_t *)&r20->_consent];
            }
    }
    [r19 release];
    return;
}

-(void)setMediationState:(long long)arg2 {
    r31 = r31 - 0xc0;
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
    r19 = arg2;
    r20 = self;
    r20->_mediationState = r19;
    r22 = [[r20->_adapterConfig providerName] retain];
    r24 = [[r20 adUnitString] retain];
    r0 = [NSArray arrayWithObjects:&var_98 count:0xa];
    r0 = [r0 retain];
    r26 = [[r0 objectAtIndex:r19] retain];
    r23 = [[NSString stringWithFormat:@"%@ has changed its Mediation state for %@ to %@ "] retain];
    [r26 release];
    [r0 release];
    [r24 release];
    [r22 release];
    r0 = [ISLoggerManager sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 log:r23 level:0x0 tag:0x6];
    [r0 release];
    r22 = r20->_adapter;
    if (r22 != 0x0) {
            if (r19 == 0x9 || r19 == 0x6) {
                    r20 = [[r20 adUnitString] retain];
                    [r22 setMediationState:r19 forAdUnit:r20];
                    [r20 release];
            }
    }
    var_48 = **___stack_chk_guard;
    [r23 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void *)adapterVersion {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = [self adapter];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 version];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 length] != 0x0) {
            r0 = [r21 adapter];
            r0 = [r0 retain];
            r21 = [[r0 version] retain];
            [r0 release];
    }
    else {
            r21 = @"";
            [r21 retain];
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)sdkVersion {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_adapter));
    r0 = *(r20 + r22);
    r0 = [r0 sdkVersion];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 length] != 0x0) {
            r20 = [[*(r20 + r22) sdkVersion] retain];
    }
    else {
            r20 = @"";
            [r20 retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)instanceId {
    r0 = [self adapterConfig];
    r0 = [r0 retain];
    r20 = [[r0 instanceId] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)isMediationAvailable {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self isExhausted] & 0x1) == 0x0) {
            r0 = [r19 isCappedPerSession];
            if ((r0 & 0x1) != 0x0) {
                    r0 = 0x0;
            }
            else {
                    if (r19->_mediationState != 0x9) {
                            if (CPU_FLAGS & NE) {
                                    r0 = 0x1;
                            }
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)completeIteration {
    self->_showPerIterationCounter = 0x0;
    return;
}

-(void)preShow {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_showPerIterationCounter));
    *(r19 + r22) = *(r19 + r22) + 0x1;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_showPerCapSessionCounter));
    *(r19 + r8) = *(r19 + r8) + 0x1;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_adapterConfig));
    r21 = [[*(r19 + r23) providerName] retain];
    r0 = *(r19 + r23);
    r0 = [r0 maxAdsPerIteration];
    r0 = [r0 retain];
    r23 = [[r0 stringValue] retain];
    r20 = [[NSString stringWithFormat:@"%@:playing %ld videos out of %@ this iteration"] retain];
    [r23 release];
    [r0 release];
    [r21 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x0 tag:0x6];
    [r0 release];
    if ([r19 isCappedPerSession] != 0x0) {
            [r19 setMediationState:r2];
    }
    else {
            if ([r19 isExhausted] != 0x0) {
                    [r19 setMediationState:r2];
            }
    }
    [r20 release];
    return;
}

-(bool)isExhausted {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[r20->_adapterConfig maxAdsPerIteration] retain];
    if (r19 != 0x0) {
            r20 = r20->_showPerIterationCounter;
            if (r20 >= [r19 integerValue]) {
                    if (CPU_FLAGS & GE) {
                            r20 = 0x1;
                    }
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isCappedPerSession {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[r20->_adapterConfig maxAdsPerSession] retain];
    if (r19 != 0x0) {
            r20 = r20->_showPerCapSessionCounter;
            if (r20 >= [r19 integerValue]) {
                    if (CPU_FLAGS & GE) {
                            r20 = 0x1;
                    }
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)hasAvailableAds {
    r0 = [self->_adapter hasAvailableAdsForAdapterConfig:self->_adapterConfig];
    return r0;
}

-(void)startLoadTimerForSelector:(void *)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r20 = self;
    [r20->_adapterConfig loadTimeOutSec];
    if (d0 >= 0x0) {
            dispatch_async(*__dispatch_main_q, &var_50);
    }
    else {
            r19 = [[r20 logger] retain];
            r0 = [r20 adapterConfig];
            r0 = [r0 retain];
            r22 = [[r0 providerName] retain];
            r21 = [[NSString stringWithFormat:@"adapter timeout for %@ is notset, ignoring"] retain];
            [r19 log:r21];
            [r21 release];
            [r22 release];
            [r0 release];
            [r19 release];
    }
    return;
}

-(void)startInitTimerForSelector:(void *)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r20 = self;
    [r20->_adapterConfig loadTimeOutSec];
    if (d0 >= 0x0) {
            dispatch_async(*__dispatch_main_q, &var_50);
    }
    else {
            r19 = [[r20 logger] retain];
            r0 = [r20 adapterConfig];
            r0 = [r0 retain];
            r22 = [[r0 providerName] retain];
            r21 = [[NSString stringWithFormat:@"adapter timeout for %@ is notset, ignoring"] retain];
            [r19 log:r21];
            [r21 release];
            [r22 release];
            [r0 release];
            [r19 release];
    }
    return;
}

-(void)stopTimer {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void)stopInitTimer {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void *)timer {
    r0 = self->_timer;
    return r0;
}

-(void *)adUnitString {
    objc_retainAutorelease(@"");
    return @"";
}

-(bool)isEqual:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != r20) {
            [ISBaseSMASH class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r21 = [[r20->_adapterConfig providerName] retain];
                    r0 = [r19 adapterConfig];
                    r0 = [r0 retain];
                    r23 = [[r0 providerName] retain];
                    r20 = [r21 isEqual:r2];
                    [r23 release];
                    [r0 release];
                    [r21 release];
            }
            else {
                    r0 = [[&var_40 super] isEqual:r2];
                    r20 = r0;
            }
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_timer, arg2);
    return;
}

-(void *)timerForInit {
    r0 = self->_timerForInit;
    return r0;
}

-(void)setTimerForInit:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_timerForInit, arg2);
    return;
}

-(void *)logger {
    r0 = self->_logger;
    return r0;
}

-(void)setLogger:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_logger, arg2);
    return;
}

-(void *)delegateQueue {
    r0 = self->_delegateQueue;
    return r0;
}

-(void)setDelegateQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_delegateQueue, arg2);
    return;
}

-(void *)initiatedStatusReportOperation {
    r0 = self->_initiatedStatusReportOperation;
    return r0;
}

-(void)setInitiatedStatusReportOperation:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_initiatedStatusReportOperation, arg2);
    return;
}

-(int)providerPriority {
    r0 = *(int32_t *)(int64_t *)&self->_providerPriority;
    return r0;
}

-(long long)mediationState {
    r0 = self->_mediationState;
    return r0;
}

-(void)setProviderPriority:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_providerPriority = arg2;
    return;
}

-(bool)consent {
    r0 = *(int8_t *)(int64_t *)&self->_consent;
    return r0;
}

-(bool)didSetConsent {
    r0 = *(int8_t *)(int64_t *)&self->_didSetConsent;
    return r0;
}

-(void *)adapter {
    r0 = self->_adapter;
    return r0;
}

-(void)setDidSetConsent:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_didSetConsent = arg2;
    return;
}

-(void *)adapterConfig {
    r0 = self->_adapterConfig;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adapterConfig, 0x0);
    objc_storeStrong((int64_t *)&self->_adapter, 0x0);
    objc_storeStrong((int64_t *)&self->_initiatedStatusReportOperation, 0x0);
    objc_storeStrong((int64_t *)&self->_delegateQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_logger, 0x0);
    objc_storeStrong((int64_t *)&self->_timerForInit, 0x0);
    objc_storeStrong((int64_t *)&self->_timer, 0x0);
    return;
}

@end