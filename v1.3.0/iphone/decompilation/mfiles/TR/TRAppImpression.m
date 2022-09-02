@implementation TRAppImpression

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setAppImpressionID:0x0];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithTRAppImpressionDictionary:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r2 = @"id";
            r0 = [r19 notNullObjectForKey:r2];
            r0 = [r0 retain];
            r21 = r0;
            [r0 intValue];
            asm { sxtw       x2, w0 };
            [r20 setAppImpressionID:r2];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setAppImpressionID:[r19 decodeIntegerForKey:@"TR App Impression ID"]];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    r22 = [arg2 retain];
    [arg2 encodeInteger:[self appImpressionID] forKey:@"TR App Impression ID"];
    [r22 release];
    return;
}

-(long long)appImpressionID {
    r0 = self->_appImpressionID;
    return r0;
}

-(void)setAppImpressionID:(long long)arg2 {
    self->_appImpressionID = arg2;
    return;
}

@end