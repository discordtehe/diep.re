@implementation VungleMRAIDAdReport

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = @class(NSMutableArray);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_privateUserActions));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableArray);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_privateClickthrough));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableArray);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_privateErrors));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r19 setAdType:@""];
            [r19 setReportStatus:0x1];
    }
    r0 = r19;
    return r0;
}

-(void)appendUserAction:(void *)arg2 {
    r19 = self;
    r21 = @selector(date);
    r22 = [arg2 retain];
    r0 = objc_msgSend(@class(NSDate), r21);
    r0 = [r0 retain];
    r20 = r0;
    [r0 timeIntervalSince1970];
    asm { fcvtzu     x21, d0 };
    [r20 release];
    [r19 appendUserAction:r22 timeStamp:r21];
    [r22 release];
    return;
}

-(void)appendUserAction:(void *)arg2 withValue:(void *)arg3 {
    r20 = self;
    r21 = [arg2 retain];
    r23 = @selector(date);
    r19 = [arg3 retain];
    r0 = objc_msgSend(@class(NSDate), r23);
    r0 = [r0 retain];
    r22 = r0;
    [r0 timeIntervalSince1970];
    asm { fcvtzu     x23, d0 };
    [r22 release];
    [r20 appendUserAction:r21 withValue:r19 timeStamp:r23];
    [r19 release];
    [r21 release];
    return;
}

-(void)appendUserAction:(void *)arg2 timeStamp:(unsigned long long)arg3 {
    r31 = r31 - 0x80;
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
    r23 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [VungleURLCoder new];
    r21 = r0;
    r0 = [r0 encodeString:r19];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            if (([r19 isEqualToString:r2] & 0x1) == 0x0 && ([r19 isEqualToString:r2] & 0x1) == 0x0) {
                    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                            r25 = @class(VungleUtil);
                            r23 - [r20 adStartTime];
                            asm { ucvtf      d0, x8 };
                            r0 = [r25 convertFromSecondsToMilliseconds:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r20 setAdDuration:[r0 integerValue]];
                            [r0 release];
                    }
            }
            else {
                    r25 = @class(VungleUtil);
                    r23 - [r20 adStartTime];
                    asm { ucvtf      d0, x8 };
                    r0 = [r25 convertFromSecondsToMilliseconds:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r20 setAdDuration:[r0 integerValue]];
                    [r0 release];
            }
            r24 = @selector(convertFromSecondsToMilliseconds:);
            r0 = @class(VungleUtil);
            asm { ucvtf      d0, x23 };
            r23 = [objc_msgSend(r0, r24) retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_58 forKeys:&var_70 count:0x2];
            r24 = [r0 retain];
            [r23 release];
            [r20->_privateUserActions addObject:r24];
            [r20->_privateClickthrough addObject:r19];
            [r24 release];
    }
    var_48 = **___stack_chk_guard;
    [r22 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)appendUserAction:(void *)arg2 withValue:(void *)arg3 timeStamp:(unsigned long long)arg4 {
    r31 = r31 - 0x90;
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
    r20 = self;
    r19 = [arg2 retain];
    r25 = [arg3 retain];
    r0 = [VungleURLCoder new];
    r21 = r0;
    r22 = [[r0 encodeString:r19] retain];
    r0 = [r21 encodeString:r25];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r25 release];
    if (r22 != 0x0) {
            asm { ccmp       x23, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            r0 = @class(VungleUtil);
            asm { ucvtf      d0, x24 };
            r24 = [[r0 convertFromSecondsToMilliseconds:r2] retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_80 count:0x3];
            r25 = [r0 retain];
            [r24 release];
            [r20->_privateUserActions addObject:r25];
            [r20->_privateClickthrough addObject:r19];
            [r25 release];
    }
    var_48 = **___stack_chk_guard;
    [r23 release];
    [r22 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void *)userActions {
    r0 = self->_privateUserActions;
    r0 = [r0 copy];
    r0 = [r0 autorelease];
    return r0;
}

-(void)appendClickthrough:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = [arg2 retain];
    r0 = [VungleURLCoder new];
    r20 = r0;
    r21 = [[r0 encodeString:r22] retain];
    [r22 release];
    if (r21 != 0x0) {
            [r19->_privateClickthrough addObject:r2];
    }
    [r21 release];
    [r20 release];
    return;
}

