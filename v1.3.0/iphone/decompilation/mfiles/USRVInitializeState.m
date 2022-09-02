@implementation USRVInitializeState

-(void)main {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self execute] retain];
    if (r19 != 0x0) {
            asm { ccmp       x0, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            [*0x1011d1a78 addOperation:r19];
    }
    [r19 release];
    return;
}

-(void *)execute {
    return 0x0;
}

-(void *)initWithConfiguration:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setConfiguration:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)configuration {
    r0 = self->_configuration;
    return r0;
}

-(void)setConfiguration:(void *)arg2 {
    self->_configuration = arg2;
    return;
}

@end