@implementation ADCView

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r20 = _cmd;
    r19 = self;
    if ([r19 isMemberOfClass:[ADCView class]] != 0x0) {
            [r19 doesNotRecognizeSelector:r20];
            r20 = 0x0;
    }
    else {
            r0 = [[&var_40 super] initWithFrame:r2];
            r19 = [r0 retain];
            r20 = r19;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = _cmd;
    r19 = self;
    if ([r19 isMemberOfClass:[ADCView class]] != 0x0) {
            [r19 doesNotRecognizeSelector:r20];
            r20 = 0x0;
    }
    else {
            r0 = [[&var_20 super] init];
            r19 = r0;
            if (r19 != 0x0) {
                    [r19 setAutoresizingMask:0x12];
            }
            r19 = [r19 retain];
            r20 = r19;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = _cmd;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 isMemberOfClass:[ADCView class]] != 0x0) {
            [r20 doesNotRecognizeSelector:r21];
            r21 = 0x0;
    }
    else {
            r0 = [[&var_30 super] initWithCoder:r19];
            r20 = r0;
            if (r20 != 0x0) {
                    [r20 setAutoresizingMask:0x12];
            }
            r20 = [r20 retain];
            r21 = r20;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)touchesBegan:(void *)arg2 withEvent:(void *)arg3 {
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
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    [r20 tag];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCView touchesBegan:withEvent:]" line:0x30 withFormat:@"Touches began in view with id: %ld"];
    r3 = r21;
    [[&var_50 super] touchesBegan:r19 withEvent:r3];
    [r21 release];
    r21 = (int64_t *)&r20->_touchDelegate;
    r23 = objc_loadWeakRetained(r21);
    if (r23 != 0x0) {
            r0 = objc_loadWeakRetained(r21);
            r25 = [r0 respondsToSelector:@selector(view:touchesBegan:), r3];
            [r0 release];
            [r23 release];
            if (r25 != 0x0) {
                    r0 = objc_loadWeakRetained(r21);
                    [r0 view:r20 touchesBegan:r19];
                    [r0 release];
            }
    }
    [r19 release];
    return;
}

-(void)touchesEnded:(void *)arg2 withEvent:(void *)arg3 {
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
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    [r20 tag];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCView touchesEnded:withEvent:]" line:0x42 withFormat:@"Touches ended in view with id: %ld"];
    r3 = r21;
    [[&var_50 super] touchesEnded:r19 withEvent:r3];
    [r21 release];
    r21 = (int64_t *)&r20->_touchDelegate;
    r23 = objc_loadWeakRetained(r21);
    if (r23 != 0x0) {
            r0 = objc_loadWeakRetained(r21);
            r25 = [r0 respondsToSelector:@selector(view:touchesEnded:), r3];
            [r0 release];
            [r23 release];
            if (r25 != 0x0) {
                    r0 = objc_loadWeakRetained(r21);
                    [r0 view:r20 touchesEnded:r19];
                    [r0 release];
            }
    }
    [r19 release];
    return;
}

-(void)touchesMoved:(void *)arg2 withEvent:(void *)arg3 {
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
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    [r20 tag];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCView touchesMoved:withEvent:]" line:0x39 withFormat:@"Touches moved in view with id: %ld"];
    r3 = r21;
    [[&var_50 super] touchesMoved:r19 withEvent:r3];
    [r21 release];
    r21 = (int64_t *)&r20->_touchDelegate;
    r23 = objc_loadWeakRetained(r21);
    if (r23 != 0x0) {
            r0 = objc_loadWeakRetained(r21);
            r25 = [r0 respondsToSelector:@selector(view:touchesMoved:), r3];
            [r0 release];
            [r23 release];
            if (r25 != 0x0) {
                    r0 = objc_loadWeakRetained(r21);
                    [r0 view:r20 touchesMoved:r19];
                    [r0 release];
            }
    }
    [r19 release];
    return;
}

-(void *)touchDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_touchDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)touchesCancelled:(void *)arg2 withEvent:(void *)arg3 {
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
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    [r20 tag];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCView touchesCancelled:withEvent:]" line:0x4b withFormat:@"Touches cancelled in view with id: %ld"];
    r3 = r21;
    [[&var_50 super] touchesCancelled:r19 withEvent:r3];
    [r21 release];
    r21 = (int64_t *)&r20->_touchDelegate;
    r23 = objc_loadWeakRetained(r21);
    if (r23 != 0x0) {
            r0 = objc_loadWeakRetained(r21);
            r25 = [r0 respondsToSelector:@selector(view:touchesCancelled:), r3];
            [r0 release];
            [r23 release];
            if (r25 != 0x0) {
                    r0 = objc_loadWeakRetained(r21);
                    [r0 view:r20 touchesCancelled:r19];
                    [r0 release];
            }
    }
    [r19 release];
    return;
}

-(void)setTouchDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_touchDelegate, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_touchDelegate);
    return;
}

@end