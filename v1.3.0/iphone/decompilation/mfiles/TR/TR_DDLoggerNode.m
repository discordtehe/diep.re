@implementation TR_DDLoggerNode

-(void *)initWithLogger:(void *)arg2 loggerQueue:(void *)arg3 level:(unsigned long long)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r21 = arg3;
    r24 = arg2;
    r20 = [r24 retain];
    r22 = [r21 retain];
    r0 = [[&var_40 super] init];
    r23 = r0;
    if (r23 != 0x0) {
            objc_storeStrong((int64_t *)&r23->_logger, r24);
            if (r22 != 0x0) {
                    objc_storeStrong((int64_t *)&r23->_loggerQueue, r21);
            }
            r23->_level = r19;
    }
    [r22 release];
    [r20 release];
    r0 = r23;
    return r0;
}

+(void *)nodeWithLogger:(void *)arg2 loggerQueue:(void *)arg3 level:(unsigned long long)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [[TR_DDLoggerNode alloc] initWithLogger:r21 loggerQueue:r20 level:arg4];
    [r20 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(void *)logger {
    r0 = self->_logger;
    return r0;
}

-(unsigned long long)level {
    r0 = self->_level;
    return r0;
}

-(void *)loggerQueue {
    r0 = self->_loggerQueue;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_loggerQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_logger, 0x0);
    return;
}

@end