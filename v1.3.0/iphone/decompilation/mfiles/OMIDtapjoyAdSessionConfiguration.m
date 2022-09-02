@implementation OMIDtapjoyAdSessionConfiguration

-(void *)initWithImpressionOwner:(unsigned long long)arg2 videoEventsOwner:(unsigned long long)arg3 isolateVerificationScripts:(bool)arg4 error:(void * *)arg5 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg5;
    r21 = arg4;
    r23 = arg3;
    r22 = arg2;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 == 0x0) goto loc_1009622c8;

loc_100962298:
    if (r22 == 0x3 || r22 == 0x0) goto loc_1009622a4;

loc_1009622d0:
    r8 = 0x3;
    if (r23 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r23;
            }
            else {
                    r8 = 0x3;
            }
    }
    r19->_impressionOwner = r22;
    r19->_videoEventsOwner = r8;
    *(int8_t *)(int64_t *)&r19->_isolateVerificationScripts = r21;
    r20 = [r19 retain];
    goto loc_10096230c;

loc_10096230c:
    [r19 release];
    r0 = r20;
    return r0;

loc_1009622a4:
    [OMIDtapjoyError setOMIDErrorFor:r20 code:0x5de message:@"Impression owner can not be none."];
    goto loc_1009622c8;

loc_1009622c8:
    r20 = 0x0;
    goto loc_10096230c;
}

-(void *)initWithImpressionOwner:(unsigned long long)arg2 videoEventsOwner:(unsigned long long)arg3 error:(void * *)arg4 {
    r0 = [self initWithImpressionOwner:arg2 videoEventsOwner:arg3 isolateVerificationScripts:0x1 error:arg4];
    return r0;
}

-(unsigned long long)impressionOwner {
    r0 = self->_impressionOwner;
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