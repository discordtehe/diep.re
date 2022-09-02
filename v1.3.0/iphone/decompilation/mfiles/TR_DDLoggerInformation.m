@implementation TR_DDLoggerInformation

+(void *)informationWithLogger:(void *)arg2 andLevel:(unsigned long long)arg3 {
    r22 = [arg2 retain];
    r19 = [[TR_DDLoggerInformation alloc] initWithLogger:r22 andLevel:arg3];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithLogger:(void *)arg2 andLevel:(unsigned long long)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r21 = arg2;
    r20 = [r21 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            objc_storeStrong((int64_t *)&r22->_logger, r21);
            r22->_level = r19;
    }
    [r20 release];
    r0 = r22;
    return r0;
}

-(void *)logger {
    r0 = self->_logger;
    return r0;
}

-(unsigned long long)level {
    r0 = self->_level;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_logger, 0x0);
    return;
}

@end