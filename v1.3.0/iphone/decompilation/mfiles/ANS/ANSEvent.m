@implementation ANSEvent

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [NSDate alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_timestamp));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = sub_100096bfc();
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_identifier));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)name {
    objc_retainAutorelease(@"unknown");
    return @"unknown";
}

-(void *)dictionaryRepresentation {
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    return r0;
}

-(bool)triggersFlush {
    return 0x0;
}

-(void *)timestamp {
    r0 = self->_timestamp;
    return r0;
}

-(void *)identifier {
    r0 = self->_identifier;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_identifier, 0x0);
    objc_storeStrong((int64_t *)&self->_timestamp, 0x0);
    return;
}

@end