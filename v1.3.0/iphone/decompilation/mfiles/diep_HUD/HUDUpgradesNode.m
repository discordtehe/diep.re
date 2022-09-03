@implementation HUDUpgradesNode

+(void *)HUDUpgradesNodeIgnore {
    r0 = [CCBReader nodeGraphFromFile:@"DiepUpgradeNode.ccbi"];
    [r0 setIgnoreLabel];
    [r0 setTarget:r2 selector:r3];
    r0 = r19;
    return r0;
}

+(void *)HUDUpgradesNodeEmpty {
    r0 = [CCBReader nodeGraphFromFile:@"DiepUpgradeNode.ccbi"];
    [r0 setTankClassType:0xffffffffffffffff];
    r0 = r0;
    return r0;
}

-(void)setTankClassType:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_tankClassType = arg2;
    return;
}

-(void)refreshWithClassType:(int)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int32_t *)(int64_t *)&r0->_tankClassType != r2) {
            [r0 setTankClassType:r2];
            [r0 setClassNameText:r2];
            [r0 setClassTankImage:r2];
            [r0 setTarget:r2 selector:r3];
    }
    return;
}

-(void)setClassNameText:(int)arg2 {
    sub_10000c014();
    [r19 setString:r2];
    return;
}

-(void)setClassBackgroundImage:(unsigned int)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 <= 0x4) {
            [*(r0 + sign_extend_64(*(int32_t *)*(0x100e64738 + r2 * 0x8))) setVisible:r2];
    }
    return;
}

-(void)callback {
    r0 = self;
    r9 = *0x1011dea68;
    r8 = *(r9 + 0x830);
    if (r8 != *(r9 + 0x838)) {
            r8 = *r8;
            if (r8 != 0x0) {
                    sub_1000204b4(r8, *(int32_t *)(int64_t *)&r0->_tankClassType);
            }
    }
    return;
}

-(void)setClassTankImage:(int)arg2 {
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
    r20 = arg2;
    r19 = self;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_classSprites));
    if ([[*(self + r26) children] count] != 0x0) {
            r23 = 0x0;
            do {
                    r25 = @selector(setVisible:);
                    r24 = @selector(objectAtIndex:);
                    objc_msgSend(objc_msgSend([*(r19 + r26) children], r24), r25);
                    r23 = r23 + 0x1;
            } while (objc_msgSend([*(r19 + r26) children], r22) > r23);
    }
    r8 = r20 - 0x1;
    if (r8 < 0x2c && (0xffffbff7fff >> r8 & 0x1) != 0x0) {
            [*(r19 + sign_extend_64(*(int32_t *)*(0x100e64760 + r8 * 0x8))) setVisible:r2];
    }
    return;
}

-(void)setIgnoreLabel {
    [self->_ignoreLabel setVisible:0x1];
    [self->_className setVisible:0x0];
    return;
}

-(void)ignoreCallback {
    r9 = *0x1011dea68;
    r8 = *(r9 + 0x830);
    if (r8 != *(r9 + 0x838)) {
            r8 = *r8;
            if (r8 != 0x0) {
                    r9 = *r8;
                    if (r9 != 0x0) {
                            r9 = *r9;
                            r9 = *(int32_t *)r9;
                    }
                    *(int32_t *)(r8 + 0x230) = r9;
                    *(int32_t *)(r8 + 0x22c) = 0x0;
            }
    }
    return;
}

-(void)runAnimation {
    [[self userObject] runAnimationsForSequenceNamed:r2];
    return;
}

@end