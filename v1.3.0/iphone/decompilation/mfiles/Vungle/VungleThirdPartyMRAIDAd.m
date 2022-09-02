@implementation VungleThirdPartyMRAIDAd

-(bool)isEqual:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != r20) {
            [VungleThirdPartyMRAIDAd class];
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = [[&var_20 super] isEqual:r2];
                    if (r0 != 0x0) {
                            r20 = [r20 isEqualToVungleThirdPartyMRAIDAd:r19];
                    }
                    else {
                            r20 = 0x0;
                    }
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithDictionary:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] initWithDictionary:r19];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"mraidContent"];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_base64MRAIDContent));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isEqualToVungleThirdPartyMRAIDAd:(void *)arg2 {
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
    r19 = [arg2 retain];
    if ([r20 isEqualToVungleMRAIDAd:r19] == 0x0) goto loc_100631e60;

loc_100631dd4:
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_base64MRAIDContent));
    r23 = *(r20 + r24);
    r0 = [r19 base64MRAIDContent];
    r29 = r29;
    r21 = [r0 retain];
    if ([r23 isEqualToString:r2] == 0x0) goto loc_100631e28;

loc_100631e18:
    [r21 release];
    r20 = 0x1;
    goto loc_100631e64;

loc_100631e64:
    [r19 release];
    r0 = r20;
    return r0;

loc_100631e28:
    r0 = [r19 base64MRAIDContent];
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100631e50;

loc_100631e40:
    [r0 release];
    [r21 release];
    goto loc_100631e60;

loc_100631e60:
    r20 = 0x0;
    goto loc_100631e64;

loc_100631e50:
    r20 = *(r20 + r24);
    [r21 release];
    if (r20 != 0x0) {
            r20 = 0x0;
    }
    else {
            r20 = 0x1;
    }
    goto loc_100631e64;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] initWithCoder:r19];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 decodeObjectForKey:@"mraidContent"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_base64MRAIDContent));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    r22 = [arg2 retain];
    [[&var_30 super] encodeWithCoder:r22];
    [arg2 encodeObject:self->_base64MRAIDContent forKey:@"mraidContent"];
    [r22 release];
    return;
}

-(void *)description {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = &@selector(addObserver:userInfoKeys:targetObject:);
    r0 = objc_msgSend(self, *(r8 + 0x548));
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r0;
            }
            else {
                    r8 = @"(null)";
            }
    }
    r21 = [[NSNumber numberWithInteger:[r19 state]] retain];
    r8 = &@selector(initWithReportInfo:publisherInformation:);
    r0 = objc_msgSend(r19, *(r8 + 0x930));
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r0;
            }
            else {
                    r8 = @"(null)";
            }
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_base64MRAIDContent));
    r8 = *(r19 + r8);
    if (r8 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r8;
            }
            else {
                    r8 = @"(null)";
            }
    }
    var_38 = **___stack_chk_guard;
    r23 = [[NSDictionary dictionaryWithObjects:&var_58 forKeys:&var_78 count:0x4] retain];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 class];
    r19 = [[NSString stringWithFormat:@"<%@: 0x%lx%@>"] retain];
    [r23 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)base64MRAIDContent {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_base64MRAIDContent)), 0x0);
    return r0;
}

-(void)setBase64MRAIDContent:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_base64MRAIDContent, 0x0);
    return;
}

-(void *)decodedMRAIDContent {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self base64MRAIDContent];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = objc_alloc();
            r19 = [[r19 base64MRAIDContent] retain];
            r20 = [r21 initWithBase64EncodedString:r19 options:0x1];
            [r19 release];
            r19 = [objc_alloc() initWithData:r20 encoding:0x4];
            [r20 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)updateWithRequestAdBody:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r22 = @class(NSDate);
    r21 = @selector(objectForKeyedSubscript:);
    r2 = @"expiry";
    r0 = objc_msgSend(r0, r21);
    r0 = [r0 retain];
    r23 = r0;
    [r0 longLongValue];
    asm { scvtf      d0, x0 };
    r0 = [r22 dateWithTimeIntervalSince1970:r2];
    r24 = r0;
    r22 = [r0 retain];
    [r23 release];
    r0 = objc_msgSend(r19, r21);
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_campaign));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    objc_storeStrong((int64_t *)&r20->_expireDate, r24);
    r0 = objc_msgSend(r19, r21);
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_appId));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    [r20 setIncentivized:0x0];
    r0 = objc_msgSend(r19, r21);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"viewed"];
            r29 = r29;
            r0 = [r0 retain];
            *(int8_t *)(int64_t *)&r20->_viewed = [r0 boolValue];
            [r0 release];
    }
    r0 = [r19 objectForKeyedSubscript:@"user"];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_user));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    [r22 release];
    [r19 release];
    return;
}

@end