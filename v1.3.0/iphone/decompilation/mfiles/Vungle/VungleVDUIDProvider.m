@implementation VungleVDUIDProvider

+(void *)sharedProvider {
    if (*qword_1011da928 != -0x1) {
            dispatch_once(0x1011da928, 0x100e89ab8);
    }
    r0 = *0x1011da920;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
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
    if (r0 != 0x0) {
            objc_storeWeak(r19 + 0x8, [[NSUserDefaults standardUserDefaults] retain]);
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)setVDUID:(void *)arg2 {
    r21 = [arg2 retain];
    r20 = objc_loadWeakRetained(self + 0x8);
    [arg2 copy];
    [r21 release];
    [r20 setObject:r2 forKey:r3];
    [r19 release];
    [r20 release];
    return;
}

-(void *)VDUID {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = objc_loadWeakRetained(self + 0x8);
    r19 = [[r0 objectForKey:@"kVungleIdentifierProviderVungleDeviceIDKey"] retain];
    [r0 release];
    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
            r20 = 0x0;
    }
    else {
            r20 = [r19 retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)defaults {
    r0 = objc_loadWeakRetained(self + 0x8);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDefaults:(void *)arg2 {
    objc_storeWeak(self + 0x8, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak(self + 0x8);
    return;
}

@end