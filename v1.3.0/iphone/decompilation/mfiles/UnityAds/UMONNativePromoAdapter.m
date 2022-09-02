@implementation UMONNativePromoAdapter

-(void *)initWithPromo:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setPromo:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)promoDidShow {
    [self promoDidShow:0x1];
    return;
}

-(void)promoDidClick {
    r0 = [self promo];
    r0 = [r0 retain];
    [r0 sendCustomEventWithType:@"clicked"];
    [r0 release];
    return;
}

-(void)promoDidShow:(long long)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r20 = [sub_1000f5cc8() retain];
    r21 = [[NSDictionary dictionaryWithObjects:&var_30 forKeys:&var_38 count:0x1] retain];
    [r20 release];
    r0 = [self promo];
    r0 = [r0 retain];
    [r0 sendCustomEvent:@"shown" withUserInfo:r21];
    [r0 release];
    [r21 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void *)metadata {
    r0 = [self promo];
    r0 = [r0 retain];
    r20 = [[r0 metadata] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)promo {
    r0 = self->_promo;
    return r0;
}

-(void)promoDidClose {
    r0 = [self promo];
    r0 = [r0 retain];
    [r0 sendCustomEventWithType:@"closed"];
    [r0 release];
    return;
}

-(void)setPromo:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_promo, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_promo, 0x0);
    return;
}

@end