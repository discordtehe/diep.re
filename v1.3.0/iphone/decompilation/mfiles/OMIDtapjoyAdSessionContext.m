@implementation OMIDtapjoyAdSessionContext

-(void *)initWithPartner:(void *)arg2 webView:(void *)arg3 customReferenceIdentifier:(void *)arg4 error:(void * *)arg5 {
    r31 = r31 - 0x80;
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
    r29 = &saved_fp;
    r23 = arg5;
    r24 = arg4;
    r25 = arg2;
    r19 = [r25 retain];
    r20 = [arg3 retain];
    r21 = [r24 retain];
    r0 = [[&var_60 super] init];
    r22 = r0;
    if (r22 == 0x0) goto loc_100967748;

loc_100967574:
    r0 = [OMIDtapjoySDK sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 isActive];
    [r0 release];
    if ((r27 & 0x1) == 0x0) goto loc_1009676f0;

loc_1009675b0:
    [UIWebView class];
    if (([r20 isKindOfClass:r2] & 0x1) != 0x0) goto loc_100967608;

loc_1009675e4:
    r27 = @selector(isKindOfClass:);
    [WKWebView class];
    if ((objc_msgSend(r20, r27) & 0x1) == 0x0) goto loc_1009676f0;

loc_100967608:
    if (r19 == 0x0) goto loc_1009676f0;

loc_10096760c:
    if ([r21 length] < 0x101) goto loc_100967700;

loc_100967628:
    [r21 length];
    r25 = [[NSString stringWithFormat:@"The supplied customReferenceIdentifier is %ld characters which exceeds the 256 limit."] retain];
    [OMIDtapjoyError setOMIDErrorFor:r23 code:0x5dc message:r25];
    [r25 release];
    goto loc_1009676f8;

loc_1009676f8:
    r23 = 0x0;
    goto loc_100967754;

loc_100967754:
    [r21 release];
    [r20 release];
    [r19 release];
    [r22 release];
    r0 = r23;
    return r0;

loc_100967700:
    objc_storeStrong((int64_t *)&r22->_partner, r25);
    objc_storeWeak((int64_t *)&r22->_webView, r20);
    r22->_type = 0x0;
    objc_storeStrong((int64_t *)&r22->_identifier, r24);
    goto loc_100967748;

loc_100967748:
    r23 = [r22 retain];
    goto loc_100967754;

loc_1009676f0:
    [OMIDtapjoyError setOMIDErrorFor:r2 code:r3 message:r4];
    goto loc_1009676f8;
}

-(void *)initWithPartner:(void *)arg2 script:(void *)arg3 resources:(void *)arg4 customReferenceIdentifier:(void *)arg5 error:(void * *)arg6 {
    r31 = r31 - 0x80;
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
    r29 = &saved_fp;
    r24 = arg6;
    r25 = arg5;
    r26 = arg3;
    r27 = arg2;
    r28 = [r27 retain];
    r20 = [r26 retain];
    r21 = [arg4 retain];
    r23 = [r25 retain];
    r0 = [[&var_60 super] init];
    r22 = r0;
    if (r22 == 0x0) goto loc_100967a4c;

loc_100967824:
    var_68 = r28;
    r19 = r20;
    r0 = [OMIDtapjoySDK sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r20 = [r0 isActive];
    [r0 release];
    if ((r20 & 0x1) == 0x0 || [r21 count] == 0x0) goto loc_100967900;

loc_10096787c:
    r20 = r19;
    r28 = var_68;
    if (r28 == 0x0 || [r20 isEqual:r2] != 0x0) goto loc_100967934;

loc_100967944:
    if ([r23 length] < 0x101) goto loc_1009679d4;

loc_100967960:
    [r23 length];
    r25 = [[NSString stringWithFormat:@"The supplied customReferenceIdentifier is %ld characters which exceeds the 256 limit."] retain];
    r20 = r19;
    [OMIDtapjoyError setOMIDErrorFor:r24 code:0x5dc message:r25];
    [r25 release];
    goto loc_100967910;

loc_100967910:
    r24 = 0x0;
    r28 = var_68;
    goto loc_100967a58;

loc_100967a58:
    [r23 release];
    [r21 release];
    [r20 release];
    [r28 release];
    [r22 release];
    r0 = r24;
    return r0;

loc_1009679d4:
    objc_storeStrong((int64_t *)&r22->_partner, r27);
    r0 = [r21 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_resources));
    r8 = *(r22 + r9);
    *(r22 + r9) = r0;
    [r8 release];
    r22->_type = 0x1;
    objc_storeStrong((int64_t *)&r22->_script, r26);
    objc_storeStrong((int64_t *)&r22->_identifier, r25);
    r28 = var_68;
    goto loc_100967a4c;

loc_100967a4c:
    r24 = [r22 retain];
    goto loc_100967a58;

loc_100967934:
    [OMIDtapjoyError setOMIDErrorFor:r2 code:r3 message:r4];
    r24 = 0x0;
    goto loc_100967a58;

loc_100967900:
    [OMIDtapjoyError setOMIDErrorFor:r2 code:r3 message:r4];
    r20 = r19;
    goto loc_100967910;
}

