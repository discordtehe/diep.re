@implementation ServerLoggerEntry

-(void *)initWithMessage:(void *)arg2 level:(int)arg3 tag:(int)arg4 {
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
    r23 = arg4;
    r22 = arg3;
    r21 = arg2;
    r19 = [r21 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            *(int32_t *)(int64_t *)&r20->_tag = r23;
            *(int32_t *)(int64_t *)&r20->_level = r22;
            objc_storeStrong((int64_t *)&r20->_message, r21);
            r0 = [r20 createTimestamp];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_timestamp));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)createTimestamp {
    r0 = [NSDateFormatter alloc];
    r0 = [r0 init];
    [r0 setDateFormat:@"yyyy-MM-dd 'at' HH:mm:ss"];
    r20 = [[NSDate dateWithTimeIntervalSinceReferenceDate:@"yyyy-MM-dd 'at' HH:mm:ss"] retain];
    r21 = [[r0 stringFromDate:r20] retain];
    [r20 release];
    [r0 release];
    r0 = [r21 autorelease];
    return r0;
}

-(int)tag {
    r0 = *(int32_t *)(int64_t *)&self->_tag;
    return r0;
}

-(void *)convertToDic {
    r21 = self->_message;
    r24 = [[NSNumber alloc] initWithInt:*(int32_t *)(int64_t *)&self->_tag];
    r19 = [[NSNumber alloc] initWithInt:*(int32_t *)(int64_t *)&self->_level];
    r20 = [[NSDictionary dictionaryWithObjectsAndKeys:r21] retain];
    [r19 release];
    [r24 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setTag:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_tag = arg2;
    return;
}

-(int)level {
    r0 = *(int32_t *)(int64_t *)&self->_level;
    return r0;
}

-(void *)timestamp {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_timestamp)), 0x1);
    return r0;
}

-(void)setTimestamp:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)setLevel:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_level = arg2;
    return;
}

-(void *)message {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_message)), 0x1);
    return r0;
}

-(void)setMessage:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_timestamp, 0x0);
    objc_storeStrong((int64_t *)&self->_message, 0x0);
    return;
}

@end