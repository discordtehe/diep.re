@implementation ADJAttribution

+(void *)dataWithJsonDict:(void *)arg2 adid:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [[ADJAttribution alloc] initWithJsonDict:r20 adid:r19];
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)initWithJsonDict:(void *)arg2 adid:(void *)arg3 {
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
    if (r21 != 0x0 && ([ADJUtil isNull:r19] & 0x1) == 0x0) {
            r23 = [[r19 objectForKey:@"tracker_token"] retain];
            [r21 setTrackerToken:r23];
            [r23 release];
            r23 = [[r19 objectForKey:@"tracker_name"] retain];
            [r21 setTrackerName:r23];
            [r23 release];
            r23 = [[r19 objectForKey:@"network"] retain];
            [r21 setNetwork:r23];
            [r23 release];
            r23 = [[r19 objectForKey:@"campaign"] retain];
            [r21 setCampaign:r23];
            [r23 release];
            r23 = [[r19 objectForKey:@"adgroup"] retain];
            [r21 setAdgroup:r23];
            [r23 release];
            r23 = [[r19 objectForKey:@"creative"] retain];
            [r21 setCreative:r23];
            [r23 release];
            r22 = [[r19 objectForKey:@"click_label"] retain];
            [r21 setClickLabel:r22];
            [r22 release];
            [r21 setAdid:r20];
            r22 = [r21 retain];
    }
    else {
            r22 = 0x0;
    }
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r22;
    return r0;
}

