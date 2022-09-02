@implementation GADAdData

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 alloc];
    r0 = [r0 initWithSignalData:self->_signalData adString:self->_adString];
    return r0;
}

-(void *)initWithSignalData:(void *)arg2 adString:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r21 == 0x0) goto loc_10080bb54;

loc_10080ba64:
    r22 = [[r19 requestIdentifier] retain];
    r0 = sub_10080b95c();
    r29 = r29;
    r23 = [r0 retain];
    r24 = [r22 isEqual:r2];
    [r23 release];
    [r22 release];
    if ((r24 & 0x1) == 0x0) goto loc_10080bb64;

loc_10080bac0:
    r0 = [r19 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_signalData));
    r8 = *(r21 + r9);
    *(r21 + r9) = r0;
    [r8 release];
    r0 = [r19 signalDictionary];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_signals));
    r8 = *(r21 + r9);
    *(r21 + r9) = r0;
    [r8 release];
    [r23 release];
    r0 = [r20 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adString));
    r8 = *(r21 + r9);
    *(r21 + r9) = r0;
    [r8 release];
    goto loc_10080bb54;

loc_10080bb54:
    r22 = [r21 retain];
    goto loc_10080bb74;

loc_10080bb74:
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r22;
    return r0;

loc_10080bb64:
    NSLog(@"<Google> Cannot initialize because the identifiers in signalData and adString don'tmatch.");
    r22 = 0x0;
    goto loc_10080bb74;
}

-(void *)signals {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_signals)), 0x0);
    return r0;
}

-(void *)adString {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adString)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adString, 0x0);
    objc_storeStrong((int64_t *)&self->_signals, 0x0);
    objc_storeStrong((int64_t *)&self->_signalData, 0x0);
    return;
}

@end