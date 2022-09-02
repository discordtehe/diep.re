@implementation CDAsynchBufferLoader

-(void *)init:(void *)arg2 soundEngine:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            r21->_loadRequests = r20;
            [r20 retain];
            r21->_soundEngine = r19;
            [r19 retain];
    }
    r0 = r21;
    return r0;
}

-(void)dealloc {
    [self->_loadRequests release];
    [self->_soundEngine release];
    [[&var_20 super] dealloc];
    return;
}

-(void)main {
    r31 = r31 - 0x180;
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
    r19 = self;
    [[&var_100 super] main];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_soundEngine));
    s0 = 0x0;
    [*(r19 + r20) setAsynchLoadProgress:r2];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_loadRequests));
    if ([*(r19 + r22) count] != 0x0) {
            [*(r19 + r22) count];
            var_130 = q0;
            r0 = *(r19 + r22);
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_168 = r1;
            var_160 = r0;
            r0 = objc_msgSend(r0, r1);
            var_148 = r0;
            if (r0 != 0x0) {
                    asm { ucvtf      s0, x24 };
                    asm { fdiv       s8, s1, s0 };
                    var_158 = *var_130;
                    do {
                            r23 = 0x0;
                            do {
                                    if (*var_130 != var_158) {
                                            objc_enumerationMutation(var_160);
                                    }
                                    r28 = *(var_138 + r23 * 0x8);
                                    [r28 soundId];
                                    [r28 filePath];
                                    objc_msgSend(r22, r26);
                                    objc_msgSend(*(r19 + r20), r27);
                                    s0 = s8 + s0;
                                    [r21 setAsynchLoadProgress:r2];
                                    r23 = r23 + 0x1;
                            } while (r23 < var_148);
                            r0 = objc_msgSend(var_160, var_168);
                            var_148 = r0;
                    } while (r0 != 0x0);
            }
    }
    var_70 = **___stack_chk_guard;
    [*(r19 + r20) setAsynchLoadProgress:r2];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"kCDN_AsynchLoadComplete" object:0x0];
    if (**___stack_chk_guard != var_70) {
            __stack_chk_fail();
    }
    return;
}

@end