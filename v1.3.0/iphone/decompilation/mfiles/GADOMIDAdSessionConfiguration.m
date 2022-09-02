@implementation GADOMIDAdSessionConfiguration

-(void *)initWithImpressionOwner:(unsigned long long)arg2 videoEventsOwner:(unsigned long long)arg3 isolateVerificationScripts:(bool)arg4 error:(void * *)arg5 {
    r31 = r31 - 0x70;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_20 = arg2;
    var_28 = arg3;
    var_29 = arg4;
    var_38 = arg5;
    r0 = [[&var_48 super] init];
    var_10 = r0;
    objc_storeStrong(r29 - 0x10, r0);
    if (var_10 != 0x0) {
            if (var_20 != 0x3 && var_20 != 0x0) {
                    if (var_28 == 0x0) {
                            var_28 = 0x3;
                    }
                    var_10->_impressionOwner = var_20;
                    var_10->_videoEventsOwner = var_28;
                    *(int8_t *)(int64_t *)&var_10->_isolateVerificationScripts = var_29 & 0x1;
                    var_8 = [var_10 retain];
            }
            else {
                    [GADOMIDError setGADOMIDErrorFor:var_38 code:0x5de message:@"Impression owner can not be none."];
                    var_8 = 0x0;
            }
    }
    else {
            var_8 = 0x0;
    }
    objc_storeStrong(r29 - 0x10, 0x0);
    r0 = var_8;
    return r0;
}

-(unsigned long long)impressionOwner {
    r0 = self->_impressionOwner;
    return r0;
}

-(void *)initWithImpressionOwner:(unsigned long long)arg2 videoEventsOwner:(unsigned long long)arg3 error:(void * *)arg4 {
    var_30 = [[self initWithImpressionOwner:arg2 videoEventsOwner:arg3 isolateVerificationScripts:0x1 error:arg4] retain];
    objc_storeStrong(&saved_fp - 0x8, 0x0);
    r0 = var_30;
    return r0;
}

-(void)setImpressionOwner:(unsigned long long)arg2 {
    self->_impressionOwner = arg2;
    return;
}

-(unsigned long long)videoEventsOwner {
    r0 = self->_videoEventsOwner;
    return r0;
}

-(void)setVideoEventsOwner:(unsigned long long)arg2 {
    self->_videoEventsOwner = arg2;
    return;
}

-(bool)isolateVerificationScripts {
    r0 = *(int8_t *)(int64_t *)&self->_isolateVerificationScripts & 0x1;
    return r0;
}

-(void)setIsolateVerificationScripts:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isolateVerificationScripts = arg2;
    return;
}

@end