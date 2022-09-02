@implementation FBBDTapGestureRecognizer

-(void)touchesBegan:(void *)arg2 withEvent:(void *)arg3 {
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [r19 copy];
    r23 = [dispatch_get_global_queue(0x0, 0x0) retain];
    var_40 = r22;
    [r22 retain];
    var_38 = r21;
    [r21 retain];
    dispatch_async(r23, &var_68);
    [r23 release];
    [[&var_78 super] touchesBegan:r19 withEvent:r21];
    [r19 release];
    [var_38 release];
    [var_40 release];
    [r21 release];
    [r22 release];
    return;
}

-(void)touchesEnded:(void *)arg2 withEvent:(void *)arg3 {
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [r19 copy];
    r23 = [dispatch_get_global_queue(0x0, 0x0) retain];
    var_40 = r22;
    [r22 retain];
    var_38 = r21;
    [r21 retain];
    dispatch_async(r23, &var_68);
    [r23 release];
    [[&var_78 super] touchesCancelled:r19 withEvent:r21];
    [r19 release];
    [var_38 release];
    [var_40 release];
    [r21 release];
    [r22 release];
    return;
}

-(void)touchesMoved:(void *)arg2 withEvent:(void *)arg3 {
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [r19 copy];
    r23 = [dispatch_get_global_queue(0x0, 0x0) retain];
    var_40 = r22;
    [r22 retain];
    var_38 = r21;
    [r21 retain];
    dispatch_async(r23, &var_68);
    [r23 release];
    [[&var_78 super] touchesMoved:r19 withEvent:r21];
    [r19 release];
    [var_38 release];
    [var_40 release];
    [r21 release];
    [r22 release];
    return;
}

-(void)touchesCancelled:(void *)arg2 withEvent:(void *)arg3 {
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [r19 copy];
    r23 = [dispatch_get_global_queue(0x0, 0x0) retain];
    var_40 = r22;
    [r22 retain];
    var_38 = r21;
    [r21 retain];
    dispatch_async(r23, &var_68);
    [r23 release];
    [[&var_78 super] touchesCancelled:r19 withEvent:r21];
    [r19 release];
    [var_38 release];
    [var_40 release];
    [r21 release];
    [r22 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_bdTapGestureRecognizerDelegate);
    return;
}

-(void *)bdTapGestureRecognizerDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_bdTapGestureRecognizerDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setBdTapGestureRecognizerDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_bdTapGestureRecognizerDelegate, arg2);
    return;
}

@end