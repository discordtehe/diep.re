@implementation ADJConfig

+(void *)configWithAppToken:(void *)arg2 environment:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [[ADJConfig alloc] initWithAppToken:r20 environment:r19];
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)configWithAppToken:(void *)arg2 environment:(void *)arg3 allowSuppressLogLevel:(bool)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [[ADJConfig alloc] initWithAppToken:r21 environment:r20 allowSuppressLogLevel:arg4];
    [r20 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithAppToken:(void *)arg2 environment:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [self initWithAppToken:r21 environment:arg3 allowSuppressLogLevel:0x0];
    [r21 release];
    r0 = r19;
    return r0;
}

-(void *)initWithAppToken:(void *)arg2 environment:(void *)arg3 allowSuppressLogLevel:(bool)arg4 {
    r31 = r31 - 0x60;
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
    r24 = arg4;
    r22 = arg3;
    r23 = arg2;
    r19 = [r23 retain];
    r20 = [r22 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r25 = [[ADJAdjustFactory logger] retain];
            [r21 setLogger:r25];
            [r25 release];
            r24 == 0x0 || [*0x100e8a4b8 isEqualToString:r2] == 0x0;
            [r21 setLogLevel:r2 environment:r3];
            if (([r21 checkEnvironment:r20] & 0x1) != 0x0 && ([r21 checkAppToken:r19] & 0x1) != 0x0) {
                    objc_storeStrong((int64_t *)&r21->_appToken, r23);
                    objc_storeStrong((int64_t *)&r21->_environment, r22);
                    [r21 setEventBufferingEnabled:0x0];
            }
            r22 = [r21 retain];
    }
    else {
            r22 = 0x0;
    }
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r22;
    return r0;
}

-(void)setLogLevel:(int)arg2 {
    r21 = [[self environment] retain];
    [self setLogLevel:arg2 environment:r21];
    [r21 release];
    return;
}

-(void)setLogLevel:(int)arg2 environment:(void *)arg3 {
    r22 = [arg3 retain];
    r20 = [[self logger] retain];
    r21 = [*0x100e8a4b8 isEqualToString:r22];
    [r22 release];
    [r20 setLogLevel:arg2 isProductionEnvironment:r21];
    [r20 release];
    return;
}

-(void)setDelegate:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([ADJUtil isNull:r19] == 0x0) goto loc_10069dd40;

loc_10069dd10:
    r21 = [[r20 logger] retain];
    r1 = @selector(warn:);
    goto loc_10069df8c;

loc_10069df8c:
    objc_msgSend(r21, r1);
    [r21 release];
    r0 = (int64_t *)&r20->_delegate;
    r1 = 0x0;
    goto loc_10069dfac;

loc_10069dfac:
    objc_storeWeak(r0, r1);
    [r19 release];
    return;

loc_10069dd40:
    if ([r19 respondsToSelector:@selector(adjustAttributionChanged:)] != 0x0) {
            r0 = [r20 logger];
            r29 = r29;
            r0 = [r0 retain];
            [r0 debug:@"Delegate implements adjustAttributionChanged:"];
            [r0 release];
            r22 = 0x1;
    }
    else {
            r22 = 0x0;
    }
    if ([r19 respondsToSelector:@selector(adjustEventTrackingSucceeded:)] != 0x0) {
            r0 = [r20 logger];
            r29 = r29;
            r0 = [r0 retain];
            [r0 debug:@"Delegate implements adjustEventTrackingSucceeded:"];
            [r0 release];
            r22 = 0x1;
    }
    if ([r19 respondsToSelector:@selector(adjustEventTrackingFailed:)] != 0x0) {
            r0 = [r20 logger];
            r29 = r29;
            r0 = [r0 retain];
            [r0 debug:@"Delegate implements adjustEventTrackingFailed:"];
            [r0 release];
            r22 = 0x1;
    }
    if ([r19 respondsToSelector:@selector(adjustSessionTrackingSucceeded:)] != 0x0) {
            r0 = [r20 logger];
            r29 = r29;
            r0 = [r0 retain];
            [r0 debug:@"Delegate implements adjustSessionTrackingSucceeded:"];
            [r0 release];
            r22 = 0x1;
    }
    if ([r19 respondsToSelector:@selector(adjustSessionTrackingFailed:)] != 0x0) {
            r0 = [r20 logger];
            r29 = r29;
            r0 = [r0 retain];
            [r0 debug:@"Delegate implements adjustSessionTrackingFailed:"];
            [r0 release];
            r22 = 0x1;
    }
    if ([r19 respondsToSelector:@selector(adjustDeeplinkResponse:)] == 0x0) goto loc_10069df48;

loc_10069df0c:
    r0 = [r20 logger];
    r0 = [r0 retain];
    [r0 debug:@"Delegate implements adjustDeeplinkResponse:"];
    [r0 release];
    goto loc_10069df4c;

