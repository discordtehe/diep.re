@implementation GADMuteThisAdReason

-(void *)initWithDictionary:(void *)arg2 {
    r31 = r31 - 0x50;
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
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 == 0x0) goto loc_10089a818;

loc_10089a728:
    r0 = [r19 objectForKeyedSubscript:@"ping_url"];
    r0 = [r0 retain];
    r24 = @selector(copy);
    r21 = objc_msgSend(r0, r24);
    [r0 release];
    r0 = [r19 objectForKeyedSubscript:@"reason"];
    r29 = r29;
    r0 = [r0 retain];
    r22 = objc_msgSend(r0, r24);
    [r0 release];
    if (r21 != 0x0) {
            asm { ccmp       x22, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) goto loc_10089a7c4;

loc_10089a7ac:
    [r22 release];
    [r21 release];
    r21 = 0x0;
    goto loc_10089a824;

loc_10089a824:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_10089a7c4:
    r0 = [NSURL URLWithString:r21];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_muteThisAdURL));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_reasonDescription));
    r0 = *(r20 + r8);
    *(r20 + r8) = r22;
    [r0 release];
    [r21 release];
    goto loc_10089a818;

loc_10089a818:
    r21 = [r20 retain];
    goto loc_10089a824;
}

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)reasonDescription {
    r0 = self->_reasonDescription;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_muteThisAdURL, 0x0);
    objc_storeStrong((int64_t *)&self->_reasonDescription, 0x0);
    return;
}

-(void *)muteThisAdURL {
    r0 = self->_muteThisAdURL;
    return r0;
}

@end