@implementation MenuCreditsNode

-(void *)initWithText:(void *)arg2 isTitle:(bool)arg3 size:(struct CGSize)arg4 isLarge:(bool)arg5 {
    memcpy(&r4, &arg4, 0x8);
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r4;
    v8 = v1;
    v9 = v0;
    r20 = arg3;
    r22 = arg2;
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            r21->_text = [r22 retain];
            *(int8_t *)(int64_t *)&r21->_isTitle = r20;
            *(int8_t *)(int64_t *)&r21->_isLarge = r19;
            [r21 setContentSize:r2];
    }
    r0 = r21;
    return r0;
}

-(void)loadData {
    r0 = self;
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
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_loaded));
    if (*(int8_t *)(r0 + r21) == 0x0) {
            r19 = r0;
            if (*(int8_t *)(int64_t *)&r0->_isLarge != 0x0) {
                    r20 = [LocalizedCCBReader reader];
                    [MenuCreditsView largeTableCellSize:r19->_text];
                    r0 = [r20 nodeGraphFromFile:r2 owner:r3 parentSize:r4];
            }
            else {
                    r0 = sub_1000947cc();
                    r0 = [r0 fetchObject];
            }
            r19->_view = r0;
            [r19 addChild:r0];
            [r19 contentSize];
            [r19 contentSize];
            [r19->_view setPosition:r0];
            r0 = r19->_view;
            r2 = r19->_text;
            [r0 setupWithText:r2 isTitle:*(int8_t *)(int64_t *)&r19->_isTitle];
            [r19->_view setAnchorPoint:r2];
            [r19->_view renderSkin];
            *(int8_t *)(r19 + r21) = 0x1;
    }
    return;
}

-(void)unloadData {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_loaded));
    if (*(int8_t *)(r0 + r20) != 0x0) {
            r19 = r0;
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_view));
            [r0 removeChild:*(r0 + r21)];
            if (*(int8_t *)(int64_t *)&r19->_isLarge == 0x0) {
                    r0 = sub_1000947cc();
                    if (r0 != 0x0) {
                            r1 = r0;
                            r0 = *(r19 + r21);
                            if (r0 != 0x0 && sub_100012c74(r0, r1) != 0x0) {
                                    *(r19 + r21) = 0x0;
                            }
                    }
            }
            *(r19 + r21) = 0x0;
            *(int8_t *)(r19 + r20) = 0x0;
    }
    return;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_text));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    if (*0x1011e2d28 != 0x0) {
            [*0x1011e2d28 release];
            *0x1011e2d28 = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

@end