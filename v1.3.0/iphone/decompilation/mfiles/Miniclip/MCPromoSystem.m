@implementation MCPromoSystem

+(void)releaseSharedMCPromoSystem {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011dc980 != 0x0) {
            [*0x1011dc980 release];
            *0x1011dc980 = 0x0;
    }
    return;
}

+(void *)sharedMCPromoSystem {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011dc980;
    if (r0 == 0x0) {
            r0 = objc_alloc();
            r0 = [r0 init];
            *0x1011dc980 = r0;
    }
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
            [r19 setPromoSystemId:@"promotionSystem"];
            [r19 setDefaultSaveDataKey:@"promotionSystemSaveData"];
    }
    r0 = r19;
    return r0;
}

@end