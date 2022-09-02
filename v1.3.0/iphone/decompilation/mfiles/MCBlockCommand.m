@implementation MCBlockCommand

+(void *)commandWithBlock:(void *)arg2 {
    r0 = [MCBlockCommand object];
    [r0 setBlock:arg2];
    r0 = r0;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(bool)isFinished {
    r0 = *(int8_t *)(self + 0x10);
    return r0;
}

-(void)setBlock:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x10) == 0x0) {
            r20 = r2;
            r19 = r0;
            r0 = *(r0 + 0x8);
            if (r0 != 0x0) {
                    [r0 release];
                    *(r19 + 0x8) = 0x0;
            }
            if (r20 != 0x0) {
                    *(r19 + 0x8) = [r20 copy];
            }
    }
    return;
}

-(void)execute {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x10) == 0x0) {
            r19 = r0;
            r0 = *(r0 + 0x8);
            if (r0 != 0x0) {
                    (*(r0 + 0x10))();
            }
            *(int8_t *)(r19 + 0x10) = 0x1;
    }
    return;
}

@end