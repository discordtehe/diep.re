@implementation CCScene

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [[CCDirector sharedDirector] winSize];
            [r19 setIgnoreAnchorPointForPosition:0x1];
            *(int128_t *)(int64_t *)&r19->_anchorPoint = q0;
            [r19 setContentSize:r2];
    }
    r0 = r19;
    return r0;
}

@end