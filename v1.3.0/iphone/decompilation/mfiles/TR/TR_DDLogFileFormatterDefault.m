@implementation TR_DDLogFileFormatterDefault

-(void *)init {
    r0 = [self initWithDateFormatter:0x0];
    return r0;
}

-(void *)initWithDateFormatter:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = [r21 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            if (r19 != 0x0) {
                    objc_storeStrong((int64_t *)&r20->_dateFormatter, r21);
            }
            else {
                    r22 = @selector(init);
                    r0 = [NSDateFormatter alloc];
                    r0 = objc_msgSend(r0, r22);
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_dateFormatter));
                    r8 = *(r20 + r21);
                    *(r20 + r21) = r0;
                    [r8 release];
                    [*(r20 + r21) setFormatterBehavior:0x410];
                    [*(r20 + r21) setDateFormat:@"yyyy/MM/dd HH:mm:ss:SSS"];
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)formatLogMessage:(void *)arg2 {
    r20 = self->_dateFormatter;
    r21 = arg2->_timestamp;
    r23 = [arg2 retain];
    r20 = [[r20 stringFromDate:r21] retain];
    [r23 release];
    r19 = [[NSString stringWithFormat:r2] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_dateFormatter, 0x0);
    return;
}

@end