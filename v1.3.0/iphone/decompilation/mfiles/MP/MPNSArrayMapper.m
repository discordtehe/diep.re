@implementation MPNSArrayMapper

-(void *)init {
    [self doesNotRecognizeSelector:_cmd];
    [self release];
    return 0x0;
}

-(void *)initWithInternalMapper:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeStrong(r21 + 0x8, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)requiredSourceObjectClass {
    r0 = [NSArray class];
    return r0;
}

-(void *)mapper {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)mappedObjectFromSourceObject:(void *)arg2 {
    r31 = r31 - 0x90;
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
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (([r19 isKindOfClass:[r20 requiredSourceObjectClass]] & 0x1) == 0x0) {
            r0 = [r20 mapper];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r19 isKindOfClass:[r0 requiredSourceObjectClass]];
            [r0 release];
            if (r25 != 0x0) {
                    r0 = [r20 mapper];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = [r19 isKindOfClass:[r0 requiredSourceObjectClass]];
                    [r0 release];
                    if (r22 != 0x0) {
                            r0 = [r20 mapper];
                            r0 = [r0 retain];
                            r21 = r0;
                            r0 = [r0 mappedObjectFromSourceObject:r19];
                            r29 = r29;
                            r20 = [r0 retain];
                            [r21 release];
                            if (r20 != 0x0) {
                                    r0 = [NSArray arrayWithObjects:&var_50 count:0x1];
                                    r21 = [r0 retain];
                            }
                            else {
                                    r21 = 0x0;
                            }
                            r0 = r20;
                    }
                    else {
                            r0 = [r19 retain];
                            r23 = r0;
                            r0 = [NSMutableArray arrayWithCapacity:[r0 count]];
                            r0 = [r0 retain];
                            var_58 = r0;
                            r24 = [r0 retain];
                            [r23 enumerateObjectsUsingBlock:&var_80];
                            [r23 release];
                            r0 = [r24 count];
                            if (r0 == 0x0) {
                                    if (!CPU_FLAGS & E) {
                                            r0 = r24;
                                    }
                                    else {
                                            r0 = 0x0;
                                    }
                            }
                            r21 = [r0 retain];
                            [var_58 release];
                            r0 = r24;
                    }
                    [r0 release];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r0 = [r20 mapper];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r19 isKindOfClass:[r0 requiredSourceObjectClass]];
            [r0 release];
            if (r22 != 0x0) {
                    r0 = [r20 mapper];
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 mappedObjectFromSourceObject:r19];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r21 release];
                    if (r20 != 0x0) {
                            r0 = [NSArray arrayWithObjects:&var_50 count:0x1];
                            r21 = [r0 retain];
                    }
                    else {
                            r21 = 0x0;
                    }
                    r0 = r20;
            }
            else {
                    r0 = [r19 retain];
                    r23 = r0;
                    r0 = [NSMutableArray arrayWithCapacity:[r0 count]];
                    r0 = [r0 retain];
                    var_58 = r0;
                    r24 = [r0 retain];
                    [r23 enumerateObjectsUsingBlock:&var_80];
                    [r23 release];
                    r0 = [r24 count];
                    if (r0 == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r0 = r24;
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
                    r21 = [r0 retain];
                    [var_58 release];
                    r0 = r24;
            }
            [r0 release];
    }
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setMapper:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end