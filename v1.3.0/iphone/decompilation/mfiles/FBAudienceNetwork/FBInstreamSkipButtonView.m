@implementation FBInstreamSkipButtonView

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self initWithRemainingSeconds:0x0];
    return r0;
}

-(void *)initWithRemainingSeconds:(unsigned long long)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] initWithFrame:r2];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setRemainingSeconds:r19];
            [r20 sizeToFitText];
    }
    r0 = r20;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r0 = [self initWithRemainingSeconds:0x0];
    return r0;
}

-(void *)textWithRemainingSeconds:(unsigned long long)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self remainingSeconds] != 0x0) {
            [r19 remainingSeconds];
            r19 = [[NSString stringWithFormat:@"%@ %ld"] retain];
    }
    else {
            r19 = @"Skip Ad";
            [r19 retain];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)setRemainingSeconds:(unsigned long long)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_remainingSeconds));
    if (*(self + r22) == arg2) {
            r0 = [r19 text];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    *(r19 + r22) = r20;
                    r20 = [[r19 textWithRemainingSeconds:r20] retain];
                    [r19 setText:r20];
                    [r20 release];
            }
    }
    else {
            *(r19 + r22) = r20;
            r20 = [[r19 textWithRemainingSeconds:r20] retain];
            [r19 setText:r20];
            [r20 release];
    }
    return;
}

-(unsigned long long)remainingSeconds {
    r0 = self->_remainingSeconds;
    return r0;
}

@end