@implementation GADImpressionMonitor

+(void)addMonitorToAd:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 {
    r21 = [arg2 retain];
    r19 = [[arg3 objectForKeyedSubscript:*0x100e959b0] retain];
    r22 = [GADImpressionMonitor alloc];
    r22 = [r22 initWithAd:r21 impressionDefinition:[r19 integerValue]];
    [arg2 addMonitor:r22];
    [r21 release];
    [r22 release];
    [r19 release];
    return;
}

-(void *)initWithAd:(void *)arg2 impressionDefinition:(long long)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r19 = [arg2 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 == 0x0) goto loc_10080e2c0;

loc_10080e1f8:
    if (r21 == 0x1) goto loc_10080e214;

loc_10080e200:
    if (r21 != 0x2) goto loc_10080e28c;

loc_10080e208:
    r8 = 0x100e9c018;
    goto loc_10080e21c;

loc_10080e21c:
    r23 = [*r8 retain];
    if (r23 != 0x0) {
            r22 = @selector(init);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r22);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            [r8 release];
            [*(r20 + r21) addObserverForName:r23 object:r19 queue:0x0 usingBlock:0x100e93120];
            r0 = r23;
    }
    else {
            r0 = [r19 context];
            r0 = [r0 retain];
            sub_1007ce06c(r0, @"Invalid impression type: %ld");
            r0 = r22;
    }
    goto loc_10080e2bc;

loc_10080e2bc:
    [r0 release];
    goto loc_10080e2c0;

loc_10080e2c0:
    [r19 release];
    r0 = r20;
    return r0;

loc_10080e28c:
    r0 = [r19 context];
    r0 = [r0 retain];
    sub_1007ce06c(r0, @"Invalid impression type: %ld");
    r0 = r22;
    goto loc_10080e2bc;

loc_10080e214:
    r8 = 0x100e9c078;
    goto loc_10080e21c;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end