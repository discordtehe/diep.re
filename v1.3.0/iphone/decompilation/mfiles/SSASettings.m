@implementation SSASettings

-(int)connectionRetries {
    r0 = *(int32_t *)(int64_t *)&self->_connectionRetries;
    return r0;
}

-(void *)initWithDictionary:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = [[r19 objectForKeyedSubscript:@"connectionRetries"] retain];
            r0 = [NSNull null];
            r29 = r29;
            r22 = [r0 retain];
            if (r21 != r22) {
                    r0 = [r19 objectForKeyedSubscript:@"connectionRetries"];
                    r0 = [r0 retain];
                    *(int32_t *)(int64_t *)&r20->_connectionRetries = [r0 intValue];
                    [r0 release];
            }
            else {
                    *(int32_t *)(int64_t *)&r20->_connectionRetries = 0x2;
            }
            [r22 release];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setConnectionRetries:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_connectionRetries = arg2;
    return;
}

@end