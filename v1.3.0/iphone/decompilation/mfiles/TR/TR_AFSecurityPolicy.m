@implementation TR_AFSecurityPolicy

+(void *)defaultPinnedCertificates {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d6e28 != -0x1) {
            dispatch_once(0x1011d6e28, &var_28);
    }
    r0 = *0x1011d6e20;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)certificatesInBundle:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r0 = [arg2 pathsForResourcesOfType:@"cer" inDirectory:@"."];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [NSMutableSet setWithCapacity:[r0 count]];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r0 = [r20 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            do {
                    r28 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            r24 = @selector(addObject:);
                            r0 = [NSData dataWithContentsOfFile:*(0x0 + r28 * 0x8)];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r19, r24);
                            [r25 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    r21 = [[NSSet setWithSet:r19] retain];
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)defaultPolicy {
    r0 = [self alloc];
    r0 = [r0 init];
    [r0 setSSLPinningMode:0x0];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)policyWithPinningMode:(unsigned long long)arg2 {
    r21 = [[self defaultPinnedCertificates] retain];
    r19 = [[self policyWithPinningMode:arg2 withPinnedCertificates:r21] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)policyWithPinningMode:(unsigned long long)arg2 withPinnedCertificates:(void *)arg3 {
    r22 = [arg3 retain];
    r0 = [self alloc];
    r0 = [r0 init];
    [r0 setSSLPinningMode:arg2];
    [r0 setPinnedCertificates:r22];
    [r22 release];
    r0 = [r0 autorelease];
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
            [r19 setValidatesDomainName:0x1];
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)keyPathsForValuesAffectingPinnedPublicKeys {
    r0 = [NSSet setWithObject:@"pinnedCertificates"];
    return r0;
}

+(bool)supportsSecureCoding {
    return 0x1;
}

-(void *)initWithCoder:(void *)arg2 {
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
    r19 = [arg2 retain];
    r20 = [self init];
    if (r20 != 0x0) {
            r23 = [NSNumber class];
            r24 = [NSStringFromSelector(@selector(SSLPinningMode)) retain];
            r0 = [r19 decodeObjectOfClass:r23 forKey:r24];
            r0 = [r0 retain];
            [r20 setSSLPinningMode:[r0 unsignedIntegerValue]];
            [r0 release];
            [r24 release];
            r23 = [NSStringFromSelector(@selector(allowInvalidCertificates)) retain];
            [r20 setAllowInvalidCertificates:[r19 decodeBoolForKey:r23]];
            [r23 release];
            r23 = [NSStringFromSelector(@selector(validatesDomainName)) retain];
            [r20 setValidatesDomainName:[r19 decodeBoolForKey:r23]];
            [r23 release];
            r21 = [NSArray class];
            r23 = [NSStringFromSelector(@selector(pinnedCertificates)) retain];
            r21 = [[r19 decodeObjectOfClass:r21 forKey:r23] retain];
            [r20 setPinnedCertificates:r21];
            [r21 release];
            [r23 release];
            r21 = [r20 retain];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    r20 = [arg2 retain];
    r24 = [[NSNumber numberWithUnsignedInteger:[self SSLPinningMode]] retain];
    r23 = [NSStringFromSelector(@selector(SSLPinningMode)) retain];
    [arg2 encodeObject:r24 forKey:r23];
    [r23 release];
    [r24 release];
    r24 = [self allowInvalidCertificates];
    r23 = [NSStringFromSelector(@selector(allowInvalidCertificates)) retain];
    [arg2 encodeBool:r24 forKey:r23];
    [r23 release];
    r24 = [self validatesDomainName];
    r23 = [NSStringFromSelector(@selector(validatesDomainName)) retain];
    [arg2 encodeBool:r24 forKey:r23];
    [r23 release];
    r21 = [[self pinnedCertificates] retain];
    r23 = [NSStringFromSelector(@selector(pinnedCertificates)) retain];
    [arg2 encodeObject:r21 forKey:r23];
    [r20 release];
    [r23 release];
    [r21 release];
    return;
}

-(void)setPinnedCertificates:(void *)arg2 {
    r31 = r31 - 0x160;
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
    r24 = self;
    r20 = [arg2 retain];
    objc_storeStrong((int64_t *)&r24->_pinnedCertificates, arg2);
    r0 = [r24 pinnedCertificates];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            var_140 = r20;
            r0 = [r24 pinnedCertificates];
            r0 = [r0 retain];
            r21 = [[NSMutableSet setWithCapacity:[r0 count]] retain];
            [r0 release];
            var_120 = q0;
            var_148 = r24;
            r0 = [r24 pinnedCertificates];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_138 = r1;
            r24 = objc_msgSend(r0, r1);
            if (r24 != 0x0) {
                    r20 = *var_120;
                    do {
                            r23 = 0x0;
                            do {
                                    if (*var_120 != r20) {
                                            objc_enumerationMutation(r22);
                                    }
                                    r26 = SecCertificateCreateWithData(0x0, *(var_128 + r23 * 0x8));
                                    if (r26 != 0x0) {
                                            r27 = CFArrayCreate(0x0, r29 - 0x60, 0x1, 0x0);
                                            r19 = SecPolicyCreateBasicX509();
                                            r0 = SecTrustCreateWithCertificates(r27, r19, &var_E8);
                                            if (r0 == 0x0) {
                                                    r0 = SecTrustEvaluate(0x0, &stack[-252]);
                                                    if (r0 == 0x0) {
                                                            r28 = SecTrustCopyPublicKey(0x0);
                                                    }
                                                    else {
                                                            r28 = 0x0;
                                                    }
                                            }
                                            else {
                                                    r28 = 0x0;
                                            }
                                    }
                                    else {
                                            r28 = 0x0;
                                            r27 = 0x0;
                                            r19 = 0x0;
                                    }
                                    if (0x0 != 0x0) {
                                            CFRelease(0x0);
                                    }
                                    if (r19 != 0x0) {
                                            CFRelease(r19);
                                    }
                                    if (r27 != 0x0) {
                                            CFRelease(r27);
                                    }
                                    if (r26 != 0x0) {
                                            CFRelease(r26);
                                    }
                                    if (r28 != 0x0) {
                                            [r21 addObject:r2];
                                    }
                                    [r28 release];
                                    r23 = r23 + 0x1;
                            } while (r23 < r24);
                            r24 = objc_msgSend(r22, var_138);
                    } while (r24 != 0x0);
            }
            [r22 release];
            r19 = [[NSSet setWithSet:r21] retain];
            [var_148 setPinnedPublicKeys:r19];
            [r19 release];
            [r21 release];
            r20 = var_140;
    }
    else {
            [r24 setPinnedPublicKeys:0x0];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(unsigned long long)SSLPinningMode {
    r0 = self->_SSLPinningMode;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r20 = [[[self class] allocWithZone:arg2] init];
    [r20 setSSLPinningMode:[self SSLPinningMode]];
    [r20 setAllowInvalidCertificates:[self allowInvalidCertificates]];
    [r20 setValidatesDomainName:[self validatesDomainName]];
    r0 = [self pinnedCertificates];
    r0 = [r0 retain];
    r19 = [r0 copyWithZone:arg2];
    [r20 setPinnedCertificates:r19];
    [r19 release];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)setSSLPinningMode:(unsigned long long)arg2 {
    self->_SSLPinningMode = arg2;
    return;
}

-(void *)pinnedCertificates {
    r0 = self->_pinnedCertificates;
    return r0;
}

-(bool)allowInvalidCertificates {
    r0 = *(int8_t *)(int64_t *)&self->_allowInvalidCertificates;
    return r0;
}

-(void)setAllowInvalidCertificates:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_allowInvalidCertificates = arg2;
    return;
}

-(bool)validatesDomainName {
    r0 = *(int8_t *)(int64_t *)&self->_validatesDomainName;
    return r0;
}

-(void)setValidatesDomainName:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_validatesDomainName = arg2;
    return;
}

-(void *)pinnedPublicKeys {
    r0 = self->_pinnedPublicKeys;
    return r0;
}

-(void)setPinnedPublicKeys:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_pinnedPublicKeys, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_pinnedPublicKeys, 0x0);
    objc_storeStrong((int64_t *)&self->_pinnedCertificates, 0x0);
    return;
}

