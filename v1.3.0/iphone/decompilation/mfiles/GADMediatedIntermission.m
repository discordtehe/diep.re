@implementation GADMediatedIntermission

-(void *)initWithMessageSource:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_messageSource, r19);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)adapterWillPresent {
    var_8 = [self retain];
    sub_100860a80();
    [var_8 release];
    return;
}

-(void)adapterWillDismiss {
    r0 = self;
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) == 0x0) {
            var_18 = [r0 retain];
            sub_100860a80();
            [var_18 release];
    }
    return;
}

-(void)adapterDidDismiss {
    var_8 = [self retain];
    sub_100860a80();
    [var_8 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_messageSource);
    return;
}

@end