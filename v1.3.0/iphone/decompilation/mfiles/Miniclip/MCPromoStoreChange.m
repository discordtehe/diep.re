@implementation MCPromoStoreChange

-(void *)init {
    return 0x0;
}

+(void *)getStoreChangeFromConfiguration:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r2;
            if ([r2 count] != 0x0) {
                    r0 = objc_alloc();
                    r0 = [r0 initWithConfiguration:r19];
                    r0 = [r0 autorelease];
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)productToActivate {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)initWithConfiguration:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if ([r20 count] != 0x0 && r20 != 0x0 && r19 != 0x0) {
            r21 = @selector(objectForKey:);
            *(r19 + 0x8) = [objc_msgSend(r20, r21) retain];
            *(r19 + 0x10) = [objc_msgSend(r20, r21) retain];
            r0 = objc_msgSend(r20, r21);
            if (r0 != 0x0) {
                    r23 = r0;
                    if ([r0 count] != 0x0) {
                            r21 = @selector(objectForKey:);
                            r20 = objc_msgSend(r23, r21);
                            r0 = objc_msgSend(r23, r21);
                            if (r20 != 0x0) {
                                    r21 = r0;
                                    r0 = [r20 isEqualToString:r2];
                                    if (r21 != 0x0) {
                                            if ((r0 & 0x1) == 0x0) {
                                                    if (([r21 isEqualToString:r2] & 0x1) == 0x0) {
                                                            *(r19 + 0x18) = [r20 retain];
                                                            *(r19 + 0x20) = [r21 retain];
                                                    }
                                            }
                                    }
                            }
                    }
            }
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
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    r0 = *(r19 + 0x10);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x10) = 0x0;
    }
    r0 = *(r19 + 0x18);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x18) = 0x0;
    }
    r0 = *(r19 + 0x20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x20) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void *)productToDeactivate {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)replacementProductToActivate {
    r0 = *(self + 0x18);
    return r0;
}

-(void *)replacementProductToDeactivate {
    r0 = *(self + 0x20);
    return r0;
}

@end