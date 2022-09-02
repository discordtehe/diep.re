@implementation ISPlacementCappingManager

+(void *)sharedManager {
    if (*qword_1011dabd0 != -0x1) {
            dispatch_once(0x1011dabd0, 0x100e8ba20);
    }
    r0 = *0x1011dabd8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)addCappingInfoPlacementRV:(void *)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            [r0 addCappingInfoPlacement:r2 adUnit:*0x100e8ccc0];
    }
    return;
}

-(void)addCappingInfoPlacementIS:(void *)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            [r0 addCappingInfoPlacement:r2 adUnit:*0x100e8ccd0];
    }
    return;
}

-(void)addCappingInfoPlacementBN:(void *)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            [r0 addCappingInfoPlacement:r2 adUnit:*0x100e8ccd8];
    }
    return;
}

-(long long)isPlacementCappedRV:(void *)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (r2 != 0x0) {
            r21 = [[r2 name] retain];
            r19 = [r19 isPlacementCappedAdUnit:*0x100e8ccc0 placementName:r21];
            [r21 release];
            r0 = r19;
    }
    else {
            r0 = 0x4;
    }
    return r0;
}

-(long long)isPlacementCappedIS:(void *)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (r2 != 0x0) {
            r21 = [[r2 name] retain];
            r19 = [r19 isPlacementCappedAdUnit:*0x100e8ccd0 placementName:r21];
            [r21 release];
            r0 = r19;
    }
    else {
            r0 = 0x4;
    }
    return r0;
}

-(long long)isPlacementCappedBN:(void *)arg2 {
    r0 = [self isPlacementCappedAdUnit:*0x100e8ccd8 placementName:arg2];
    return r0;
}

-(void)incrementShowCounterRV:(void *)arg2 {
    r21 = [[arg2 name] retain];
    [self incrementShowCounter:*0x100e8ccc0 placementName:r21];
    [r21 release];
    return;
}

-(void)incrementShowCounterIS:(void *)arg2 {
    r21 = [[arg2 name] retain];
    [self incrementShowCounter:*0x100e8ccd0 placementName:r21];
    [r21 release];
    return;
}

-(void)incrementShowCounterBN:(void *)arg2 {
    [self incrementShowCounter:*0x100e8ccd8 placementName:arg2];
    return;
}

-(void *)constructUserDefaultsKeyAdUnit:(void *)arg2 baseConst:(void *)arg3 placementName:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [[NSString stringWithFormat:r2] retain];
    [r20 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(double)initTimeThreshold:(void *)arg2 {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[NSCalendar currentCalendar] retain];
    r21 = [[NSDate date] retain];
    r0 = [r20 components:0x3c fromDate:r21];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if ([r19 isEqualToString:r2] == 0x0) goto loc_1006d0ff0;

loc_1006d0f74:
    [r22 setDay:[r22 day] + 0x1];
    [r22 setHour:0x0];
    [r22 setMinute:0x0];
    [r22 setSecond:0x0];
    r0 = [r20 dateFromComponents:r22];
    goto loc_1006d1070;

loc_1006d1070:
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r0 release];
    goto loc_1006d1098;

loc_1006d1098:
    [r22 release];
    [r21 release];
    [r20 release];
    r0 = [r19 release];
    return r0;

loc_1006d0ff0:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_1006d1098;

loc_1006d100c:
    [r22 setHour:[r22 hour] + 0x1];
    [r22 setMinute:0x0];
    [r22 setSecond:0x0];
    r0 = [r20 dateFromComponents:r22];
    goto loc_1006d1070;
}

