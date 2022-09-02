@implementation VungleAdPart

-(void *)initWithRemotePath:(void *)arg2 type:(unsigned long long)arg3 local:(bool)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r20 = arg3;
    r22 = arg2;
    r21 = [arg2 retain];
    r0 = [[&var_40 super] init];
    r23 = r0;
    if (r0 != 0x0) {
            objc_storeStrong(r23 + 0x18, r22);
            *(r23 + 0x20) = r20;
            *(int8_t *)(r23 + 0x9) = r19;
            *(int8_t *)(r23 + 0x8) = 0x0;
    }
    [r21 release];
    r0 = r23;
    return r0;
}

-(void *)initWithDictionary:(void *)arg2 {
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
    r0 = [arg2 retain];
    r19 = r0;
    r20 = [[r0 objectForKeyedSubscript:@"url"] retain];
    r0 = [r19 objectForKeyedSubscript:@"type"];
    r0 = [r0 retain];
    r24 = [r0 integerValue];
    [r0 release];
    r0 = [r19 objectForKeyedSubscript:@"is_local"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r26 = [r0 boolValue];
    [r0 release];
    r0 = [self initWithRemotePath:r20 type:r24 local:r26];
    r22 = r0;
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"status"];
            r0 = [r0 retain];
            *(int8_t *)(r22 + 0x8) = [r0 boolValue];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 decodeObjectForKey:@"url"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x18);
            *(r20 + 0x18) = r0;
            [r8 release];
            r8 = &@selector(initWithCreationCallback:cleanCallback:cleanPhase:);
            objc_msgSend(r19, *(r8 + 0xc48));
            asm { sxtw       x8, w0 };
            *(r20 + 0x20) = r8;
            *(int8_t *)(r20 + 0x9) = [r19 decodeBoolForKey:@"isLocal"];
            *(int8_t *)(r20 + 0x8) = [r19 decodeBoolForKey:@"ready"];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    r20 = [arg2 retain];
    r22 = [[self remotePath] retain];
    [arg2 encodeObject:r22 forKey:@"url"];
    [r22 release];
    [arg2 encodeInt32:[self type] forKey:@"type"];
    [arg2 encodeBool:[self isLocal] forKey:@"isLocal"];
    [arg2 encodeBool:[self isReady] forKey:@"ready"];
    [r20 release];
    return;
}

-(void *)description {
    r21 = [[self remotePath] retain];
    [self type];
    [self isReady];
    r19 = [[NSString stringWithFormat:r2] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)isValid {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self isLocal] != 0x0) {
            r0 = [r19 isReady];
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(void *)parentAdUnit {
    r0 = objc_loadWeakRetained(self + 0x10);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setParentAdUnit:(void *)arg2 {
    objc_storeWeak(self + 0x10, arg2);
    return;
}

-(void *)filename {
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
    r23 = self;
    r20 = [[self remotePath] retain];
    r19 = [[NSURLComponents componentsWithString:r20] retain];
    [r20 release];
    r0 = [r19 path];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 lastPathComponent];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 pathExtension];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r25 release];
    [r24 release];
    if ([r20 length] != 0x0) {
            r0 = [r19 path];
            r0 = [r0 retain];
            r21 = [[r0 lastPathComponent] retain];
            r0 = r0;
    }
    else {
            r25 = @selector(length);
            r0 = [r19 query];
            r29 = r29;
            r0 = [r0 retain];
            r25 = objc_msgSend(r0, r25);
            [r0 release];
            if (r25 != 0x0) {
                    r24 = [[r19 query] retain];
                    r0 = [r23 redirectURLFromURLQueryString:r24];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r24 release];
                    if (r23 != 0x0) {
                            r0 = [NSURLComponents componentsWithURL:r23 resolvingAgainstBaseURL:0x1];
                            r0 = [r0 retain];
                            r24 = r0;
                            r0 = [r0 path];
                            r0 = [r0 retain];
                            r21 = [[r0 lastPathComponent] retain];
                            [r0 release];
                            [r24 release];
                    }
                    else {
                            r21 = 0x0;
                    }
                    r0 = r23;
            }
            else {
                    r0 = [r19 path];
                    r0 = [r0 retain];
                    r21 = [[r0 lastPathComponent] retain];
                    r0 = r0;
            }
    }
    [r0 release];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)remotePath {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x1);
    return r0;
}

-(bool)isReady {
    r0 = *(int8_t *)(self + 0x8) & 0x1;
    return r0;
}

-(bool)isLocal {
    r0 = *(int8_t *)(self + 0x9) & 0x1;
    return r0;
}

-(void *)redirectURLFromURLQueryString:(void *)arg2 {
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
    r0 = [arg2 componentsSeparatedByString:@"&"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_110 = q0;
    r0 = [r0 retain];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_180 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_10060f2d8;

loc_10060f0c0:
    r22 = @selector(componentsSeparatedByString:);
    r26 = r0;
    r24 = *var_110;
    var_178 = r24;
    var_170 = r20;
    goto loc_10060f0d8;

loc_10060f0d8:
    r25 = 0x0;
    goto loc_10060f13c;

loc_10060f13c:
    if (*var_110 != r24) {
            objc_enumerationMutation(r20);
    }
    r0 = *(var_118 + r25 * 0x8);
    r0 = objc_msgSend(r0, r22);
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 lastObject];
    r0 = [r0 retain];
    r28 = [[r0 stringByRemovingPercentEncoding] retain];
    [r0 release];
    r0 = [NSURL URLWithString:r28];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 == 0x0) goto loc_10060f294;

loc_10060f1c8:
    r0 = [r19 scheme];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_10060f294;

loc_10060f1e0:
    r23 = r0;
    r0 = [r19 host];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_10060f284;

loc_10060f1fc:
    r27 = r0;
    r0 = [r19 lastPathComponent];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 pathExtension];
    r29 = r29;
    r0 = [r0 retain];
    var_148 = [r0 length];
    r22 = r22;
    r26 = r26;
    r24 = var_178;
    [r0 release];
    r0 = r20;
    r20 = var_170;
    [r0 release];
    [r27 release];
    [r23 release];
    if (var_148 == 0x0) goto loc_10060f294;

loc_10060f280:
    [r28 release];
    [r21 release];
    [r20 release];
    goto loc_10060f300;

loc_10060f300:
    var_60 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10060f294:
    [r19 release];
    [r28 release];
    [r21 release];
    r25 = r25 + 0x1;
    if (r25 < r26) goto loc_10060f13c;

loc_10060f2b8:
    r0 = objc_msgSend(r20, var_180);
    r26 = r0;
    if (r0 != 0x0) goto loc_10060f0d8;

loc_10060f2d8:
    [r20 release];
    r19 = 0x0;
    goto loc_10060f300;

loc_10060f284:
    [r23 release];
    goto loc_10060f294;
}

-(void)setReady:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x18, 0x0);
    objc_destroyWeak(self + 0x10);
    return;
}

-(unsigned long long)type {
    r0 = *(self + 0x20);
    return r0;
}

@end