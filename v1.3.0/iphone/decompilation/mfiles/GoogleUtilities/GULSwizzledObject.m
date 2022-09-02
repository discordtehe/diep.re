@implementation GULSwizzledObject

-(void *)init {
    [self release];
    return 0x0;
}

+(void)copyDonorSelectorsUsingObjectSwizzler:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    [r0 copySelector:@selector(gul_objectSwizzler) fromClass:r20 isClassSelector:0x0];
    [r19 copySelector:@selector(gul_class) fromClass:r20 isClassSelector:0x0];
    if ([r19 isSwizzlingProxyObject] != 0x0) {
            [r19 copySelector:@selector(respondsToSelector:) fromClass:r20 isClassSelector:0x0];
    }
    [r19 release];
    return;
}

-(void *)gul_objectSwizzler {
    r0 = [GULObjectSwizzler getAssociatedObject:self key:*0x1011a9010];
    return r0;
}

-(void *)gul_class {
    r0 = [self gul_objectSwizzler];
    r0 = [r0 retain];
    r20 = [[r0 generatedClass] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)respondsToSelector:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = [self gul_objectSwizzler];
    r0 = [r0 retain];
    r22 = [r0 generatedClass];
    [r0 release];
    if (([r22 instancesRespondToSelector:r19] & 0x1) != 0x0) {
            r0 = 0x1;
    }
    else {
            r0 = [[&var_30 super] respondsToSelector:r2];
    }
    return r0;
}

@end