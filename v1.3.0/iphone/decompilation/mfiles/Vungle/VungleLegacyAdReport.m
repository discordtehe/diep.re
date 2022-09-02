@implementation VungleLegacyAdReport

-(void)updatePlayInfoWith:(void *)arg2 {
    [self setPlayInfo:arg2];
    return;
}

-(void)addClickSequence:(void *)arg2 {
    [self->_clickSequence addObject:r2];
    return;
}

-(void)updateUserActionsWith:(void *)arg2 {
    [arg2 retain];
    r0 = [self userActions];
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r22 release];
    [r20 release];
    return;
}

-(bool)incentivized {
    r0 = [self internalIncentivized];
    return r0;
}

-(unsigned long long)duration {
    r0 = [self adDuration];
    return r0;
}

-(bool)isAdExperienceSuccessful {
    r0 = [self didTapCTAButton];
    return r0;
}

-(void *)initWithPlacement:(void *)arg2 {
    r31 = r31 - 0xa0;
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
    r19 = [arg2 retain];
    r0 = [[&var_88 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [NSDate date];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            [r0 timeIntervalSince1970];
            asm { fcvtzu     x2, d0 };
            [r20 setAdStartTime:r2];
            [r21 release];
            r0 = [r19 adUnit];
            r0 = [r0 retain];
            r21 = r0;
            r22 = [[r0 rawAdType] retain];
            [r20 setAdType:r22];
            [r22 release];
            r0 = [r21 appId];
            r0 = [r0 retain];
            r24 = [r0 copy];
            [r20 setAppId:r24];
            [r24 release];
            [r0 release];
            r0 = [r21 adToken];
            r0 = [r0 retain];
            r24 = [r0 copy];
            [r20 setAdToken:r24];
            [r24 release];
            [r0 release];
            r0 = [r21 campaign];
            r0 = [r0 retain];
            r22 = [r0 copy];
            [r20 setCampaign:r22];
            [r22 release];
            [r0 release];
            [r20 setPlayInfo:**___NSDictionary0__];
            r23 = [NSMutableOrderedSet new];
            [r20 setUserActions:r23];
            [r23 release];
            r23 = [[r19 referenceID] retain];
            r24 = [[r19 uniqueID] retain];
            r25 = [[NSNumber numberWithBool:[r19 isCacheable]] retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_78 count:0x3];
            r29 = r29;
            r26 = [r0 retain];
            [r20 setPlacementDictionary:r26];
            [r26 release];
            [r25 release];
            [r24 release];
            [r23 release];
            r0 = [NSMutableArray new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_clickSequence));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r20->_didTapCTAButton = 0x0;
            r8 = &@selector(initWithCreationCallback:cleanCallback:cleanPhase:);
            r22 = *(r8 + 0xd28);
            if (objc_msgSend(r21, r22) != 0x0) {
                    r8 = &@selector(initWithCreationCallback:cleanCallback:cleanPhase:);
                    if (CPU_FLAGS & NE) {
                            r8 = 0x1;
                    }
            }
            *(int8_t *)(int64_t *)&r20->_internalIncentivized = r8;
            if (objc_msgSend(r20, r22) != 0x0) {
                    r0 = [r21 user];
                    r29 = r29;
                    r24 = [r0 retain];
                    r23 = [VungleUtil isNullOrNil:r24];
                    [r24 release];
                    if ((r23 & 0x1) == 0x0) {
                            r22 = [[r21 user] retain];
                            [r20 setUser:r22];
                            [r22 release];
                    }
            }
            [r20 setReportStatus:0x1];
            [r21 release];
    }
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)uniqueIdentifier {
    r20 = [[self adToken] retain];
    r19 = [[VungleUtil sha1FromString:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setDeviceInformation:(void *)arg2 {
    r20 = [arg2 copy];
    [self setDeviceInfo:r20];
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

-(void)setExtraInformation:(void *)arg2 {
    r20 = [arg2 copy];
    [self setExtraInfo:r20];
    [r20 release];
    return;
}

-(void *)url {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_url)), 0x0);
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
            r0 = [r19 decodeObjectForKey:@"click_sequence_key"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_clickSequence));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"user_action_key"];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 mutableCopy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_userActions));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r22 release];
            *(int8_t *)(int64_t *)&r20->_internalIncentivized = [r19 decodeBoolForKey:@"internal_incentivised_key"];
            r0 = [r19 decodeObjectForKey:@"url_key"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_url));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r20->_didTapCTAButton = [r19 decodeBoolForKey:@"did_tap_cta_button_key"];
            r0 = [r19 decodeObjectForKey:@"play_info_key"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_playInfo));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r20 = self;
    r19 = [arg2 retain];
    [[&var_60 super] encodeWithCoder:r19];
    r22 = [[r20 clickSequence] retain];
    [r19 encodeObject:r22 forKey:@"click_sequence_key"];
    [r22 release];
    r0 = [r20 userActions];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [NSMutableOrderedSet class];
    r25 = [r24 isKindOfClass:r2];
    [r24 release];
    if ((r25 & 0x1) == 0x0) {
            r0 = [r20 userActions];
            r0 = [r0 retain];
            r25 = r0;
            r26 = [NSStringFromClass([r0 class]) retain];
            r0 = [r20 userActions];
            r0 = [r0 retain];
            r23 = [[NSString stringWithFormat:@"VungleLegacyAdReport::encodeWithCoder has invalid userAction set.  The type is %@ and pointer %p"] retain];
            [r0 release];
            [r26 release];
            [r25 release];
            r0 = [VungleLogger sharedLogger];
            r29 = r29;
            r0 = [r0 retain];
            [r0 logMessage:r23 level:0xf4243 context:@"SDK Ad Lifecycle"];
            [r0 release];
            r24 = [objc_alloc() init];
            [r20 setUserActions:r24];
            [r24 release];
            [r23 release];
    }
    r0 = [r20 userActions];
    r0 = [r0 retain];
    r22 = [r0 copy];
    [r0 release];
    [r19 encodeObject:r22 forKey:@"user_action_key"];
    r23 = [[r20 playInfo] retain];
    [r19 encodeObject:r23 forKey:@"play_info_key"];
    [r23 release];
    [r19 encodeBool:[r20 internalIncentivized] forKey:@"internal_incentivised_key"];
    r24 = [[r20 url] retain];
    [r19 encodeObject:r24 forKey:@"url_key"];
    [r24 release];
    [r19 encodeBool:[r20 didTapCTAButton] forKey:@"did_tap_cta_button_key"];
    [r22 release];
    [r19 release];
    return;
}