-(bool)evaluateServerTrust:(struct __SecTrust *)arg2 forDomain:(void *)arg3 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x360;
    r22 = arg2;
    r21 = self;
    r25 = [arg3 retain];
    if ([r21 validatesDomainName] == 0x0 || r25 == 0x0 || [r21 allowInvalidCertificates] == 0x0) goto loc_10040598c;

loc_100405940:
    if ([r21 SSLPinningMode] == 0x0) goto loc_100406014;

loc_100405954:
    r0 = [r21 pinnedCertificates];
    r29 = r29;
    r0 = [r0 retain];
    r20 = [r0 count];
    [r0 release];
    if (r20 == 0x0) goto loc_100406014;

loc_10040598c:
    r0 = [NSMutableArray array];
    r29 = r29;
    r20 = [r0 retain];
    if ([r21 validatesDomainName] != 0x0) {
            r0 = SecPolicyCreateSSL(0x1, r25);
    }
    else {
            r0 = SecPolicyCreateBasicX509();
    }
    [r20 addObject:r0];
    [r0 release];
    SecTrustSetPolicies(r22, r20);
    if ([r21 SSLPinningMode] == 0x0) goto loc_100405d3c;

loc_100405a1c:
    if (SecTrustEvaluate(r22, r29 - 0x60) != 0x0) goto loc_100405a40;

