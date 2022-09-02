@implementation MCPromoTriggerEvent

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x28) = [[NSArray array] retain];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setEnabled:r2];
    r0 = *(r19 + 0x28);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x28) = 0x0;
    }
    [r19 setDelegateParameter:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithEventLevels:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0 && ([r20 setEventLevels:r19] & 0x1) == 0x0) {
            [r20 release];
            r20 = 0x0;
    }
    r0 = r20;
    return r0;
}

-(void)eventReceived:(void *)arg2 {
    r8 = self;
    r0 = *(self + 0x8);
    if (r0 != 0x0 && *(r8 + 0x10) != 0x0) {
            if (*(r8 + 0x18) != 0x0) {
                    [r0 performSelector:r2 withObject:r3];
            }
            else {
                    [r0 performSelector:r2];
            }
    }
    return;
}

-(void)setEnabled:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x20) != r2) {
            r19 = r0;
            *(int8_t *)(r0 + 0x20) = r2;
            r0 = *(r0 + 0x28);
            if (r0 != 0x0 && [r0 count] != 0x0) {
                    r20 = *(int8_t *)(r19 + 0x20);
                    r0 = [MCPromoEventDispatcher sharedMCPromoEventDispatcher];
                    r2 = *(r19 + 0x28);
                    if (r20 != 0x0) {
                            [r0 registerForEvent:r2 observer:r19 selector:@selector(eventReceived:)];
                    }
                    else {
                            [r0 unregisterForEvent:r2 observer:r19];
                    }
            }
    }
    return;
}

-(void *)description {
    r0 = [@"EVENT_" stringByAppendingString:[*(self + 0x28) componentsJoinedByString:@"_"]];
    return r0;
}

-(bool)enabled {
    r0 = *(int8_t *)(self + 0x20);
    return r0;
}

-(void *)delegateTarget {
    r0 = *(self + 0x8);
    return r0;
}

-(bool)setEventLevels:(void *)arg2 {
    r0 = self;
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
    r20 = arg2;
    if (arg2 == 0x0) goto loc_1009e7714;

loc_1009e75cc:
    r19 = r0;
    if ([r20 count] == 0x0) goto loc_1009e7710;

loc_1009e75e4:
    var_110 = q0;
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1009e76ac;

loc_1009e7614:
    r22 = r0;
    r26 = *var_110;
    goto loc_1009e762c;

loc_1009e762c:
    r28 = 0x0;
    goto loc_1009e7638;

loc_1009e7638:
    if (*var_110 != r26) {
            objc_enumerationMutation(r20);
    }
    r23 = @selector(class);
    objc_msgSend(@class(NSString), r23);
    if (objc_msgSend(r25, r24) == 0x0) goto loc_1009e7710;

loc_1009e7678:
    r28 = r28 + 0x1;
    if (r28 < r22) goto loc_1009e7638;

loc_1009e7684:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    if (r0 != 0x0) goto loc_1009e762c;

loc_1009e76ac:
    r0 = [r19 enabled];
    r21 = r0;
    if (r0 != 0x0) {
            [r19 setEnabled:r2];
    }
    r0 = *(r19 + 0x28);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x28) = 0x0;
    }
    *(r19 + 0x28) = [r20 retain];
    if (r21 != 0x0) {
            r20 = 0x1;
            [r19 setEnabled:r2];
    }
    else {
            r20 = 0x1;
    }
    goto loc_1009e7714;

loc_1009e7714:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009e7710:
    r20 = 0x0;
    goto loc_1009e7714;
}

-(void)setDelegateTarget:(void *)arg2 {
    *(self + 0x8) = arg2;
    return;
}

-(void)setDelegateSelector:(void *)arg2 {
    *(self + 0x10) = arg2;
    return;
}

-(void *)delegateSelector {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)delegateParameter {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setDelegateParameter:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)eventLevels {
    r0 = *(self + 0x28);
    return r0;
}

@end