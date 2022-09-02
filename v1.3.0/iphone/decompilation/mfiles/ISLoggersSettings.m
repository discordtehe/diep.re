@implementation ISLoggersSettings

-(void *)initWithServer:(long long)arg2 publisher:(long long)arg3 console:(long long)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r20 = arg3;
    r21 = arg2;
    r0 = [[&var_30 super] init];
    if (r0 != 0x0) {
            r0->_server = r21;
            r0->_publisher = r20;
            r0->_console = r19;
    }
    return r0;
}

-(void *)description {
    [self server];
    [self publisher];
    [self console];
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(bool)isEqual:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != r20) {
            [ISLoggersSettings class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r20 = [r20 isEqualToLoggerSettings:r19];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isEqualToLoggerSettings:(void *)arg2 {
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
    r19 = arg2;
    r20 = self;
    if (r19 != 0x0) {
            r22 = [r19 retain];
            if ([r20 server] == [r19 server]) {
                    if (CPU_FLAGS & E) {
                            r25 = 0x1;
                    }
            }
            r23 = [r20 publisher];
            r21 = [r19 publisher];
            r8 = &@selector(machineModel);
            r24 = *(r8 + 0xb70);
            r20 = objc_msgSend(r20, r24);
            r19 = objc_msgSend(r19, r24);
            [r22 release];
            if (r20 == r19) {
                    r8 = &@selector(machineModel);
                    if (CPU_FLAGS & E) {
                            r8 = 0x1;
                    }
            }
            if (r23 == r21) {
                    if (CPU_FLAGS & E) {
                            r9 = 0x1;
                    }
            }
            r0 = r25 & r9 & r8;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(long long)server {
    r0 = self->_server;
    return r0;
}

-(long long)console {
    r0 = self->_console;
    return r0;
}

-(long long)publisher {
    r0 = self->_publisher;
    return r0;
}

@end