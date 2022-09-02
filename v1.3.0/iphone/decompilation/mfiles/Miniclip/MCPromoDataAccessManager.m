@implementation MCPromoDataAccessManager

+(void)releaseSharedMCPromoDataAccessManager {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011dc970 != 0x0) {
            [*0x1011dc970 release];
            *0x1011dc970 = 0x0;
    }
    return;
}

+(void *)sharedMCPromoDataAccessManager {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011dc970;
    if (r0 == 0x0) {
            r0 = objc_alloc();
            r0 = [r0 init];
            *0x1011dc970 = r0;
    }
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

-(void)initWithDelegate:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            var_20 = r20;
            stack[-24] = r19;
            r31 = r31 + 0xffffffffffffffe0;
            var_10 = r29;
            stack[-8] = r30;
            r20 = r2;
            r19 = r0;
            r0 = *(r0 + 0x8);
            if (r0 != 0x0) {
                    [r0 release];
                    *(r19 + 0x8) = 0x0;
            }
            *(r19 + 0x8) = [r20 retain];
    }
    return;
}

-(void *)groupForTest:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if ([*(self + 0x8) respondsToSelector:@selector(getGroupForTest:)] != 0x0) {
            r0 = *(r20 + 0x8);
            r0 = [r0 getGroupForTest:r19];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)getNumberPropertyType:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if ([*(self + 0x8) respondsToSelector:@selector(getNumberPropertyType:)] != 0x0) {
            r0 = *(r20 + 0x8);
            r0 = [r0 getNumberPropertyType:r19];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)getPropertyType:(void *)arg2 withPropertyInfo:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    if ([*(self + 0x8) respondsToSelector:@selector(getPropertyType:withPropertyInfo:), r3] != 0x0) {
            r0 = *(r21 + 0x8);
            r0 = [r0 getPropertyType:r20 withPropertyInfo:r19];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)getClientLanguage {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([*(self + 0x8) respondsToSelector:r2] != 0x0) {
            r0 = *(r19 + 0x8);
            r0 = [r0 getClientLanguage];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)currentPlatformType {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([*(self + 0x8) respondsToSelector:r2] != 0x0) {
            r0 = *(r19 + 0x8);
            r0 = [r0 currentPlatformType];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)areTransactionsPresentInTheConfiguration:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if ([*(self + 0x8) respondsToSelector:@selector(areTransactionsPresentInTheConfiguration:)] != 0x0) {
            r0 = *(r20 + 0x8);
            r0 = [r0 areTransactionsPresentInTheConfiguration:r19];
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(bool)areProductsPresentInTheConfiguration:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if ([*(self + 0x8) respondsToSelector:@selector(areProductsPresentInTheConfiguration:)] != 0x0) {
            r0 = *(r20 + 0x8);
            r0 = [r0 areProductsPresentInTheConfiguration:r19];
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

@end