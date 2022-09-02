@implementation AdColonyUserMetadata

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [NSMutableDictionary new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_metadata));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)setUserAge:(long long)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r2 != 0x0) {
            r0->_userAge = r2;
            r19 = r0->_metadata;
            r20 = [[NSNumber numberWithInteger:r2] retain];
            [r19 setObject:r20 forKeyedSubscript:@"adc_age"];
            [r20 release];
    }
    else {
            [ADCLogManager briefLogWithModuleID:r2 isPublic:0x1 level:0x1 withFormat:@"Tried to set user age metadata with an invalid NSUInteger. Value will not be included."];
    }
    return;
}

-(void)setUserGender:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r20 = self;
    r19 = [r21 retain];
    if (r19 != 0x0 && [r19 length] < 0x81) {
            objc_storeStrong((int64_t *)&r20->_userGender, r21);
            [r20->_metadata setObject:r19 forKeyedSubscript:@"adc_gender"];
    }
    else {
            [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
    }
    [r19 release];
    return;
}

-(void)setUserLatitude:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r20 = self;
    r19 = [r21 retain];
    if (r19 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_userLatitude, r21);
            [r20->_metadata setObject:r19 forKeyedSubscript:@"adc_latitude"];
    }
    else {
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"Tried to set user latitude metadata with an invalid NSNumber. Value will not be included."];
    }
    [r19 release];
    return;
}

-(void)setUserLongitude:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r20 = self;
    r19 = [r21 retain];
    if (r19 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_userLongitude, r21);
            [r20->_metadata setObject:r19 forKeyedSubscript:@"adc_longitude"];
    }
    else {
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"Tried to set user longitude metadata with an invalid NSNumber. Value will not be included."];
    }
    [r19 release];
    return;
}

-(void)setUserInterests:(void *)arg2 {
    r31 = r31 - 0x150;
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
    var_130 = self;
    r20 = [arg2 retain];
    var_120 = [NSMutableArray new];
    r0 = [r20 retain];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 == 0x0) goto loc_10024cc7c;

loc_10024cb7c:
    r19 = r20;
    r20 = 0x0;
    goto loc_10024cb98;

loc_10024cb98:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r19);
    }
    r26 = @selector(class);
    r22 = *(0x0 + r20 * 0x8);
    objc_msgSend(@class(NSString), r26);
    if ((objc_msgSend(r22, r27) & 0x1) == 0x0) goto loc_10024ccc8;

loc_10024cbdc:
    r28 = @selector(length);
    r0 = [r22 retain];
    r22 = r0;
    if (objc_msgSend(r0, r28) >= 0x81) {
            [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
    }
    else {
            [var_120 addObject:r2];
    }
    [r22 release];
    r20 = r20 + 0x1;
    if (r20 < r23) goto loc_10024cb98;

loc_10024cc44:
    r20 = r19;
    r23 = objc_msgSend(r20, var_128);
    if (r23 != 0x0) goto loc_10024cb7c;

loc_10024cc7c:
    [r20 release];
    r19 = var_120;
    objc_storeStrong((int64_t *)&var_130->_userInterests, r19);
    [var_130->_metadata setObject:r19 forKeyedSubscript:@"adc_interests"];
    goto loc_10024ccfc;

loc_10024ccfc:
    var_58 = **___stack_chk_guard;
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_10024ccc8:
    [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
    r20 = r19;
    [r20 release];
    r19 = var_120;
    goto loc_10024ccfc;
}

-(void)setUserZipCode:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r20 = self;
    r19 = [r21 retain];
    if (r19 != 0x0 && [r19 length] < 0x81) {
            objc_storeStrong((int64_t *)&r20->_userZipCode, r21);
            [r20->_metadata setObject:r19 forKeyedSubscript:@"adc_zipcode"];
    }
    else {
            [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
    }
    [r19 release];
    return;
}

-(void)setUserHouseholdIncome:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r20 = self;
    r19 = [r21 retain];
    if (r19 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_userHouseholdIncome, r21);
            [r20->_metadata setObject:r19 forKeyedSubscript:@"adc_annual_hh_income"];
    }
    else {
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"Tried to set user household income metadata with an invalid NSNumber. Value will not be included."];
    }
    [r19 release];
    return;
}

-(void)setUserMaritalStatus:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r20 = self;
    r19 = [r21 retain];
    if (r19 != 0x0 && [r19 length] < 0x81) {
            objc_storeStrong((int64_t *)&r20->_userMaritalStatus, r21);
            [r20->_metadata setObject:r19 forKeyedSubscript:@"adc_marital"];
    }
    else {
            [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
    }
    [r19 release];
    return;
}

-(void)setUserEducationLevel:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r20 = self;
    r19 = [r21 retain];
    if (r19 != 0x0 && [r19 length] < 0x81) {
            objc_storeStrong((int64_t *)&r20->_userEducationLevel, r21);
            [r20->_metadata setObject:r19 forKeyedSubscript:@"adc_education"];
    }
    else {
            [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
    }
    [r19 release];
    return;
}

