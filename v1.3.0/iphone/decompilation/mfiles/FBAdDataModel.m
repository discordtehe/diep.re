@implementation FBAdDataModel

-(void *)init {
    r0 = [self initWithMetadata:**___NSDictionary0__];
    return r0;
}

-(bool)isValid {
    r20 = [[self inlineClientToken] retain];
    r19 = [FBAdUtility isStringEmpty:r20] ^ 0x1;
    [r20 release];
    r0 = r19;
    return r0;
}

-(void)setIconType:(long long)arg2 {
    self->_iconType = arg2;
    return;
}

-(void *)initWithMetadata:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [[&var_50 super] init];
            r20 = r0;
            if (r0 != 0x0) {
                    r0 = [r19 stringForKeyOrNil:@"request_id"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_requestId));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r0 = [r19 integerForKey:@"an_logo_type" orDefault:0x0];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_iconType));
                    if (r0 > 0x1) {
                            if (!CPU_FLAGS & A) {
                                    r9 = r0;
                            }
                            else {
                                    r9 = 0x0;
                            }
                    }
                    *(r20 + r8) = r9;
                    r0 = [r19 stringForKeyOrNil:@"ct"];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_inlineClientToken));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r0 = [r19 dictionaryForKeyOrNil:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r21 = r0;
                    if (r0 != 0x0) {
                            r0 = [FBAdConfigManager sharedManager];
                            r0 = [r0 retain];
                            r0 = [r0 loadConfigurationFromDictionary:r21];
                            r0 = [r0 retain];
                            [r0 saveConfiguration];
                            r29 = r29;
                            objc_unsafeClaimAutoreleasedReturnValue();
                            [r24 release];
                            [r23 release];
                    }
                    r0 = [r19 dictionaryForKeyOrNil:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r0;
                    if (r0 != 0x0) {
                            r0 = [FBAdReportingConfig sharedConfig];
                            r0 = [r0 retain];
                            [r0 loadFromDict:r22 error:&var_58];
                            r29 = r29;
                            objc_unsafeClaimAutoreleasedReturnValue();
                            r24 = [var_58 retain];
                            [r25 release];
                            if (r24 == 0x0) {
                                    r0 = [FBAdReportingConfig sharedConfig];
                                    r0 = [r0 retain];
                                    [r0 save];
                                    objc_unsafeClaimAutoreleasedReturnValue();
                                    [r23 release];
                            }
                            [r24 release];
                    }
                    [r22 release];
                    [r21 release];
            }
            r0 = [r20 retain];
            r20 = r0;
            r21 = r0;
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_inlineClientToken, 0x0);
    objc_storeStrong((int64_t *)&self->_requestId, 0x0);
    return;
}

-(void *)requestId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_requestId)), 0x0);
    return r0;
}

-(void *)inlineClientToken {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_inlineClientToken)), 0x0);
    return r0;
}

-(long long)iconType {
    r0 = self->_iconType;
    return r0;
}

@end