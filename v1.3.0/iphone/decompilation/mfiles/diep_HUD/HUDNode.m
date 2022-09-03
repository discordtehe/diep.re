@implementation HUDNode

-(struct CGPoint)moveJoystickPosition {
    r0 = self->_moveJoystickBackground;
    r0 = [r0 position];
    return r0;
}

-(struct CGPoint)aimShootJoystickPosition {
    r0 = self->_aimShootJoystickBackground;
    r0 = [r0 position];
    return r0;
}

+(void *)createInputConsumerForButton:(void *)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r2;
            if ([r2 parent] != 0x0) {
                    r20 = @selector(parent);
                    r21 = [MCMenuItemSprite itemWithNormalSprite:0x0 selectedSprite:0x0];
                    [r19 contentSize];
                    [r21 setContentSize:0x0];
                    [r19 position];
                    [r21 setPosition:0x0];
                    [r19 anchorPoint];
                    [r21 setAnchorPoint:0x0];
                    [objc_msgSend(r19, r20) addChild:r2];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
    }
    r0 = r21;
    return r0;
}

-(void)setQuestProgressVisible:(bool)arg2 {
    return;
}

-(void)animateFadeAfter:(float)arg2 {
    r2 = arg2;
    r0 = self;
    asm { fmax       s0, s0, s1 };
    r19 = r0->_fadeNode;
    r20 = @class(CCSequence);
    r0 = @class(CCDelayTime);
    asm { fcvt       d0, s0 };
    [r20 actionOne:[r0 actionWithDuration:r2] two:[CCFadeTo actionWithDuration:0xcc opacity:r3]];
    [r19 runAction:r2];
    return;
}

+(void)setupPressedAndDisabledStatesForButton:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0xe0;
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
    if (r2 != 0x0) {
            r19 = r2;
            [r2 setDarkenedOnDisable:0x0];
            r21 = [r19 normalImage];
            r21 = sub_1005d8554(r21, [CCSprite class], 0x0);
            r22 = [r19 getChildByTag:r2];
            r0 = @class(CCSprite);
            r0 = [r0 class];
            r0 = sub_1005d8554(r22, r0, 0x0);
            if (r0 != 0x0) {
                    [r0 retain];
                    [r0 removeFromParentAndCleanup:0x0];
                    [r21 addChild:r0];
                    [r0 release];
                    r23 = [CCSprite spriteWithTexture:[r0 texture]];
                    [r0 textureRect];
                    r21 = [r0 textureRectRotated];
                    [r0 contentSize];
                    [r23 setTextureRect:r21 rotated:r3 untrimmedSize:r4];
                    [r0 position];
                    [r23 setPosition:r21];
                    [r0 scale];
                    [r23 setScale:r21];
                    [r0 rotation];
                    [r23 setRotation:r21];
                    [r0 anchorPoint];
                    [r23 setAnchorPoint:r21];
                    r24 = [r19 selectedImage];
                    r0 = @class(CCSprite);
                    r0 = [r0 class];
                    r0 = sub_1005d8554(r24, r0, 0x0);
                    [r0 addChild:r23];
                    sub_1005d7e14(0xb2, r0, 0x0, 0x0);
                    r23 = @class(CCSprite);
                    r23 = [r23 spriteWithTexture:[r22 texture]];
                    [r22 textureRect];
                    r24 = [r22 textureRectRotated];
                    [r22 contentSize];
                    [r23 setTextureRect:r24 rotated:r3 untrimmedSize:r4];
                    [r22 position];
                    [r23 setPosition:r24];
                    [r22 scale];
                    [r23 setScale:r24];
                    [r22 rotation];
                    [r23 setRotation:r24];
                    [r22 anchorPoint];
                    [r23 setAnchorPoint:r24];
                    r19 = [r19 disabledImage];
                    r0 = @class(CCSprite);
                    r0 = [r0 class];
                    r0 = sub_1005d8554(r19, r0, 0x0);
                    [r0 addChild:r23];
                    sub_1005d7e14(0x73, r0, 0x0, 0x0);
            }
    }
    return;
}

-(void *)menu {
    r0 = self->_menu;
    return r0;
}

-(void *)bottomMenu {
    r0 = self->_bottomMenu;
    return r0;
}

-(void *)connectionLabel {
    r0 = self->_connectionLabel;
    return r0;
}

-(void *)zoomButton {
    r0 = self->_zoomButton;
    return r0;
}

-(void *)zoomButtonRight {
    r0 = self->_zoomButtonRight;
    return r0;
}

-(void *)zoomInImage {
    r0 = self->_zoomInImage;
    return r0;
}

-(void *)zoomOutImage {
    r0 = self->_zoomOutImage;
    return r0;
}

-(void *)zoomInImageRight {
    r0 = self->_zoomInImageRight;
    return r0;
}

-(void *)scoreboardButton {
    r0 = self->_scoreboardButton;
    return r0;
}

-(void *)zoomOutImageRight {
    r0 = self->_zoomOutImageRight;
    return r0;
}

-(void *)hudDiep {
    r0 = self->_hudDiep;
    return r0;
}

-(void *)aimShootJoystickBackground {
    r0 = self->_aimShootJoystickBackground;
    return r0;
}

-(void *)scoreLabel {
    r0 = self->_scoreLabel;
    return r0;
}

@end