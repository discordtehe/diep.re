@implementation ADCAudioPlayer

-(void *)initWithContentsOfURL:(void *)arg2 error:(void * *)arg3 identifier:(unsigned long long)arg4 adSession:(void *)arg5 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg5;
    r20 = arg4;
    r24 = [arg2 retain];
    r21 = [r19 retain];
    r0 = [[&var_40 super] initWithContentsOfURL:r24 error:arg3];
    r22 = r0;
    [r24 release];
    if (r22 != 0x0) {
            r22->_identifier = r20;
            objc_storeStrong((int64_t *)&r22->_session, r19);
    }
    [r21 release];
    r0 = r22;
    return r0;
}

-(unsigned long long)identifier {
    r0 = self->_identifier;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_session, 0x0);
    return;
}

-(void *)session {
    r0 = self->_session;
    return r0;
}

@end