-(bool)setMetadataWithKey:(void *)arg2 andStringValue:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r20 != 0x0 && r19 != 0x0 && [r19 length] < 0x81) {
            if ([r20 length] >= 0x81) {
                    [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
                    r21 = 0x0;
            }
            else {
                    [r21->_metadata setObject:r20 forKeyedSubscript:r19];
                    r21 = 0x1;
            }
    }
    else {
            [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)setMetadataWithKey:(void *)arg2 andNumericValue:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0 && [r19 length] < 0x81) {
            if (r20 != 0x0) {
                    [r21->_metadata setObject:r20 forKeyedSubscript:r19];
                    r21 = 0x1;
            }
            else {
                    [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
                    r21 = 0x0;
            }
    }
    else {
            [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)getStringMetadataWithKey:(void *)arg2 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (arg2 != 0x0) {
            r19 = [[r0->_metadata objectForKeyedSubscript:r2] retain];
            if (r19 != 0x0) {
                    [NSString class];
                    if ([r19 isKindOfClass:r2] != 0x0) {
                            r20 = [r19 retain];
                    }
                    else {
                            r20 = 0x0;
                    }
            }
            else {
                    r20 = 0x0;
            }
            [r19 release];
    }
    else {
            r20 = 0x0;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void *)getNumericMetadataWithKey:(void *)arg2 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (arg2 != 0x0) {
            r19 = [[r0->_metadata objectForKeyedSubscript:r2] retain];
            if (r19 != 0x0) {
                    [NSNumber class];
                    if ([r19 isKindOfClass:r2] != 0x0) {
                            r20 = [r19 retain];
                    }
                    else {
                            r20 = 0x0;
                    }
            }
            else {
                    r20 = 0x0;
            }
            [r19 release];
    }
    else {
            r20 = 0x0;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(bool)setMetadataWithKey:(void *)arg2 andArrayValue:(void *)arg3 {
    r31 = r31 - 0x160;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([r20 count] == 0x0 || r20 == 0x0 || r19 == 0x0 || [r19 length] >= 0x81) goto loc_10024d780;

loc_10024d56c:
    var_140 = r21;
    r0 = [NSMutableArray new];
    var_130 = r20;
    var_128 = r0;
    r0 = [r20 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r0;
    var_138 = r1;
    r26 = objc_msgSend(r0, r1);
    if (r26 == 0x0) goto loc_10024d6d0;

loc_10024d5e0:
    r24 = 0x0;
    goto loc_10024d5f4;

loc_10024d5f4:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_120);
    }
    r25 = @selector(class);
    r22 = *(0x0 + r24 * 0x8);
    objc_msgSend(@class(NSString), r25);
    if ((objc_msgSend(r22, r21) & 0x1) == 0x0) goto loc_10024d724;

loc_10024d638:
    r23 = @selector(length);
    r0 = [r22 retain];
    r22 = r0;
    if (objc_msgSend(r0, r23) >= 0x81) {
            [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
    }
    else {
            [var_128 addObject:r2];
    }
    [r22 release];
    r24 = r24 + 0x1;
    if (r24 < r26) goto loc_10024d5f4;

loc_10024d6a0:
    r26 = objc_msgSend(var_120, var_138);
    if (r26 != 0x0) goto loc_10024d5e0;

loc_10024d6d0:
    [var_120 release];
    r20 = var_128;
    [var_140->_metadata setObject:r20 forKeyedSubscript:r19];
    r21 = 0x1;
    goto loc_10024d758;

loc_10024d758:
    [r20 release];
    r20 = var_130;
    goto loc_10024d794;

loc_10024d794:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10024d724:
    [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
    [var_120 release];
    r21 = 0x0;
    r20 = var_128;
    goto loc_10024d758;

loc_10024d780:
    [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
    r21 = 0x0;
    goto loc_10024d794;
}

-(long long)userAge {
    r0 = self->_userAge;
    return r0;
}

-(void *)getArrayMetadataWithKey:(void *)arg2 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (arg2 != 0x0) {
            r19 = [[r0->_metadata objectForKeyedSubscript:r2] retain];
            if (r19 != 0x0) {
                    [NSArray class];
                    if ([r19 isKindOfClass:r2] != 0x0) {
                            r20 = [r19 retain];
                    }
                    else {
                            r20 = 0x0;
                    }
            }
            else {
                    r20 = 0x0;
            }
            [r19 release];
    }
    else {
            r20 = 0x0;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void *)userInterests {
    r0 = self->_userInterests;
    return r0;
}

-(void *)userGender {
    r0 = self->_userGender;
    return r0;
}

-(void *)userLatitude {
    r0 = self->_userLatitude;
    return r0;
}

-(void *)userLongitude {
    r0 = self->_userLongitude;
    return r0;
}

-(void *)userZipCode {
    r0 = self->_userZipCode;
    return r0;
}

-(void *)userEducationLevel {
    r0 = self->_userEducationLevel;
    return r0;
}

-(void *)userHouseholdIncome {
    r0 = self->_userHouseholdIncome;
    return r0;
}

-(void *)userMaritalStatus {
    r0 = self->_userMaritalStatus;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_userEducationLevel, 0x0);
    objc_storeStrong((int64_t *)&self->_userMaritalStatus, 0x0);
    objc_storeStrong((int64_t *)&self->_userHouseholdIncome, 0x0);
    objc_storeStrong((int64_t *)&self->_userZipCode, 0x0);
    objc_storeStrong((int64_t *)&self->_userLongitude, 0x0);
    objc_storeStrong((int64_t *)&self->_userLatitude, 0x0);
    objc_storeStrong((int64_t *)&self->_userGender, 0x0);
    objc_storeStrong((int64_t *)&self->_userInterests, 0x0);
    objc_storeStrong((int64_t *)&self->_metadata, 0x0);
    return;
}

-(void *)getData {
    r0 = self->_metadata;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

@end