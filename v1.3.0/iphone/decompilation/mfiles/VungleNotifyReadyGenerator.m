@implementation VungleNotifyReadyGenerator

-(void *)initWithCacheableReplacementTokens:(void *)arg2 nonCacheableReplacements:(void *)arg3 converter:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [r20 retain];
    r0 = [[&var_40 super] init];
    r23 = r0;
    if (r0 != 0x0) {
            r0 = [r19 copy];
            r8 = *(r23 + 0x8);
            *(r23 + 0x8) = r0;
            [r8 release];
            r0 = [r21 copy];
            r8 = *(r23 + 0x10);
            *(r23 + 0x10) = r0;
            [r8 release];
            objc_storeStrong(r23 + 0x18, r20);
    }
    [r22 release];
    [r21 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void *)generateJavascript {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = *(self + 0x8);
    if (r0 == 0x0 && *(r20 + 0x10) == 0x0) {
            r21 = [[NSString stringWithFormat:@"vungle.mraidBridge.notifyReadyEvent(%@);"] retain];
    }
    else {
            r19 = [*(r20 + 0x10) count] + [r0 count];
            r0 = objc_alloc();
            r0 = [r0 initWithCapacity:r19];
            r19 = r0;
            [r0 addEntriesFromDictionary:*(r20 + 0x8)];
            [r19 addEntriesFromDictionary:*(r20 + 0x10)];
            r0 = [r20 stringFromDictionary:r19];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            if (r0 == 0x0) {
                    [@"{}" retain];
                    [r20 release];
                    r20 = @"{}";
            }
            r21 = [[NSString stringWithFormat:r2] retain];
            [r20 release];
            [r19 release];
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)stringFromDictionary:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *(self + 0x18);
    r0 = [r0 JSONStringWithNSDictionary:arg2 options:0x1 error:&var_18];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 retain];
    }
    [r19 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)cacheableReplacementTokens {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setCacheableReplacementTokens:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void *)nonCacheableReplacementTokens {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setNonCacheableReplacementTokens:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void *)converter {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setConverter:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end