@implementation GADJSCoreLocalStorage

-(void *)itemForKey:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [GADSQLStorage sharedInstance];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r21 = r0;
            r0 = sub_10084acf0(r0, &var_48);
            r29 = r29;
            r23 = [r0 retain];
            r25 = [var_48 retain];
            r24 = 0x0;
            if (r25 == 0x0) {
                    r24 = [[r23 objectForKeyedSubscript:r2] retain];
            }
            [r23 release];
            [r25 release];
            [r21 release];
            [r20 release];
    }
    else {
            r24 = 0x0;
    }
    [r19 release];
    r0 = [r24 autorelease];
    return r0;
}

-(void)clear {
    r0 = [GADSQLStorage sharedInstance];
    r0 = [r0 retain];
    [r0 setObject:@"" forKeyedSubscript:*0x100e9be40];
    [r0 release];
    return;
}

-(void)setItemForKey:(void *)arg2 item:(void *)arg3 {
    r31 = r31 - 0x60;
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
    r29 = &saved_fp;
    r23 = arg3;
    r19 = [arg2 retain];
    if (r19 != 0x0 && r23 != 0x0) {
            [r23 retain];
            r0 = [GADSQLStorage sharedInstance];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 objectForKeyedSubscript:*0x100e9be40];
            r0 = [r0 retain];
            r21 = r0;
            r0 = sub_10084acf0(r0, &var_48);
            r24 = [r0 retain];
            r0 = [NSMutableDictionary alloc];
            r0 = [r0 initWithDictionary:r24];
            r26 = r0;
            sub_100822058(r0, r19, r23);
            [r25 release];
            r0 = sub_10084aae0(r26, &var_50);
            r25 = [r0 retain];
            r23 = [var_50 retain];
            if (r25 != 0x0) {
                    asm { ccmp       x23, #0x0, #0x0, ne };
            }
            if (!CPU_FLAGS & NE) {
                    [r20 setObject:r25 forKeyedSubscript:*0x100e9be40];
            }
            [r25 release];
            [r26 release];
            [r24 release];
            [r23 release];
            [r21 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)removeItemForKey:(void *)arg2 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [GADSQLStorage sharedInstance];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 objectForKeyedSubscript:*0x100e9be40];
            r0 = [r0 retain];
            r21 = r0;
            r0 = sub_10084acf0(r0, &var_58);
            r29 = r29;
            r23 = [r0 retain];
            r24 = [var_58 retain];
            if (r24 == 0x0) {
                    r0 = [NSMutableDictionary alloc];
                    r0 = [r0 initWithDictionary:r23];
                    r25 = r0;
                    sub_1008220c0(r0, r19);
                    r0 = sub_10084aae0(r25, &var_60);
                    r27 = [r0 retain];
                    r26 = [var_60 retain];
                    [r24 release];
                    if (r27 != 0x0) {
                            asm { ccmp       x26, #0x0, #0x0, ne };
                    }
                    if (!CPU_FLAGS & NE) {
                            [r20 setObject:r27 forKeyedSubscript:*0x100e9be40];
                    }
                    [r27 release];
                    [r25 release];
                    r24 = r26;
            }
            [r23 release];
            [r24 release];
            [r21 release];
            [r20 release];
    }
    [r19 release];
    return;
}

@end