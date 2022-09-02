@implementation FRSNTP

+(void)activate {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if (([FRSNTP inProgress] & 0x1) != 0x0) {
            objc_sync_exit(r19);
    }
    else {
            r0 = [FRSNTP sharedInstance];
            r0 = [r0 retain];
            [r0 setBInProgress:0x1];
            [r0 release];
            objc_sync_exit(r19);
            [r19 release];
            r0 = dispatch_get_global_queue(0xfffffffffffffffe, 0x0);
            r0 = [r0 retain];
            r19 = r0;
            dispatch_async(r0, 0x100ea21a8);
    }
    [r19 release];
    return;
}

+(bool)inProgress {
    r0 = [FRSNTP sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 bInProgress];
    [r0 release];
    r0 = r20;
    return r0;
}

+(void)inactivate {
    r0 = @class(FRSNTP);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 setBInProgress:0x0];
    [r0 release];
    r0 = @class(FRSNTP);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 setBActive:0x0];
    [r0 release];
    r0 = @class(FRSNTP);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 setUptimeAtQueryNTP:0x0];
    [r0 release];
    r0 = @class(FRSNTP);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 setUptimeAtReceiveNTP:0x0];
    [r0 release];
    r0 = @class(FRSNTP);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 setNtpTime:0x0];
    [r0 release];
    return;
}

+(bool)isActive {
    r0 = [FRSNTP sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 bActive];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setBInProgress:0x0];
            [r19 setBActive:0x0];
            [r19 setUptimeAtQueryNTP:0x0];
            [r19 setUptimeAtReceiveNTP:0x0];
            [r19 setNtpTime:0x0];
    }
    r0 = r19;
    return r0;
}

+(void *)sharedInstance {
    if (*qword_1011dc110 != -0x1) {
            dispatch_once(0x1011dc110, 0x100ea21e8);
    }
    r0 = *0x1011dc118;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)networkTime {
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
    if ([FRSNTP isActive] == 0x0) goto loc_100927804;

loc_1009276a4:
    r0 = [FRSNTP sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 ntpTime];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_1009277fc;

loc_1009276e4:
    r0 = [FRSNTP sharedInstance];
    r0 = [r0 retain];
    r23 = r0;
    r24 = [[r0 ntpTime] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    if (r24 != r0) {
            r21 = [FRSNTP iOSUptime];
            r0 = @class(FRSNTP);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            r21 - [r0 uptimeAtReceiveNTP];
            [r0 release];
            r0 = @class(FRSNTP);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 ntpTime];
            r0 = [r0 retain];
            r20 = r0;
            asm { scvtf      d0, x23 };
            r19 = [[r0 dateByAddingTimeInterval:r2] retain];
            [r20 release];
            [r21 release];
    }
    else {
            r19 = 0x0;
    }
    goto loc_100927808;

loc_100927808:
    r0 = [r19 autorelease];
    return r0;

loc_1009277fc:
    [r21 release];
    goto loc_100927804;

loc_100927804:
    r19 = 0x0;
    goto loc_100927808;
}

-(bool)bInProgress {
    r0 = *(int8_t *)(int64_t *)&self->_bInProgress & 0x1;
    return r0;
}

+(long long)iOSUptime {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = time(&var_28);
    r0 = sysctl(&saved_fp - 0x8, 0x2, &var_18, &var_20, 0x0, 0x0);
    if (r0 != -0x1) {
            r8 = var_18;
            if (r8 != 0x0) {
                    r0 = var_28 - r8;
            }
            else {
                    r0 = 0xffffffffffffffff;
            }
    }
    else {
            r0 = 0xffffffffffffffff;
    }
    return r0;
}

-(void *)resolveNTPServer {
    r31 = r31 - 0x60;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = getaddrinfo("pool.ntp.org", "123", &stack[-80], &var_48);
    r8 = r0;
    r19 = 0x0;
    r0 = var_48;
    if (r8 != 0x0) goto loc_100927a50;

loc_100927a18:
    r19 = 0x0;
    if (r0 == 0x0) goto loc_100927a50;

loc_100927a1c:
    if (*(int32_t *)(r0 + 0x10) == 0x0) goto loc_100927a58;

loc_100927a24:
    r19 = [[NSData dataWithBytes:*(r0 + 0x20) length:r3] retain];
    r0 = var_48;
    goto loc_100927a50;

loc_100927a50:
    if (r0 != 0x0) {
            freeaddrinfo(r0);
    }
    goto loc_100927a60;

loc_100927a60:
    r0 = [r19 autorelease];
    return r0;

loc_100927a58:
    r19 = 0x0;
    freeaddrinfo(r0);
    goto loc_100927a60;
}

