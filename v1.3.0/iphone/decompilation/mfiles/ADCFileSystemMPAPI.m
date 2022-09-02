@implementation ADCFileSystemMPAPI

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = dispatch_queue_create("com.adcolony.mp-file-processor", 0x0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_serialQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)unpackBundle:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [r2 retain];
    r0 = [ADCFilepathContext alloc];
    r0 = [r0 initWithMessage:r19];
    r20 = r0;
    if ([r0 isValid] != 0x0) {
            r21 = r21->_serialQueue;
            var_30 = [r20 retain];
            var_28 = [r19 retain];
            dispatch_async(r21, &var_50);
            [var_28 release];
            [var_30 release];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)registerHandlers {
    r19 = [self new];
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(unpackBundle:) forMessageType:@"FileSystem.unpack_bundle"];
    [r0 release];
    [r19 release];
    return;
}

+(void)load {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r2 selector:r3 name:r4 object:r5];
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_serialQueue, 0x0);
    return;
}

@end