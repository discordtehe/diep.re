@implementation MCPromoButton

+(void *)getPromoButtonForOffer:(void *)arg2 withConfiguration:(void *)arg3 block:(void *)arg4 gameDelegate:(void *)arg5 promoSystem:(void *)arg6 localizationManager:(void *)arg7 {
    r0 = [MCPromoButton alloc];
    r0 = [r0 initWithOfferId:arg2 configuration:arg3 block:arg4 pendingPurchases:0x0 gameDelegate:arg5 promoSystem:arg6 localizationManager:arg7];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)getPromoButtonForOffer:(void *)arg2 withConfiguration:(void *)arg3 block:(void *)arg4 pendingPurchases:(void *)arg5 gameDelegate:(void *)arg6 promoSystem:(void *)arg7 localizationManager:(void *)arg8 {
    r0 = [MCPromoButton alloc];
    r0 = [r0 initWithOfferId:arg2 configuration:arg3 block:arg4 pendingPurchases:arg5 gameDelegate:arg6 promoSystem:arg7 localizationManager:arg8];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)getPromoButtonForOffer:(void *)arg2 withConfiguration:(void *)arg3 target:(void *)arg4 selector:(void *)arg5 gameDelegate:(void *)arg6 promoSystem:(void *)arg7 localizationManager:(void *)arg8 {
    r23 = sub_1005cb080(arg4, arg5, 0x0);
    r19 = [[[MCPromoButton alloc] initWithOfferId:arg2 configuration:arg3 block:r23 pendingPurchases:0x0 gameDelegate:arg6 promoSystem:arg7 localizationManager:arg8] autorelease];
    [r23 release];
    r0 = r19;
    return r0;
}

+(void *)getPromoButtonForOffer:(void *)arg2 withConfiguration:(void *)arg3 target:(void *)arg4 selector:(void *)arg5 pendingPurchases:(void *)arg6 gameDelegate:(void *)arg7 promoSystem:(void *)arg8 localizationManager:(void *)arg9 {
    r24 = sub_1005cb080(arg4, arg5, 0x0);
    r19 = [[[MCPromoButton alloc] initWithOfferId:arg2 configuration:arg3 block:r24 pendingPurchases:arg6 gameDelegate:arg7 promoSystem:arg8 localizationManager:arg9] autorelease];
    [r24 release];
    r0 = r19;
    return r0;
}

-(void)update:(double)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_promoSystem));
    r0 = *(self + r20);
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_offerId));
    if ([r0 isOfferActive:*(r19 + r21)] != 0x0) {
            sub_10076e3dc(r19->_timerLabel, r19->_timerText, r19->_gameDelegate, *(r19 + r21), *(r19 + r20));
    }
    return;
}

-(void)setCanActivateButton:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_canActivateButton));
    *(int8_t *)(self + r20) = arg2;
    r0 = [self isEnabled];
    r8 = *(int8_t *)(r19 + r20);
    if (r8 != r0) {
            if (r8 != 0x0) {
            }
            [r19 setIsEnabled:r2];
    }
    return;
}

-(void)setIsEnabled:(bool)arg2 {
    r0 = self;
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    if (arg2 == 0x0 || *(int8_t *)(int64_t *)&r0->_canActivateButton != 0x0) {
            [[&var_10 super] setIsEnabled:r2];
    }
    return;
}

-(void)dealloc {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_offerId));
    r0 = *(self + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_timerText));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_timerLabel));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_onClickSound));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_promoSystem));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_gameDelegate));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    [[&var_30 super] dealloc];
    return;
}

-(void)selected {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_30 super] selected];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_gameDelegate));
    if ([*(r19 + r21) respondsToSelector:@selector(playOnButtonClickSound:)] != 0x0) {
            [*(r19 + r21) playOnButtonClickSound:r19->_onClickSound];
    }
    return;
}

-(void *)offerId {
    r0 = self->_offerId;
    return r0;
}

