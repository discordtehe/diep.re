@implementation VunglePlayOptionsProvider

-(void *)initWithPlayOptionsDictionary:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 validatePlayOptionsDictionary:r19 error:r20];
            r22 = [[r19 objectForKeyedSubscript:*0x100e89360] retain];
            [r21 validateExtraInfoDictionary:r22 error:r20];
            [r22 release];
            [r21 assignPropertiesWithPlayOptions:r19];
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)incentivizedAlertControllerWithOKBlock:(void *)arg2 cancelBlock:(void *)arg3 {
    r31 = r31 - 0xe0;
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
    r24 = self;
    var_B8 = [arg2 retain];
    r22 = [arg3 retain];
    r0 = [r24 incentivizedAlertTitle];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r0 = [r21 retain];
    }
    else {
            r0 = [@"" copy];
    }
    r19 = r0;
    [r21 release];
    r0 = [r24 incentivizedAlertBody];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 != 0x0) {
            r0 = [r23 retain];
    }
    else {
            r0 = [@"Are you sure you want to skip this ad? If you do, you might not get your reward" copy];
    }
    r20 = r0;
    [r23 release];
    r0 = [r24 incentivizedAlertContinueButtonLabel];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if (r0 != 0x0) {
            r0 = [r25 retain];
    }
    else {
            r0 = [@"Continue" copy];
    }
    r23 = r0;
    [r25 release];
    r0 = [r24 incentivizedAlertCloseButtonLabel];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if (r0 != 0x0) {
            r0 = [r25 retain];
    }
    else {
            r0 = [@"Close" copy];
    }
    r24 = r0;
    [r25 release];
    r25 = [[UIAlertController alertControllerWithTitle:r19 message:r20 preferredStyle:0x1] retain];
    var_C8 = r20;
    r26 = @class(UIAlertAction);
    var_68 = r22;
    r22 = [r22 retain];
    r26 = [[r26 actionWithTitle:r23 style:0x1 handler:&var_88] retain];
    [r25 addAction:r26];
    [r26 release];
    r26 = @class(UIAlertAction);
    r20 = [var_B8 retain];
    r0 = [r26 actionWithTitle:r24 style:0x0 handler:&var_B0];
    r26 = [r0 retain];
    [r25 addAction:r26];
    [r26 release];
    [var_B8 release];
    [var_68 release];
    [r20 release];
    [r22 release];
    [r24 release];
    [r23 release];
    [var_C8 release];
    [r19 release];
    r0 = [r25 autorelease];
    return r0;
}

-(void *)customIncentivizedTexts {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[NSMutableDictionary dictionary] retain];
    r0 = [r20 incentivizedAlertTitle];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 incentivizedAlertTitle];
            r29 = r29;
            r21 = [r0 retain];
            [r19 setObject:r21 forKeyedSubscript:@"INCENTIVIZED_TITLE_TEXT"];
            [r21 release];
    }
    r0 = [r20 incentivizedAlertBody];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 incentivizedAlertBody];
            r29 = r29;
            r21 = [r0 retain];
            [r19 setObject:r21 forKeyedSubscript:@"INCENTIVIZED_BODY_TEXT"];
            [r21 release];
    }
    r0 = [r20 incentivizedAlertCloseButtonLabel];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 incentivizedAlertCloseButtonLabel];
            r29 = r29;
            r21 = [r0 retain];
            [r19 setObject:r21 forKeyedSubscript:@"INCENTIVIZED_CLOSE_TEXT"];
            [r21 release];
    }
    r0 = [r20 incentivizedAlertContinueButtonLabel];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = [[r20 incentivizedAlertContinueButtonLabel] retain];
            [r19 setObject:r20 forKeyedSubscript:@"INCENTIVIZED_CONTINUE_TEXT"];
            [r20 release];
    }
    if ([r19 count] != 0x0) {
            r20 = [r19 copy];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)validatePlayOptionsDictionary:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x140;
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
    var_128 = arg3;
    r0 = [arg2 retain];
    var_110 = q0;
    r0 = [r0 retain];
    r21 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_1006391b4;

loc_100639090:
    r22 = r0;
    r23 = *var_110;
    goto loc_1006390cc;

loc_1006390cc:
    r19 = 0x0;
    goto loc_1006390d0;