-(void *)clickthrough {
    r0 = self->_privateClickthrough;
    r0 = [r0 copy];
    r0 = [r0 autorelease];
    return r0;
}

-(void)appendVungleMRAIDErrorCode:(void *)arg2 {
    r19 = self->_privateErrors;
    [arg2 copy];
    [r19 addObject:r2];
    [r20 release];
    return;
}

-(void *)errors {
    r0 = self->_privateErrors;
    r0 = [r0 copy];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)uniqueIdentifier {
    r20 = [[self adToken] retain];
    r19 = [[VungleUtil sha1FromString:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(unsigned long long)duration {
    r0 = [self adDuration];
    return r0;
}

-(void)setPlacementInformation:(void *)arg2 {
    r20 = [arg2 copy];
    [self setPlacement:r20];
    [r20 release];
    return;
}

-(bool)isAdExperienceSuccessful {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [[self adType] retain];
    r20 = [VungleAd adTypeWithRawAdType:r21];
    [r21 release];
    if (r20 != 0x1 && r20 != 0x2) {
            r0 = 0x0;
    }
    else {
            r0 = r19->_privateClickthrough;
            r0 = [r0 containsObject:r2];
    }
    return r0;
}

-(void *)toDictionary {
    r31 = r31 - 0x90;
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
    var_48 = **___stack_chk_guard;
    r20 = objc_alloc();
    r0 = [[&var_80 super] toDictionary];
    r21 = [r0 retain];
    r20 = [r20 initWithDictionary:r21];
    [r21 release];
    r22 = [[NSNumber numberWithUnsignedInteger:[self adStartTime]] retain];
    r23 = [[self userActions] retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_70 count:0x2];
    r24 = [r0 retain];
    r25 = [[NSArray arrayWithObjects:&var_50 count:0x1] retain];
    [r20 setObject:r25 forKeyedSubscript:@"plays"];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    r22 = [[self clickthrough] retain];
    [r20 setObject:r22 forKeyedSubscript:@"clickedThrough"];
    [r22 release];
    r22 = [[self errors] retain];
    [r20 setObject:r22 forKeyedSubscript:@"errors"];
    [r22 release];
    r22 = [[self appId] retain];
    [r20 setObject:r22 forKeyedSubscript:@"app_id"];
    [r22 release];
    r22 = [[self campaign] retain];
    [r20 setObject:r22 forKeyedSubscript:@"campaign"];
    [r22 release];
    r22 = [[self adType] retain];
    [r20 setObject:r22 forKeyedSubscript:@"adType"];
    [r22 release];
    [r20 setObject:self->_templateID forKeyedSubscript:@"templateId"];
    r19 = [r20 copy];
    [r20 release];
    if (**___stack_chk_guard == var_48) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setDeviceInformation:(void *)arg2 {
    r20 = [arg2 copy];
    [self setDeviceInfo:r20];
    [r20 release];
    return;
}

-(void)setExtraInformation:(void *)arg2 {
    r20 = [arg2 copy];
    [self setExtraInfo:r20];
    [r20 release];
    return;
}

-(void)setPlacement:(void *)arg2 {
    [self setPlacementDictionary:arg2];
    return;
}

-(void)setPublisherInformation:(void *)arg2 {
    r22 = [arg2 retain];
    r23 = [[arg2 objectForKeyedSubscript:@"VunglePublisherInformationIfa"] retain];
    [self setIfa:r23];
    [r23 release];
    r19 = [[arg2 objectForKeyedSubscript:@"VunglePublisherInformationPublisherAppID"] retain];
    [r22 release];
    [self setPublisherAppID:r19];
    [r19 release];
    return;
}

-(void *)placement {
    r0 = [self placementDictionary];
    return r0;
}

-(bool)incentivized {
    r0 = [self internalIncentivized];
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
    r0 = [[&var_30 super] initWithCoder:r19];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 decodeObjectForKey:@"userActions"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_privateUserActions));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"clickedThrough"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_privateClickthrough));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"errors"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_privateErrors));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r20->_internalIncentivized = [r19 decodeBoolForKey:@"incentivized"];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    r20 = [arg2 retain];
    [[&var_40 super] encodeWithCoder:r20];
    r22 = [[self privateUserActions] retain];
    [arg2 encodeObject:r22 forKey:@"userActions"];
    [r22 release];
    r22 = [[self privateClickthrough] retain];
    [arg2 encodeObject:r22 forKey:@"clickedThrough"];
    [r22 release];
    r22 = [[self privateErrors] retain];
    [arg2 encodeObject:r22 forKey:@"errors"];
    [r22 release];
    [arg2 encodeBool:[self internalIncentivized] forKey:@"incentivized"];
    [r20 release];
    return;
}

