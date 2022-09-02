@implementation GADRewardBasedVideoAdController

+(void *)sharedInstance {
    if (*qword_1011db848 != -0x1) {
            dispatch_once(0x1011db848, 0x100e927b8);
    }
    r0 = *0x1011db850;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_connectors));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)removeConnectorForAdapterName:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            sub_1008220c0(r0->_connectors, r2);
    }
    return;
}

-(void *)connectors {
    r0 = self->_connectors;
    return r0;
}

-(void)createConnectorForAdapter:(void *)arg2 withAdConfiguration:(struct NSDictionary *)arg3 renderer:(void *)arg4 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = NSClassFromString(r19);
    r23 = r0;
    if ([r0 conformsToProtocol:r2] != 0x0) {
            r24 = [r23 conformsToProtocol:r2] ^ 0x1;
    }
    else {
            r24 = 0x0;
    }
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_connectors));
    r23 = [[*(r22 + r25) objectForKeyedSubscript:r19] retain];
    if (r24 != 0x0) {
            r24 = [[GADMRewardedAdNetworkConnector alloc] initWithAdNetworkConfiguration:r20 adapterClassName:r19 renderer:r21];
            [r23 release];
            sub_100822058(*(r22 + r25), r19, r24);
            r23 = r24;
    }
    else {
            if (r23 == 0x0) {
                    r23 = [[GADMRewardBasedVideoAdNetworkConnector alloc] initWithAdNetworkConfiguration:r20 adapterClassName:r19 renderer:r21];
                    sub_100822058(*(r22 + r25), r19, r23);
                    [r23 setUpAdapter];
            }
    }
    [r23 setAdConfiguration:r20];
    [r23 setRenderer:r21];
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)setConnectors:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_connectors, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_connectors, 0x0);
    return;
}

@end