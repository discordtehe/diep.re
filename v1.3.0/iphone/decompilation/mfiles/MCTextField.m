@implementation MCTextField

-(bool)canPerformAction:(void *)arg2 withSender:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_disablePaste != 0x0) {
            asm { ccmp       x9, x2, #0x0, ne };
    }
    if (!CPU_FLAGS & E) {
            r0 = [[&var_10 super] canPerformAction:r2 withSender:r3];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)positionFromPosition:(void *)arg2 inDirection:(long long)arg3 offset:(long long)arg4 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [[&var_20 super] positionFromPosition:arg2 inDirection:arg3 offset:arg4];
    r20 = r0;
    if (*(int8_t *)(int64_t *)&r19->_disableCursorChangedCallbacks == 0x0) {
            [NSTimer scheduledTimerWithTimeInterval:r19 target:@selector(cursorChangedToPositionDelayedCallback:) selector:r20 userInfo:0x0 repeats:r6];
    }
    r0 = r20;
    return r0;
}

-(void)cursorChangedToPositionDelayedCallback:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [self delegate];
    if (r0 != 0x0) {
            r20 = r0;
            if ([r0 conformsToProtocol:@protocol(MCTextFieldDelegate)] != 0x0 && [r20 respondsToSelector:@selector(cursorChangedToPosition:)] != 0x0) {
                    [r20 cursorChangedToPosition:[r19 userInfo]];
            }
    }
    return;
}

-(bool)disablePaste {
    r0 = *(int8_t *)(int64_t *)&self->_disablePaste;
    return r0;
}

-(void)setDisablePaste:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_disablePaste = arg2;
    return;
}

-(void)setDisableCursorChangedCallbacks:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_disableCursorChangedCallbacks = arg2;
    return;
}

-(bool)disableCursorChangedCallbacks {
    r0 = *(int8_t *)(int64_t *)&self->_disableCursorChangedCallbacks;
    return r0;
}

@end