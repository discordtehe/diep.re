@implementation FBAdVideoLoggingEvent

-(void *)init {
    r0 = [self initWithLoggingParams:**___NSDictionary0__];
    return r0;
}

-(void *)initWithLoggingParams:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_loggingParams, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_loggingParams, 0x0);
    return;
}

-(void *)loggingParams {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_loggingParams)), 0x0);
    return r0;
}

+(void *)loggingEventWithAction:(long long)arg2 targetView:(void *)arg3 autoplay:(bool)arg4 currentTime:(double)arg5 cardIndex:(void *)arg6 cardCount:(void *)arg7 {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    [arg3 retain];
    r19 = [arg5 retain];
    r20 = [arg6 retain];
    r21 = [[NSMutableDictionary dictionary] retain];
    sub_100ab69b4();
    sub_100ab6a50(r21, r24);
    [r24 release];
    if (arg4 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r2 = @"0";
            }
            else {
                    r2 = @"1";
            }
    }
    [r21 setObject:r2 forKeyedSubscript:@"autoplay"];
    sub_100ab6cf8();
    if (r19 != 0x0) {
            sub_100ab7238(r21, [r19 integerValue]);
    }
    if (r20 != 0x0) {
            sub_100ab72c8(r21, [r20 integerValue]);
    }
    r22 = [[FBAdVideoLoggingEvent alloc] initWithLoggingParams:r21];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

+(void *)loggingEventWithAction:(long long)arg2 targetView:(void *)arg3 autoplay:(bool)arg4 currentTime:(double)arg5 viewabilityStatistics:(void *)arg6 audibilityStatistics:(void *)arg7 cardIndex:(void *)arg8 cardCount:(void *)arg9 {
    var_60 = d9;
    stack[-104] = d8;
    r31 = r31 + 0xffffffffffffff90;
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
    v8 = v0;
    [arg3 retain];
    r23 = [arg5 retain];
    r22 = [arg6 retain];
    r19 = [arg7 retain];
    r20 = [arg8 retain];
    r21 = [[NSMutableDictionary dictionary] retain];
    sub_100ab69b4();
    sub_100ab6a50(r21, r27);
    [r27 release];
    if (arg4 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r2 = @"0";
            }
            else {
                    r2 = @"1";
            }
    }
    [r21 setObject:r2 forKeyedSubscript:@"autoplay"];
    sub_100ab6cf8();
    sub_100ab6d90(r21, r23);
    [r23 release];
    sub_100ab6fe4(r21, r22);
    [r22 release];
    if (r19 != 0x0) {
            sub_100ab7238(r21, [r19 integerValue]);
    }
    if (r20 != 0x0) {
            sub_100ab72c8(r21, [r20 integerValue]);
    }
    r22 = [[FBAdVideoLoggingEvent alloc] initWithLoggingParams:r21];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

+(void *)loggingEventWithAction:(long long)arg2 targetView:(void *)arg3 autoplay:(bool)arg4 currentTime:(double)arg5 previousTime:(double)arg6 viewabilityStatistics:(void *)arg7 audibilityStatistics:(void *)arg8 cardIndex:(void *)arg9 cardCount:(void *)arg10 {
    r31 = r31 - 0x80;
    var_60 = d9;
    stack[-104] = d8;
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
    v9 = v0;
    [arg3 retain];
    r22 = [arg5 retain];
    r21 = [arg6 retain];
    r19 = [arg7 retain];
    r20 = [arg8 retain];
    r0 = [NSMutableDictionary dictionary];
    r29 = &saved_fp;
    r25 = [r0 retain];
    sub_100ab69b4();
    sub_100ab6a50(r25, r26);
    [r26 release];
    if (arg4 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r2 = @"0";
            }
            else {
                    r2 = @"1";
            }
    }
    [r25 setObject:r2 forKeyedSubscript:@"autoplay"];
    sub_100ab6cf8();
    r27 = @selector(stringWithFormat:);
    r23 = [r25 retain];
    r25 = [objc_msgSend(@class(NSString), r27) retain];
    [r23 setObject:r25 forKeyedSubscript:@"ptime"];
    [r23 release];
    [r25 release];
    sub_100ab6d90(r23, r22);
    [r22 release];
    sub_100ab6fe4(r23, r21);
    [r21 release];
    if (r19 != 0x0) {
            sub_100ab7238(r23, [r19 integerValue]);
    }
    if (r20 != 0x0) {
            sub_100ab72c8(r23, [r20 integerValue]);
    }
    r21 = [[FBAdVideoLoggingEvent alloc] initWithLoggingParams:r23];
    [r23 release];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

@end