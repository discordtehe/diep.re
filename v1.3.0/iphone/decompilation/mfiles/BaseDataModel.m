@implementation BaseDataModel

-(void)reload {
    return;
}

-(void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[&var_20 super] dealloc];
    return;
}

-(void *)init {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 reload];
            [[NSNotificationCenter defaultCenter] addObserver:r2 selector:r3 name:r4 object:r5];
            objc_msgSend([NSNotificationCenter defaultCenter], r22);
    }
    r0 = r19;
    return r0;
}

@end