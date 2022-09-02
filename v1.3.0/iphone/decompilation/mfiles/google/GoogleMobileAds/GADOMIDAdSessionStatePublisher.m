@implementation GADOMIDAdSessionStatePublisher

-(void *)initWithCommandPublisher:(void *)arg2 {
    r31 = r31 - 0x50;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x18, arg2);
    r0 = [[&var_28 super] init];
    var_8 = r0;
    objc_storeStrong(r29 - 0x8, r0);
    if (var_8 != 0x0) {
            objc_storeStrong((int64_t *)&var_8->_commandPublisher, 0x0);
            r0 = [NSDate date];
            r29 = r29;
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            var_8->_timestamp = d0;
            [r0 release];
    }
    var_40 = [var_8 retain];
    objc_storeStrong(r29 - 0x18, 0x0);
    objc_storeStrong(r29 - 0x8, 0x0);
    r0 = var_40;
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

-(void)publishNativeViewStateWithHierarchy:(void *)arg2 timestamp:(double)arg3 {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_8 = self;
    objc_storeStrong(r29 - 0x18, arg2);
    if (d0 > var_8->_timestamp) {
            var_8->_adState = 0x1;
            if (0x0 != 0x0) {
                    *(&stack[-96] + 0x8) = 0x0;
                    stack[-96] = 0x0;
                    r0 = [GADOMIDCommand commandWithName:@"setNativeViewHierarchy"];
                    r29 = r29;
                    var_28 = [r0 retain];
                    [0x0 release];
            }
            else {
                    r0 = [GADOMIDCommand errorCommandWithType:0x1 errorMessage:[@"Bad view hierarchy data for GADOMID geometry event" retain]];
                    r29 = r29;
                    var_28 = [r0 retain];
                    [0x0 release];
                    objc_storeStrong(&var_30, 0x0);
            }
            [var_8->_commandPublisher publishCommand:var_28];
            objc_storeStrong(&var_28, 0x0);
    }
    objc_storeStrong(r29 - 0x18, 0x0);
    return;
}

-(void)publishEmptyNativeViewStateWithHierarchy:(void *)arg2 timestamp:(double)arg3 {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_8 = self;
    objc_storeStrong(r29 - 0x18, arg2);
    if (d0 > var_8->_timestamp && var_8->_adState != 0x2) {
            var_8->_adState = 0x2;
            if (0x0 != 0x0) {
                    *(&stack[-96] + 0x8) = 0x0;
                    stack[-96] = 0x0;
                    r0 = [GADOMIDCommand commandWithName:@"setNativeViewHierarchy"];
                    r29 = r29;
                    var_28 = [r0 retain];
                    [0x0 release];
            }
            else {
                    r0 = [GADOMIDCommand errorCommandWithType:0x1 errorMessage:[@"Bad hidden view data for GADOMID geometry event" retain]];
                    r29 = r29;
                    var_28 = [r0 retain];
                    [0x0 release];
                    objc_storeStrong(&var_30, 0x0);
            }
            [var_8->_commandPublisher publishCommand:var_28];
            objc_storeStrong(&var_28, 0x0);
    }
    objc_storeStrong(r29 - 0x18, 0x0);
    return;
}

-(void)publishDeviceVolume:(double)arg2 {
    stack[-80] = d0;
    r0 = [NSString stringWithFormat:@"%.2f", r3];
    r0 = [r0 retain];
    *(&stack[-80] + 0x8) = 0x0;
    stack[-80] = r0;
    [self->_commandPublisher publishCommand:[[GADOMIDCommand commandWithName:@"setDeviceVolume"] retain]];
    objc_storeStrong(&var_28, 0x0);
    objc_storeStrong(&var_20, 0x0);
    return;
}

-(void)publishAppState:(void *)arg2 {
    objc_storeStrong(&saved_fp - 0x18, arg2);
    r0 = [GADOMIDCommand stringWithQuotesFromString:0x0];
    r0 = [r0 retain];
    *(&stack[-80] + 0x8) = 0x0;
    stack[-80] = r0;
    [self->_commandPublisher publishCommand:[[GADOMIDCommand commandWithName:@"setState"] retain]];
    objc_storeStrong(&var_28, 0x0);
    objc_storeStrong(&var_20, 0x0);
    objc_storeStrong(&saved_fp - 0x18, 0x0);
    return;
}

-(void *)commandPublisher {
    r0 = self->_commandPublisher;
    return r0;
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