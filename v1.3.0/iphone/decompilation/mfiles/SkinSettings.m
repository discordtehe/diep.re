@implementation SkinSettings

-(void *)id {
    r0 = *(self + 0x8);
    return r0;
}

-(void)dealloc {
    [*(self + 0x8) release];
    [*(self + 0x10) release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithConfigEntry:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x8) = [[sub_1005d85d8([r20 objectForKey:@"id"], 0x0) lowercaseString] retain];
            *(r19 + 0x10) = [sub_1005d85d8([r20 objectForKey:@"image"], 0x0) retain];
            *(int8_t *)(r19 + 0x18) = sub_1005d84b0([r20 objectForKey:@"showName"], 0x0);
    }
    r0 = r19;
    return r0;
}

-(void *)textureName {
    r0 = *(self + 0x10);
    return r0;
}

-(bool)showName {
    r0 = *(int8_t *)(self + 0x18);
    return r0;
}

@end