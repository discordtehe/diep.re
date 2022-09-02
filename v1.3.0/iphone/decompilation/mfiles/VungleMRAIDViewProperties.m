@implementation VungleMRAIDViewProperties

-(void *)initWithOSVersion:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 copy];
            r8 = *(r20 + 0x48);
            *(r20 + 0x48) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setMaxSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r21 = [[NSNumber numberWithDouble:r2] retain];
    r20 = [[NSNumber numberWithDouble:r2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-88] forKeys:&var_58 count:0x2];
    r0 = [r0 retain];
    r8 = *(self + 0x8);
    *(self + 0x8) = r0;
    [r8 release];
    [r20 release];
    [r21 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)setScreenSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r21 = [[NSNumber numberWithDouble:r2] retain];
    r20 = [[NSNumber numberWithDouble:r2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-88] forKeys:&var_58 count:0x2];
    r0 = [r0 retain];
    r8 = *(self + 0x10);
    *(self + 0x10) = r0;
    [r8 release];
    [r20 release];
    [r21 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)setDefaultPosition:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xb0;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_58 = **___stack_chk_guard;
    r20 = [[NSNumber numberWithDouble:r2] retain];
    r21 = [[NSNumber numberWithDouble:r2] retain];
    r23 = [[NSNumber numberWithDouble:r2] retain];
    r22 = [[NSNumber numberWithDouble:r2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_78 forKeys:&var_98 count:0x4];
    r0 = [r0 retain];
    r8 = *(self + 0x18);
    *(self + 0x18) = r0;
    [r8 release];
    [r22 release];
    [r23 release];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setCurrentPosition:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xb0;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_58 = **___stack_chk_guard;
    r20 = [[NSNumber numberWithDouble:r2] retain];
    r21 = [[NSNumber numberWithDouble:r2] retain];
    r23 = [[NSNumber numberWithDouble:r2] retain];
    r22 = [[NSNumber numberWithDouble:r2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_78 forKeys:&var_98 count:0x4];
    r0 = [r0 retain];
    r8 = *(self + 0x20);
    *(self + 0x20) = r0;
    [r8 release];
    [r22 release];
    [r23 release];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setState:(void *)arg2 {
    r0 = [arg2 copy];
    r8 = *(self + 0x30);
    *(self + 0x30) = r0;
    [r8 release];
    return;
}

-(void)setSupports {
    r31 = r31 - 0xb0;
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
    r20 = [@(NO) retain];
    r21 = [@(NO) retain];
    r22 = [@(NO) retain];
    r24 = [@(NO) retain];
    r23 = [@(NO) retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_98 count:0x5];
    r0 = [r0 retain];
    r8 = *(self + 0x28);
    *(self + 0x28) = r0;
    [r8 release];
    [r23 release];
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)setPlacementType:(void *)arg2 {
    r0 = [arg2 copy];
    r8 = *(self + 0x38);
    *(self + 0x38) = r0;
    [r8 release];
    return;
}

-(void)setIsViewable:(bool)arg2 {
    r0 = [NSNumber numberWithBool:arg2];
    r0 = [r0 retain];
    r8 = *(self + 0x40);
    *(self + 0x40) = r0;
    [r8 release];
    return;
}

-(void)setStartMuted:(bool)arg2 {
    r0 = [NSNumber numberWithBool:arg2];
    r0 = [r0 retain];
    r8 = *(self + 0x50);
    *(self + 0x50) = r0;
    [r8 release];
    return;
}

-(void)setIsIncentivized:(bool)arg2 {
    r0 = [NSNumber numberWithBool:arg2];
    r0 = [r0 retain];
    r8 = *(self + 0x58);
    *(self + 0x58) = r0;
    [r8 release];
    return;
}

-(void)setIsConsentRequired:(bool)arg2 {
    r0 = [NSNumber numberWithBool:arg2];
    r0 = [r0 retain];
    r8 = *(self + 0x60);
    *(self + 0x60) = r0;
    [r8 release];
    return;
}

-(void)setConsentMessageTitle:(void *)arg2 {
    r0 = [arg2 copy];
    r8 = *(self + 0x88);
    *(self + 0x88) = r0;
    [r8 release];
    return;
}

-(void *)toDictionary {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [NSMutableDictionary new];
    r0 = *(r20 + 0x8);
    if (r0 != 0x0) {
            r21 = [r0 copy];
            [r19 setObject:r21 forKeyedSubscript:@"maxSize"];
            [r21 release];
    }
    r0 = *(r20 + 0x10);
    if (r0 != 0x0) {
            r21 = [r0 copy];
            [r19 setObject:r21 forKeyedSubscript:@"screenSize"];
            [r21 release];
    }
    r0 = *(r20 + 0x18);
    if (r0 != 0x0) {
            r21 = [r0 copy];
            [r19 setObject:r21 forKeyedSubscript:@"defaultPosition"];
            [r21 release];
    }
    r0 = *(r20 + 0x20);
    if (r0 != 0x0) {
            r21 = [r0 copy];
            [r19 setObject:r21 forKeyedSubscript:@"currentPosition"];
            [r21 release];
    }
    r0 = *(r20 + 0x28);
    if (r0 != 0x0) {
            r21 = [r0 copy];
            [r19 setObject:r21 forKeyedSubscript:@"supports"];
            [r21 release];
    }
    r0 = *(r20 + 0x30);
    if (r0 != 0x0) {
            r21 = [r0 copy];
            [r19 setObject:r21 forKeyedSubscript:@"state"];
            [r21 release];
    }
    r0 = *(r20 + 0x38);
    if (r0 != 0x0) {
            r21 = [r0 copy];
            [r19 setObject:r21 forKeyedSubscript:@"placementType"];
            [r21 release];
    }
    r0 = *(r20 + 0x40);
    if (r0 != 0x0) {
            r21 = [r0 copy];
            [r19 setObject:r21 forKeyedSubscript:@"isViewable"];
            [r21 release];
    }
    r0 = *(r20 + 0x50);
    if (r0 != 0x0) {
            r21 = [r0 copy];
            [r19 setObject:r21 forKeyedSubscript:@"startMuted"];
            [r21 release];
    }
    r0 = *(r20 + 0x58);
    if (r0 != 0x0) {
            r21 = [r0 copy];
            [r19 setObject:r21 forKeyedSubscript:@"incentivized"];
            [r21 release];
    }
    r0 = *(r20 + 0x60);
    if (r0 != 0x0) {
            r21 = [r0 copy];
            [r19 setObject:r21 forKeyedSubscript:@"consentRequired"];
            [r21 release];
    }
    r0 = *(r20 + 0x88);
    if (r0 != 0x0) {
            r21 = [r0 copy];
            [r19 setObject:r21 forKeyedSubscript:@"consentTitleText"];
            [r21 release];
    }
    r0 = *(r20 + 0x90);
    if (r0 != 0x0) {
            r21 = [r0 copy];
            [r19 setObject:r21 forKeyedSubscript:@"consentBodyText"];
            [r21 release];
    }
    r0 = *(r20 + 0x98);
    if (r0 != 0x0) {
            r21 = [r0 copy];
            [r19 setObject:r21 forKeyedSubscript:@"consentAcceptButtonText"];
            [r21 release];
    }
    r0 = *(r20 + 0xa0);
    if (r0 != 0x0) {
            r21 = [r0 copy];
            [r19 setObject:r21 forKeyedSubscript:@"consentDenyButtonText"];
            [r21 release];
    }
    r0 = *(r20 + 0x68);
    if (r0 != 0x0) {
            r21 = [r0 copy];
            [r19 setObject:r21 forKeyedSubscript:@"enableBackImmediately"];
            [r21 release];
    }
    r0 = *(r20 + 0x80);
    if (r0 != 0x0) {
            r21 = [r0 copy];
            [r19 setObject:r21 forKeyedSubscript:@"version"];
            [r21 release];
    }
    r0 = *(r20 + 0xa8);
    if (r0 != 0x0) {
            r21 = [r0 copy];
            [r19 setObject:r21 forKeyedSubscript:@"expandProperties"];
            [r21 release];
    }
    r0 = *(r20 + 0xb0);
    if (r0 != 0x0) {
            r21 = [r0 copy];
            [r19 setObject:r21 forKeyedSubscript:@"resizeProperties"];
            [r21 release];
    }
    r0 = *(r20 + 0xb8);
    if (r0 != 0x0) {
            r21 = [r0 copy];
            [r19 setObject:r21 forKeyedSubscript:@"orientationProperties"];
            [r21 release];
    }
    if (*(r20 + 0x48) != 0x0) {
            [r19 setObject:r2 forKeyedSubscript:r3];
    }
    else {
            [[r20 getOSVersion] retain];
            [r19 setObject:r2 forKeyedSubscript:r3];
            [r22 release];
    }
    r8 = *(r20 + 0x78);
    [r19 setObject:r2 forKeyedSubscript:r3];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setConsentMessageBody:(void *)arg2 {
    r0 = [arg2 copy];
    r8 = *(self + 0x90);
    *(self + 0x90) = r0;
    [r8 release];
    return;
}

-(void)setConsentMessageDenyButton:(void *)arg2 {
    r0 = [arg2 copy];
    r8 = *(self + 0xa0);
    *(self + 0xa0) = r0;
    [r8 release];
    return;
}

-(void)setConsentMessageAcceptButton:(void *)arg2 {
    r0 = [arg2 copy];
    r8 = *(self + 0x98);
    *(self + 0x98) = r0;
    [r8 release];
    return;
}

-(void)setEnableBackImmediately:(bool)arg2 {
    r0 = [NSNumber numberWithBool:arg2];
    r0 = [r0 retain];
    r8 = *(self + 0x68);
    *(self + 0x68) = r0;
    [r8 release];
    return;
}

-(void)setVersion:(void *)arg2 {
    r0 = [arg2 copy];
    r8 = *(self + 0x80);
    *(self + 0x80) = r0;
    [r8 release];
    return;
}

-(void)setDimensionsWithSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [VungleMRAIDScreenUtils screenResolutionWithSize:r2];
    [self setScreenSize:r2];
    [self setMaxSize:r2];
    [self setDefaultPosition:r2];
    [self setCurrentPosition:r2];
    return;
}

-(void *)getOSVersion {
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    r21 = [r0 copy];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)privateMaxSize {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setPrivateMaxSize:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void *)privateScreenSize {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setPrivateScreenSize:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void *)privateDefaultPosition {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setPrivateDefaultPosition:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void *)privateCurrentPosition {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setPrivateCurrentPosition:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void *)privateSupports {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setPrivateSupports:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(void *)privateState {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setPrivateState:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(void *)privatePlacementType {
    r0 = *(self + 0x38);
    return r0;
}

-(void)setPrivatePlacementType:(void *)arg2 {
    objc_storeStrong(self + 0x38, arg2);
    return;
}

-(void *)privateIsViewable {
    r0 = *(self + 0x40);
    return r0;
}

-(void)setPrivateIsViewable:(void *)arg2 {
    objc_storeStrong(self + 0x40, arg2);
    return;
}

-(void *)privateOsVersion {
    r0 = *(self + 0x48);
    return r0;
}

-(void)setPrivateOsVersion:(void *)arg2 {
    objc_storeStrong(self + 0x48, arg2);
    return;
}

-(void *)privateStartMuted {
    r0 = *(self + 0x50);
    return r0;
}

-(void)setPrivateStartMuted:(void *)arg2 {
    objc_storeStrong(self + 0x50, arg2);
    return;
}

-(void *)privateIsIncentivized {
    r0 = *(self + 0x58);
    return r0;
}

-(void)setPrivateIsIncentivized:(void *)arg2 {
    objc_storeStrong(self + 0x58, arg2);
    return;
}

-(void *)privateIsConsentRequired {
    r0 = *(self + 0x60);
    return r0;
}

-(void)setPrivateIsConsentRequired:(void *)arg2 {
    objc_storeStrong(self + 0x60, arg2);
    return;
}

-(void *)privateEnableBackImmediately {
    r0 = *(self + 0x68);
    return r0;
}

-(void)setPrivateEnableBackImmediately:(void *)arg2 {
    objc_storeStrong(self + 0x68, arg2);
    return;
}

-(void *)privateOSVersion {
    r0 = *(self + 0x70);
    return r0;
}

-(void)setPrivateOSVersion:(void *)arg2 {
    objc_storeStrong(self + 0x70, arg2);
    return;
}

-(void *)privateOS {
    r0 = *(self + 0x78);
    return r0;
}

-(void)setPrivateOS:(void *)arg2 {
    objc_storeStrong(self + 0x78, arg2);
    return;
}

-(void *)privateVersion {
    r0 = *(self + 0x80);
    return r0;
}

-(void)setPrivateVersion:(void *)arg2 {
    objc_storeStrong(self + 0x80, arg2);
    return;
}

-(void *)privateConsentTitleText {
    r0 = *(self + 0x88);
    return r0;
}

-(void)setPrivateConsentTitleText:(void *)arg2 {
    objc_storeStrong(self + 0x88, arg2);
    return;
}

-(void)setPrivateConsentBodyText:(void *)arg2 {
    objc_storeStrong(self + 0x90, arg2);
    return;
}

-(void *)privateConsentBodyText {
    r0 = *(self + 0x90);
    return r0;
}

-(void *)privateConsentAcceptButtonText {
    r0 = *(self + 0x98);
    return r0;
}

-(void)setPrivateConsentAcceptButtonText:(void *)arg2 {
    objc_storeStrong(self + 0x98, arg2);
    return;
}

-(void *)privateConsentDenyButtonText {
    r0 = *(self + 0xa0);
    return r0;
}

-(void)setPrivateConsentDenyButtonText:(void *)arg2 {
    objc_storeStrong(self + 0xa0, arg2);
    return;
}

-(void *)privateExpandProperties {
    r0 = *(self + 0xa8);
    return r0;
}

-(void)setPrivateExpandProperties:(void *)arg2 {
    objc_storeStrong(self + 0xa8, arg2);
    return;
}

-(void *)privateResizeProperties {
    r0 = *(self + 0xb0);
    return r0;
}

-(void)setPrivateResizeProperties:(void *)arg2 {
    objc_storeStrong(self + 0xb0, arg2);
    return;
}

-(void *)privateOrientationProperties {
    r0 = *(self + 0xb8);
    return r0;
}

-(void)setPrivateOrientationProperties:(void *)arg2 {
    objc_storeStrong(self + 0xb8, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0xb8, 0x0);
    objc_storeStrong(self + 0xb0, 0x0);
    objc_storeStrong(self + 0xa8, 0x0);
    objc_storeStrong(self + 0xa0, 0x0);
    objc_storeStrong(self + 0x98, 0x0);
    objc_storeStrong(self + 0x90, 0x0);
    objc_storeStrong(self + 0x88, 0x0);
    objc_storeStrong(self + 0x80, 0x0);
    objc_storeStrong(self + 0x78, 0x0);
    objc_storeStrong(self + 0x70, 0x0);
    objc_storeStrong(self + 0x68, 0x0);
    objc_storeStrong(self + 0x60, 0x0);
    objc_storeStrong(self + 0x58, 0x0);
    objc_storeStrong(self + 0x50, 0x0);
    objc_storeStrong(self + 0x48, 0x0);
    objc_storeStrong(self + 0x40, 0x0);
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end