@implementation VNGUserLocalConsentMessage

+(void *)sharedMessage {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011da8b0 != -0x1) {
            dispatch_once(0x1011da8b0, &var_28);
    }
    r0 = *0x1011da8a8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r0 = [self initWithConsentTitle:@"Targeted Ads" consentBody:@"To receive more relevant ad content based on your location, click 'I Consent' below. " acceptText:@"I Consent" denyText:@"I Do Not Consent" version:@""];
    return r0;
}

-(void *)initWithConsentTitle:(void *)arg2 consentBody:(void *)arg3 acceptText:(void *)arg4 denyText:(void *)arg5 version:(void *)arg6 {
    r31 = r31 - 0x80;
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
    r25 = arg6;
    r26 = arg5;
    r27 = arg4;
    r28 = arg3;
    r19 = arg2;
    var_68 = [arg2 retain];
    r20 = [r28 retain];
    r21 = [r27 retain];
    r22 = [r26 retain];
    r24 = [r25 retain];
    r0 = [[&var_60 super] init];
    r23 = r0;
    if (r0 != 0x0) {
            objc_storeStrong(r23 + 0x8, r19);
            objc_storeStrong(r23 + 0x10, r28);
            objc_storeStrong(r23 + 0x18, r27);
            objc_storeStrong(r23 + 0x20, r26);
            objc_storeStrong(r23 + 0x28, r25);
            r0 = [VNGPersistenceManager sharedManager];
            r0 = [r0 retain];
            [r0 saveObject:r23 error:0x0];
            [r0 release];
    }
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [var_68 release];
    r0 = r23;
    return r0;
}

-(void)updateConsentTitle:(void *)arg2 consentBody:(void *)arg3 acceptText:(void *)arg4 denyText:(void *)arg5 version:(void *)arg6 {
    r24 = [arg2 retain];
    r23 = [arg3 retain];
    r22 = [arg4 retain];
    r21 = [arg5 retain];
    r20 = [arg6 retain];
    [self setConsentMessageTitleText:r24];
    [r24 release];
    [self setConsentMessageBodyText:r23];
    [r23 release];
    [self setConsentAcceptButtonText:r22];
    [r22 release];
    [self setConsentDenyButtonText:r21];
    [r21 release];
    [self setConsentMessageVersion:r20];
    [r20 release];
    r0 = [VNGPersistenceManager sharedManager];
    r0 = [r0 retain];
    [r0 saveObject:self error:0x0];
    [r0 release];
    return;
}

-(void)encodeWithCoder:(void *)arg2 {
    r20 = [arg2 retain];
    r23 = [[self consentMessageTitleText] retain];
    [arg2 encodeObject:r23 forKey:@"titleText"];
    [r23 release];
    r23 = [[self consentMessageBodyText] retain];
    [arg2 encodeObject:r23 forKey:@"bodyText"];
    [r23 release];
    r23 = [[self consentAcceptButtonText] retain];
    [arg2 encodeObject:r23 forKey:@"acceptButtonText"];
    [r23 release];
    r23 = [[self consentDenyButtonText] retain];
    [arg2 encodeObject:r23 forKey:@"denyButtonText"];
    [r23 release];
    r21 = [[self consentMessageVersion] retain];
    [arg2 encodeObject:r21 forKey:@"messageVersion"];
    [r20 release];
    [r21 release];
    return;
}

-(void *)persistenceKey {
    objc_retainAutorelease(@"GDPRConsentMessage");
    return @"GDPRConsentMessage";
}

-(void *)persistenceCategory {
    objc_retainAutorelease(@"userInfo");
    return @"userInfo";
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
            r0 = [r19 decodeObjectForKey:@"titleText"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x8);
            *(r20 + 0x8) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"bodyText"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x10);
            *(r20 + 0x10) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"acceptButtonText"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x18);
            *(r20 + 0x18) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"denyButtonText"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x20);
            *(r20 + 0x20) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"messageVersion"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x28);
            *(r20 + 0x28) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)category {
    objc_retainAutorelease(@"userInfo");
    return @"userInfo";
}

+(long long)channel {
    return 0x0;
}

-(long long)persistenceChannel {
    return 0x0;
}

+(void *)key {
    objc_retainAutorelease(@"GDPRConsentMessage");
    return @"GDPRConsentMessage";
}

-(void)setConsentMessageTitleText:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)consentMessageTitleText {
    r0 = objc_getProperty(self, _cmd, 0x8, 0x0);
    return r0;
}

-(void *)consentMessageBodyText {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void)setConsentMessageBodyText:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)consentAcceptButtonText {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x0);
    return r0;
}

-(void)setConsentAcceptButtonText:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)consentDenyButtonText {
    r0 = objc_getProperty(self, _cmd, 0x20, 0x0);
    return r0;
}

-(void)setConsentDenyButtonText:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setConsentMessageVersion:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)consentMessageVersion {
    r0 = objc_getProperty(self, _cmd, 0x28, 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end