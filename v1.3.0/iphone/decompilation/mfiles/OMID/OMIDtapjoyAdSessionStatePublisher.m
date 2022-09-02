@implementation OMIDtapjoyAdSessionStatePublisher

-(void *)initWithCommandPublisher:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg2;
    r19 = [r21 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_commandPublisher, r21);
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            r20->_timestamp = d0;
            [r0 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)cleanupAdState {
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    self->_timestamp = d0;
    [r0 release];
    self->_adState = 0x0;
    return;
}

-(void)publishNativeViewStateWithCommand:(void *)arg2 timestamp:(double)arg3 {
    r2 = arg2;
    r0 = self;
    if (r0->_timestamp < d0) {
            r0->_adState = 0x1;
            [r0->_commandPublisher publishCommand:r2];
    }
    return;
}

-(void)publishAppState:(void *)arg2 {
    r21 = [[OMIDtapjoyCommand stringWithQuotesFromString:arg2] retain];
    r20 = [[OMIDtapjoyCommand commandWithName:@"setState"] retain];
    [r21 release];
    [self->_commandPublisher publishCommand:r20];
    [r20 release];
    return;
}

-(void)publishEmptyNativeViewStateWithCommand:(void *)arg2 timestamp:(double)arg3 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (r20->_timestamp < d8) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_adState));
            if (*(r20 + r8) != 0x2) {
                    *(r20 + r8) = 0x2;
                    [r20->_commandPublisher publishCommand:r19];
            }
    }
    [r19 release];
    return;
}

-(void *)commandPublisher {
    r0 = self->_commandPublisher;
    return r0;
}

-(void)publishDeviceVolume:(double)arg2 {
    r20 = [[NSString stringWithFormat:@"%.2f"] retain];
    r21 = [[OMIDtapjoyCommand commandWithName:@"setDeviceVolume"] retain];
    [self->_commandPublisher publishCommand:r21];
    [r21 release];
    [r20 release];
    return;
}

-(unsigned long long)adState {
    r0 = self->_adState;
    return r0;
}

-(double)timestamp {
    r0 = self;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_commandPublisher, 0x0);
    return;
}

@end