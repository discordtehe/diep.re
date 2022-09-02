@implementation CCMenuExtendedInput

-(bool)ccTouchBegan:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    r0 = [[&var_40 super] ccTouchBegan:r2 withEvent:r3];
    r23 = r0;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_selectedItem));
    r0 = *(r21 + r24);
    if (r0 != 0x0 && [r0 conformsToProtocol:@protocol(CCMenuItemExtendedInputProtocol)] != 0x0) {
            [*(r21 + r24) ccTouchBegan:r20 withEvent:r19];
    }
    r0 = r23;
    return r0;
}

-(void)ccTouchEnded:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    [[&var_40 super] ccTouchEnded:r2 withEvent:r3];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_selectedItem));
    r0 = *(r21 + r23);
    if (r0 != 0x0 && [r0 conformsToProtocol:@protocol(CCMenuItemExtendedInputProtocol)] != 0x0) {
            [*(r21 + r23) ccTouchEnded:r20 withEvent:r19];
    }
    return;
}

-(void)ccTouchMoved:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    [[&var_40 super] ccTouchMoved:r2 withEvent:r3];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_selectedItem));
    r0 = *(r21 + r23);
    if (r0 != 0x0 && [r0 conformsToProtocol:@protocol(CCMenuItemExtendedInputProtocol)] != 0x0) {
            [*(r21 + r23) ccTouchMoved:r20 withEvent:r19];
    }
    return;
}

-(void)ccTouchCancelled:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    [[&var_40 super] ccTouchCancelled:r2 withEvent:r3];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_selectedItem));
    r0 = *(r21 + r23);
    if (r0 != 0x0 && [r0 conformsToProtocol:@protocol(CCMenuItemExtendedInputProtocol)] != 0x0) {
            [*(r21 + r23) ccTouchCancelled:r20 withEvent:r19];
    }
    return;
}

@end