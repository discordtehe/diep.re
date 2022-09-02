@implementation CLSBetaUpdate

+(void *)betaUpdateWithDictionary:(void *)arg2 error:(void * *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg3;
    r22 = [arg2 retain];
    r20 = [[self alloc] initWithDictionary:r22];
    [r22 release];
    if (r19 != 0x0 && r20 == 0x0) {
            *r19 = [[[NSError errorWithDomain:**_NSURLErrorDomain code:0xfffffffffffffc07 userInfo:0x0] retain] autorelease];
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void *)initWithDictionary:(void *)arg2 {
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
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [NSDictionary class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r0 = [r19 objectForKey:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r23 = [[r19 objectForKey:r2] retain];
                            r0 = [NSURL URLWithString:r23];
                            r29 = r29;
                            r0 = [r0 retain];
                            r22 = sign_extend_64(*(int32_t *)ivar_offset(_url));
                            r8 = *(r20 + r22);
                            *(r20 + r22) = r0;
                            [r8 release];
                            [r23 release];
                            if (*(r20 + r22) != 0x0) {
                                    r0 = [r19 objectForKey:r2];
                                    r0 = [r0 retain];
                                    r21 = r0;
                                    r0 = [r0 copy];
                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_version));
                                    r8 = *(r20 + r9);
                                    *(r20 + r9) = r0;
                                    [r8 release];
                                    [r21 release];
                                    r21 = [r20 retain];
                            }
                            else {
                                    r21 = 0x0;
                            }
                    }
                    else {
                            r21 = 0x0;
                    }
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)promptTitle {
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r20 = [[r0 localizedStringForKey:@"CrashlyticsDistributionPromptTitle" value:@"New Build Available" table:@"Crashlytics"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)cancelLabel {
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r20 = [[r0 localizedStringForKey:@"CrashlyticsDistributionPromptCancelTitle" value:@"Cancel" table:@"Crashlytics"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)promptMessage {
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r20 = [[r0 localizedStringForKey:@"CrashlyticsDistributionPromptMessage" value:@"A new version of %@ is available for testing." table:@"Crashlytics"] retain];
    [r0 release];
    r21 = [sub_100095398() retain];
    r19 = [[NSString stringWithFormat:r2] retain];
    [r21 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)installLabel {
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r20 = [[r0 localizedStringForKey:@"CrashlyticsDistributionPromptInstallTitle" value:@"Install" table:@"Crashlytics"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)url {
    r0 = self->_url;
    return r0;
}

-(void *)version {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_version)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_version, 0x0);
    objc_storeStrong((int64_t *)&self->_url, 0x0);
    return;
}

@end