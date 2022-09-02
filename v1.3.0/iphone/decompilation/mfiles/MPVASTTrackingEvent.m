@implementation MPVASTTrackingEvent

-(void *)initWithDictionary:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] initWithDictionary:r19];
    r20 = r0;
    if (r0 == 0x0) goto loc_1004731b8;

loc_100473100:
    r0 = [r19 objectForKeyedSubscript:@"event"];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_eventType));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    r0 = [r20 generateModelFromDictionaryValue:r19 modelProvider:0x100e7e3e8];
    r29 = r29;
    r0 = [r0 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_URL));
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    if (*(r20 + r22) == 0x0) goto loc_1004731c8;

loc_100473180:
    r0 = [r20 generateModelFromDictionaryValue:r19 modelProvider:0x100e7e408];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_progressOffset));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    goto loc_1004731b8;

loc_1004731b8:
    r21 = [r20 retain];
    goto loc_1004731cc;

loc_1004731cc:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_1004731c8:
    r21 = 0x0;
    goto loc_1004731cc;
}

-(void *)eventType {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_eventType)), 0x0);
    return r0;
}

-(void *)URL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_URL)), 0x0);
    return r0;
}

-(void *)progressOffset {
    r0 = self->_progressOffset;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_progressOffset, 0x0);
    objc_storeStrong((int64_t *)&self->_URL, 0x0);
    objc_storeStrong((int64_t *)&self->_eventType, 0x0);
    return;
}

@end