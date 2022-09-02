@implementation CLSThreadArrayOperation

-(void *)threadArray {
    r0 = self->_threadArray;
    return r0;
}

-(void)enumerateFramesWithBlock:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    r19 = self;
    r20 = [arg2 retain];
    r0 = [r19 threadArray];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_1E8 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 == 0x0) goto loc_100119ca8;

loc_100119b9c:
    r21 = 0x0;
    goto loc_100119ba0;

loc_100119ba0:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_1E8);
    }
    r22 = @selector(countByEnumeratingWithState:objects:count:);
    r0 = *(0x0 + r21 * 0x8);
    r0 = [r0 retain];
    r24 = r0;
    r25 = objc_msgSend(r0, r22);
    if (r25 == 0x0) goto loc_100119c74;

loc_100119c00:
    r27 = 0x0;
    goto loc_100119c0c;

loc_100119c0c:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r24);
    }
    (*(r20 + 0x10))(r20, *(0x0 + r27 * 0x8));
    if ((objc_msgSend(r19, r26) & 0x1) != 0x0) goto loc_100119c74;

loc_100119c48:
    r27 = r27 + 0x1;
    if (r27 < r25) goto loc_100119c0c;

loc_100119c54:
    r25 = [r24 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r25 != 0x0) goto loc_100119c00;

loc_100119c74:
    [r24 release];
    r21 = r21 + 0x1;
    if (r21 < r23) goto loc_100119ba0;

loc_100119c88:
    r23 = [var_1E8 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) goto loc_100119b9c;

loc_100119ca8:
    var_58 = **___stack_chk_guard;
    [var_1E8 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setThreadArray:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_threadArray, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_threadArray, 0x0);
    return;
}

@end