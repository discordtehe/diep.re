@implementation MCPromoSystemNotification

+(void *)getNotificationWithOffer:(void *)arg2 withMessage:(void *)arg3 withType:(int)arg4 onDate:(void *)arg5 {
    r0 = [MCPromoSystemNotification alloc];
    r0 = [r0 initWithOffer:arg2 withMessage:arg3 withType:arg4 onDate:arg5];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithOffer:(void *)arg2 withMessage:(void *)arg3 withType:(int)arg4 onDate:(void *)arg5 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg5;
    r19 = arg4;
    r22 = arg3;
    r23 = arg2;
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            *(r21 + 0x8) = [r23 retain];
            *(r21 + 0x10) = [r22 retain];
            *(r21 + 0x18) = [r20 retain];
            *(int32_t *)(r21 + 0x20) = r19;
    }
    r0 = r21;
    return r0;
}

-(void)dealloc {
    [*(self + 0x8) release];
    *(self + 0x8) = 0x0;
    [*(self + 0x10) release];
    *(self + 0x10) = 0x0;
    [*(self + 0x18) release];
    *(self + 0x18) = 0x0;
    [[&var_20 super] dealloc];
    return;
}

-(void *)offerId {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)message {
    r0 = *(self + 0x10);
    return r0;
}

-(int)type {
    r0 = *(int32_t *)(self + 0x20);
    return r0;
}

-(void *)date {
    r0 = *(self + 0x18);
    return r0;
}

@end