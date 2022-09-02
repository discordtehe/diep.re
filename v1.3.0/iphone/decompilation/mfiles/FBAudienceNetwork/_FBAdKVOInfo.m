@implementation _FBAdKVOInfo

-(void *)initWithController:(void *)arg2 keyPath:(void *)arg3 options:(unsigned long long)arg4 block:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r19 = [self initWithController:r23 keyPath:r21 options:arg4 block:arg5 action:0x0 context:0x0];
    [r21 release];
    [r23 release];
    r0 = r19;
    return r0;
}

-(void *)initWithController:(void *)arg2 keyPath:(void *)arg3 options:(unsigned long long)arg4 context:(void *)arg5 {
    r23 = [arg2 retain];
    r19 = [self initWithController:r23 keyPath:arg3 options:arg4 block:0x0 action:0x0 context:arg5];
    [r23 release];
    r0 = r19;
    return r0;
}

-(void *)initWithController:(void *)arg2 keyPath:(void *)arg3 options:(unsigned long long)arg4 block:(void *)arg5 action:(void *)arg6 context:(void *)arg7 {
    r31 = r31 - 0x60;
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
    r20 = arg7;
    r21 = arg6;
    r22 = arg4;
    r19 = [arg2 retain];
    r23 = [arg3 retain];
    r24 = [arg5 retain];
    r0 = [[&var_50 super] init];
    r25 = r0;
    if (r0 != 0x0) {
            objc_storeWeak((int64_t *)&r25->_controller, r19);
            r0 = [r24 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_block));
            r8 = *(r25 + r9);
            *(r25 + r9) = r0;
            [r8 release];
            r0 = [r23 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_keyPath));
            r8 = *(r25 + r9);
            *(r25 + r9) = r0;
            [r8 release];
            r25->_options = r22;
            r25->_action = r21;
            r25->_context = r20;
    }
    [r24 release];
    [r23 release];
    [r19 release];
    r0 = r25;
    return r0;
}

-(void *)initWithController:(void *)arg2 keyPath:(void *)arg3 options:(unsigned long long)arg4 action:(void *)arg5 {
    r23 = [arg2 retain];
    r19 = [self initWithController:r23 keyPath:arg3 options:arg4 block:0x0 action:arg5 context:0x0];
    [r23 release];
    r0 = r19;
    return r0;
}

-(unsigned long long)hash {
    r0 = self->_keyPath;
    r0 = [r0 hash];
    return r0;
}

-(void *)initWithController:(void *)arg2 keyPath:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [self initWithController:r21 keyPath:arg3 options:0x0 block:0x0 action:0x0 context:0x0];
    [r21 release];
    r0 = r19;
    return r0;
}

-(bool)isEqual:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            if (r19 != r20) {
                    [r20 class];
                    if ([r19 isKindOfClass:r2] != 0x0) {
                            r20 = [*(r20 + sign_extend_64(*(int32_t *)ivar_offset(_keyPath))) isEqualToString:r2];
                    }
                    else {
                            r20 = 0x0;
                    }
            }
            else {
                    r20 = 0x1;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_block, 0x0);
    objc_storeStrong((int64_t *)&self->_keyPath, 0x0);
    objc_destroyWeak((int64_t *)&self->_controller);
    return;
}

-(void *)debugDescription {
    r31 = r31 - 0x80;
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
    r21 = [NSStringFromClass([self class]) retain];
    r0 = [NSMutableString stringWithFormat:r2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    r28 = r19->_options;
    if (r28 != 0x0) {
            r0 = [NSMutableString string];
            r29 = r29;
            r21 = [r0 retain];
            r8 = 0x101137000;
            r22 = *(r8 + 0x260);
            do {
                    r26 = 0x1;
                    asm { rbit       x8, x28 };
                    asm { clz        x8, x8 };
                    r8 = r26 << r8;
                    asm { sxtw       x25, w8 };
                    r28 = r28 & !r25;
                    if (objc_msgSend(r21, r22) != 0x0) {
                            [r21 appendString:r2];
                            r0 = sub_100a63d7c();
                            r29 = r29;
                    }
                    else {
                            r0 = sub_100a63d7c();
                            r29 = r29;
                    }
                    r23 = @selector(appendString:);
                    r25 = [r0 retain];
                    objc_msgSend(r21, r23);
                    [r25 release];
            } while (r28 != 0x0);
            [r20 appendFormat:@" options:%@"];
            [r21 release];
    }
    r0 = r19->_action;
    if (r0 != 0x0) {
            [NSStringFromSelector(r0) retain];
            [r20 appendFormat:r2];
            [r21 release];
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_context));
    r8 = *(r19 + r8);
    if (r8 != 0x0) {
            [r20 appendFormat:@" context:%p"];
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_block));
    r8 = *(r19 + r8);
    if (r8 != 0x0) {
            [r20 appendFormat:@" block:%p"];
    }
    [r20 appendString:@">"];
    r0 = [r20 autorelease];
    return r0;
}

@end