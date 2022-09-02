@implementation GADNativeAdViewAdOptions

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            r0->_preferredAdChoicesPosition = 0x0;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[&var_20 super] copyWithZone:arg2];
    r0->_preferredAdChoicesPosition = [self preferredAdChoicesPosition];
    r0 = r0;
    return r0;
}

-(void *)requestParameters {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_18 = **___stack_chk_guard;
    r20 = [[NSNumber numberWithInteger:self->_preferredAdChoicesPosition] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_20 forKeys:&var_28 count:0x1];
    r19 = [r0 retain];
    [r20 release];
    if (**___stack_chk_guard == var_18) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(long long)preferredAdChoicesPosition {
    r0 = self->_preferredAdChoicesPosition;
    return r0;
}

-(void)setPreferredAdChoicesPosition:(long long)arg2 {
    self->_preferredAdChoicesPosition = arg2;
    return;
}

@end