-(void)setUrl:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)didTapCTAButton {
    r0 = *(int8_t *)(int64_t *)&self->_didTapCTAButton;
    return r0;
}

-(void)setDidTapCTAButton:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_didTapCTAButton = arg2;
    return;
}

-(void *)clickSequence {
    r0 = self->_clickSequence;
    return r0;
}

-(void)setClickSequence:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_clickSequence, arg2);
    return;
}

-(void *)toDictionary {
    r31 = r31 - 0xa0;
    var_60 = d9;
    stack[-104] = d8;
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
    r21 = self;
    r0 = [[&var_90 super] toDictionary];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = [r0 mutableCopy];
    [r0 release];
    if (([r21 incentivized] & 0x1) != 0x0) {
            r2 = 0x1;
            r0 = [NSNumber numberWithInt:r2];
            r29 = r29;
    }
    else {
            r2 = 0x0;
            r0 = [NSNumber numberWithInt:r2];
            r29 = r29;
    }
    r24 = [r0 retain];
    [r19 setObject:r24 forKeyedSubscript:@"incentivized"];
    [r24 release];
    r0 = [r21 adType];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (r0 != 0x0) {
            r0 = [r21 adType];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 copy];
            [r19 setObject:r26 forKeyedSubscript:@"adType"];
            [r26 release];
            [r0 release];
    }
    else {
            [r19 setObject:@"vungle_local" forKeyedSubscript:@"adType"];
    }
    [r24 release];
    if ([r21 adStartTime] != 0x0) {
            r0 = [NSNumber numberWithUnsignedInteger:[r21 adStartTime]];
            r29 = r29;
    }
    else {
            r2 = 0x0;
            r0 = [NSNumber numberWithInt:r2];
            r29 = r29;
    }
    r25 = [r0 retain];
    [r19 setObject:r25 forKeyedSubscript:@"adStartTime"];
    [r25 release];
    if ([r21 adStartTime] != 0x0 && [r21 adDuration] == 0x0) {
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            [r0 release];
            [r21 adStartTime];
            asm { ucvtf      d0, x0 };
            r0 = [r26 convertFromSecondsToMilliseconds:r2];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 integerValue];
            [r0 release];
    }
    else {
            r24 = 0x0;
    }
    if ([r21 adDuration] != 0x0) {
            r0 = [NSNumber numberWithUnsignedInteger:[r21 adDuration]];
            r29 = r29;
    }
    else {
            r0 = [NSNumber numberWithUnsignedInteger:r24];
            r29 = r29;
    }
    r24 = [r0 retain];
    [r19 setObject:r24 forKeyedSubscript:@"adDuration"];
    [r24 release];
    if ([r21 ttDownload] != 0x0) {
            [r21 ttDownload];
            asm { ucvtf      d0, x0 };
            r0 = [r23 convertFromSecondsToMilliseconds:r2];
            r29 = r29;
    }
    else {
            r2 = 0x0;
            r0 = [NSNumber numberWithInt:r2];
            r29 = r29;
    }
    r23 = [r0 retain];
    [r19 setObject:r23 forKeyedSubscript:@"ttDownload"];
    [r23 release];
    r0 = [r21 campaign];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r0;
            }
            else {
                    r2 = @"";
            }
    }
    [r19 setObject:r2 forKeyedSubscript:@"campaign"];
    [r23 release];
    r0 = [r21 appId];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r0;
            }
            else {
                    r2 = @"";
            }
    }
    [r19 setObject:r2 forKeyedSubscript:@"app_id"];
    [r23 release];
    r0 = [r21 url];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r0;
            }
            else {
                    r2 = @"";
            }
    }
    [r19 setObject:r2 forKeyedSubscript:@"url"];
    [r23 release];
    r0 = [r21 clickSequence];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r0;
            }
            else {
                    r2 = **___NSArray0__;
            }
    }
    [r19 setObject:r2 forKeyedSubscript:@"clickedThrough"];
    [r24 release];
    r0 = [r21 userActions];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (r0 != 0x0) {
            r0 = [r21 userActions];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 array];
            r29 = r29;
            r23 = [r0 retain];
            [r25 release];
    }
    else {
            r23 = **___NSArray0__;
            r23 = [r23 retain];
    }
    [r24 release];
    r24 = [[NSDictionary dictionaryWithObjects:&stack[-128] forKeys:&var_78 count:0x1] retain];
    r0 = [r21 playInfo];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if (r0 != 0x0) {
            r0 = [r21 playInfo];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 mutableCopy];
            [r0 release];
    }
    else {
            r21 = [**___NSDictionary0__ mutableCopy];
    }
    r27 = *___NSArray0__;
    [r25 release];
    [r21 addEntriesFromDictionary:r24];
    r25 = [r21 copy];
    r0 = [NSArray arrayWithObjects:&var_80 count:0x1];
    r26 = [r0 retain];
    [r25 release];
    r8 = *r27;
    if (r26 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r26;
            }
            else {
                    r2 = r8;
            }
    }
    var_68 = **___stack_chk_guard;
    [r19 setObject:r2 forKeyedSubscript:@"plays"];
    r20 = [r19 copy];
    [r26 release];
    [r21 release];
    [r24 release];
    [r23 release];
    [r19 release];
    if (**___stack_chk_guard == var_68) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setPlayInfo:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_playInfo, arg2);
    return;
}

-(void *)playInfo {
    r0 = self->_playInfo;
    return r0;
}

-(void)setInternalIncentivized:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_internalIncentivized = arg2;
    return;
}

-(void)setUserActions:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_userActions, arg2);
    return;
}

-(void *)userActions {
    r0 = self->_userActions;
    return r0;
}

-(bool)internalIncentivized {
    r0 = *(int8_t *)(int64_t *)&self->_internalIncentivized;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_userActions, 0x0);
    objc_storeStrong((int64_t *)&self->_playInfo, 0x0);
    objc_storeStrong((int64_t *)&self->_clickSequence, 0x0);
    objc_storeStrong((int64_t *)&self->_url, 0x0);
    return;
}

@end