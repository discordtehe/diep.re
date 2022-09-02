@implementation GADView

-(void *)initWithFrame:(struct CGRect)arg2 context:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r2;
    r20 = [r19 retain];
    r0 = [[&var_50 super] initWithFrame:r2];
    r21 = r0;
    if (r21 != 0x0) {
            CGRectStandardize([r21 frame]);
            *(int128_t *)(int64_t *)&r21->_lastSize = d2;
            *(int128_t *)((int64_t *)&r21->_lastSize + 0x8) = d3;
            objc_storeStrong((int64_t *)&r21->_context, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)context {
    r0 = self->_context;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)awakeFromNib {
    [[&var_20 super] awakeFromNib];
    CGRectStandardize([self frame]);
    self->_lastSize = d2;
    *((int64_t *)&self->_lastSize + 0x8) = d3;
    return;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(void)didMoveToWindow {
    [[&var_20 super] didMoveToWindow];
    sub_1008833e8(*0x100e9c0e0, self, 0x0);
    return;
}

-(void)layoutSubviews {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_30 super] layoutSubviews];
    r0 = [r19 frame];
    r0 = CGRectStandardize(r0);
    r20 = (int64_t *)&r19->_lastSize;
    if ((sub_10081d0c8(r0) & 0x1) == 0x0) {
            *r20 = d8;
            *(r20 + 0x8) = d9;
            sub_1008833e8(*0x100e9c200, r19, 0x0);
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    return;
}

@end