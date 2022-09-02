@implementation FABCertificatePinner

+(struct __SecCertificate *)createCertificationWithData:(void *)arg2 length:(unsigned long long)arg3 {
    r19 = [[NSData alloc] initWithBytes:arg2 length:arg3];
    r20 = SecCertificateCreateWithData(**_kCFAllocatorDefault, r19);
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithCertificates:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_certificates));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(short)evaluateTrust:(struct __SecTrust *)arg2 result:(unsigned int *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r21 = arg2;
    r0 = [self certificates];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 count] != 0x0) {
            r22 = SecTrustSetAnchorCertificates(r21, r19);
            if (r22 == 0x0) {
                    r22 = SecTrustSetAnchorCertificatesOnly(r21, 0x1);
                    if (r22 != 0x0) {
                            *(int32_t *)r20 = 0x6;
                    }
                    else {
                            r22 = SecTrustEvaluate(r21, r20);
                            if (r22 != 0x0) {
                                    *(int32_t *)r20 = 0x0;
                            }
                    }
            }
            else {
                    *(int32_t *)r20 = 0x6;
            }
    }
    else {
            r22 = 0x0;
            *(int32_t *)r20 = 0x0;
    }
    [r19 release];
    r0 = sign_extend_64(r22);
    return r0;
}

-(bool)handleChallenge:(void *)arg2 fromURLSession:(void *)arg3 completionHandler:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r22 = [arg2 retain];
    r19 = [arg4 retain];
    r0 = [arg2 protectionSpace];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r22 release];
    r21 = [r23 serverTrust];
    [r23 release];
    if (r21 != 0x0 && [r20 evaluateTrust:r21 result:&var_34] == 0x0) {
            r8 = var_34;
            if (r8 != 0x1 && r8 != 0x4) {
                    (*(r19 + 0x10))(r19, 0x2, 0x0);
                    r20 = 0x0;
            }
            else {
                    (*(r19 + 0x10))(r19, 0x0, [[NSURLCredential credentialForTrust:r21] retain]);
                    [r20 release];
                    r20 = 0x1;
            }
    }
    else {
            (*(r19 + 0x10))(r19, 0x2, 0x0);
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)certificates {
    r0 = self->_certificates;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_certificates, 0x0);
    return;
}

@end