@implementation MCPromoBadgeInfo

-(void *)init {
    return 0x0;
}

-(void *)initWithConfiguration:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            *(r20 + 0x18) = [r19 retain];
    }
    r0 = r20;
    return r0;
}

-(void *)initWithImage:(void *)arg2 andText:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            *(r21 + 0x10) = [r20 retain];
            *(r21 + 0x8) = [r19 retain];
    }
    r0 = r21;
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
    r0 = *(r19 + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    r0 = *(r19 + 0x18);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x18) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void *)text {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)image {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)badgeConfiguration {
    r0 = *(self + 0x18);
    return r0;
}

@end