@implementation CLSReport

-(void *)initWithInternalReport:(void *)arg2 {
    r0 = [self initWithInternalReport:arg2 prefetchData:0x0];
    return r0;
}

-(union ?)internalKVStorage {
    *(r8 + 0x10) = *(*0x1011e2d50 + 0x220);
    *(r8 + 0x8) = [self->_internalCompactedKVFile fileSystemRepresentation];
    r0 = self->_internalIncrementalKVFile;
    r0 = [r0 fileSystemRepresentation];
    *r8 = r0;
    return r0;
}

-(union ?)userKVStorage {
    *(r8 + 0x10) = *(*0x1011e2d50 + 0x208);
    *(r8 + 0x8) = [self->_userCompactedKVFile fileSystemRepresentation];
    r0 = self->_userIncrementalKVFile;
    r0 = [r0 fileSystemRepresentation];
    *r8 = r0;
    return r0;
}

-(void *)initWithInternalReport:(void *)arg2 prefetchData:(bool)arg3 {
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
    r21 = arg3;
    r22 = arg2;
    r19 = [r22 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_internalReport, r22);
            *(int32_t *)(int64_t *)&r20->_internalKVCounter = 0x0;
            *(int32_t *)(int64_t *)&r20->_userKVCounter = 0x0;
            r0 = [r20 internalReport];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 pathForContentFile:*0x100e6aae0];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_internalCompactedKVFile));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r24 release];
            r0 = [r20 internalReport];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 pathForContentFile:*0x100e6aad8];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_internalIncrementalKVFile));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r24 release];
            r0 = [r20 internalReport];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 pathForContentFile:*0x100e6aaf0];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_userCompactedKVFile));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r24 release];
            r0 = [r20 internalReport];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 pathForContentFile:*0x100e6aae8];
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_userIncrementalKVFile));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r22 release];
            *(int8_t *)(int64_t *)&r20->_readOnly = r21;
            if (r21 != 0x0) {
                    r0 = [r19 identifier];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_identifer));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r0 = [r19 bundleVersion];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_bundleVersion));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r0 = [r19 bundleShortVersionString];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_bundleShortVersionString));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r0 = [r19 dateCreated];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_dateCreated));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r0 = [r19 crashedOnDate];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_crashedOnDate));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r0 = [r19 OSVersion];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_OSVersion));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r0 = [r19 OSBuildVersion];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_OSBuildVersion));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r0 = [NSNumber numberWithBool:[r19 isCrash]];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_isCrash));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r0 = [r20 readCustomKeys];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_customKeys));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
            }
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

-(bool)canRecordNewValues {
    if (*(int8_t *)(int64_t *)&self->_readOnly != 0x0) {
            r0 = 0x0;
    }
    else {
            r0 = sub_1001169c4();
    }
    return r0;
}

-(void)recordValue:(void *)arg2 forInternalKey:(void *)arg3 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    if ([r20 canRecordNewValues] != 0x0) {
            [r20 internalKVStorage];
            sub_100122334(r21, r19, &stack[-72], (int64_t *)&r20->_internalKVCounter);
    }
    [r21 release];
    [r19 release];
    return;
}

-(void *)readCustomKeys {
    [self userKVStorage];
    r0 = sub_1001226f8(&stack[-40], 0x1);
    return r0;
}

-(void)recordValue:(void *)arg2 forUserKey:(void *)arg3 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    if ([r20 canRecordNewValues] != 0x0) {
            [r20 userKVStorage];
            sub_100122334(r21, r19, &stack[-72], (int64_t *)&r20->_userKVCounter);
    }
    [r21 release];
    [r19 release];
    return;
}

