@implementation VunglePropertiesChangeGenerator

-(void *)initWithPropertiesDictionary:(void *)arg2 converter:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = [arg2 retain];
    r21 = [r20 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            r0 = [r19 copy];
            r8 = *(r22 + 0x8);
            *(r22 + 0x8) = r0;
            [r8 release];
            objc_storeStrong(r22 + 0x10, r20);
    }
    [r21 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void *)generateJavascript {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self jsonStringFromDictionary:*(self + 0x8)];
    r0 = [r0 retain];
    r8 = *(r19 + 0x18);
    *(r19 + 0x18) = r0;
    [r8 release];
    r20 = *(r19 + 0x18);
    if (r20 == 0x0) {
            [@"{}" retain];
            *(r19 + 0x18) = @"{}";
            [r20 release];
            r20 = *(r19 + 0x18);
    }
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void *)payload {
    r0 = *(self + 0x18);
    r0 = [r0 copy];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)jsonStringFromDictionary:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *(self + 0x10);
    r0 = [r0 JSONStringWithNSDictionary:arg2 options:0x1 error:&var_18];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 retain];
    }
    [r19 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)properties {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)converter {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setProperties:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void)setConverter:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void *)privatePayload {
    r0 = *(self + 0x18);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

-(void)setPrivatePayload:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

@end