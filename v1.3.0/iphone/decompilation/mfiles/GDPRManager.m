@implementation GDPRManager

+(void *)gdprManager {
    r0 = objc_alloc();
    r0 = [r0 init];
    r0 = [r0 autorelease];
    [r0 resetVariables];
    r0 = r19;
    return r0;
}

-(void)resetVariables {
    *(int16_t *)(self + 0x8) = 0x0;
    return;
}

-(void)getData {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    sub_1003a06cc(&var_38, 0x0);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_100014b1c;

loc_100014b0c:
    if (r0 == 0x0) goto loc_100014b28;

loc_100014b10:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100014b24;

loc_100014b24:
    (r8)();
    goto loc_100014b28;

loc_100014b28:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100014b1c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100014b24;
}

-(void)initialize {
    r31 = r31 - 0xa0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    sub_100014814(&saved_fp - 0x28, [[[[[Application sharedApplication] userData] account] userId] UTF8String]);
    sub_100014814(&saved_fp - 0x40, [@"diepio" UTF8String]);
    sub_100014814(&var_58, [@"d1U2YSJnN0GToChen6xG5kylGJCMHPN9" UTF8String]);
    sub_100014814(&var_70, [@"https://bacon.diepio.miniclippt.com/" UTF8String]);
    sub_100014814(&var_88, "");
    r0 = sub_1003a0678(&saved_fp - 0x28, &saved_fp - 0x40, &var_58, &var_70, &var_88);
    if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
            operator delete(var_88);
    }
    if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
            operator delete(var_70);
    }
    if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
            operator delete(var_58);
    }
    if ((sign_extend_64(var_29) & 0xffffffff80000000) != 0x0) {
            operator delete(var_40);
    }
    if ((sign_extend_64(var_11) & 0xffffffff80000000) != 0x0) {
            operator delete(var_28);
    }
    return;
}

-(void)setUserAnswerFor:(int)arg2 withAnswer:(bool)arg3 {
    *(int8_t *)(self + 0x9) = arg3;
    sub_1003a06f8(arg2, arg3);
    sub_1000835ac([[Application sharedApplication] adsManager], arg3);
    return;
}

-(void)setTarget:(void *)arg2 withSelector:(void *)arg3 {
    *(int128_t *)(self + 0x18) = arg2;
    *(int128_t *)(self + 0x20) = arg3;
    [[[Application sharedApplication] gdprManager] getData];
    return;
}

-(void)removeTargetAndSelector {
    *(int128_t *)(self + 0x18) = 0x0;
    *(int128_t *)(self + 0x20) = 0x0;
    return;
}

-(void)setCallback:(struct function<void ()>)arg2 {
    memcpy(&r2, &arg2, 0x8);
    sub_1000117f0(self + 0x28);
    return;
}

-(void)removeCallback {
    r0 = *(self + 0x40);
    *(self + 0x40) = 0x0;
    if (self + 0x28 != r0) {
            if (r0 != 0x0) {
                    (*(*r0 + 0x28))();
            }
    }
    else {
            (*(*r0 + 0x20))();
    }
    return;
}

-(bool)shouldShowPopup {
    r0 = self;
    if (*(int8_t *)(r0 + 0x8) != 0x0) {
            if (*(int8_t *)(r0 + 0x14) != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(bool)isConsentGranted {
    r0 = *(int8_t *)(self + 0x9);
    return r0;
}

-(bool)isRelevant {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void).cxx_destruct {
    r0 = *(self + 0x40);
    if (self + 0x28 != r0) {
            if (r0 != 0x0) {
                    (*(*r0 + 0x28))();
            }
    }
    else {
            (*(*r0 + 0x20))();
    }
    return;
}

-(void *).cxx_construct {
    r0 = self;
    *(r0 + 0x40) = 0x0;
    return r0;
}

@end