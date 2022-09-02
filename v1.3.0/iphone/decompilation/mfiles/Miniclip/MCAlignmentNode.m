@implementation MCAlignmentNode

-(void)align {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[self children] getNSArray];
    r22 = [r19 direction];
    [r19 spacing];
    r21 = [r19 forceCentering];
    r2 = [r19 invertOrder];
    r0 = r20;
    r1 = r21;
    if (r22 != 0x0) {
            sub_10034e440(r0, r1, r2);
    }
    else {
            sub_10034de80(r0, r1, r2);
    }
    [r19 setContentSize:r2];
    *(int8_t *)(int64_t *)&r19->_needsAlign = 0x0;
    [[&var_40 super] centerChildren];
    return;
}

-(struct CGSize)contentSize {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(int64_t *)&self->_needsAlign != 0x0) {
            [r19 align];
    }
    r0 = [[&var_20 super] contentSize];
    return r0;
}

@end