-(void *)resourcesJSON {
    r31 = r31 - 0x140;
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
    r29 = &saved_fp;
    r19 = [NSMutableDictionary new];
    r0 = self->_resources;
    r0 = [r0 retain];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            do {
                    r21 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            r26 = *(0x0 + r21 * 0x8);
                            r0 = [r26 parameters];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    r25 = @selector(setObject:forKey:);
                                    [[r26 parameters] retain];
                                    r0 = [r26 vendorKey];
                                    r29 = r29;
                                    [r0 retain];
                                    objc_msgSend(r19, r25);
                                    [r26 release];
                                    [r27 release];
                            }
                            r21 = r21 + 0x1;
                    } while (r21 < r22);
                    r22 = objc_msgSend(r20, var_120);
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)toJSON {
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
    r0 = [NSMutableDictionary new];
    r19 = r0;
    [r0 setObject:@"app" forKey:@"environment"];
    r23 = [[self typeString] retain];
    [r19 setObject:r23 forKey:@"adSessionType"];
    [r23 release];
    r23 = [[NSArray arrayWithObjects:&var_58 count:0x2] retain];
    [r19 setObject:r23 forKey:@"supports"];
    [r23 release];
    r24 = [[self->_partner toJSON] retain];
    [r19 setObject:r24 forKey:@"omidNativeInfo"];
    [r24 release];
    r0 = [OMIDtapjoyContext sharedContext];
    r0 = [r0 retain];
    r25 = [[r0 toJSON] retain];
    [r19 setObject:r25 forKey:@"app"];
    [r25 release];
    [r0 release];
    r22 = [[OMIDtapjoyDevice toJSON] retain];
    [r19 setObject:r22 forKey:@"deviceInfo"];
    [r22 release];
    if (self->_identifier != 0x0) {
            [r19 setObject:r2 forKey:@"customReferenceData"];
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)typeString {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self type];
    if (r0 == 0x1) goto loc_100967ed4;

loc_100967ec4:
    if (r0 != 0x0) goto loc_100967ee4;

loc_100967ec8:
    r19 = @"html";
    goto loc_100967edc;

loc_100967edc:
    [r19 retain];
    goto loc_100967ee4;

loc_100967ee4:
    r0 = [r19 autorelease];
    return r0;

loc_100967ed4:
    r19 = @"native";
    goto loc_100967edc;
}

-(void *)partner {
    r0 = self->_partner;
    return r0;
}

-(void *)webView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_webView);
    r0 = [r0 autorelease];
    return r0;
}

-(unsigned long long)type {
    r0 = self->_type;
    return r0;
}

-(void *)resources {
    r0 = self->_resources;
    return r0;
}

-(void *)identifier {
    r0 = self->_identifier;
    return r0;
}

-(void *)script {
    r0 = self->_script;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_identifier, 0x0);
    objc_storeStrong((int64_t *)&self->_script, 0x0);
    objc_storeStrong((int64_t *)&self->_resources, 0x0);
    objc_destroyWeak((int64_t *)&self->_webView);
    objc_storeStrong((int64_t *)&self->_partner, 0x0);
    return;
}

@end