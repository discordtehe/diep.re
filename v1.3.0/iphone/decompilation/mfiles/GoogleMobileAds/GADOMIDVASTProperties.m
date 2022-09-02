@implementation GADOMIDVASTProperties

-(void *)initWithSkipOffset:(double)arg2 autoPlay:(bool)arg3 position:(unsigned long long)arg4 {
    var_38 = [[self initWithSkippable:0x1 skipOffset:arg2 & 0x1 autoPlay:arg3 position:r5] retain];
    objc_storeStrong(&saved_fp - 0x8, 0x0);
    r0 = var_38;
    return r0;
}

-(void *)initWithAutoPlay:(bool)arg2 position:(unsigned long long)arg3 {
    var_30 = [[self initWithSkippable:0x0 & 0x1 skipOffset:arg2 & 0x1 autoPlay:arg3 position:r5] retain];
    objc_storeStrong(&saved_fp - 0x8, 0x0);
    r0 = var_30;
    return r0;
}

-(void *)initWithSkippable:(bool)arg2 skipOffset:(double)arg3 autoPlay:(bool)arg4 position:(unsigned long long)arg5 {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_11 = arg2;
    var_20 = d0;
    var_21 = arg3;
    var_30 = arg4;
    r0 = [[&var_40 super] init];
    var_8 = r0;
    objc_storeStrong(r29 - 0x8, r0);
    if (var_8 != 0x0) {
            *(int8_t *)(int64_t *)&var_8->_skippable = var_11 & 0x1;
            var_8->_skipOffset = var_20;
            *(int8_t *)(int64_t *)&var_8->_autoPlay = var_21 & 0x1;
            var_8->_position = var_30;
    }
    var_50 = [var_8 retain];
    objc_storeStrong(r29 - 0x8, 0x0);
    r0 = var_50;
    return r0;
}

-(void *)positionString {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = self->_position;
    r1 = r0;
    r0 = r0 - 0x3;
    var_20 = r1;
    if (r0 <= 0x0) {
            r0 = (sign_extend_64(*(int32_t *)(0x1008e1738 + var_20 * 0x4)) + 0x1008e1738)();
    }
    else {
            r0 = [var_8 autorelease];
    }
    return r0;
}

-(bool)isSkippable {
    r0 = *(int8_t *)(int64_t *)&self->_skippable & 0x1;
    return r0;
}

-(double)skipOffset {
    r0 = self;
    return r0;
}

-(unsigned long long)position {
    r0 = self->_position;
    return r0;
}

-(bool)isAutoPlay {
    r0 = *(int8_t *)(int64_t *)&self->_autoPlay & 0x1;
    return r0;
}

-(void *)toJSON {
    r31 = r31 - 0x170;
    var_10 = r28;
    stack[-24] = r27;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r10 = *___stack_chk_guard;
    *((r29 - 0xa8) + 0x90) = **___stack_chk_guard;
    *((r29 - 0xa8) + 0x10) = self;
    *((r29 - 0xa8) + 0x8) = _cmd;
    var_A9 = 0x0;
    var_B9 = 0x0;
    var_C9 = 0x0;
    var_D9 = 0x0;
    var_E9 = 0x0;
    var_F9 = 0x0;
    var_109 = 0x0;
    var_119 = 0x0;
    var_129 = 0x0;
    var_140 = r29 - 0xa8;
    if ((*(int8_t *)(int64_t *)&*((r29 - 0xa8) + 0x10)->_skippable & 0x1) != 0x0) {
            *(var_140 + 0x50) = @"skippable";
            r2 = *(int8_t *)(int64_t *)&*(var_140 + 0x10)->_skippable & 0x1;
            r0 = [NSNumber numberWithBool:r2];
            r0 = [r0 retain];
            *var_140 = r0;
            var_A9 = 0x1;
            *(var_140 + 0x70) = r0;
            *(var_140 + 0x58) = @"skipOffset";
            r0 = [NSNumber numberWithDouble:r2];
            r0 = [r0 retain];
            var_B8 = r0;
            var_B9 = 0x1;
            *(var_140 + 0x78) = r0;
            *(var_140 + 0x60) = @"autoPlay";
            r0 = [NSNumber numberWithBool:*(int8_t *)(int64_t *)&*(var_140 + 0x10)->_autoPlay & 0x1];
            r0 = [r0 retain];
            var_C8 = r0;
            var_C9 = 0x1;
            *(var_140 + 0x80) = r0;
            *(var_140 + 0x68) = @"position";
            r0 = [*(var_140 + 0x10) positionString];
            r0 = [r0 retain];
            var_D8 = r0;
            var_D9 = 0x1;
            *(var_140 + 0x88) = r0;
            r0 = [NSDictionary dictionaryWithObjects:r29 - 0x38 forKeys:r29 - 0x58 count:0x4];
            r0 = [r0 retain];
            var_E8 = r0;
            var_E9 = 0x1;
            var_150 = r0;
    }
    else {
            *(var_140 + 0x20) = @"skippable";
            r0 = [NSNumber numberWithBool:*(int8_t *)(int64_t *)&*(var_140 + 0x10)->_skippable & 0x1];
            r0 = [r0 retain];
            var_F8 = r0;
            var_F9 = 0x1;
            *(var_140 + 0x38) = r0;
            *(var_140 + 0x28) = @"autoPlay";
            r0 = [NSNumber numberWithBool:*(int8_t *)(int64_t *)&*(var_140 + 0x10)->_autoPlay & 0x1];
            r0 = [r0 retain];
            var_108 = r0;
            var_109 = 0x1;
            *(var_140 + 0x40) = r0;
            *(var_140 + 0x30) = @"position";
            r0 = [*(var_140 + 0x10) positionString];
            r0 = [r0 retain];
            var_118 = r0;
            var_119 = 0x1;
            *(var_140 + 0x48) = r0;
            r0 = [NSDictionary dictionaryWithObjects:r29 - 0x70 forKeys:r29 - 0x88 count:0x3];
            r0 = [r0 retain];
            var_128 = r0;
            var_129 = 0x1;
            var_150 = r0;
    }
    *(var_140 + 0x18) = [var_150 retain];
    if ((var_129 & 0x1 & 0x1) != 0x0) {
            [var_128 release];
    }
    if ((var_119 & 0x1 & 0x1) != 0x0) {
            [var_118 release];
    }
    if ((var_109 & 0x1 & 0x1) != 0x0) {
            [var_108 release];
    }
    if ((var_F9 & 0x1 & 0x1) != 0x0) {
            [var_F8 release];
    }
    if ((var_E9 & 0x1 & 0x1) != 0x0) {
            [var_E8 release];
    }
    if ((var_D9 & 0x1 & 0x1) != 0x0) {
            [var_D8 release];
    }
    if ((var_C9 & 0x1 & 0x1) != 0x0) {
            [var_C8 release];
    }
    if ((var_B9 & 0x1 & 0x1) != 0x0) {
            [var_B8 release];
    }
    if ((var_A9 & 0x1 & 0x1) != 0x0) {
            [*var_140 release];
    }
    var_158 = [*(var_140 + 0x18) autorelease];
    if (**___stack_chk_guard == *(var_140 + 0x90)) {
            r0 = var_158;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end