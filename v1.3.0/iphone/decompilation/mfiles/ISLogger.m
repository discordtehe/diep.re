@implementation ISLogger

-(void)log:(void *)arg2 level:(int)arg3 tag:(int)arg4 {
    return;
}

-(void *)initWithLevel:(int)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setLogLevel:r19];
    }
    r0 = r20;
    return r0;
}

-(void)setLogLevel:(int)arg2 {
    *(int32_t *)(int64_t *)&self->logLevel = arg2;
    return;
}

-(int)getLogLevel {
    r0 = *(int32_t *)(int64_t *)&self->logLevel;
    return r0;
}

-(void *)loggerTagToString:(int)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = @"INTERNAL";
    [r19 retain];
    if (r20 > 0x7) goto loc_1006e7dd8;

loc_1006e7d5c:
    r19 = @"INTERNAL";
    goto *0x1006e7de8[sign_extend_64(*(int32_t *)(0x1006e7de8 + r20 * 0x4)) + 0x1006e7de8];

loc_1006e7d74:
    r19 = @"API";
    goto loc_1006e7dc4;

loc_1006e7dc4:
    [r19 retain];
    [@"INTERNAL" release];
    goto loc_1006e7dd8;

loc_1006e7dd8:
    r0 = [r19 autorelease];
    return r0;

loc_1006e7d80:
    r19 = @"DELEGATE";
    goto loc_1006e7dc4;

loc_1006e7d8c:
    r19 = @"ADAPTER_API";
    goto loc_1006e7dc4;

loc_1006e7d98:
    r19 = @"ADAPTER_DELEGATE";
    goto loc_1006e7dc4;

loc_1006e7dbc:
    r19 = @"NETWORK";
    goto loc_1006e7dc4;

loc_1006e7da4:
    r19 = @"NATIVE";
    goto loc_1006e7dc4;

loc_1006e7db0:
    r19 = @"EVENT";
    goto loc_1006e7dc4;
}

@end