@implementation FBAdReportingItem

-(void)addSubItem:(void *)arg2 {
    [arg2 retain];
    r0 = [self items];
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r21 release];
    [r19 release];
    return;
}

-(void *)subItems {
    r0 = [self items];
    r0 = [r0 retain];
    r20 = [r0 copy];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)initWithIdentifier:(void *)arg2 title:(void *)arg3 heading:(void *)arg4 subItems:(void *)arg5 {
    r31 = r31 - 0x70;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r24 = arg4;
    r25 = arg3;
    r26 = arg2;
    r19 = [arg2 retain];
    r20 = [r25 retain];
    r21 = [r24 retain];
    r23 = [arg5 retain];
    r0 = [[&var_60 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r22->_identifier, r26);
            objc_storeStrong((int64_t *)&r22->_title, r25);
            objc_storeStrong((int64_t *)&r22->_heading, r24);
            if (r23 != 0x0) {
                    r24 = [r23 mutableCopy];
                    r26 = 0x0;
                    r25 = 0x1;
            }
            else {
                    r24 = [NSMutableArray new];
                    r25 = 0x0;
                    r26 = 0x1;
            }
            objc_storeStrong((int64_t *)&r22->_items, r24);
            if (r26 != 0x0) {
                    [r24 release];
            }
            if (r25 != 0x0) {
                    [r24 release];
            }
    }
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_items, 0x0);
    objc_storeStrong((int64_t *)&self->_heading, 0x0);
    objc_storeStrong((int64_t *)&self->_title, 0x0);
    objc_storeStrong((int64_t *)&self->_identifier, 0x0);
    return;
}

-(void *)title {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_title)), 0x0);
    return r0;
}

-(void *)identifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_identifier)), 0x0);
    return r0;
}

-(void *)heading {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_heading)), 0x0);
    return r0;
}

-(void *)items {
    r0 = self->_items;
    return r0;
}

-(void)setItems:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_items, arg2);
    return;
}

@end