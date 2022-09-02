@implementation MCLocalizationEntry

-(void *)initWithEntryId:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    r20 = r0;
    r0 = 0x0;
    if (r19 != 0x0) {
            r0 = 0x0;
            if (r20 != 0x0) {
                    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                            r0 = 0x0;
                    }
                    else {
                            *(r20 + 0x8) = [r19 retain];
                            r0 = r20;
                    }
            }
    }
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
    [[&var_20 super] dealloc];
    return;
}

-(void *)resourceId {
    r0 = *(self + 0x8);
    return r0;
}

@end