-(void)setBInProgress:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_bInProgress = arg2;
    return;
}

-(bool)bActive {
    r0 = *(int8_t *)(int64_t *)&self->_bActive & 0x1;
    return r0;
}

-(void)setBActive:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_bActive = arg2;
    return;
}

-(void)queryNTP:(void *)arg2 {
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
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0x100c0;
    r20 = self;
    r27 = r29 - 0x88;
    *(r27 + 0x30) = **___stack_chk_guard;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] < 0x10) goto loc_100927ed8;

loc_100927ad4:
    r0 = objc_retainAutorelease(r19);
    r25 = r0;
    r24 = [r0 bytes];
    r8 = *(int8_t *)(r24 + 0x1);
    if (r8 != 0x2) goto loc_100927b20;

loc_100927b00:
    if ([r25 length] < 0xf) goto loc_100927b1c;

loc_100927b14:
    r0 = 0x2;
    goto loc_100927b40;

loc_100927b40:
    r28 = socket(r0, 0x2, 0x11);
    *(r27 + 0x14) = 0x0;
    *(r27 + 0xc) = 0x0;
    *(int32_t *)(r27 + 0x24) = 0x0;
    *(r27 + 0x1c) = 0x0;
    *r27 = *0x100bf4930;
    *(int32_t *)(r27 + 0x8) = 0x100;
    gettimeofday(&var_D8, 0x0);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_clientSendTime));
    *(int128_t *)(r20 + r8) = var_D8 + 0x83aa7e80;
    *(int128_t *)(0x4 + r20 + r8) = var_D0 * 0x10c6 + var_D0 * 0x7bd / 0x800;
    [FRSNTP iOSUptime];
    r8 = &@selector(platformType);
    objc_msgSend(r20, *(r8 + 0xc48));
    asm { rev        w8, w21 };
    asm { rev        w9, w22 };
    *(int128_t *)(r27 + 0x28) = r8;
    *(int128_t *)(r27 + 0x2c) = r9;
    r0 = [NSData dataWithBytes:r29 - 0x88 length:0x30];
    r29 = r29;
    [r0 retain];
    setsockopt(r28, 0xffff, 0x1006, &var_E8, 0x10);
    r0 = objc_retainAutorelease(r22);
    r22 = r0;
    sendto(r28, objc_msgSend(r0, r26), objc_msgSend(r22, r23), 0x0, r24, objc_msgSend(r25, r23));
    r0 = recvfrom(r28, &stack[-168], 0x10000, 0x0, 0x0, 0x0);
    r8 = r0;
    if (r8 >= 0x1) {
            r2 = &stack[-168];
            r0 = [NSData dataWithBytes:r2 length:r3];
            r29 = r29;
            r23 = [r0 retain];
            gettimeofday(&var_F8, 0x0);
            [r20 setUptimeAtReceiveNTP:[FRSNTP iOSUptime]];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_clientRecvTime));
            *(int32_t *)(r20 + r9) = var_F8 + 0x83aa7e80;
            *(int32_t *)(0x4 + r20 + r9) = var_F0 * 0x10c6 + var_F0 * 0x7bd / 0x800;
            [r23 getBytes:&stack[-216] length:0x30];
            r8 = var_A8;
            asm { rev        w8, w8 };
            r24 = (int64_t *)&r20->_serverRecvTime;
            *(int32_t *)r24 = r8;
            r8 = var_A4;
            asm { rev        w8, w8 };
            *(int32_t *)(r24 + 0x4) = r8;
            r8 = var_A0;
            asm { rev        w8, w8 };
            r25 = (int64_t *)&r20->_serverSendTime;
            *(int32_t *)r25 = r8;
            r8 = var_9C;
            asm { rev        w8, w8 };
            *(int32_t *)(r25 + 0x4) = r8;
            [r20 uptimeAtReceiveNTP] - [r20 uptimeAtQueryNTP];
            asm { scvtf      d0, x8 };
            r8 = *(int128_t *)r25;
            r9 = *(int128_t *)(r25 + 0x4);
            r10 = *(int128_t *)r24;
            r11 = *(int128_t *)(r24 + 0x4);
            r10 = r8 - r10;
            r13 = r10 - 0x1;
            r11 = r9 - r11;
            if (CPU_FLAGS & NS) {
                    asm { csinv      w11, w11, w12, hs };
            }
            d0 = *0x100bf4930;
            asm { scvtf      d1, w10 };
            asm { ucvtf      d2, w11 };
            d3 = *0x100bf3158;
            d0 = d0 - d2 * d3 + d1;
            d1 = 0x3fe0000000000000;
            d0 = d0 * d1;
            asm { fcvtzs     x10, d0 };
            r0 = @class(NSDate);
            asm { scvtf      d0, w8 };
            asm { ucvtf      d1, w9 };
            asm { scvtf      d1, x10 };
            r21 = [[r0 dateWithTimeIntervalSince1970:r2] retain];
            [r20 setNtpTime:r21];
            [r21 release];
            [r20 setBActive:0x1];
            [r20 setBInProgress:0x0];
            [r23 release];
    }
    else {
            [FRSNTP inactivate];
    }
    close(r28);
    [r22 release];
    goto loc_100927ed8;