loc_1006390d0:
    if (*var_110 != r23) {
            objc_enumerationMutation(r21);
    }
    r8 = *(var_118 + r19 * 0x8);
    if (r8 == *0x100e89328 || r8 == *0x100e893b0 || r8 == *0x100e893a8 || r8 == *0x100e89360 || r8 == *0x100e89358 || r8 == *0x100e89350 || r8 == *0x100e89348 || r8 == *0x100e89340 || r8 == *0x100e89330 || r8 == *0x100e89338) goto loc_100639188;

loc_1006391c4:
    r19 = var_128;
    if (r19 != 0x0) {
            *r19 = [[objc_alloc() initWithDomain:@"com.vungle.PlayOptionsProvider" code:0xffffffffffff2f70 userInfo:0x0] autorelease];
    }
    [r21 release];
    r20 = 0x0;
    goto loc_10063920c;

loc_10063920c:
    var_60 = **___stack_chk_guard;
    [r21 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100639188:
    r19 = r19 + 0x1;
    if (r19 < r22) goto loc_1006390d0;

loc_100639194:
    r0 = objc_msgSend(r21, var_130);
    r22 = r0;
    if (r0 != 0x0) goto loc_1006390cc;

loc_1006391b4:
    [r21 release];
    r20 = 0x1;
    goto loc_10063920c;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = [VunglePlayOptionsProvider class];
    r0 = [r0 allocWithZone:arg2];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = [[r19 incentivizedAlertTitle] retain];
            [r20 setIncentivizedAlertTitle:r21];
            [r21 release];
            r21 = [[r19 incentivizedAlertBody] retain];
            [r20 setIncentivizedAlertBody:r21];
            [r21 release];
            r21 = [[r19 incentivizedAlertCloseButtonLabel] retain];
            [r20 setIncentivizedAlertCloseButtonLabel:r21];
            [r21 release];
            r21 = [[r19 incentivizedAlertContinueButtonLabel] retain];
            [r20 setIncentivizedAlertContinueButtonLabel:r21];
            [r21 release];
            [r20 setSupportedOrientations:[r19 supportedOrientations]];
            [r20 setStartMuted:[r19 startMuted]];
            r21 = [[r19 user] retain];
            [r20 setUser:r21];
            [r21 release];
            r21 = [[r19 extraInformation] retain];
            [r20 setExtraInformation:r21];
            [r21 release];
            r2 = [r19 ordinalView];
            [r20 setOrdinalView:r2];
            [r19 flexAutoCloseTime];
            [r20 setFlexAutoCloseTime:r2];
    }
    r0 = r20;
    return r0;
}

-(bool)validateExtraInfoDictionary:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x140;
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
    var_128 = arg3;
    r0 = [arg2 retain];
    var_110 = q0;
    r0 = [r0 retain];
    r25 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_1006393a4;

loc_1006392c4:
    r22 = r0;
    r23 = *var_110;
    goto loc_100639300;

loc_100639300:
    r24 = 0x0;
    goto loc_100639304;

