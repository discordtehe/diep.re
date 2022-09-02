@implementation TJRegulations

+(void *)sharedInstance {
    if (*qword_1011dc200 != -0x1) {
            dispatch_once(0x1011dc200, 0x100ea31b8);
    }
    r0 = *0x1011dc1f8;
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
    if (r19 != 0x0) {
            [r19 loadRegulations];
    }
    r0 = r19;
    return r0;
}

+(void)setUserConsent:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [TJRegulations sharedInstance];
    r0 = [r0 retain];
    [r0 setUserConsent:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void *)getUserConsent {
    r0 = self->consent;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)getUserConsent {
    r0 = [TJRegulations sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 getUserConsent] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setUserConsent:(void *)arg2 {
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
    r20 = arg2;
    r21 = self;
    r19 = [r20 retain];
    if (r19 == 0x0) goto loc_10095d594;

loc_10095d4c4:
    r0 = [NSNull null];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == r19) goto loc_10095d53c;

loc_10095d4ec:
    [NSString class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) goto loc_10095d544;

loc_10095d518:
    r23 = [r19 length];
    [r22 release];
    if (r23 != 0x0) goto loc_10095d54c;

loc_10095d594:
    [r19 release];
    return;

loc_10095d54c:
    objc_storeStrong((int64_t *)&r21->consent, r20);
    r0 = [TJRegulations sharedInstance];
    r0 = [r0 retain];
    [r0 storeUserConsent];
    r0 = r0;
    goto loc_10095d590;

loc_10095d590:
    [r0 release];
    goto loc_10095d594;

loc_10095d544:
    [r22 release];
    goto loc_10095d54c;

loc_10095d53c:
    r0 = r22;
    goto loc_10095d590;
}

+(void)subjectToGDPR:(bool)arg2 {
    r0 = [TJRegulations sharedInstance];
    r0 = [r0 retain];
    [r0 subjectToGDPR:arg2];
    [r0 release];
    return;
}

-(void)storeGDPRApplicability {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    [r0 setObject:r2 forKey:r3];
    [r20 release];
    return;
}

-(void)subjectToGDPR:(bool)arg2 {
    r0 = [NSNumber numberWithBool:arg2];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(isSubjectToGDPR));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r0 = [TJRegulations sharedInstance];
    r0 = [r0 retain];
    [r0 storeGDPRApplicability];
    [r0 release];
    return;
}

-(void)storeUserConsent {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    [r0 setObject:r2 forKey:r3];
    [r20 release];
    return;
}

-(void)loadRegulations {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [NSUserDefaults standardUserDefaults];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(consent));
    if (*(r19 + r21) == 0x0) {
            r0 = [r20 stringForKey:@"TJC_STORED_USER_CONSENT"];
            r29 = r29;
            r0 = [r0 retain];
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(isSubjectToGDPR));
    if (*(r19 + r21) == 0x0) {
            r0 = [r20 objectForKey:@"TJC_STORED_SUBJECT_TO_GDPR"];
            r29 = r29;
            r0 = [r0 retain];
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(isBelowConsentAge));
    if (*(r19 + r21) == 0x0) {
            r0 = [r20 objectForKey:@"TJC_STORED_BELOW_CONSENT_AGE"];
            r0 = [r0 retain];
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
    }
    [r20 release];
    return;
}

+(void *)getRegulationParameters {
    r0 = [TJRegulations sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 getRegulationParameters] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)setBelowConsentAge:(bool)arg2 {
    r0 = [TJRegulations sharedInstance];
    r0 = [r0 retain];
    [r0 setBelowConsentAge:arg2];
    [r0 release];
    return;
}

-(void *)getRegulationParameters {
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
    r20 = self;
    r19 = [[NSMutableDictionary alloc] init];
    if (r20->isSubjectToGDPR != 0x0) {
            [r19 setObject:r2 forKey:r3];
    }
    r23 = sign_extend_64(*(int32_t *)ivar_offset(consent));
    r22 = *(r20 + r23);
    if (r22 != 0x0) {
            r21 = [[NSNull null] retain];
            if (r22 != r21) {
                    r22 = *(r20 + r23);
                    [NSString class];
                    if (([r22 isKindOfClass:r2] & 0x1) != 0x0) {
                            r22 = [*(r20 + r23) length];
                            [r21 release];
                            if (r22 != 0x0) {
                                    [r19 setObject:r2 forKey:r3];
                            }
                    }
                    else {
                            [r21 release];
                            [r19 setObject:r2 forKey:r3];
                    }
            }
            else {
                    [r21 release];
            }
    }
    r20 = [r19 mutableCopy];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)storeBelowConsentAgeApplicability {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    [r0 setObject:r2 forKey:r3];
    [r20 release];
    return;
}

+(bool)isBelowConsentAge {
    r0 = [TJRegulations sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 isBelowConsentAge];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)setBelowConsentAge:(bool)arg2 {
    r0 = [NSNumber numberWithBool:arg2];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(isBelowConsentAge));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r0 = [TJRegulations sharedInstance];
    r0 = [r0 retain];
    [r0 storeBelowConsentAgeApplicability];
    [r0 release];
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    [r0 setAdTrackingValues];
    [r0 release];
    [r19 release];
    return;
}

-(bool)isBelowConsentAge {
    r0 = self->isBelowConsentAge;
    r0 = [r0 boolValue];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->isBelowConsentAge, 0x0);
    objc_storeStrong((int64_t *)&self->consent, 0x0);
    objc_storeStrong((int64_t *)&self->isSubjectToGDPR, 0x0);
    return;
}

@end