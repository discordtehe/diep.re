@implementation VNGUserConsentInfoModel

+(void *)sharedModel {
    if (*qword_1011da958 != -0x1) {
            dispatch_once(0x1011da958, 0x100e89cb8);
    }
    r0 = *0x1011da950;
    r0 = objc_retainAutoreleaseReturnValue(r0);
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
    if (r0 != 0x0) {
            objc_storeStrong(r19 + 0x10, @"unknown");
            objc_storeStrong(r19 + 0x18, @"publisher");
            objc_storeStrong(r19 + 0x20, @"");
            *(r19 + 0x28) = 0x0;
            *(int8_t *)(r19 + 0x8) = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void *)persistenceKey {
    objc_retainAutorelease(@"GDPRConsentInfo");
    return @"GDPRConsentInfo";
}

-(void)updateWithConsentStatus:(void *)arg2 consentSource:(void *)arg3 consentMessageVersion:(void *)arg4 consentTimeStamp:(void *)arg5 consentRequired:(bool)arg6 {
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
    r29 = &saved_fp;
    r24 = arg6;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [arg4 retain];
    r23 = [arg5 retain];
    [r21 setConsentTimeStamp:r2];
    objc_storeStrong(r21 + 0x10, arg2);
    objc_storeStrong(r21 + 0x18, arg3);
    objc_storeStrong(r21 + 0x20, arg4);
    if (r23 != 0x0) {
            [r23 timeIntervalSince1970];
            asm { fcvtzs     x2, d0 };
            objc_msgSend(r21, r25);
    }
    [r21 setConsentRequired:r24];
    r0 = [VNGPersistenceManager sharedManager];
    r0 = [r0 retain];
    [r0 saveObject:r21 error:0x0];
    [r0 release];
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)encodeWithCoder:(void *)arg2 {
    r20 = [arg2 retain];
    r23 = [[self consentStatus] retain];
    [arg2 encodeObject:r23 forKey:@"consentStatus"];
    [r23 release];
    r23 = [[self consentSource] retain];
    [arg2 encodeObject:r23 forKey:@"consentSource"];
    [r23 release];
    [arg2 encodeInteger:[self consentTimeStamp] forKey:@"consentTimeStamp"];
    [arg2 encodeBool:[self consentRequired] forKey:@"consentRequired"];
    r21 = [[self messageVersion] retain];
    [arg2 encodeObject:r21 forKey:@"consentMessageVersion"];
    [r20 release];
    [r21 release];
    return;
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
            r0 = [r19 decodeObjectForKey:@"consentStatus"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x10);
            *(r20 + 0x10) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"consentSource"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x18);
            *(r20 + 0x18) = r0;
            [r8 release];
            *(r20 + 0x28) = [r19 decodeIntegerForKey:@"consentTimeStamp"];
            *(int8_t *)(r20 + 0x8) = [r19 decodeBoolForKey:@"consentRequired"];
            r0 = [r19 decodeObjectForKey:@"consentMessageVersion"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x20);
            *(r20 + 0x20) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)persistenceCategory {
    objc_retainAutorelease(@"userInfo");
    return @"userInfo";
}

+(void *)key {
    objc_retainAutorelease(@"GDPRConsentInfo");
    return @"GDPRConsentInfo";
}

-(long long)persistenceChannel {
    return 0x0;
}

+(void *)category {
    objc_retainAutorelease(@"userInfo");
    return @"userInfo";
}

+(long long)channel {
    return 0x0;
}

-(void *)consentStatus {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void *)consentSource {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x0);
    return r0;
}

-(void *)messageVersion {
    r0 = objc_getProperty(self, _cmd, 0x20, 0x0);
    return r0;
}

-(long long)consentTimeStamp {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setConsentTimeStamp:(long long)arg2 {
    *(self + 0x28) = arg2;
    return;
}

-(bool)consentRequired {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setConsentRequired:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end