loc_100639304:
    if (*var_110 != r23) {
            objc_enumerationMutation(r25);
    }
    if (*(var_118 + r24 * 0x8) != *0x100e89368) {
            asm { ccmp       x8, x10, #0x4, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { ccmp       x8, x11, #0x4, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { ccmp       x8, x12, #0x4, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { ccmp       x8, x13, #0x4, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { ccmp       x8, x14, #0x4, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { ccmp       x8, x15, #0x4, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { ccmp       x8, x16, #0x4, ne };
    }
    if (CPU_FLAGS & NE) goto loc_1006393b4;

loc_100639378:
    r24 = r24 + 0x1;
    if (r24 < r22) goto loc_100639304;

loc_100639384:
    r0 = objc_msgSend(r25, var_130);
    r22 = r0;
    if (r0 != 0x0) goto loc_100639300;

loc_1006393a4:
    [r25 release];
    r20 = 0x1;
    goto loc_1006393fc;

loc_1006393fc:
    var_60 = **___stack_chk_guard;
    [r25 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1006393b4:
    r19 = var_128;
    if (r19 != 0x0) {
            *r19 = [[objc_alloc() initWithDomain:@"com.vungle.PlayOptionsProvider" code:0xffffffffffff2f71 userInfo:0x0] autorelease];
    }
    [r25 release];
    r20 = 0x0;
    goto loc_1006393fc;
}

-(void)assignPropertiesWithPlayOptions:(void *)arg2 {
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
    r21 = arg2;
    r19 = self;
    r20 = [arg2 retain];
    r0 = [r21 objectForKeyedSubscript:*0x100e89328];
    r0 = [r0 retain];
    r25 = [r0 copy];
    [r19 setIncentivizedAlertTitle:r25];
    [r25 release];
    [r0 release];
    r0 = [r21 objectForKeyedSubscript:*0x100e89330];
    r0 = [r0 retain];
    r25 = [r0 copy];
    [r19 setIncentivizedAlertBody:r25];
    [r25 release];
    [r0 release];
    r0 = [r21 objectForKeyedSubscript:*0x100e89338];
    r0 = [r0 retain];
    r25 = [r0 copy];
    [r19 setIncentivizedAlertCloseButtonLabel:r25];
    [r25 release];
    [r0 release];
    r0 = [r21 objectForKeyedSubscript:*0x100e89340];
    r0 = [r0 retain];
    r25 = [r0 copy];
    [r19 setIncentivizedAlertContinueButtonLabel:r25];
    [r25 release];
    [r0 release];
    r0 = [r21 objectForKeyedSubscript:*0x100e89348];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 unsignedIntegerValue];
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r0;
            }
            else {
                    r2 = 0x1e;
            }
    }
    [r19 setSupportedOrientations:r2];
    [r25 release];
    r0 = [r21 objectForKeyedSubscript:*0x100e89350];
    r0 = [r0 retain];
    [r19 setStartMuted:[r0 boolValue]];
    [r0 release];
    r0 = [r21 objectForKeyedSubscript:*0x100e89358];
    r0 = [r0 retain];
    r26 = [r0 copy];
    [r19 setUser:r26];
    [r26 release];
    [r0 release];
    r0 = [r21 objectForKeyedSubscript:*0x100e89360];
    r0 = [r0 retain];
    r23 = [r0 copy];
    [r19 setExtraInformation:r23];
    [r23 release];
    [r0 release];
    r0 = [r21 objectForKeyedSubscript:*0x100e893a8];
    r0 = [r0 retain];
    [r19 setOrdinalView:[r0 unsignedIntegerValue]];
    [r0 release];
    r21 = [[r21 objectForKeyedSubscript:*0x100e893b0] retain];
    [r20 release];
    [r21 floatValue];
    if (s0 == 0x0) {
            asm { fcsel      s0, s1, s0, eq };
    }
    r2 = *0x100e893b0;
    asm { fcvt       d0, s0 };
    [r19 setFlexAutoCloseTime:r2];
    [r21 release];
    return;
}

-(void *)placement {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void *)user {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x0);
    return r0;
}

-(void *)extraInformation {
    r0 = objc_getProperty(self, _cmd, 0x20, 0x0);
    return r0;
}

-(void)setUser:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setExtraInformation:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(unsigned long long)supportedOrientations {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setSupportedOrientations:(unsigned long long)arg2 {
    *(self + 0x28) = arg2;
    return;
}

-(bool)startMuted {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setStartMuted:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(unsigned long long)ordinalView {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setOrdinalView:(unsigned long long)arg2 {
    *(self + 0x30) = arg2;
    return;
}

-(double)flexAutoCloseTime {
    r0 = self;
    return r0;
}

-(void)setFlexAutoCloseTime:(double)arg2 {
    *(self + 0x38) = d0;
    return;
}

-(void *)incentivizedAlertTitle {
    r0 = objc_getProperty(self, _cmd, 0x40, 0x0);
    return r0;
}

-(void)setIncentivizedAlertTitle:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)incentivizedAlertBody {
    r0 = objc_getProperty(self, _cmd, 0x48, 0x0);
    return r0;
}

-(void)setIncentivizedAlertBody:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)incentivizedAlertCloseButtonLabel {
    r0 = objc_getProperty(self, _cmd, 0x50, 0x0);
    return r0;
}

-(void)setIncentivizedAlertCloseButtonLabel:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)incentivizedAlertContinueButtonLabel {
    r0 = objc_getProperty(self, _cmd, 0x58, 0x0);
    return r0;
}

-(void)setIncentivizedAlertContinueButtonLabel:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x58, 0x0);
    objc_storeStrong(self + 0x50, 0x0);
    objc_storeStrong(self + 0x48, 0x0);
    objc_storeStrong(self + 0x40, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end