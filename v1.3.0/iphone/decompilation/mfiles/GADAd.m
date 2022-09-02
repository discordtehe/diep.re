@implementation GADAd

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)initWithContext:(void *)arg2 metadata:(void *)arg3 {
    r31 = r31 - 0x60;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r23 = arg3;
    r24 = arg2;
    r19 = [r24 retain];
    r20 = [r23 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_context, r24);
            objc_storeStrong((int64_t *)&r21->_metadata, r23);
            r0 = [GADRootViewControllerProvider alloc];
            r0 = objc_msgSend(r0, r22);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_rootViewControllerProvider));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [NSMutableArray alloc];
            r0 = objc_msgSend(r0, r22);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_monitors));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r22 = r21->_context;
            r23 = [[r21->_metadata adNetworkClassName] retain];
            [r22 setUserInfoObject:r23 forKey:*0x100e97428];
            [r23 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)context {
    r0 = self->_context;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)addMonitor:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            sub_100822370(r0->_monitors, r2);
    }
    return;
}

-(void *)rootViewControllerProvider {
    r0 = self->_rootViewControllerProvider;
    return r0;
}

-(void *)metadata {
    r0 = self->_metadata;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_metadata, 0x0);
    objc_storeStrong((int64_t *)&self->_rootViewControllerProvider, 0x0);
    objc_storeStrong((int64_t *)&self->_monitors, 0x0);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    return;
}

@end