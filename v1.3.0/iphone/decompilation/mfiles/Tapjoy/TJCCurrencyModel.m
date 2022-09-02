@implementation TJCCurrencyModel

-(void *)currencyID {
    r0 = self->_currencyID;
    return r0;
}

-(void)setCurrencyID:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_currencyID, arg2);
    return;
}

-(void *)init {
    r31 = r31 - 0x70;
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
    r0 = [[&var_50 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = @class(NSUserDefaults);
            r0 = [r0 standardUserDefaults];
            r0 = [r0 retain];
            r20 = [[r0 objectForKey:@"TJC_CURRENCY_KEY_NAME"] retain];
            [r0 release];
            r0 = @class(NSUserDefaults);
            r0 = [r0 standardUserDefaults];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 objectForKey:@"TJC_POINT_ID_KEY_NAME"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_currencyID));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r22 release];
            r23 = [[NSUserDefaults standardUserDefaults] retain];
            r0 = @(0x0);
            r29 = r29;
            [r0 retain];
            [r23 setObject:r2 forKey:r3];
            [r24 release];
            [r23 release];
            if (r20 == 0x0) {
                    r22 = @selector(setObject:forKey:);
                    r20 = @"Points";
                    [r20 retain];
                    r21 = [[NSUserDefaults standardUserDefaults] retain];
                    [[NSString stringWithFormat:r2] retain];
                    objc_msgSend(r21, r22);
                    [r23 release];
                    [r21 release];
            }
            [r19 setCurrencyName:r20];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void *)currencyName {
    r0 = self->_currencyName;
    return r0;
}

-(void)setCurrencyName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_currencyName, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_currencyName, 0x0);
    objc_storeStrong((int64_t *)&self->_currencyID, 0x0);
    return;
}

@end