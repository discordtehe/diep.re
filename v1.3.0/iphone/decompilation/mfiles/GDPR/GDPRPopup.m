@implementation GDPRPopup

-(void *)initWithId:(void *)arg2 andSelector:(void *)arg3 {
    self->mTarget = arg2;
    self->mSelector = arg3;
    [self init];
    r0 = self;
    return r0;
}

-(void)acceptCallback {
    NSLog(@"GDPR::User accepted targeted ads!");
    [[[Application sharedApplication] gdprManager] setUserAnswerFor:0x1 withAnswer:0x1];
    [self->mTarget performSelector:r2 withObject:r3];
    return;
}

-(void)declineCallback {
    NSLog(@"GDPR::User denied targeted ads!");
    [[[Application sharedApplication] gdprManager] setUserAnswerFor:0x1 withAnswer:0x0];
    [self->mTarget performSelector:r2 withObject:r3];
    return;
}

-(void *)init {
    r31 = r31 - 0x140;
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
            r25 = [CCDirector sharedDirector];
            var_E8 = r20;
            r0 = [MCFramedSprite framedSpriteWithDescriptionFileName:@"FS_white_gray_popup"];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_popupBackground));
            *(r19 + r8) = r0;
            var_F0 = r8;
            [r25 winSize];
            [r25 winSize];
            [r0 setContentSize:@"FS_white_gray_popup"];
            r21 = *(r19 + r8);
            [r21 contentSize];
            [*(r19 + r8) contentSize];
            [r21 setPosition:@"FS_white_gray_popup"];
            [*(r19 + r8) setAnchorPoint:@"FS_white_gray_popup"];
            r0 = @class(MCFramedSprite);
            r0 = [r0 framedSpriteWithDescriptionFileName:@"FS_white_gray_popup"];
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_popup));
            *(r19 + r27) = r0;
            [r0 setAnchorPoint:@"FS_white_gray_popup"];
            r20 = *(r19 + r27);
            [r25 winSize];
            [r25 winSize];
            [r20 setPosition:@"FS_white_gray_popup"];
            r20 = *(r19 + r27);
            [r25 winSize];
            [r25 winSize];
            [r20 setContentSize:@"FS_white_gray_popup"];
            r0 = [MCAdjustableLabelTTF labelWithString:@"Personalize Your Experience" fontName:@"OpenSans-Bold.ttf" fontSize:r4];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_title));
            *(r19 + r21) = r0;
            [*(r19 + r27) contentSize];
            [*(r19 + r27) contentSize];
            [r0 setPosition:@"Personalize Your Experience"];
            [*(r19 + r21) setAnchorPoint:@"Personalize Your Experience"];
            [*(r19 + r21) setColor:0x0];
            [*(r19 + r27) addChild:*(r19 + r21)];
            r0 = @class(MCAdjustableLabelTTF);
            r0 = [r0 labelWithString:@"This app uses targeted advertising, sharing your data with our\npartners, so that the ads presented are relevant for you. By\nconsenting to this you will have an enhanced ad experience. You\ncan revoke this option at any time within the settings of the app.\nY…" fontName:@"OpenSans-Bold.ttf" fontSize:r4];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_description));
            *(r19 + r21) = r0;
            [*(r19 + r27) contentSize];
            [*(r19 + r27) contentSize];
            [r0 setPosition:@"This app uses targeted advertising, sharing your data with our\npartners, so that the ads presented are relevant for you. By\nconsenting to this you will have an enhanced ad experience. You\ncan revoke this option at any time within the settings of the app.\nY…"];
            [*(r19 + r21) setContentSize:@"This app uses targeted advertising, sharing your data with our\npartners, so that the ads presented are relevant for you. By\nconsenting to this you will have an enhanced ad experience. You\ncan revoke this option at any time within the settings of the app.\nY…"];
            [*(r19 + r21) setAnchorPoint:@"This app uses targeted advertising, sharing your data with our\npartners, so that the ads presented are relevant for you. By\nconsenting to this you will have an enhanced ad experience. You\ncan revoke this option at any time within the settings of the app.\nY…"];
            [*(r19 + r21) setHorizontalAlignment:0x1];
            [*(r19 + r21) setColor:0x0];
            r0 = @class(MCFramedSprite);
            r0 = [r0 framedSpriteWithDescriptionFileName:@"FS_light_gray_popup"];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_descriptionBackground));
            *(r19 + r22) = r0;
            [*(r19 + r27) contentSize];
            [*(r19 + r27) contentSize];
            [r0 setPosition:@"FS_light_gray_popup"];
            [*(r19 + r22) setContentSize:@"FS_light_gray_popup"];
            [*(r19 + r22) setAnchorPoint:@"FS_light_gray_popup"];
            [*(r19 + r27) addChild:*(r19 + r22)];
            [*(r19 + r27) addChild:*(r19 + r21)];
            r0 = @class(MCFramedSprite);
            r0 = [r0 framedSpriteWithDescriptionFileName:@"FS_green_button"];
            r21 = r0;
            [r0 setContentSize:@"FS_green_button"];
            r0 = [MCAdjustableLabelTTF labelWithString:@"Yes, I agree" fontName:@"OpenSans-Bold.ttf" fontSize:r4];
            [r0 setAnchorPoint:@"Yes, I agree"];
            [r21 contentSize];
            [r21 contentSize];
            [r0 setPosition:@"Yes, I agree"];
            [r0 setStrokeColor:0xb355];
            [r0 setStrokeSize:0xb355];
            [r0 setStrokeEnabled:0x1];
            [r21 addChild:r0];
            r0 = [CCMenuItemSprite itemWithNormalSprite:r21 selectedSprite:0x0 target:r19 selector:@selector(acceptCallback)];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_acceptButton));
            *(r19 + r8) = r0;
            var_118 = r8;
            [*(r19 + r27) contentSize];
            [r0 setPosition:r21];
            [*(r19 + r8) setAnchorPoint:r21];
            r0 = [MCFramedSprite framedSpriteWithDescriptionFileName:@"FS_orange_button"];
            r21 = r0;
            [r0 setContentSize:@"FS_orange_button"];
            r0 = [MCAdjustableLabelTTF labelWithString:@"No, thank you" fontName:@"OpenSans-Bold.ttf" fontSize:r19];
            [r0 setAnchorPoint:@"No, thank you"];
            [r21 contentSize];
            [r21 contentSize];
            [r0 setPosition:@"No, thank you"];
            [r0 setStrokeColor:0x303079ee];
            [r0 setStrokeSize:0x303079ee];
            [r0 setStrokeEnabled:0x1];
            [r21 addChild:r0];
            r0 = @class(CCMenuItemSprite);
            r0 = [r0 itemWithNormalSprite:r21 selectedSprite:0x0 target:r19 selector:@selector(declineCallback)];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_declineButton));
            *(r19 + r8) = r0;
            [*(r19 + r27) contentSize];
            [r0 setPosition:r21];
            [*(r19 + r8) setAnchorPoint:r21];
            r0 = [MCAdjustableLabelTTF labelWithString:@"I understand I will still see ads, but they may not be relevant to me." fontName:@"OpenSans-Bold.ttf" fontSize:r19];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_footer));
            *(r19 + r21) = r0;
            [*(r19 + r27) contentSize];
            [*(r19 + r27) contentSize];
            [r0 setPosition:@"I understand I will still see ads, but they may not be relevant to me."];
            [*(r19 + r21) setContentSize:@"I understand I will still see ads, but they may not be relevant to me."];
            [*(r19 + r21) setAnchorPoint:@"I understand I will still see ads, but they may not be relevant to me."];
            [*(r19 + r21) setHorizontalAlignment:0x1];
            [*(r19 + r21) setColor:0x0];
            [*(r19 + r27) addChild:*(r19 + r21)];
            [*(r19 + var_F0) addChild:*(r19 + r27)];
            r0 = [CCNodeRGBA node];
            [r0 setColor:0x0];
            [r0 setCascadeColorEnabled:0x1];
            [r0 setOpacity:0x96];
            [r0 setCascadeOpacityEnabled:0x1];
            [r25 winSize];
            [r25 winSize];
            [r0 setContentSize:0x1];
            [r0 addChild:*(r19 + var_F0)];
            r21 = [CCMenu menuWithItems:[CCMenuItemSprite itemWithNormalSprite:r0 selectedSprite:0x0]];
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, var_E8);
            [r0 addChild:r21];
            r21 = objc_msgSend(objc_alloc(), var_E8);
            [r21 addChild:[CCMenu menuWithItems:*(r19 + var_118)]];
            [r19 addChild:r0];
            [r19 addChild:r21];
            [r19 setPosition:r21];
            [r25 winSize];
            [r25 winSize];
            [r19 setContentSize:r21];
    }
    r0 = r19;
    return r0;
}

@end