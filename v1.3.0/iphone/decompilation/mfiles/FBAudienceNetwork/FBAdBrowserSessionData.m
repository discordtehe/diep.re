@implementation FBAdBrowserSessionData

-(void *)initWithURL:(void *)arg2 withHandlerTime:(unsigned long long)arg3 withLoadStart:(unsigned long long)arg4 withResponseEnd:(unsigned long long)arg5 withDOMContentLoaded:(unsigned long long)arg6 withScrollReady:(unsigned long long)arg7 withLoadFinish:(unsigned long long)arg8 withSessionFinish:(unsigned long long)arg9 {
    var_8 = arg9;
    var_0 = arg8;
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
    r19 = arg7;
    r21 = arg6;
    r22 = arg5;
    r23 = arg4;
    r25 = arg3;
    r26 = arg2;
    r20 = [arg2 retain];
    r0 = [[&var_60 super] init];
    r24 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r24->_url, r26);
            r24->_handlerTimeMs = r25;
            r24->_loadStartMs = r23;
            r24->_responseEndMs = r22;
            r24->_domContentLoadedMs = r21;
            r24->_scrollReadyMs = r19;
            r24->_loadFinishMs = var_0;
            r24->_sessionFinishMs = var_8;
    }
    [r20 release];
    r0 = r24;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_url, 0x0);
    return;
}

-(void *)url {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_url)), 0x0);
    return r0;
}

-(void)setUrl:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(unsigned long long)handlerTimeMs {
    r0 = self->_handlerTimeMs;
    return r0;
}

-(void)setHandlerTimeMs:(unsigned long long)arg2 {
    self->_handlerTimeMs = arg2;
    return;
}

-(void *)dataMap {
    r31 = r31 - 0x190;
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
    var_60 = **___stack_chk_guard;
    r25 = [[NSDate date] retain];
    [self handlerTimeMs];
    [self loadStartMs];
    [self responseEndMs];
    [self domContentLoadedMs];
    [self scrollReadyMs];
    [self loadFinishMs];
    [self sessionFinishMs];
    [FBAdLogger logInTestModeWithFile:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/internal/browser/data/FBAdBrowserSessionData.m" lineNumber:0x52 format:@"Browser session data logged at %@                     - Handler Time: %llu                     - Load Start Time: %llu                     - Response End Time: %llu                     - DOM Content Loaded Time: %llu                     - Scroll Ready Time…"];
    [r25 release];
    r0 = [self url];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 absoluteString];
    r0 = [r0 retain];
    var_E8 = r0;
    [r20 release];
    r0 = [NSNumber numberWithUnsignedLongLong:[self handlerTimeMs]];
    r0 = [r0 retain];
    var_F0 = r0;
    var_100 = [[r0 stringValue] retain];
    r0 = [NSNumber numberWithUnsignedLongLong:[self loadStartMs]];
    r0 = [r0 retain];
    var_110 = r0;
    var_118 = [[r0 stringValue] retain];
    r0 = [NSNumber numberWithUnsignedLongLong:[self responseEndMs]];
    r0 = [r0 retain];
    var_128 = r0;
    var_138 = [[r0 stringValue] retain];
    r0 = [NSNumber numberWithUnsignedLongLong:[self domContentLoadedMs]];
    r0 = [r0 retain];
    r22 = r0;
    r24 = [[r0 stringValue] retain];
    r0 = [NSNumber numberWithUnsignedLongLong:[self scrollReadyMs]];
    r0 = [r0 retain];
    r27 = r0;
    r25 = [[r0 stringValue] retain];
    r0 = [NSNumber numberWithUnsignedLongLong:[self loadFinishMs]];
    r0 = [r0 retain];
    r26 = r0;
    r20 = [[r0 stringValue] retain];
    r0 = [NSNumber numberWithUnsignedLongLong:[self sessionFinishMs]];
    r0 = [r0 retain];
    r23 = r0;
    r21 = [[r0 stringValue] retain];
    r0 = [NSDictionary dictionaryWithObjects:&saved_fp - 0xa0 forKeys:&var_E0 count:0x8];
    r19 = [r0 retain];
    [r21 release];
    [r23 release];
    [r20 release];
    [r26 release];
    [r25 release];
    [r27 release];
    [r24 release];
    [r22 release];
    [var_138 release];
    [var_128 release];
    [var_118 release];
    [var_110 release];
    [var_100 release];
    [var_F0 release];
    [var_E8 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(unsigned long long)loadStartMs {
    r0 = self->_loadStartMs;
    return r0;
}

-(void)setLoadStartMs:(unsigned long long)arg2 {
    self->_loadStartMs = arg2;
    return;
}

-(unsigned long long)responseEndMs {
    r0 = self->_responseEndMs;
    return r0;
}

-(void)setResponseEndMs:(unsigned long long)arg2 {
    self->_responseEndMs = arg2;
    return;
}

-(unsigned long long)domContentLoadedMs {
    r0 = self->_domContentLoadedMs;
    return r0;
}

-(void)setDomContentLoadedMs:(unsigned long long)arg2 {
    self->_domContentLoadedMs = arg2;
    return;
}

-(unsigned long long)scrollReadyMs {
    r0 = self->_scrollReadyMs;
    return r0;
}

-(void)setScrollReadyMs:(unsigned long long)arg2 {
    self->_scrollReadyMs = arg2;
    return;
}

-(unsigned long long)loadFinishMs {
    r0 = self->_loadFinishMs;
    return r0;
}

-(void)setLoadFinishMs:(unsigned long long)arg2 {
    self->_loadFinishMs = arg2;
    return;
}

-(unsigned long long)sessionFinishMs {
    r0 = self->_sessionFinishMs;
    return r0;
}

-(void)setSessionFinishMs:(unsigned long long)arg2 {
    self->_sessionFinishMs = arg2;
    return;
}

+(unsigned long long)currentTimeMs {
    r0 = [NSDate date];
    r0 = [r0 retain];
    r19 = r0;
    [r0 timeIntervalSince1970];
    asm { fcvtzu     x20, d0 };
    [r19 release];
    r0 = r20;
    return r0;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdBrowserSessionData");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

@end