loc_100405a2c:
    r8 = var_60;
    if (r8 == 0x1 || r8 == 0x4) goto loc_100405a54;

loc_100405a40:
    if ([r21 allowInvalidCertificates] == 0x0) goto loc_100405d84;

loc_100405a54:
    r0 = [r21 SSLPinningMode];
    if (r0 == 0x1) goto loc_100405d8c;

loc_100405a68:
    if (r0 != 0x2) goto loc_100405d84;

loc_100405a70:
    var_3A8 = r20;
    var_3A0 = r25;
    r23 = [[NSMutableArray array] retain];
    var_388 = r21;
    r0 = [r21 pinnedCertificates];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    r27 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r27 != 0x0) {
            do {
                    r24 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r26);
                            }
                            r28 = @selector(addObject:);
                            SecCertificateCreateWithData(0x0, *(0x0 + r24 * 0x8));
                            objc_msgSend(r23, r28);
                            [r19 release];
                            r24 = r24 + 0x1;
                    } while (r24 < r27);
                    r27 = [r26 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r27 != 0x0);
    }
    [r26 release];
    SecTrustSetAnchorCertificates(r22, r23);
    if (SecTrustEvaluate(r22, r29 - 0x60) != 0x0) goto loc_10040605c;

loc_100405b8c:
    r8 = var_60;
    if (r8 == 0x4 || r8 == 0x1) goto loc_100405ba0;

loc_10040605c:
    r21 = 0x0;
    goto loc_100406060;

loc_100406060:
    r20 = var_3A8;
    r25 = var_3A0;
    [r23 release];
    goto loc_10040606c;

loc_10040606c:
    [r20 release];
    goto loc_100406074;

