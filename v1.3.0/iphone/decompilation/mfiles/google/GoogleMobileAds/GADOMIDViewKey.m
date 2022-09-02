@implementation GADOMIDViewKey

-(unsigned long long)hash {
    r0 = [self->_view hash];
    return r0;
}

-(bool)isEqual:(void *)arg2 {
    r31 = r31 - 0x50;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_10 = self;
    r0 = objc_storeStrong(&var_20, arg2);
    if (([var_20 isKindOfClass:[GADOMIDViewKey class]] & 0x1) == 0x0) {
            var_1 = 0x0;
    }
    else {
            var_40 = var_10->_view;
            r0 = [var_20 view];
            r0 = [r0 retain];
            if (var_40 == r0) {
                    if (CPU_FLAGS & E) {
                            r11 = 0x1;
                    }
            }
            var_1 = r11 & 0x1;
            [r0 release];
    }
    objc_storeStrong(&var_20, 0x0);
    r0 = var_1 & 0x1 & 0x1;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    var_20 = [GADOMIDViewKey new];
    [var_20 setView:self->_view];
    var_28 = [var_20 retain];
    objc_storeStrong(&var_20, 0x0);
    r0 = var_28;
    return r0;
}

-(void *)view {
    r0 = self->_view;
    return r0;
}

-(void)setView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_view, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_view, 0x0);
    return;
}

@end