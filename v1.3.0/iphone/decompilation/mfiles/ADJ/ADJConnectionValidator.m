@implementation ADJConnectionValidator

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)URLSession:(void *)arg2 didReceiveChallenge:(void *)arg3 completionHandler:(void *)arg4 {
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
    r20 = self;
    r22 = [arg3 retain];
    r19 = [arg4 retain];
    r21 = [arg3 protectionSpace];
    [r22 release];
    r0 = [r21 retain];
    r23 = [r0 serverTrust];
    [r0 release];
    SecTrustEvaluate(r23, 0x0);
    r21 = SecCertificateCopyData(SecTrustGetCertificateAtIndex(r23, SecTrustGetCertificateCount(r23) - 0x1));
    r22 = [[r20 getThumbprintAsSha1:r21] retain];
    r25 = [[@"5fb7ee0633e259dbad0c4c9ae6d38f1a61c7dc25" uppercaseString] retain];
    r0 = [r22 uppercaseString];
    r29 = &saved_fp;
    r24 = [r0 retain];
    r26 = [r25 isEqualToString:r24];
    [r24 release];
    [r25 release];
    r0 = [r20 expectedTce];
    if (r26 == 0x0) goto loc_1006a1720;

loc_1006a16fc:
    if (r0 != 0x0) goto loc_1006a177c;

loc_1006a1700:
    r0 = [NSURLCredential credentialForTrust:r23];
    goto loc_1006a1744;

loc_1006a1744:
    (*(r19 + 0x10))(r19, 0x0, [r0 retain]);
    *(int8_t *)(int64_t *)&r20->_validationResult = 0x1;
    [r23 release];
    goto loc_1006a179c;

loc_1006a179c:
    [r20 setDidValidationHappen:0x1];
    [r22 release];
    [r21 release];
    [r19 release];
    return;

loc_1006a177c:
    (*(r19 + 0x10))(r19, 0x2, 0x0);
    *(int8_t *)(int64_t *)&r20->_validationResult = 0x0;
    goto loc_1006a179c;

loc_1006a1720:
    if (r0 < 0x1) goto loc_1006a177c;

loc_1006a1728:
    r0 = [NSURLCredential credentialForTrust:r23];
    goto loc_1006a1744;
}

-(int)expectedTce {
    r0 = *(int32_t *)(int64_t *)&self->_expectedTce;
    return r0;
}

-(void *)getThumbprintAsSha1:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r0 = objc_retainAutorelease(arg2);
    r21 = [r0 bytes];
    r19 = [r0 length];
    [r20 release];
    r22 = &stack[-92];
    CC_SHA1(r21, r19, &stack[-92]);
    r0 = [NSMutableString stringWithCapacity:0x3c];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r23 = 0x0;
    do {
            [r19 appendFormat:r2];
            r23 = r23 + 0x1;
    } while (r23 != 0x14);
    var_38 = **___stack_chk_guard;
    r21 = [[NSCharacterSet whitespaceCharacterSet] retain];
    r20 = [[r19 stringByTrimmingCharactersInSet:r21] retain];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setExpectedTce:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_expectedTce = arg2;
    return;
}

-(bool)didValidationHappen {
    r0 = *(int8_t *)(int64_t *)&self->_didValidationHappen;
    return r0;
}

-(bool)validationResult {
    r0 = *(int8_t *)(int64_t *)&self->_validationResult;
    return r0;
}

-(void)setDidValidationHappen:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_didValidationHappen = arg2;
    return;
}

@end