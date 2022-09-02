@implementation FBAdNotificationCenter

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSMutableArray array];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_notifications));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void *)notificationCenter {
    r0 = [NSNotificationCenter defaultCenter];
    return r0;
}

-(void)addNotificationWithName:(void *)arg2 block:(void *)arg3 {
    r21 = [arg2 retain];
    [self addNotificationWithName:r21 object:0x0 block:arg3];
    [r21 release];
    return;
}

-(void)addNotificationWithName:(void *)arg2 object:(void *)arg3 block:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r23 = [[NSOperationQueue mainQueue] retain];
    [self addNotificationWithName:r22 object:r20 queue:r23 block:r19];
    [r19 release];
    [r20 release];
    [r22 release];
    [r23 release];
    return;
}

-(void)addNotificationWithName:(void *)arg2 object:(void *)arg3 queue:(void *)arg4 block:(void *)arg5 {
    r23 = [arg2 retain];
    r22 = [arg3 retain];
    r21 = [arg4 retain];
    r20 = [arg5 retain];
    r0 = [self notificationCenter];
    r0 = [r0 retain];
    [[r0 addObserverForName:r23 object:r22 queue:r21 usingBlock:r20] retain];
    [r20 release];
    [r21 release];
    [r22 release];
    [r23 release];
    [r0 release];
    r0 = [self notifications];
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r19 release];
    [r25 release];
    return;
}

-(void)dealloc {
    [self removeAllObservers];
    [self->_notifications removeAllObjects];
    [[&var_20 super] dealloc];
    return;
}

-(void)removeAllObservers {
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
    var_110 = q0;
    r0 = [self notifications];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r27 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r20);
                            }
                            r24 = @selector(removeObserver:);
                            r0 = [r19 notificationCenter];
                            r29 = r29;
                            r0 = [r0 retain];
                            objc_msgSend(r0, r24);
                            [r26 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r20 release];
    r20 = [r19 class];
    r19 = [[r19 object] retain];
    [r20 setNotificationCenter:0x0 forObject:r19];
    [r19 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_object);
    objc_storeStrong((int64_t *)&self->_notifications, 0x0);
    return;
}

-(void *)notifications {
    r0 = self->_notifications;
    return r0;
}

-(void)setNotifications:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_notifications, arg2);
    return;
}

-(void *)object {
    r0 = objc_loadWeakRetained((int64_t *)&self->_object);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setObject:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_object, arg2);
    return;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdNotificationCenter");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

+(void *)notificationCenterForObject:(void *)arg2 {
    r0 = [self notificationCenterForObject:arg2 update:0x1];
    return r0;
}

+(void *)notificationCenterForObject:(void *)arg2 update:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = objc_getAssociatedObject(r19, @selector(notificationCenterForObject:));
            r0 = [r0 retain];
            r21 = r0;
            if (r0 == 0x0) {
                    asm { ccmp       w22, #0x0, #0x4, eq };
            }
            if (!CPU_FLAGS & E) {
                    r21 = [FBAdNotificationCenter new];
                    [r20 setNotificationCenter:r21 forObject:r19];
            }
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void)setNotificationCenter:(void *)arg2 forObject:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r20 retain];
            objc_setAssociatedObject(r0, @selector(notificationCenterForObject:), r19, 0x1);
            [r21 release];
            [r19 setObject:r21];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)removeAllObserversForObject:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 notificationCenterForObject:r19 update:0x0];
            r0 = [r0 retain];
            [r0 removeAllObservers];
            [r0 release];
    }
    [r19 release];
    return;
}

@end