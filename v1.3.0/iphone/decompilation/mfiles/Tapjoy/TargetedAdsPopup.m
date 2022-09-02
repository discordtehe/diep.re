@implementation TargetedAdsPopup

-(void *)initWithId:(void *)arg2 andSelector:(void *)arg3 {
    self->mTarget = arg2;
    self->mSelector = arg3;
    [self init];
    r0 = self;
    return r0;
}

-(void)acceptCallback {
    NSLog(@"GDPR::User kept use of targeted ads!");
    [self->mTarget performSelector:r2 withObject:r3];
    return;
}

-(void)declineCallback {
    NSLog(@"GDPR::User revoked use of targeted ads!");
    [[[Application sharedApplication] gdprManager] setUserAnswerFor:0x1 withAnswer:0x0];
    [self->mTarget performSelector:r2 withObject:r3];
    return;
}

-(void *)init {
    r31 = r31 - 0x110;
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
    r0 = [[&var_B8 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = @selector(init);
            [r19 removeAllChildren];
            r0 = [CCDirector sharedDirector];
            var_D0 = r0;
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_popup));
            var_C8 = r20;
            r20 = *(r19 + r22);
            [r0 winSize];
            [r0 winSize];
            [r20 setContentSize:r2];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_title));
            [*(r19 + r23) setString:@"Personalize your experience!"];
            r21 = *(r19 + r23);
            [*(r19 + r22) contentSize];
            [*(r19 + r22) contentSize];
            [r21 setPosition:@"Personalize your experience!"];
            [*(r19 + r23) setFontSize:@"Personalize your experience!"];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_description));
            [*(r19 + r21) setString:@"This app uses targeted advertising, sharing your data with our\npartners, so that the ads presented are relevant for you.\nYou can find out more about these partners and how we use\nyour personal data in our privacy policy.\n\nYou have allowed us to share certa…"];
            r20 = *(r19 + r21);
            [*(r19 + r22) contentSize];
            [*(r19 + r22) contentSize];
            [r20 setPosition:@"This app uses targeted advertising, sharing your data with our\npartners, so that the ads presented are relevant for you.\nYou can find out more about these partners and how we use\nyour personal data in our privacy policy.\n\nYou have allowed us to share certa…"];
            r20 = r19->_descriptionBackground;
            [*(r19 + r22) contentSize];
            [*(r19 + r22) contentSize];
            [r20 setPosition:@"This app uses targeted advertising, sharing your data with our\npartners, so that the ads presented are relevant for you.\nYou can find out more about these partners and how we use\nyour personal data in our privacy policy.\n\nYou have allowed us to share certa…"];
            [*(r19 + r22) removeChild:r19->_footer];
            r0 = [MCFramedSprite framedSpriteWithDescriptionFileName:@"FS_green_button"];
            r20 = r0;
            [r0 setContentSize:@"FS_green_button"];
            r0 = [MCAdjustableLabelTTF labelWithString:@"Keep" fontName:@"OpenSans-Bold.ttf" fontSize:r4];
            [r0 setAnchorPoint:@"Keep"];
            [r20 contentSize];
            [r20 contentSize];
            [r0 setPosition:@"Keep"];
            [r0 setStrokeColor:0xb355];
            [r0 setStrokeSize:0xb355];
            [r0 setStrokeEnabled:0x1];
            [r20 addChild:r0];
            r0 = [CCMenuItemSprite itemWithNormalSprite:r20 selectedSprite:0x0 target:r19 selector:@selector(acceptCallback)];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_acceptButton));
            *(r19 + r21) = r0;
            var_E0 = r21;
            [*(r19 + r22) contentSize];
            [*(r19 + r22) contentSize];
            [r0 setPosition:r20];
            [*(r19 + r21) setAnchorPoint:r20];
            r0 = [MCFramedSprite framedSpriteWithDescriptionFileName:@"FS_orange_button"];
            r20 = r0;
            [r0 setContentSize:@"FS_orange_button"];
            r0 = [MCAdjustableLabelTTF labelWithString:@"Revoke" fontName:@"OpenSans-Bold.ttf" fontSize:r19];
            [r0 setAnchorPoint:@"Revoke"];
            [r20 contentSize];
            [r20 contentSize];
            [r0 setPosition:@"Revoke"];
            [r0 setStrokeColor:0x303079ee];
            [r0 setStrokeSize:0x303079ee];
            [r0 setStrokeEnabled:0x1];
            [r20 addChild:r0];
            r0 = [CCMenuItemSprite itemWithNormalSprite:r20 selectedSprite:0x0 target:r19 selector:@selector(declineCallback)];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_declineButton));
            *(r19 + r23) = r0;
            [*(r19 + r22) contentSize];
            [*(r19 + r22) contentSize];
            [r0 setPosition:r20];
            [*(r19 + r23) setAnchorPoint:r20];
            r0 = [CCNodeRGBA node];
            [r0 setColor:0x0];
            [r0 setCascadeColorEnabled:0x1];
            [r0 setOpacity:0x96];
            [r0 setCascadeOpacityEnabled:0x1];
            [var_D0 winSize];
            [var_D0 winSize];
            [r0 setContentSize:0x1];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_popupBackground));
            [*(r19 + r21) removeFromParent];
            [r0 addChild:*(r19 + r21)];
            r21 = [CCMenu menuWithItems:[CCMenuItemSprite itemWithNormalSprite:r0 selectedSprite:0x0]];
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, var_C8);
            [r0 addChild:r21];
            r21 = objc_msgSend(objc_alloc(), var_C8);
            [r21 addChild:[CCMenu menuWithItems:*(r19 + var_E0)]];
            [r19 addChild:r0];
            [r19 addChild:r21];
    }
    r0 = r19;
    return r0;
}

@end