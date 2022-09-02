@implementation GADAdVerification

+(void *)sharedInstance {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 boolForKey:*0x100e9b978];
    [r0 release];
    if (r20 != 0x0) {
            if (*qword_1011dbe98 != -0x1) {
                    dispatch_once(0x1011dbe98, 0x100e9ac38);
            }
            r0 = *0x1011dbea0;
            r0 = [r0 retain];
    }
    else {
            r0 = 0x0;
    }
    r0 = [r0 autorelease];
    return r0;
}

-(void *)OMIDVersion {
    r0 = self->_GADOMIDSDK;
    r0 = [r0 versionString];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 == 0x0) goto loc_100887f2c;

loc_100887d20:
    r0 = NSClassFromString(@"GADOMIDSDK");
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_GADOMIDSDK));
    *(r19 + r23) = r0;
    r0 = [r0 sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_sharedGADOMID));
    r8 = *(r19 + r22);
    *(r19 + r22) = r0;
    [r8 release];
    if ([*(r19 + r23) respondsToSelector:r2] == 0x0 || [*(r19 + r23) respondsToSelector:@selector(isCompatibleWithGADOMIDAPIVersion:)] == 0x0 || [*(r19 + r23) isCompatibleWithGADOMIDAPIVersion:@"{\"v\":\"1.2.14\",\"a\":\"1\"}"] == 0x0) goto loc_100887e54;

loc_100887dbc:
    r20 = [[*(r19 + r23) versionString] retain];
    [NSString class];
    if (([r20 isKindOfClass:r2] & 0x1) == 0x0) goto loc_100887e4c;

loc_100887e00:
    [*(r19 + r22) activateWithGADOMIDAPIVersion:@"{\"v\":\"1.2.14\",\"a\":\"1\"}" error:&var_48];
    r21 = [var_48 retain];
    if (r21 == 0x0) goto loc_100887e5c;

loc_100887e30:
    sub_1007ce06c(0x0, @"Error while activating OMID SDK. Error: %@");
    [r21 release];
    goto loc_100887e4c;

loc_100887e4c:
    [r20 release];
    goto loc_100887e54;

loc_100887e54:
    r20 = 0x0;
    goto loc_100887f38;

loc_100887f38:
    [r19 release];
    r0 = r20;
    return r0;

loc_100887e5c:
    r0 = NSClassFromString(@"GADOMIDPartner");
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_GADOMIDPartner));
    *(r19 + r22) = r0;
    r19->_GADOMIDAdSessionConfiguration = NSClassFromString(@"GADOMIDAdSessionConfiguration");
    r19->_GADOMIDAdSessionContext = NSClassFromString(@"GADOMIDAdSessionContext");
    r19->_GADOMIDAdSession = NSClassFromString(@"GADOMIDAdSession");
    r19->_GADOMIDAdEvents = NSClassFromString(@"GADOMIDAdEvents");
    r0 = *(r19 + r22);
    r0 = [r0 alloc];
    r0 = [r0 initWithName:@"Google" versionString:*0x100e9f550];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_partner));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    [r21 release];
    [r20 release];
    goto loc_100887f2c;

loc_100887f2c:
    r20 = [r19 retain];
    goto loc_100887f38;
}

-(void *)adEventsForSession:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self->_GADOMIDAdEvents;
    r21 = [arg2 retain];
    r19 = [[r19 alloc] initWithAdSession:r21 error:&var_28];
    [r21 release];
    r20 = [var_28 retain];
    if (r19 != 0x0) {
            asm { ccmp       x20, #0x0, #0x0, ne };
    }
    if (!CPU_FLAGS & E) {
            sub_1007ce06c(0x0, @"Error while creating OMID ad event. Error: %@");
            r21 = 0x0;
    }
    else {
            r21 = [r19 retain];
    }
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)partner {
    r0 = self->_partner;
    return r0;
}

-(void *)adSessionForWebViewController:(void *)arg2 mediaType:(long long)arg3 {
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
    r23 = arg3;
    r21 = self;
    r20 = r21->_GADOMIDAdSessionContext;
    r24 = [arg2 retain];
    r20 = [r20 alloc];
    r25 = r21->_partner;
    r19 = [arg2 underlyingWebView];
    [r24 release];
    r24 = [r19 retain];
    r19 = [r20 initWithPartner:r25 webView:r24 customReferenceIdentifier:0x0 error:&var_48];
    r20 = [var_48 retain];
    [r24 release];
    if (r19 != 0x0) {
            asm { ccmp       x20, #0x0, #0x0, ne };
    }
    if (!CPU_FLAGS & E) {
            sub_1007ce06c(0x0, @"Error while creating OMID session context. Error: %@");
            r22 = 0x0;
    }
    else {
            if (r23 != 0x1) {
                    asm { csinc      x23, x8, xzr, ne };
            }
            r23 = [[r21->_GADOMIDAdSessionConfiguration alloc] initWithImpressionOwner:0x1 videoEventsOwner:r23 isolateVerificationScripts:0x1 error:&var_50];
            r24 = [var_50 retain];
            [r20 release];
            if (r23 != 0x0) {
                    asm { ccmp       x24, #0x0, #0x0, ne };
            }
            if (!CPU_FLAGS & E) {
                    sub_1007ce06c(0x0, @"Error while creating OMID configuration. Error: %@");
                    r22 = 0x0;
                    r20 = r24;
            }
            else {
                    r21 = [[r21->_GADOMIDAdSession alloc] initWithConfiguration:r23 adSessionContext:r19 error:&var_58];
                    r20 = [var_58 retain];
                    [r24 release];
                    if (r21 != 0x0 && r20 == 0x0) {
                            r22 = [r21 retain];
                    }
                    else {
                            sub_1007ce06c(0x0, @"Error while creating OMID ad session. Error: %@");
                            r22 = 0x0;
                    }
                    [r21 release];
            }
            [r23 release];
    }
    [r19 release];
    [r20 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)setPartner:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_partner, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_partner, 0x0);
    objc_storeStrong((int64_t *)&self->_sharedGADOMID, 0x0);
    return;
}

@end