-(bool)isEqual:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != r20) {
            [ADJAttribution class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r20 = [r20 isEqualToAttribution:r19];
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

-(bool)isEqualToAttribution:(void *)arg2 {
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
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r23 = [[r20 trackerToken] retain];
            r0 = [r19 trackerToken];
            r29 = r29;
            r24 = [r0 retain];
            r22 = [NSString adjIsEqual:r2 toString:r3];
            [r24 release];
            [r23 release];
            if (r22 != 0x0) {
                    r24 = [[r20 trackerName] retain];
                    r0 = [r19 trackerName];
                    r29 = r29;
                    r23 = [r0 retain];
                    r22 = [NSString adjIsEqual:r2 toString:r3];
                    [r23 release];
                    [r24 release];
                    if (r22 != 0x0) {
                            r24 = [[r20 network] retain];
                            r0 = [r19 network];
                            r29 = r29;
                            r23 = [r0 retain];
                            r22 = [NSString adjIsEqual:r2 toString:r3];
                            [r23 release];
                            [r24 release];
                            if (r22 != 0x0) {
                                    r24 = [[r20 campaign] retain];
                                    r0 = [r19 campaign];
                                    r29 = r29;
                                    r23 = [r0 retain];
                                    r22 = [NSString adjIsEqual:r2 toString:r3];
                                    [r23 release];
                                    [r24 release];
                                    if (r22 != 0x0) {
                                            r24 = [[r20 adgroup] retain];
                                            r0 = [r19 adgroup];
                                            r29 = r29;
                                            r23 = [r0 retain];
                                            r22 = [NSString adjIsEqual:r2 toString:r3];
                                            [r23 release];
                                            [r24 release];
                                            if (r22 != 0x0) {
                                                    r24 = [[r20 creative] retain];
                                                    r0 = [r19 creative];
                                                    r29 = r29;
                                                    r23 = [r0 retain];
                                                    r22 = [NSString adjIsEqual:r2 toString:r3];
                                                    [r23 release];
                                                    [r24 release];
                                                    if (r22 != 0x0) {
                                                            r24 = [[r20 clickLabel] retain];
                                                            r0 = [r19 clickLabel];
                                                            r29 = r29;
                                                            r23 = [r0 retain];
                                                            r22 = [NSString adjIsEqual:r2 toString:r3];
                                                            [r23 release];
                                                            [r24 release];
                                                            if (r22 != 0x0) {
                                                                    r24 = [[r20 adid] retain];
                                                                    r23 = [[r19 adid] retain];
                                                                    r20 = [NSString adjIsEqual:r2 toString:r3];
                                                                    [r23 release];
                                                                    [r24 release];
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
                                                    r20 = 0x0;
                                            }
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
                            r20 = 0x0;
                    }
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)description {
    r19 = [[self trackerToken] retain];
    r20 = [[self trackerName] retain];
    r22 = [[self network] retain];
    r24 = [[self campaign] retain];
    r25 = [[self adgroup] retain];
    r26 = [[self creative] retain];
    r27 = [[self clickLabel] retain];
    r23 = [[self adid] retain];
    r21 = [[NSString stringWithFormat:r2] retain];
    [r23 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)dictionary {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[NSMutableDictionary dictionary] retain];
    r0 = [r20 trackerToken];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 trackerToken];
            r29 = r29;
            [r0 retain];
            [r19 setObject:r2 forKey:r3];
            [r21 release];
    }
    r0 = [r20 trackerName];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 trackerName];
            r29 = r29;
            [r0 retain];
            [r19 setObject:r2 forKey:r3];
            [r21 release];
    }
    r0 = [r20 network];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 network];
            r29 = r29;
            [r0 retain];
            [r19 setObject:r2 forKey:r3];
            [r21 release];
    }
    r0 = [r20 campaign];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 campaign];
            r29 = r29;
            [r0 retain];
            [r19 setObject:r2 forKey:r3];
            [r21 release];
    }
    r0 = [r20 adgroup];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 adgroup];
            r29 = r29;
            [r0 retain];
            [r19 setObject:r2 forKey:r3];
            [r21 release];
    }
    r0 = [r20 creative];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 creative];
            r29 = r29;
            [r0 retain];
            [r19 setObject:r2 forKey:r3];
            [r21 release];
    }
    r0 = [r20 clickLabel];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 clickLabel];
            r29 = r29;
            [r0 retain];
            [r19 setObject:r2 forKey:r3];
            [r21 release];
    }
    r0 = [r20 adid];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [[r20 adid] retain];
            [r19 setObject:r2 forKey:r3];
            [r20 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(unsigned long long)hash {
    r0 = [self trackerName];
    r0 = [r0 retain];
    r20 = [r0 hash];
    [r0 release];
    r0 = r20;
    return r0;
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
    if (r20 != 0x0) {
            r22 = [[r19 decodeObjectForKey:@"trackerToken"] retain];
            [r20 setTrackerToken:r22];
            [r22 release];
            r22 = [[r19 decodeObjectForKey:@"trackerName"] retain];
            [r20 setTrackerName:r22];
            [r22 release];
            r22 = [[r19 decodeObjectForKey:@"network"] retain];
            [r20 setNetwork:r22];
            [r22 release];
            r22 = [[r19 decodeObjectForKey:@"campaign"] retain];
            [r20 setCampaign:r22];
            [r22 release];
            r22 = [[r19 decodeObjectForKey:@"adgroup"] retain];
            [r20 setAdgroup:r22];
            [r22 release];
            r22 = [[r19 decodeObjectForKey:@"creative"] retain];
            [r20 setCreative:r22];
            [r22 release];
            r22 = [[r19 decodeObjectForKey:@"click_label"] retain];
            [r20 setClickLabel:r22];
            [r22 release];
            r21 = [[r19 decodeObjectForKey:@"adid"] retain];
            [r20 setAdid:r21];
            [r21 release];
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

-(void *)trackerToken {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_trackerToken)), 0x0);
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
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
    r19 = arg2;
    r21 = self;
    r20 = [[[self class] allocWithZone:r19] init];
    if (r20 != 0x0) {
            r0 = [r21 trackerToken];
            r0 = [r0 retain];
            r24 = [r0 copyWithZone:r19];
            [r20 setTrackerToken:r24];
            [r24 release];
            [r0 release];
            r0 = [r21 trackerName];
            r0 = [r0 retain];
            r24 = [r0 copyWithZone:r19];
            [r20 setTrackerName:r24];
            [r24 release];
            [r0 release];
            r0 = [r21 network];
            r0 = [r0 retain];
            r24 = [r0 copyWithZone:r19];
            [r20 setNetwork:r24];
            [r24 release];
            [r0 release];
            r0 = [r21 campaign];
            r0 = [r0 retain];
            r24 = [r0 copyWithZone:r19];
            [r20 setCampaign:r24];
            [r24 release];
            [r0 release];
            r0 = [r21 adgroup];
            r0 = [r0 retain];
            r24 = [r0 copyWithZone:r19];
            [r20 setAdgroup:r24];
            [r24 release];
            [r0 release];
            r0 = [r21 creative];
            r0 = [r0 retain];
            r24 = [r0 copyWithZone:r19];
            [r20 setCreative:r24];
            [r24 release];
            [r0 release];
            r0 = [r21 clickLabel];
            r0 = [r0 retain];
            r24 = [r0 copyWithZone:r19];
            [r20 setClickLabel:r24];
            [r24 release];
            [r0 release];
            r0 = [r21 adid];
            r0 = [r0 retain];
            r19 = [r0 copyWithZone:r19];
            [r20 setAdid:r19];
            [r19 release];
            [r0 release];
    }
    r0 = r20;
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    r20 = [arg2 retain];
    r23 = [[self trackerToken] retain];
    [arg2 encodeObject:r23 forKey:@"trackerToken"];
    [r23 release];
    r23 = [[self trackerName] retain];
    [arg2 encodeObject:r23 forKey:@"trackerName"];
    [r23 release];
    r23 = [[self network] retain];
    [arg2 encodeObject:r23 forKey:@"network"];
    [r23 release];
    r23 = [[self campaign] retain];
    [arg2 encodeObject:r23 forKey:@"campaign"];
    [r23 release];
    r23 = [[self adgroup] retain];
    [arg2 encodeObject:r23 forKey:@"adgroup"];
    [r23 release];
    r23 = [[self creative] retain];
    [arg2 encodeObject:r23 forKey:@"creative"];
    [r23 release];
    r23 = [[self clickLabel] retain];
    [arg2 encodeObject:r23 forKey:@"click_label"];
    [r23 release];
    r21 = [[self adid] retain];
    [arg2 encodeObject:r21 forKey:@"adid"];
    [r20 release];
    [r21 release];
    return;
}

-(void)setTrackerToken:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)trackerName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_trackerName)), 0x0);
    return r0;
}

-(void)setTrackerName:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)network {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_network)), 0x0);
    return r0;
}

-(void)setNetwork:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)campaign {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_campaign)), 0x0);
    return r0;
}

-(void)setCampaign:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)adgroup {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adgroup)), 0x0);
    return r0;
}

-(void)setAdgroup:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)creative {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_creative)), 0x0);
    return r0;
}

-(void)setCreative:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)clickLabel {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_clickLabel)), 0x0);
    return r0;
}

-(void)setClickLabel:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)adid {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adid)), 0x0);
    return r0;
}

-(void)setAdid:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adid, 0x0);
    objc_storeStrong((int64_t *)&self->_clickLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_creative, 0x0);
    objc_storeStrong((int64_t *)&self->_adgroup, 0x0);
    objc_storeStrong((int64_t *)&self->_campaign, 0x0);
    objc_storeStrong((int64_t *)&self->_network, 0x0);
    objc_storeStrong((int64_t *)&self->_trackerName, 0x0);
    objc_storeStrong((int64_t *)&self->_trackerToken, 0x0);
    return;
}

@end