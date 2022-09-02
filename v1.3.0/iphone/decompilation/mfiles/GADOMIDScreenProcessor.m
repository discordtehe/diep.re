@implementation GADOMIDScreenProcessor

-(void *)stateForView:(void *)arg2 {
    r31 = r31 - 0xa0;
    saved_fp = r29;
    stack[-8] = r30;
    objc_storeStrong(&saved_fp - 0x18, arg2);
    r0 = [UIScreen mainScreen];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 bounds];
    var_30 = d1;
    var_38 = d0;
    var_20 = d3;
    var_28 = d2;
    [r0 release];
    var_41 = 0x0;
    var_74 = 0x0;
    if (**_NSFoundationVersionNumber < *0x100ba1e90) {
            r0 = [UIApplication sharedApplication];
            r29 = r29;
            r0 = [r0 retain];
            var_40 = r0;
            var_41 = 0x1;
            var_74 = sub_1008dbcd4([r0 statusBarOrientation]);
    }
    var_78 = var_74;
    if ((var_41 & 0x1 & 0x1) != 0x0) {
            [var_40 release];
    }
    if ((var_78 & 0x1) != 0x0) {
            sub_1008dbd10();
            var_38 = *0x100ba1e90;
            var_30 = *0x100ba1e90;
            var_28 = var_20;
            var_20 = d3;
    }
    var_88 = [[GADOMIDDictionaryUtil stateWithFrame:0x1 clipsToBounds:r3] retain];
    objc_storeStrong(r29 - 0x18, 0x0);
    r0 = [var_88 autorelease];
    return r0;
}

-(void *)orderedChildrenForView:(void *)arg2 {
    objc_storeStrong(&var_18, arg2);
    var_30 = [[self childrenForView:var_18] retain];
    objc_storeStrong(&var_18, 0x0);
    r0 = [var_30 autorelease];
    return r0;
}

-(void *)processorForChildren {
    r0 = objc_loadWeakRetained((int64_t *)&self->_processorForChildren);
    r0 = [r0 autorelease];
    return r0;
}

-(bool)isInternalWindow:(void *)arg2 {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    r10 = *___stack_chk_guard;
    var_8 = **___stack_chk_guard;
    objc_storeStrong(&var_30, arg2);
    var_4C = [[[NSArray arrayWithObjects:&saved_fp - 0x18 count:0x2] retain] containsObject:[NSStringFromClass([var_30 class]) retain]];
    objc_storeStrong(&var_40, 0x0);
    objc_storeStrong(&var_38, 0x0);
    objc_storeStrong(&var_30, 0x0);
    if (**___stack_chk_guard == var_8) {
            r0 = var_4C & 0x1;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)childrenForView:(void *)arg2 {
    r31 = r31 - 0x1a0;
    var_10 = r28;
    stack[-24] = r27;
    saved_fp = r29;
    stack[-8] = r30;
    r10 = *___stack_chk_guard;
    var_A0 = self;
    objc_storeStrong(&saved_fp - 0xb0, arg2);
    var_B8 = [[NSMutableArray array] retain];
    memset(&stack[-272], zero_extend_64(0x0), 0x40);
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    var_120 = r0;
    r0 = [r0 windows];
    r29 = &saved_fp;
    var_128 = [r0 retain];
    [var_120 release];
    r0 = [var_128 countByEnumeratingWithState:&stack[-272] objects:r29 - 0x98 count:0x10];
    var_130 = r0;
    if (r0 != 0x0) {
            var_138 = *var_F0;
            var_140 = &stack[-272] + 0x10;
            var_148 = 0x0;
            var_150 = var_130;
            do {
                    do {
                            var_158 = var_150;
                            var_160 = var_148;
                            if (**var_140 != var_138) {
                                    objc_enumerationMutation(var_128);
                            }
                            var_C0 = *(var_F8 + var_160 * 0x8);
                            var_168 = [[var_C0 screen] retain];
                            r0 = [UIScreen mainScreen];
                            r29 = r29;
                            r0 = [r0 retain];
                            var_170 = r0;
                            var_174 = 0x0;
                            if (var_168 == r0) {
                                    var_174 = [var_A0 isInternalWindow:var_C0] ^ 0x1;
                            }
                            [var_170 release];
                            [var_168 release];
                            if ((var_174 & 0x1) != 0x0) {
                                    [var_B8 addObject:var_C0];
                            }
                            var_150 = var_158;
                            var_148 = var_160 + 0x1;
                    } while (var_160 + 0x1 < var_158);
                    r0 = [var_128 countByEnumeratingWithState:&stack[-272] objects:r29 - 0x98 count:0x10];
                    var_150 = r0;
                    var_148 = 0x0;
            } while (r0 != 0x0);
    }
    var_18 = **___stack_chk_guard;
    [var_128 release];
    var_180 = [var_B8 retain];
    objc_storeStrong(r29 - 0xb8, 0x0);
    objc_storeStrong(r29 - 0xb0, 0x0);
    var_188 = [var_180 autorelease];
    if (**___stack_chk_guard == var_18) {
            r0 = var_188;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setProcessorForChildren:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_processorForChildren, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_processorForChildren);
    return;
}

@end