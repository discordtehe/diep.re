@implementation GADExpandActionMonitorConfiguration

-(void *)initWithPresenter:(void *)arg2 referenceView:(void *)arg3 customCloseBlocked:(bool)arg4 clickProtection:(void *)arg5 analyticsLoggingEnabled:(bool)arg6 {
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
    r20 = arg6;
    r21 = arg5;
    r23 = arg4;
    r19 = [arg2 retain];
    r22 = [arg3 retain];
    r24 = [r21 retain];
    r0 = [[&var_50 super] init];
    r25 = r0;
    if (r25 != 0x0) {
            objc_storeWeak((int64_t *)&r25->_presenter, r19);
            objc_storeWeak((int64_t *)&r25->_referenceView, r22);
            [r25 setCustomCloseBlocked:r23];
            objc_storeStrong((int64_t *)&r25->_clickProtection, r21);
            *(int8_t *)(int64_t *)&r25->_analyticsLoggingEnabled = r20;
    }
    [r24 release];
    [r22 release];
    [r19 release];
    r0 = r25;
    return r0;
}

-(void *)initWithSwappableView:(void *)arg2 referenceView:(void *)arg3 customCloseBlocked:(bool)arg4 clickProtection:(void *)arg5 analyticsLoggingEnabled:(bool)arg6 {
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
    r20 = arg6;
    r21 = arg5;
    r23 = arg4;
    r19 = [arg2 retain];
    r22 = [arg3 retain];
    r24 = [r21 retain];
    r0 = [[&var_50 super] init];
    r25 = r0;
    if (r25 != 0x0) {
            objc_storeWeak((int64_t *)&r25->_swappableView, r19);
            objc_storeWeak((int64_t *)&r25->_referenceView, r22);
            [r25 setCustomCloseBlocked:r23];
            objc_storeStrong((int64_t *)&r25->_clickProtection, r21);
            *(int8_t *)(int64_t *)&r25->_analyticsLoggingEnabled = r20;
    }
    [r24 release];
    [r22 release];
    [r19 release];
    r0 = r25;
    return r0;
}

-(void)setCustomCloseBlocked:(bool)arg2 {
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r19 = [r0 boolForKey:*0x100e9b5c8] & arg2;
    [r0 release];
    *(int8_t *)(int64_t *)&self->_customCloseBlocked = r19;
    return;
}

-(void *)clickProtection {
    r0 = self->_clickProtection;
    return r0;
}

-(void *)presenter {
    r0 = objc_loadWeakRetained((int64_t *)&self->_presenter);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)referenceView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_referenceView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setReferenceView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_referenceView, arg2);
    return;
}

-(void *)swappableView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_swappableView);
    r0 = [r0 autorelease];
    return r0;
}

-(bool)customCloseBlocked {
    r0 = *(int8_t *)(int64_t *)&self->_customCloseBlocked;
    return r0;
}

-(bool)analyticsLoggingEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_analyticsLoggingEnabled;
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_referenceView);
    objc_destroyWeak((int64_t *)&self->_swappableView);
    objc_destroyWeak((int64_t *)&self->_presenter);
    objc_storeStrong((int64_t *)&self->_clickProtection, 0x0);
    return;
}

@end