-(bool)internalIncentivized {
    r0 = *(int8_t *)(int64_t *)&self->_internalIncentivized;
    return r0;
}

-(void)setInternalIncentivized:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_internalIncentivized = arg2;
    return;
}

-(void *)templateID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_templateID)), 0x0);
    return r0;
}

-(void *)description {
    r0 = self;
    r31 = r31 - 0x120;
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
    r19 = r0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_privateUserActions));
    r8 = *(r0 + r8);
    if (r8 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r8;
            }
            else {
                    r8 = @"(null)";
            }
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_privateClickthrough));
    r8 = *(r0 + r8);
    if (r8 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r8;
            }
            else {
                    r8 = @"(null)";
            }
    }
    r0 = [r0 placement];
    r29 = r29;
    r0 = [r0 retain];
    var_E8 = r0;
    if (r0 != 0x0) {
            r0 = [r19 placement];
            r29 = r29;
            r20 = [r0 retain];
            var_EC = 0x1;
    }
    else {
            r20 = @"(null)";
            var_EC = 0x0;
    }
    var_F8 = [[NSNumber numberWithBool:[r19 incentivized]] retain];
    r23 = [[NSNumber numberWithUnsignedInteger:[r19 ttDownload]] retain];
    r24 = [[NSNumber numberWithUnsignedInteger:[r19 adDuration]] retain];
    r25 = [[NSNumber numberWithUnsignedInteger:[r19 adStartTime]] retain];
    r0 = [r19 appId];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if (r0 != 0x0) {
            r0 = [r19 appId];
            r29 = r29;
            r0 = [r0 retain];
            r28 = r0;
            r21 = [r0 copy];
            r22 = 0x1;
    }
    else {
            r22 = 0x0;
            r21 = @"(null)";
    }
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    r29 = r29;
    r27 = [r0 retain];
    if (r22 != 0x0) {
            [r21 release];
            [r28 release];
    }
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [var_F8 release];
    if (var_EC != 0x0) {
            [r20 release];
    }
    var_60 = **___stack_chk_guard;
    [var_E8 release];
    [r19 class];
    r19 = [[NSString stringWithFormat:@"<%@: 0x%lx%@>"] retain];
    [r27 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setTemplateID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)privateUserActions {
    r0 = self->_privateUserActions;
    return r0;
}

-(void)setPrivateUserActions:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_privateUserActions, arg2);
    return;
}

-(void *)privateClickthrough {
    r0 = self->_privateClickthrough;
    return r0;
}

-(void)setPrivateClickthrough:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_privateClickthrough, arg2);
    return;
}

-(void *)privateErrors {
    r0 = self->_privateErrors;
    return r0;
}

-(void)setPrivateErrors:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_privateErrors, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_privateErrors, 0x0);
    objc_storeStrong((int64_t *)&self->_privateClickthrough, 0x0);
    objc_storeStrong((int64_t *)&self->_privateUserActions, 0x0);
    objc_storeStrong((int64_t *)&self->_templateID, 0x0);
    return;
}

@end