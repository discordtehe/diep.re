@implementation GADStoreKitProductAnimationConfig

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)initWithDictionary:(void *)arg2 {
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
    r23 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:@"product_id"];
    r25 = r0;
    r20 = [r0 retain];
    r21 = [[r19 objectForKeyedSubscript:@"initial_app_store_box"] retain];
    r0 = [r19 objectForKeyedSubscript:@"final_app_store_box"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [NSString class];
    if ([r20 isKindOfClass:r2] != 0x0) {
            r27 = @selector(isKindOfClass:);
            [NSDictionary class];
            if (objc_msgSend(r21, r27) != 0x0) {
                    r27 = @selector(isKindOfClass:);
                    [NSDictionary class];
                    if (objc_msgSend(r22, r27) != 0x0) {
                            r0 = [[&var_60 super] init];
                            r23 = r0;
                            if (r23 != 0x0) {
                                    objc_storeStrong((int64_t *)&r23->_productIdentifier, r25);
                                    r0 = [r19 objectForKeyedSubscript:@"request_id"];
                                    r0 = [r0 retain];
                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_dismissalNotificationRequestIdentifier));
                                    r8 = *(r23 + r9);
                                    *(r23 + r9) = r0;
                                    [r8 release];
                                    sub_100800758();
                                    [r23 setInitialFrame:@"request_id"];
                                    sub_100800758();
                                    [r23 setFinalFrame:@"request_id"];
                            }
                            r23 = [r23 retain];
                            r24 = r23;
                    }
                    else {
                            r24 = 0x0;
                    }
            }
            else {
                    r24 = 0x0;
            }
    }
    else {
            r24 = 0x0;
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [r23 release];
    r0 = r24;
    return r0;
}

-(void *)productIdentifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_productIdentifier)), 0x0);
    return r0;
}

-(void *)dismissalNotificationRequestIdentifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_dismissalNotificationRequestIdentifier)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_dismissalNotificationRequestIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_productIdentifier, 0x0);
    return;
}

@end