loc_10069df4c:
    r0 = (int64_t *)&r20->_delegate;
    r1 = r19;
    goto loc_10069dfac;

loc_10069df48:
    if (r22 == 0x0) goto loc_10069df60;
    goto loc_10069df4c;

loc_10069df60:
    r21 = [[r20 logger] retain];
    r1 = @selector(error:);
    goto loc_10069df8c;
}

-(bool)isValid {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self appToken];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    r0 = r19;
    return r0;
}

-(bool)checkEnvironment:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([ADJUtil isNull:r19] != 0x0) {
            r20 = [[r20 logger] retain];
            [r20 error:r2];
            [r20 release];
            r20 = 0x0;
    }
    else {
            if ([r19 isEqualToString:r2] != 0x0) {
                    r20 = [[r20 logger] retain];
                    [r20 warnInProduction:r2];
                    [r20 release];
                    r20 = 0x1;
            }
            else {
                    r21 = @selector(isEqualToString:);
                    r21 = objc_msgSend(r19, r21);
                    r20 = [[r20 logger] retain];
                    if (r21 != 0x0) {
                            [r20 warnInProduction:r2];
                            [r20 release];
                            r20 = 0x1;
                    }
                    else {
                            [r20 error:r2];
                            [r20 release];
                            r20 = 0x0;
                    }
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)checkAppToken:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([ADJUtil isNull:r19] == 0x0) goto loc_10069e1a0;

loc_10069e170:
    r20 = [[r20 logger] retain];
    goto loc_10069e1f0;

loc_10069e1f0:
    [r20 error:r2];
    [r20 release];
    r20 = 0x0;
    goto loc_10069e204;

loc_10069e204:
    [r19 release];
    r0 = r20;
    return r0;

loc_10069e1a0:
    if ([r19 length] != 0xc) goto loc_10069e1c0;

loc_10069e1b8:
    r20 = 0x1;
    goto loc_10069e204;

loc_10069e1c0:
    r20 = [[r20 logger] retain];
    goto loc_10069e1f0;
}

-(void *)sdkPrefix {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_sdkPrefix)), 0x0);
    return r0;
}

-(void *)defaultTracker {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_defaultTracker)), 0x0);
    return r0;
}

-(void)setSdkPrefix:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r21 = self;
    r20 = [[[self class] allocWithZone:r19] init];
    if (r20 != 0x0) {
            r0 = [r21 appToken];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copyWithZone:r19];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_appToken));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r23 release];
            r0 = [r21 environment];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copyWithZone:r19];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_environment));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r23 release];
            [r20 setLogLevel:[r21 logLevel]];
            r0 = [r21 sdkPrefix];
            r0 = [r0 retain];
            r24 = [r0 copyWithZone:r19];
            [r20 setSdkPrefix:r24];
            [r24 release];
            [r0 release];
            r0 = [r21 defaultTracker];
            r0 = [r0 retain];
            r24 = [r0 copyWithZone:r19];
            [r20 setDefaultTracker:r24];
            [r24 release];
            [r0 release];
            [r20 setEventBufferingEnabled:[r21 eventBufferingEnabled]];
            r2 = [r21 sendInBackground];
            [r20 setSendInBackground:r2];
            [r21 delayStart];
            [r20 setDelayStart:r2];
            r0 = [r21 userAgent];
            r0 = [r0 retain];
            r19 = [r0 copyWithZone:r19];
            [r20 setUserAgent:r19];
            [r19 release];
            [r0 release];
    }
    r0 = r20;
    return r0;
}

-(void)setDefaultTracker:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)environment {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_environment)), 0x0);
    return r0;
}

-(void *)appToken {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_appToken)), 0x0);
    return r0;
}

-(int)logLevel {
    r0 = *(int32_t *)(int64_t *)&self->_logLevel;
    return r0;
}

-(bool)eventBufferingEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_eventBufferingEnabled;
    return r0;
}

-(void)setEventBufferingEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_eventBufferingEnabled = arg2;
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(bool)sendInBackground {
    r0 = *(int8_t *)(int64_t *)&self->_sendInBackground;
    return r0;
}

-(void)setDelayStart:(double)arg2 {
    self->_delayStart = d0;
    return;
}

-(double)delayStart {
    r0 = self;
    return r0;
}

-(void)setSendInBackground:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_sendInBackground = arg2;
    return;
}

-(void *)userAgent {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_userAgent)), 0x0);
    return r0;
}

-(void)setLogger:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_logger, arg2);
    return;
}

-(void)setUserAgent:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)logger {
    r0 = objc_loadWeakRetained((int64_t *)&self->_logger);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_logger);
    objc_storeStrong((int64_t *)&self->_userAgent, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_environment, 0x0);
    objc_storeStrong((int64_t *)&self->_appToken, 0x0);
    objc_storeStrong((int64_t *)&self->_defaultTracker, 0x0);
    objc_storeStrong((int64_t *)&self->_sdkPrefix, 0x0);
    return;
}

@end