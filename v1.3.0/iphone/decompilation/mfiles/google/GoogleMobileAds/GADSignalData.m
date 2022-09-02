@implementation GADSignalData

-(void *)initWithSignalString:(void *)arg2 signalDictionary:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_signals));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_signalDictionary));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r20 objectForKeyedSubscript:*0x100e95cf0];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_requestIdentifier));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r23 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)init {
    r0 = [NSDictionary dictionaryWithObjects:&stack[-40] forKeys:&stack[-40] count:0x0];
    r20 = [r0 retain];
    r19 = [self initWithSignalString:@"" signalDictionary:r20];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self retain];
    r0 = [r0 initWithSignalString:r0->_signals signalDictionary:r0->_signalDictionary];
    return r0;
}

-(void *)signals {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_signals)), 0x0);
    return r0;
}

-(void *)requestIdentifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_requestIdentifier)), 0x0);
    return r0;
}

-(void *)signalDictionary {
    r0 = self->_signalDictionary;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_signalDictionary, 0x0);
    objc_storeStrong((int64_t *)&self->_requestIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_signals, 0x0);
    return;
}

@end