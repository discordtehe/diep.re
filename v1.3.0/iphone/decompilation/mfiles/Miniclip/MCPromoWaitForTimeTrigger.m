@implementation MCPromoWaitForTimeTrigger

-(void)setup:(void *)arg2 {
    [self setup:arg2 withError:&var_8];
    return;
}

-(void)setup:(void *)arg2 withError:(void * *)arg3 {
    r22 = [NSMutableDictionary dictionary];
    r20 = [NSMutableDictionary dictionaryWithDictionary:arg2];
    r23 = [NSArray arrayWithObject:r20];
    [self transferDataFromOldConfig:r20 toNew:r22];
    [r22 setValue:r23 forKey:@"activationDates"];
    [[&var_40 super] setup:r22 withError:arg3];
    return;
}

-(void)transferDataFromOldConfig:(void *)arg2 toNew:(void *)arg3 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r20 = arg3;
    r19 = arg2;
    r21 = @selector(objectForKey:);
    r26 = objc_msgSend(r19, r21);
    r25 = objc_msgSend(r19, r21);
    r24 = objc_msgSend(r19, r21);
    r23 = objc_msgSend(r19, r21);
    r22 = objc_msgSend(r19, r21);
    r21 = objc_msgSend(r19, r21);
    if (r26 != 0x0) {
            [r20 setValue:r26 forKey:@"maxActivations"];
            [r19 removeObjectForKey:r2];
    }
    if (r25 != 0x0) {
            [r20 setValue:r25 forKey:@"onActivationEvents"];
            objc_msgSend(r19, *0x101137980);
    }
    if (r24 != 0x0) {
            [r20 setValue:r24 forKey:@"enableEvent"];
            objc_msgSend(r19, *0x101137980);
    }
    if (r23 != 0x0) {
            [r20 setValue:r23 forKey:@"disableEvent"];
            objc_msgSend(r19, *0x101137980);
    }
    if (r22 != 0x0) {
            [r20 setValue:r22 forKey:@"resetEvent"];
            objc_msgSend(r19, *0x101137980);
    }
    if (r21 != 0x0) {
            [r20 setValue:r21 forKey:@"resetOnDisable"];
            objc_msgSend(r19, *0x101137980);
    }
    return;
}

@end