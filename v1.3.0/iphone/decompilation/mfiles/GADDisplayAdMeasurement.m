@implementation GADDisplayAdMeasurement

-(void *)initWithInternalNativeAd:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [r19 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_internalNativeAd, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(bool)startWithError:(void * *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r20 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_internalNativeAd));
    if ([*(r20 + r21) mediaType] == 0x1) {
            if (r19 != 0x0) {
                    r8 = [[sub_100809600(0xb, @"Open measurement for video ads is handled internally by the SDK.") retain] autorelease];
                    r0 = 0x0;
                    *r19 = r8;
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            do {
                    asm { ldaxrb     w10, [x8] };
                    asm { stlxrb     w11, w9, [x8] };
            } while (r11 != 0x0);
            if ((r10 & 0x1) == 0x0) {
                    sub_1008833e8(*0x100e9c550, *(r20 + r21), 0x0);
            }
            else {
                    NSLog(@"<Google> Open measurement has started for this native custom template ad already.");
            }
            r0 = 0x1;
    }
    return r0;
}

-(void *)view {
    r0 = objc_loadWeakRetained((int64_t *)&self->_view);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setView:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r21 = (int64_t *)&r20->_view;
    r0 = objc_loadWeakRetained(r21);
    [r0 release];
    if (r0 != r19) {
            objc_storeWeak(r21, r19);
            r0 = [NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1];
            sub_1008833e8(*0x100e9c558, r20->_internalNativeAd, [r0 retain]);
            [r21 release];
    }
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_view);
    objc_storeStrong((int64_t *)&self->_internalNativeAd, 0x0);
    return;
}

@end