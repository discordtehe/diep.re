@implementation GULSwizzler

+(void)swizzleClass:(void *)arg2 selector:(void *)arg3 isClassSelector:(bool)arg4 withBlock:(void *)arg5 {
    r22 = [arg5 retain];
    r23 = [sub_1000b324c() retain];
    [r22 retain];
    dispatch_sync(r23, &var_70);
    [r23 release];
    [r22 release];
    [r19 release];
    return;
}

+(void)unswizzleClass:(void *)arg2 selector:(void *)arg3 isClassSelector:(bool)arg4 {
    return;
}

+(void * *)originalImplementationForClass:(void *)arg2 selector:(void *)arg3 isClassSelector:(bool)arg4 {
    return 0x0;
}

+(void * *)currentImplementationForClass:(void *)arg2 selector:(void *)arg3 isClassSelector:(bool)arg4 {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg4;
    r19 = arg3;
    r21 = arg2;
    r22 = 0x0;
    if (r21 != 0x0) {
            r22 = 0x0;
            if (r19 != 0x0) {
                    r0 = sub_1000b324c();
                    r0 = [r0 retain];
                    dispatch_sync(r0, &var_90);
                    [r22 release];
                    r22 = *(&var_50 + 0x18);
                    _Block_object_dispose(&var_50, 0x8);
            }
    }
    r0 = r22;
    return r0;
}

+(bool)selector:(void *)arg2 existsInClass:(void *)arg3 isClassSelector:(bool)arg4 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = arg3;
    r1 = arg2;
    if (arg4 != 0x0) {
            r0 = class_getClassMethod(r0, r1);
    }
    else {
            r0 = class_getInstanceMethod(r0, r1);
    }
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(void *)ivarObjectsForObject:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [NSMutableArray array];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r0 = [r19 class];
    r0 = class_copyIvarList(r0, &var_34);
    r21 = r0;
    if (var_34 != 0x0) {
            r24 = 0x0;
            do {
                    if (*(int8_t *)ivar_getTypeEncoding(*(r21 + r24 * 0x8)) == 0x40) {
                            r22 = @selector(addObject:);
                            r0 = object_getIvar(r19, *(r21 + r24 * 0x8));
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r20, r22);
                            [r23 release];
                    }
                    r24 = r24 + 0x1;
            } while (r24 < var_34);
    }
    free(r21);
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

@end