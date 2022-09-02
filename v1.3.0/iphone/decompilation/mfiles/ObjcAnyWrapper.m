@implementation ObjcAnyWrapper

+(void *)wrapObject:(struct Any *)arg2 {
    r0 = objc_alloc();
    r0 = [r0 init];
    r0 = [r0 autorelease];
    [r0 setCppObject:arg2];
    r0 = r0;
    return r0;
}

-(struct Any *)cppObject {
    r0 = self + 0x8;
    return r0;
}

-(void)setCppObject:(struct Any *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *arg2;
    if (r0 != 0x0) {
            r8 = (*(*r0 + 0x18))();
    }
    else {
            r8 = 0x0;
    }
    r0 = *(r19 + 0x8);
    *(r19 + 0x8) = r8;
    if (r0 != 0x0) {
            (*(*r0 + 0x8))();
    }
    return;
}

-(void *).cxx_construct {
    r0 = self;
    *(r0 + 0x8) = 0x0;
    return r0;
}

-(void).cxx_destruct {
    r0 = *(self + 0x8);
    *(self + 0x8) = 0x0;
    if (r0 != 0x0) {
            (*(*r0 + 0x8))();
    }
    return;
}

@end