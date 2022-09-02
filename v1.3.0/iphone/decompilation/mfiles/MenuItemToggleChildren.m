@implementation MenuItemToggleChildren

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r0->_childrenAdded = 0x0;
    }
    return r0;
}

-(void)onEnter {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] onEnter];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_childrenAdded));
    if (*(int8_t *)(r19 + r20) == 0x0) {
            [r19 addChildrenToToggle];
            *(int8_t *)(r19 + r20) = 0x1;
    }
    return;
}

-(void)addChildrenToToggle {
    r31 = r31 - 0x130;
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
    r19 = self;
    [r19 setSubItems:[NSMutableArray arrayWithArray:[[self children] getNSArray]]];
    var_110 = q0;
    r0 = [r19 children];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r24 = *var_110;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_110 != r24) {
                                    objc_enumerationMutation(r20);
                            }
                            r0 = *(var_118 + r26 * 0x8);
                            if (r0 != 0x0) {
                                    [r0 removeFromParentAndCleanup:r2];
                            }
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    r19->_currentItem = 0x0;
    r19->_selectedIndex = 0xffffffffffffffff;
    [r19 setSelectedIndex:0x0];
    [r19 setCascadeColorEnabled:0x1];
    [r19 setCascadeOpacityEnabled:0x1];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

@end