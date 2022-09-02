@implementation GULObjectSwizzler

+(void)setAssociatedObject:(void *)arg2 key:(void *)arg3 value:(void *)arg4 association:(unsigned long long)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg5;
    r23 = arg4;
    r22 = arg3;
    r19 = [arg2 retain];
    r21 = [r22 retain];
    r8 = r20 - 0x2;
    if (r8 <= 0x2) {
            r20 = *(0x100ba1e60 + r8 * 0x8);
    }
    r23 = [r23 retain];
    r22 = [objc_retainAutorelease(r22) UTF8String];
    [r21 release];
    objc_setAssociatedObject(r19, r22, r23, r20);
    [r23 release];
    [r19 release];
    return;
}

+(void *)getAssociatedObject:(void *)arg2 key:(void *)arg3 {
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    r19 = [objc_retainAutorelease(arg3) UTF8String];
    [r21 release];
    r19 = [objc_getAssociatedObject(r20, r19) retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithObject:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 == 0x0) goto loc_1000b2504;

loc_1000b243c:
    r21 = [r19 retain];
    if (r21 == 0x0) goto loc_1000b2510;

loc_1000b244c:
    objc_storeWeak((int64_t *)&r20->_swizzledObject, r21);
    r0 = object_getClass(r21);
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_originalClass));
    *(r20 + r24) = r0;
    r23 = [NSStringFromClass(r0) retain];
    r22 = [[NSString stringWithFormat:@"fir_%p_%@"] retain];
    [r23 release];
    r23 = *(r20 + r24);
    r0 = objc_retainAutorelease(r22);
    r20->_generatedClass = objc_allocateClassPair(r23, [r0 UTF8String], 0x0);
    [r0 release];
    [r21 release];
    goto loc_1000b2504;

loc_1000b2504:
    r21 = [r20 retain];
    goto loc_1000b2510;

loc_1000b2510:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)copySelector:(void *)arg2 fromClass:(void *)arg3 isClassSelector:(bool)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r21 = self;
    r0 = arg3;
    r1 = r19;
    if ((arg4 & 0x1) != 0x0) {
            r20 = class_getClassMethod(r0, r1);
            r21 = object_getClass(r21->_generatedClass);
    }
    else {
            r20 = class_getInstanceMethod(r0, r1);
            r21 = r21->_generatedClass;
    }
    class_addMethod(r21, r19, method_getImplementation(r20), method_getTypeEncoding(r20));
    return;
}

-(void)setAssociatedObjectWithKey:(void *)arg2 value:(void *)arg3 association:(unsigned long long)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r22 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r23 = objc_loadWeakRetained((int64_t *)&r22->_swizzledObject);
    if (r23 != 0x0) {
            [[r22 class] setAssociatedObject:r23 key:r19 value:r21 association:r20];
    }
    [r23 release];
    [r21 release];
    [r19 release];
    return;
}

-(void *)getAssociatedObjectForKey:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = objc_loadWeakRetained((int64_t *)&r21->_swizzledObject);
    if (r20 != 0x0) {
            r21 = [[[r21 class] getAssociatedObject:r20 key:r19] retain];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)swizzle {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r21 = (int64_t *)&r20->_swizzledObject;
    r19 = objc_loadWeakRetained(r21);
    if (r19 != 0x0) {
            [GULObjectSwizzler setAssociatedObject:r19 key:*0x1011a9010 value:r20 association:0x1];
            [GULSwizzledObject copyDonorSelectorsUsingObjectSwizzler:r20];
            objc_registerClassPair(*(r20 + sign_extend_64(*(int32_t *)ivar_offset(_generatedClass))));
            r0 = objc_loadWeakRetained(r21);
            object_setClass(r0, *(r20 + r22));
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)dealloc {
    objc_disposeClassPair(self->_generatedClass);
    [[&var_20 super] dealloc];
    return;
}

-(bool)isSwizzlingProxyObject {
    r0 = objc_loadWeakRetained((int64_t *)&self->_swizzledObject);
    r20 = [r0 isProxy];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)generatedClass {
    r0 = self->_generatedClass;
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_swizzledObject);
    return;
}

@end