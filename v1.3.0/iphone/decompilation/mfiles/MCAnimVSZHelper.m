@implementation MCAnimVSZHelper

+(float)getAnimationDuration:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r2;
            r0 = [r19 isEqualToString:r2];
            if ((r0 & 0x1) == 0x0) {
                    r0 = [MCAnimVSZCache sharedInstance];
                    r0 = [r0 getAnimationDataForName:r19];
                    r0 = [r0 animationTimeAtNormalSpeed];
            }
    }
    return r0;
}

+(void *)createVSZWithAnimName:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r2;
            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                    r0 = 0x0;
            }
            else {
                    r0 = [MCAnimVSZCache sharedInstance];
                    r0 = [r0 getAnimationDataForName:r19];
                    if (r0 != 0x0) {
                            r0 = [MCAnimVSZNode vszAnimationNodeWithAnimation:r0];
                            if (r0 == 0x0) {
                                    r0 = sub_100290cfc();
                            }
                    }
                    else {
                            r0 = sub_100290cd4();
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

+(void *)createVSZWithAnimName:(void *)arg2 andTextureName:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 == 0x0) goto loc_1002909f8;

loc_1002909b0:
    r19 = r3;
    r20 = r2;
    r0 = [r20 isEqualToString:r2];
    r21 = 0x0;
    if (r19 == 0x0) goto loc_100290a5c;

loc_1002909dc:
    r21 = 0x0;
    if ((r0 & 0x1) != 0x0) goto loc_100290a5c;

loc_1002909e0:
    if (([r19 isEqualToString:r2] & 0x1) == 0x0) goto loc_100290a00;

loc_1002909f8:
    r21 = 0x0;
    goto loc_100290a5c;

loc_100290a5c:
    r0 = r21;
    return r0;

loc_100290a00:
    r0 = [MCAnimVSZCache sharedInstance];
    r0 = [r0 getAnimationDataForName:r20];
    if (r0 == 0x0) goto loc_100290a70;

loc_100290a28:
    r0 = [MCAnimVSZNode vszAnimationNodeWithAnimation:r0 ignoreTexture:0x1];
    if (r0 == 0x0) goto loc_100290a74;

loc_100290a48:
    r21 = r0;
    [r0 setNewTexture:r19];
    goto loc_100290a5c;

loc_100290a74:
    r0 = sub_100290d4c();
    return r0;

loc_100290a70:
    r0 = sub_100290d24();
    return r0;
}

+(void)changeVSZ:(void *)arg2 withAnimName:(void *)arg3 andTextureName:(void *)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r3 != 0x0) {
            r20 = r4;
            r21 = r3;
            r19 = r2;
            r0 = [r3 isEqualToString:r2];
            if (([r20 isEqualToString:r2] & 0x1) == 0x0 && r20 != 0x0 && (r0 & 0x1) == 0x0) {
                    r0 = [MCAnimVSZCache sharedInstance];
                    r0 = [r0 getAnimationDataForName:r21];
                    if (r0 != 0x0) {
                            [r19 setNewAnimationData:r0 ignoreTexture:0x1];
                            [r19 setNewTexture:r20];
                            [r19 reset];
                    }
                    else {
                            sub_100290d74();
                    }
            }
    }
    return;
}

+(void)changeVSZ:(void *)arg2 withAnimName:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r3 != 0x0) {
            r20 = r3;
            r19 = r2;
            if (([r3 isEqualToString:r2] & 0x1) == 0x0) {
                    r0 = [MCAnimVSZCache sharedInstance];
                    r0 = [r0 getAnimationDataForName:r20];
                    if (r0 != 0x0) {
                            [r19 setNewAnimationData:r0];
                            [r19 reset];
                    }
                    else {
                            sub_100290d9c();
                    }
            }
    }
    return;
}

+(void)changeVSZ:(void *)arg2 withTextureName:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r3 != 0x0) {
            r20 = r3;
            r19 = r2;
            if (([r3 isEqualToString:r2] & 0x1) == 0x0) {
                    [r19 setNewTexture:r20];
                    [r19 reset];
            }
    }
    return;
}

@end