-(void *)initWithOfferId:(void *)arg2 configuration:(void *)arg3 block:(void *)arg4 pendingPurchases:(void *)arg5 gameDelegate:(void *)arg6 promoSystem:(void *)arg7 localizationManager:(void *)arg8 {
    r7 = arg7;
    r6 = arg6;
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x1c0;
    var_A0 = d15;
    stack[-152] = d14;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r29 = &var_10;
    if (r3 == 0x0) goto loc_10076ee08;

loc_10076eb3c:
    r21 = r7;
    r20 = r6;
    r25 = r5;
    r24 = r4;
    r23 = r3;
    r22 = r2;
    r26 = r0;
    if ([r3 count] == 0x0) goto loc_10076ee08;

loc_10076eb70:
    *(int128_t *)(r29 + 0xffffffffffffff38) = r26;
    *(int128_t *)(r29 + 0xffffffffffffff40) = r22;
    var_100 = r25;
    var_F8 = r24;
    r22 = *(r29 + 0x10);
    *(r29 + 0xffffffffffffff30) = [CCNodeRGBA node];
    r0 = [MCPromoDataAccess clearAllDataAccessFromConfig:r23];
    r27 = r0;
    r23 = [r0 objectForKey:@"buttonBackgroundImage"];
    r0 = @class(NSDictionary);
    r25 = @selector(class);
    r23 = sub_1005d8554(r23, objc_msgSend(r0, r25), 0x0);
    var_108 = sub_1005d85d8([sub_1005d8554([r27 objectForKey:@"buttonSounds"], objc_msgSend(@class(NSDictionary), r25), 0x0) objectForKey:@"onClickSound"], 0x0);
    var_F0 = r22;
    var_E8 = r20;
    r1 = r20;
    r20 = r21;
    r0 = sub_10076d5f0(r23, r1, r21, r22);
    if (r0 == 0x0) goto loc_10076ee08;

loc_10076ec6c:
    r28 = @selector(count);
    r25 = @selector(class);
    r26 = r0;
    var_120 = r28;
    var_128 = sub_1005d85d8([r23 objectForKey:@"useBasePack"], 0x0);
    [r26 position];
    v8 = v0;
    v9 = v1;
    [r26 contentSize];
    v10 = v0;
    v11 = v1;
    [r26 scale];
    v12 = v0;
    [r26 setScale:@"useBasePack"];
    [r26 setPosition:@"useBasePack"];
    r0 = *(r29 + 0xffffffffffffff30);
    r28 = r0;
    [r0 addChild:r26 z:0x0];
    r23 = sub_1005d84b0([r27 objectForKey:@"displayRemainingTimeOnBadge"], 0x0);
    r24 = [r27 objectForKey:@"timerConfiguration"];
    r0 = objc_msgSend(@class(NSDictionary), r25);
    r0 = sub_1005d8554(r24, r0, 0x0);
    *(int128_t *)(r29 + 0xffffffffffffff58) = 0x0;
    *(int128_t *)(r29 + 0xffffffffffffff60) = 0x0;
    r22 = *(r29 + 0xffffffffffffff40);
    if (r22 == 0x0) goto loc_10076ee40;

loc_10076ed94:
    r25 = r0;
    r0 = [r22 isEqualToString:@""];
    r21 = r20;
    if (r20 == 0x0) goto loc_10076ee48;

loc_10076edc0:
    r8 = 0x0;
    r20 = r28;
    if (r0 != 0x0) goto loc_10076eea8;

loc_10076edc8:
    if (r25 == 0x0 || objc_msgSend(r25, var_120) == 0x0) goto loc_10076ee50;

loc_10076eddc:
    r5 = r29 - 0xa0;
    r6 = r29 - 0xa8;
    r0 = r25;
    r1 = r20;
    r2 = var_E8;
    goto loc_10076edf0;

loc_10076edf0:
    sub_10076e16c(r0, r1, r2, r21, var_F0, r5, r6, r22);
    r8 = 0x1;
    goto loc_10076eea8;

loc_10076eea8:
    r28 = r8;
    [r20 sortAllChildren];
    [r20 setCascadeColorEnabled:0x1];
    [r20 setCascadeOpacityEnabled:0x1];
    *(int128_t *)(r29 + 0xffffffffffffff48) = *(r29 + 0xffffffffffffff38);
    *(int128_t *)(r29 + 0xffffffffffffff50) = *0x101168000;
    r0 = [[r29 - 0xb8 super] initFromNormalNode:r20 selectedNode:0x0 disabledNode:0x0 target:0x0 selector:0x0];
    r19 = r0;
    if (r0 != 0x0) {
            sub_10076d428(r20, r27, @"buttonIconImages", var_E8, r21, var_F0);
            sub_10076d72c(r20, r27, @"buttonTextLabels", var_E8, r21, var_F0, var_100);
            sub_10076dc00(r20, r27, var_E8, r21, var_F0, var_100);
            r19->_offerId = [r22 retain];
            r19->_timerText = [*(r29 + 0xffffffffffffff60) retain];
            r19->_timerLabel = [*(r29 + 0xffffffffffffff58) retain];
            r19->_onClickSound = [var_108 retain];
            r19->_promoSystem = [r21 retain];
            r19->_gameDelegate = [var_E8 retain];
            *(int8_t *)(int64_t *)&r19->_canActivateButton = 0x1;
            [r19 setBlock:var_F8];
            [r19 setDisabledColor:*(int32_t *)0x1011e2e74];
            [r19 setSelectedColor:*(int32_t *)0x1011e2e78];
            [r19 setNormalColor:*(int32_t *)0x1011e2e74];
            [r19 setPickOnChildren:0x1];
            [r19 setAnchorPoint:0x1];
            [r19 setContentSize:r2];
            [r19 setScale:r2];
            [r19 setPosition:r2];
            if (r28 != 0x0) {
                    [r19 scheduleUpdate];
            }
    }
    goto loc_10076ee0c;

loc_10076ee0c:
    r0 = r19;
    return r0;

loc_10076ee50:
    if (r23 == 0x0) goto loc_10076eea4;

loc_10076ee54:
    r28 = var_E8;
    if ([r28 respondsToSelector:@selector(getDefaultTTFontForSystem:)] == 0x0) goto loc_10076eea4;

loc_10076ee78:
    r0 = [r28 getDefaultTTFontForSystem:r21];
    if (r0 == 0x0) goto loc_10076eea4;

loc_10076ee8c:
    r19 = r0;
    if (([r0 isEqualToString:@""] & 0x1) == 0x0) goto loc_10076f11c;

loc_10076eea4:
    r8 = 0x0;
    goto loc_10076eea8;

loc_10076f11c:
    [r26 contentSize];
    asm { fcvt       s0, d0 };
    sub_10076e5bc();
    objc_msgSend(r26, r24);
    asm { fcvt       s0, d0 };
    sub_10076e5bc();
    objc_msgSend(r26, r24);
    sub_10076b628();
    asm { fcvt       d0, s0 };
    asm { fcvt       s0, d0 };
    sub_10076e5bc();
    objc_msgSend(r26, r24);
    sub_10076b628();
    asm { fcvt       d0, s0 };
    asm { fcvt       s0, d0 };
    sub_10076e5bc();
    [NSNumber numberWithFloat:r2];
    [NSNumber numberWithFloat:r2];
    [NSNumber numberWithFloat:r2];
    [NSNumber numberWithFloat:r2];
    v0 = v0;
    [NSNumber numberWithFloat:r2];
    r0 = @class(NSNumber);
    [r0 numberWithInt:0x0];
    r0 = [NSDictionary dictionaryWithObjectsAndKeys:0x0];
    r5 = r29 - 0xa0;
    r6 = r29 - 0xa8;
    r1 = r26;
    r2 = r28;
    goto loc_10076edf0;

loc_10076ee48:
    r8 = 0x0;
    r20 = r28;
    goto loc_10076eea8;

loc_10076ee40:
    r21 = r20;
    goto loc_10076ee48;

loc_10076ee08:
    r19 = 0x0;
    goto loc_10076ee0c;
}

@end