loc_100406074:
    var_58 = **___stack_chk_guard;
    [r25 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100405ba0:
    r27 = SecTrustGetCertificateCount(r22);
    r0 = [NSMutableArray arrayWithCapacity:r2];
    r29 = r29;
    r26 = [r0 retain];
    if (r27 >= 0x1) {
            r19 = 0x0;
            do {
                    r28 = @selector(addObject:);
                    SecCertificateCopyData(SecTrustGetCertificateAtIndex(r22, r19));
                    objc_msgSend(r26, r28);
                    [r20 release];
                    r19 = r19 + 0x1;
            } while (r27 != r19);
    }
    r25 = @selector(countByEnumeratingWithState:objects:count:);
    r19 = [[NSArray arrayWithArray:r26] retain];
    [r26 release];
    var_2E0 = q0;
    var_380 = r19;
    r0 = [r19 reverseObjectEnumerator];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    r27 = objc_msgSend(r0, r25);
    r24 = @selector(pinnedCertificates);
    if (r27 == 0x0) goto loc_100405d2c;

loc_100405c94:
    r21 = *var_2E0;
    goto loc_100405ca0;

loc_100405ca0:
    r22 = 0x0;
    goto loc_100405ca8;

loc_100405ca8:
    if (*var_2E0 != r21) {
            objc_enumerationMutation(r26);
    }
    r28 = @selector(containsObject:);
    r0 = objc_msgSend(var_388, r24);
    r29 = r29;
    r0 = [r0 retain];
    r19 = objc_msgSend(r0, r28);
    [r0 release];
    if ((r19 & 0x1) != 0x0) goto loc_100406028;

loc_100405cfc:
    r22 = r22 + 0x1;
    if (r22 < r27) goto loc_100405ca8;

loc_100405d08:
    r27 = [r26 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r27 != 0x0) goto loc_100405ca0;

loc_100405d2c:
    [r26 release];
    r21 = 0x0;
    goto loc_100406034;

loc_100406034:
    [var_380 release];
    goto loc_100406060;

loc_100406028:
    [r26 release];
    r21 = 0x1;
    goto loc_100406034;

loc_100405d84:
    r21 = 0x0;
    goto loc_10040606c;

loc_100405d8c:
    var_3A0 = r25;
    r23 = SecPolicyCreateBasicX509();
    r25 = SecTrustGetCertificateCount(r22);
    r0 = @class(NSMutableArray);
    r0 = [r0 arrayWithCapacity:r2];
    r29 = r29;
    r24 = [r0 retain];
    if (r25 > 0x0) {
            r26 = 0x0;
            do {
                    SecTrustGetCertificateAtIndex(r22, r26);
                    r0 = CFArrayCreate(0x0, r29 - 0x60, 0x1, 0x0);
                    r28 = r0;
                    r0 = SecTrustCreateWithCertificates(r0, r23, &var_268);
                    if (r0 == 0x0) {
                            r0 = SecTrustEvaluate(var_268, &stack[-636]);
                            if (r0 == 0x0) {
                                    r27 = @selector(addObject:);
                                    SecTrustCopyPublicKey(var_268);
                                    objc_msgSend(r24, r27);
                                    [r19 release];
                            }
                    }
                    r0 = var_268;
                    if (r0 != 0x0) {
                            CFRelease(r0);
                    }
                    if (r28 != 0x0) {
                            CFRelease(r28);
                    }
                    r26 = r26 + 0x1;
            } while (r25 != r26);
    }
    var_3A8 = r20;
    CFRelease(r23);
    r0 = [NSArray arrayWithArray:r24];
    r29 = r29;
    r19 = [r0 retain];
    [r24 release];
    r0 = [r19 autorelease];
    r0 = [r0 retain];
    var_398 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    var_378 = r0;
    if (r0 != 0x0) {
            r20 = 0x0;
            var_388 = r21;
            do {
                    r21 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_398);
                            }
                            r23 = @selector(countByEnumeratingWithState:objects:count:);
                            r26 = *(0x0 + r21 * 0x8);
                            r0 = [var_388 pinnedPublicKeys];
                            r29 = r29;
                            r0 = [r0 retain];
                            r27 = r0;
                            r28 = objc_msgSend(r0, r23);
                            if (r28 != 0x0) {
                                    do {
                                            r25 = 0x0;
                                            do {
                                                    if (*0x0 != *0x0) {
                                                            objc_enumerationMutation(r27);
                                                    }
                                                    r20 = r20 + [r26 isEqual:r2];
                                                    r25 = r25 + 0x1;
                                            } while (r25 < r28);
                                            r28 = [r27 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    } while (r28 != 0x0);
                            }
                            [r27 release];
                            r21 = r21 + 0x1;
                    } while (r21 < var_378);
                    r0 = [var_398 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    var_378 = r0;
            } while (r0 != 0x0);
    }
    else {
            r20 = 0x0;
    }
    if (r20 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r21 = 0x1;
            }
    }
    [var_398 release];
    r20 = var_3A8;
    r25 = var_3A0;
    goto loc_10040606c;

loc_100405d3c:
    if (([r21 allowInvalidCertificates] & 0x1) != 0x0) {
            r21 = 0x1;
    }
    else {
            if (SecTrustEvaluate(r22, r29 - 0x60) == 0x0) {
                    r8 = var_60;
                    if (r8 == 0x4) {
                            if (CPU_FLAGS & E) {
                                    r9 = 0x1;
                            }
                    }
                    if (r8 == 0x1) {
                            if (CPU_FLAGS & E) {
                                    r8 = 0x1;
                            }
                    }
                    r21 = r9 | r8;
            }
            else {
                    r21 = 0x0;
            }
    }
    goto loc_10040606c;

loc_100406014:
    NSLog(@"In order to validate a domain name for self signed certificates, you MUST use pinning.");
    r21 = 0x0;
    goto loc_100406074;
}

@end