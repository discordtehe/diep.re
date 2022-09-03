@implementation MenuState

+(void *)createMenuState:(unsigned long long)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r0 = [MenuState object];
            r20 = r0;
            [r0 setTheId:r2];
    }
    else {
            r20 = 0x0;
    }
    r0 = r20;
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x10) = [[NSMutableArray arrayWithCapacity:0x2] retain];
            *(r19 + 0x18) = [[NSMutableDictionary dictionaryWithCapacity:r2] retain];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x10);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x10) = 0x0;
    }
    r0 = *(r19 + 0x18);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x18) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(unsigned long long)theId {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)parameters {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setTheId:(unsigned long long)arg2 {
    *(self + 0x8) = arg2;
    return;
}

-(void *)availableInstances {
    r0 = *(self + 0x10);
    return r0;
}

@end