loc_100927ed8:
    [r19 release];
    if (**___stack_chk_guard != *(r27 + 0x30)) {
            __stack_chk_fail();
    }
    return;

loc_100927b1c:
    r8 = *(int8_t *)(r24 + 0x1);
    goto loc_100927b20;

loc_100927b20:
    if (r8 != 0x1e || [r25 length] < 0x1c) goto loc_100927ed8;

loc_100927b3c:
    r0 = 0x1e;
    goto loc_100927b40;
}

-(struct ntpTimestamp)clientSendTime {
    objc_copyStruct(&var_8, (int64_t *)&self->_clientSendTime, 0x8, 0x1, 0x0);
    r0 = var_8;
    return r0;
}

-(void)setClientSendTime:(struct ntpTimestamp)arg2 {
    memcpy(&r2, &arg2, 0x8);
    objc_copyStruct((int64_t *)&self->_clientSendTime, &var_8, 0x8, 0x1, 0x0);
    return;
}

-(struct ntpTimestamp)clientRecvTime {
    objc_copyStruct(&var_8, (int64_t *)&self->_clientRecvTime, 0x8, 0x1, 0x0);
    r0 = var_8;
    return r0;
}

-(void)setClientRecvTime:(struct ntpTimestamp)arg2 {
    memcpy(&r2, &arg2, 0x8);
    objc_copyStruct((int64_t *)&self->_clientRecvTime, &var_8, 0x8, 0x1, 0x0);
    return;
}

-(struct ntpTimestamp)serverRecvTime {
    objc_copyStruct(&var_8, (int64_t *)&self->_serverRecvTime, 0x8, 0x1, 0x0);
    r0 = var_8;
    return r0;
}

-(struct ntpTimestamp)serverSendTime {
    objc_copyStruct(&var_8, (int64_t *)&self->_serverSendTime, 0x8, 0x1, 0x0);
    r0 = var_8;
    return r0;
}

-(void)setServerRecvTime:(struct ntpTimestamp)arg2 {
    memcpy(&r2, &arg2, 0x8);
    objc_copyStruct((int64_t *)&self->_serverRecvTime, &var_8, 0x8, 0x1, 0x0);
    return;
}

-(void)setServerSendTime:(struct ntpTimestamp)arg2 {
    memcpy(&r2, &arg2, 0x8);
    objc_copyStruct((int64_t *)&self->_serverSendTime, &var_8, 0x8, 0x1, 0x0);
    return;
}

-(long long)uptimeAtQueryNTP {
    r0 = self->_uptimeAtQueryNTP;
    return r0;
}

-(void)setUptimeAtQueryNTP:(long long)arg2 {
    self->_uptimeAtQueryNTP = arg2;
    return;
}

-(long long)uptimeAtReceiveNTP {
    r0 = self->_uptimeAtReceiveNTP;
    return r0;
}

-(void)setUptimeAtReceiveNTP:(long long)arg2 {
    self->_uptimeAtReceiveNTP = arg2;
    return;
}

-(void *)ntpTime {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_ntpTime)), 0x1);
    return r0;
}

-(void)setNtpTime:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_ntpTime, 0x0);
    return;
}

@end