-(void)incrementShowCounter:(void *)arg2 placementName:(void *)arg3 {
    r31 = r31 - 0x90;
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
    var_70 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [ISPlacementCappingManager sharedManager];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 constructUserDefaultsKeyAdUnit:r19 baseConst:@"CappingManager.IS_PACING_ENABLED" placementName:r20];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    var_68 = r21;
    if ([*(&@class(MPVASTModel) + 0xb38) getBOOLUDForKey:r2 defaultValue:r3] != 0x0) {
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            [r0 release];
            r0 = @class(ISPlacementCappingManager);
            r0 = [r0 sharedManager];
            r0 = [r0 retain];
            r25 = [[r0 constructUserDefaultsKeyAdUnit:r19 baseConst:@"CappingManager.TIME_OF_THE_PREVIOUS_SHOW" placementName:r20] retain];
            [r0 release];
            r22 = @class(ISUtils);
            v0 = v8;
            r0 = [NSNumber numberWithDouble:r19];
            r29 = r29;
            r27 = [r0 retain];
            [r22 saveValueToUDForKey:r27 forKey:r25];
            [r27 release];
            [r25 release];
    }
    r0 = [ISPlacementCappingManager sharedManager];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 constructUserDefaultsKeyAdUnit:r19 baseConst:@"CappingManager.IS_CAPPING_ENABLED" placementName:r20];
    r29 = r29;
    r25 = [r0 retain];
    [r22 release];
    if ([*(&@class(MPVASTModel) + 0xb38) getBOOLUDForKey:r2 defaultValue:r3] != 0x0) {
            r0 = [ISPlacementCappingManager sharedManager];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 constructUserDefaultsKeyAdUnit:r19 baseConst:@"CappingManager.CURRENT_NUMBER_OF_SHOWS" placementName:r20];
            r29 = r29;
            r26 = [r0 retain];
            [r22 release];
            r0 = *(&@class(MPVASTModel) + 0xb38);
            r0 = [r0 getIntegerUDForKey:r26 defaultValue:0x0];
            r21 = &@class(MPVASTModel);
            r27 = r0;
            if (r27 == 0x0) {
                    r0 = [ISPlacementCappingManager sharedManager];
                    r0 = [r0 retain];
                    r28 = [[r0 constructUserDefaultsKeyAdUnit:r19 baseConst:@"CappingManager.CAPPING_TYPE" placementName:r20] retain];
                    var_78 = r28;
                    [r0 release];
                    r0 = *(r21 + 0xb38);
                    r0 = [r0 getStringUDForKey:r28 defaultValue:@"d"];
                    r0 = [r0 retain];
                    var_80 = r0;
                    [var_70 initTimeThreshold:r0];
                    r0 = [ISPlacementCappingManager sharedManager];
                    r0 = [r0 retain];
                    [[r0 constructUserDefaultsKeyAdUnit:r19 baseConst:@"CappingManager.CAPPING_TIME_THRESHOLD" placementName:r20] retain];
                    [r0 release];
                    r28 = *(r21 + 0xb38);
                    r0 = [NSNumber numberWithDouble:r19];
                    r29 = r29;
                    [r0 retain];
                    [r28 saveValueToUDForKey:r2 forKey:r3];
                    [r22 release];
                    [r24 release];
                    [var_80 release];
                    [var_78 release];
            }
            r22 = *(r21 + 0xb38);
            [[NSNumber numberWithInteger:r27 + 0x1] retain];
            [r22 saveValueToUDForKey:r2 forKey:r3];
            [r24 release];
            [r26 release];
    }
    [r25 release];
    [var_68 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)addCappingInfoPlacement:(void *)arg2 adUnit:(void *)arg3 {
    r31 = r31 - 0x90;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r26 = [r19 isDelivery];
    r25 = [[ISPlacementCappingManager sharedManager] retain];
    r27 = [[r19 name] retain];
    r22 = [[r25 constructUserDefaultsKeyAdUnit:r20 baseConst:@"CappingManager.IS_DELIVERY_ENABLED" placementName:r27] retain];
    [r27 release];
    [r25 release];
    r0 = [NSNumber numberWithBool:r26];
    r29 = &saved_fp;
    [r0 retain];
    [ISUtils saveValueToUDForKey:r2 forKey:r3];
    [r21 release];
    if (r26 != 0x0) {
            var_68 = r22;
            r26 = [r19 isCappingEnable];
            r21 = [[ISPlacementCappingManager sharedManager] retain];
            r28 = [[r19 name] retain];
            r22 = [[r21 constructUserDefaultsKeyAdUnit:r20 baseConst:@"CappingManager.IS_CAPPING_ENABLED" placementName:r28] retain];
            [r28 release];
            [r21 release];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithBool:r26];
            r29 = r29;
            [r0 retain];
            var_70 = r22;
            [ISUtils saveValueToUDForKey:r2 forKey:r3];
            [r28 release];
            if (r26 != 0x0) {
                    var_78 = [[r19 cappingMaxImpressions] retain];
                    r21 = [[ISPlacementCappingManager sharedManager] retain];
                    r28 = [[r19 name] retain];
                    [[r21 constructUserDefaultsKeyAdUnit:r20 baseConst:@"CappingManager.MAX_NUMBER_OF_SHOWS" placementName:r28] retain];
                    [r28 release];
                    [r21 release];
                    [ISUtils saveValueToUDForKey:r2 forKey:r3];
                    [[r19 cappingUnit] retain];
                    r28 = [[ISPlacementCappingManager sharedManager] retain];
                    r26 = [[r19 name] retain];
                    r0 = [r28 constructUserDefaultsKeyAdUnit:r20 baseConst:@"CappingManager.CAPPING_TYPE" placementName:r26];
                    r29 = r29;
                    [r0 retain];
                    [r26 release];
                    [r28 release];
                    objc_msgSend(@class(ISUtils), r25);
                    [r22 release];
                    [r21 release];
                    [r23 release];
                    [var_78 release];
            }
            r26 = [r19 isPacingEnable];
            r21 = [[ISPlacementCappingManager sharedManager] retain];
            r22 = [[r19 name] retain];
            r28 = [[r21 constructUserDefaultsKeyAdUnit:r20 baseConst:@"CappingManager.IS_PACING_ENABLED" placementName:r22] retain];
            [r22 release];
            [r21 release];
            r0 = [NSNumber numberWithBool:r26];
            r29 = r29;
            [r0 retain];
            [ISUtils saveValueToUDForKey:r2 forKey:r3];
            [r22 release];
            if (r26 != 0x0) {
                    [[r19 pacingNumOfSeconds] retain];
                    r22 = [[ISPlacementCappingManager sharedManager] retain];
                    r23 = [[r19 name] retain];
                    [[r22 constructUserDefaultsKeyAdUnit:r20 baseConst:@"CappingManager.SECONDS_BETWEEN_SHOWS" placementName:r23] retain];
                    [r23 release];
                    [r22 release];
                    [ISUtils saveValueToUDForKey:r2 forKey:r3];
                    [r24 release];
                    [r21 release];
            }
            [r28 release];
            [var_70 release];
            r22 = var_68;
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(long long)isPlacementCappedAdUnit:(void *)arg2 placementName:(void *)arg3 {
    r31 = r31 - 0xb0;
    var_70 = d11;
    stack[-120] = d10;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [ISPlacementCappingManager sharedManager];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 constructUserDefaultsKeyAdUnit:r19 baseConst:@"CappingManager.IS_DELIVERY_ENABLED" placementName:r20];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    r28 = 0x1;
    if ([ISUtils getBOOLUDForKey:r2 defaultValue:r3] == 0x0) goto loc_1006d0a54;

loc_1006d061c:
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    d9 = d0 * *0x100b9b058;
    [r0 release];
    r0 = @class(ISPlacementCappingManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 constructUserDefaultsKeyAdUnit:r19 baseConst:@"CappingManager.IS_PACING_ENABLED" placementName:r20];
    r29 = r29;
    r22 = [r0 retain];
    [r25 release];
    var_78 = r22;
    if ([ISUtils getBOOLUDForKey:r2 defaultValue:r3] == 0x0) goto loc_1006d07ac;

loc_1006d06bc:
    r0 = @class(ISPlacementCappingManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r25 = [[r0 constructUserDefaultsKeyAdUnit:r19 baseConst:@"CappingManager.TIME_OF_THE_PREVIOUS_SHOW" placementName:r20] retain];
    [r0 release];
    [ISUtils getDoubleUDForKey:r25 defaultValue:0x0];
    r0 = @class(ISPlacementCappingManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 constructUserDefaultsKeyAdUnit:r19 baseConst:@"CappingManager.SECONDS_BETWEEN_SHOWS" placementName:r20];
    r29 = r29;
    r28 = [r0 retain];
    [r27 release];
    r0 = @class(ISUtils);
    [r0 getIntegerUDForKey:r28 defaultValue:0x0];
    d8 = d9 - d8;
    asm { scvtf      d10, x8 };
    [r28 release];
    [r25 release];
    if (d8 < d10) goto loc_1006d0960;

loc_1006d07ac:
    r0 = [ISPlacementCappingManager sharedManager];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 constructUserDefaultsKeyAdUnit:r19 baseConst:@"CappingManager.IS_CAPPING_ENABLED" placementName:r20];
    r29 = r29;
    r28 = [r0 retain];
    [r27 release];
    r26 = r28;
    if ([ISUtils getBOOLUDForKey:r2 defaultValue:r3] == 0x0) goto loc_1006d0a40;

loc_1006d0814:
    var_88 = r26;
    r0 = [ISPlacementCappingManager sharedManager];
    r0 = [r0 retain];
    r28 = [[r0 constructUserDefaultsKeyAdUnit:r19 baseConst:@"CappingManager.MAX_NUMBER_OF_SHOWS" placementName:r20] retain];
    [r0 release];
    var_90 = r28;
    var_80 = [ISUtils getIntegerUDForKey:r28 defaultValue:0x0];
    r0 = @class(ISPlacementCappingManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r22 = [[r0 constructUserDefaultsKeyAdUnit:r19 baseConst:@"CappingManager.CURRENT_NUMBER_OF_SHOWS" placementName:r20] retain];
    [r0 release];
    var_98 = r22;
    r26 = [ISUtils getIntegerUDForKey:r22 defaultValue:0x0];
    r0 = @class(ISPlacementCappingManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r28 = r0;
    r0 = [r0 constructUserDefaultsKeyAdUnit:r19 baseConst:@"CappingManager.CAPPING_TIME_THRESHOLD" placementName:r20];
    r29 = r29;
    r23 = [r0 retain];
    [r28 release];
    [ISUtils getDoubleUDForKey:r23 defaultValue:0x0];
    if (r26 >= var_80) goto loc_1006d0968;

loc_1006d0954:
    r24 = 0x1;
    r28 = 0x3;
    goto loc_1006d0978;

loc_1006d0978:
    r22 = var_90;
    r26 = var_88;
    r25 = var_98;
    goto loc_1006d0a24;

loc_1006d0a24:
    [r23 release];
    [r25 release];
    [r22 release];
    if (r24 != 0x0) {
            r28 = 0x4;
    }
    goto loc_1006d0a44;

loc_1006d0a44:
    [r26 release];
    goto loc_1006d0a4c;

loc_1006d0a4c:
    [var_78 release];
    goto loc_1006d0a54;

loc_1006d0a54:
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r28;
    return r0;

loc_1006d0968:
    if (d9 >= d0) goto loc_1006d0984;

loc_1006d0970:
    r24 = 0x0;
    r28 = 0x2;
    goto loc_1006d0978;

loc_1006d0984:
    r25 = @class(ISUtils);
    r28 = [@(0x0) retain];
    r0 = r25;
    r25 = var_98;
    [r0 saveValueToUDForKey:r28 forKey:r25];
    [r28 release];
    r28 = @class(ISUtils);
    r26 = [@(0x0) retain];
    [r28 saveValueToUDForKey:r26 forKey:r23];
    [r26 release];
    r24 = 0x1;
    r28 = 0x3;
    r22 = var_90;
    r26 = var_88;
    goto loc_1006d0a24;

loc_1006d0a40:
    r28 = 0x4;
    goto loc_1006d0a44;

loc_1006d0960:
    r28 = 0x3;
    goto loc_1006d0a4c;
}

@end