@implementation CCMenuItemToggle

+(void *)itemWithTarget:(void *)arg2 selector:(void *)arg3 items:(void *)arg4 {
    r0 = [self itemWithTarget:arg2 selector:arg3 items:arg4 vaList:&saved_fp + 0x10];
    return r0;
}

+(void *)itemWithTarget:(void *)arg2 selector:(void *)arg3 items:(void *)arg4 vaList:(char *)arg5 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = arg4;
    r21 = arg3;
    r22 = arg2;
    r19 = self;
    var_38 = arg5;
    r20 = [NSMutableArray arrayWithCapacity:r2];
    if (r23 != 0x0) {
            do {
                    [r20 addObject:r2];
                    r8 = var_38;
                    var_38 = r8 + 0x8;
                    r23 = *r8;
            } while (r23 != 0x0);
    }
    r21 = sub_100330078(r22);
    r19 = [[[r19 alloc] initWithItems:r20 block:r21] autorelease];
    [r21 release];
    r0 = r19;
    return r0;
}

+(void *)itemWithItems:(void *)arg2 block:(void *)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithItems:arg2 block:arg3];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)itemWithItems:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithItems:arg2 block:0x0];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithItems:(void *)arg2 block:(void *)arg3 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [[&var_20 super] initWithBlock:arg3];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setSubItems:[NSMutableArray arrayWithArray:r20]];
            r19->_currentItem = 0x0;
            r19->_selectedIndex = 0xffffffffffffffff;
            [r19 setSelectedIndex:0x0];
            [r19 setCascadeColorEnabled:0x1];
            [r19 setCascadeOpacityEnabled:0x1];
            [r19 setCascadeEmissionEnabled:0x1];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [self->_subItems release];
    [[&var_20 super] dealloc];
    return;
}

-(unsigned long long)selectedIndex {
    r0 = self->_selectedIndex;
    return r0;
}

-(void)setSelectedIndex:(unsigned long long)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_selectedIndex));
    if (*(r0 + r20) != r2) {
            r19 = r0;
            *(r0 + r20) = r2;
            r0 = r0->_currentItem;
            if (r0 != 0x0) {
                    [r0 removeFromParentAndCleanup:r2];
                    r2 = *(r19 + r20);
            }
            r20 = [r19->_subItems objectAtIndex:r2];
            [r19 addChild:r20 z:0x0];
            [r19 setCurrentItem:r20];
            [r20 contentSize];
            [r19 setContentSize:r20];
            [r20 setPosition:r2];
    }
    return;
}

-(void)selected {
    [[&var_20 super] selected];
    [[self->_subItems objectAtIndex:r2] selected];
    return;
}

-(void)unselected {
    [[&var_20 super] unselected];
    [[self->_subItems objectAtIndex:r2] unselected];
    return;
}

-(void)activate {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(int64_t *)&self->_isEnabled != 0x0) {
            r20 = r19->_selectedIndex + 0x1;
            r0 = r19->_subItems;
            r8 = 0x101137000;
            r0 = objc_msgSend(r0, *(r8 + 0x410));
            asm { udiv       x8, x20, x0 };
            [r19 setSelectedIndex:r20 - r8 * r0];
    }
    [[&var_20 super] activate];
    return;
}

-(void)setIsEnabled:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x130;
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
    if (*(int8_t *)(int64_t *)&r0->_isEnabled != r2) {
            r19 = r2;
            [[&var_D8 super] setIsEnabled:r2];
            var_110 = q0;
            r21 = r0->_subItems;
            r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r23 = r0;
                    r24 = *var_110;
                    do {
                            r25 = 0x0;
                            do {
                                    if (*var_110 != r24) {
                                            objc_enumerationMutation(r21);
                                    }
                                    [*(var_118 + r25 * 0x8) setIsEnabled:r19];
                                    r25 = r25 + 0x1;
                            } while (r25 < r23);
                            r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r23 = r0;
                    } while (r0 != 0x0);
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)selectedItem {
    r0 = [*(self + sign_extend_64(*(int32_t *)ivar_offset(_subItems))) objectAtIndex:r2];
    return r0;
}

-(void *)currentItem {
    r0 = self->_currentItem;
    return r0;
}

-(void)setCurrentItem:(void *)arg2 {
    self->_currentItem = arg2;
    return;
}

-(void *)subItems {
    r0 = self->_subItems;
    return r0;
}

-(void)setSubItems:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end