-(void *)identifier {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_identifer));
    r0 = *(r19 + r21);
    if (r0 == 0x0) {
            r0 = [r19 internalReport];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 identifier];
            r0 = [r0 retain];
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            [r20 release];
            r0 = *(r19 + r21);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)customKeys {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_customKeys));
    r0 = *(r19 + r20);
    if (r0 == 0x0) {
            r0 = [r19 readCustomKeys];
            r0 = [r0 retain];
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            r0 = *(r19 + r20);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)bundleVersion {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_bundleVersion));
    r0 = *(r19 + r21);
    if (r0 == 0x0) {
            r0 = [r19 internalReport];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 bundleVersion];
            r0 = [r0 retain];
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            [r20 release];
            r0 = *(r19 + r21);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)bundleShortVersionString {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_bundleShortVersionString));
    r0 = *(r19 + r21);
    if (r0 == 0x0) {
            r0 = [r19 internalReport];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 bundleShortVersionString];
            r0 = [r0 retain];
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            [r20 release];
            r0 = *(r19 + r21);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)dateCreated {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_dateCreated));
    r0 = *(r19 + r21);
    if (r0 == 0x0) {
            r0 = [r19 internalReport];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 dateCreated];
            r0 = [r0 retain];
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            [r20 release];
            r0 = *(r19 + r21);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)crashedOnDate {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_crashedOnDate));
    r0 = *(r19 + r21);
    if (r0 == 0x0) {
            r0 = [r19 internalReport];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 crashedOnDate];
            r0 = [r0 retain];
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            [r20 release];
            r0 = *(r19 + r21);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)OSVersion {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_OSVersion));
    r0 = *(r19 + r21);
    if (r0 == 0x0) {
            r0 = [r19 internalReport];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 OSVersion];
            r0 = [r0 retain];
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            [r20 release];
            r0 = *(r19 + r21);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)OSBuildVersion {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_OSBuildVersion));
    r0 = *(r19 + r21);
    if (r0 == 0x0) {
            r0 = [r19 internalReport];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 OSBuildVersion];
            r0 = [r0 retain];
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            [r20 release];
            r0 = *(r19 + r21);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)setObjectValue:(void *)arg2 forKey:(void *)arg3 {
    r21 = [arg2 retain];
    [self recordValue:r21 forUserKey:arg3];
    [r21 release];
    return;
}

-(bool)isCrash {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_isCrash));
    r0 = *(r19 + r22);
    if (r0 == 0x0) {
            r0 = [r19 internalReport];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [NSNumber numberWithBool:[r0 isCrash]];
            r0 = [r0 retain];
            r8 = *(r19 + r22);
            *(r19 + r22) = r0;
            [r8 release];
            [r21 release];
            r0 = *(r19 + r22);
    }
    r0 = [r0 boolValue];
    return r0;
}

-(void *)userIdentifier {
    return 0x0;
}

-(void)setUserIdentifier:(void *)arg2 {
    [self recordValue:arg2 forInternalKey:*0x100e6bb88];
    return;
}

-(void *)userName {
    return 0x0;
}

-(void)setUserName:(void *)arg2 {
    [self recordValue:arg2 forInternalKey:*0x100e6bb90];
    return;
}

-(void *)userEmail {
    return 0x0;
}

-(void)setUserEmail:(void *)arg2 {
    [self recordValue:arg2 forInternalKey:*0x100e6bb98];
    return;
}

-(void *)internalReport {
    r0 = self->_internalReport;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_customKeys, 0x0);
    objc_storeStrong((int64_t *)&self->_isCrash, 0x0);
    objc_storeStrong((int64_t *)&self->_OSBuildVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_OSVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_crashedOnDate, 0x0);
    objc_storeStrong((int64_t *)&self->_dateCreated, 0x0);
    objc_storeStrong((int64_t *)&self->_bundleShortVersionString, 0x0);
    objc_storeStrong((int64_t *)&self->_bundleVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_identifer, 0x0);
    objc_storeStrong((int64_t *)&self->_userIncrementalKVFile, 0x0);
    objc_storeStrong((int64_t *)&self->_userCompactedKVFile, 0x0);
    objc_storeStrong((int64_t *)&self->_internalIncrementalKVFile, 0x0);
    objc_storeStrong((int64_t *)&self->_internalCompactedKVFile, 0x0);
    objc_storeStrong((int64_t *)&self->_internalReport, 0x0);
    return;
}

@end