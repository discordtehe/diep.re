@implementation GADOMIDAdSessionContext

-(void *)resourcesJSON {
    r31 = r31 - 0x1a0;
    var_10 = r28;
    stack[-24] = r27;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r10 = *___stack_chk_guard;
    var_B0 = [NSMutableDictionary new];
    memset(&stack[-264], zero_extend_64(0x0), 0x40);
    r0 = [self->_resources retain];
    var_110 = r0;
    r0 = [r0 countByEnumeratingWithState:&stack[-264] objects:r29 - 0x98 count:0x10];
    var_118 = r0;
    if (r0 != 0x0) {
            var_120 = *var_E8;
            var_128 = &stack[-264] + 0x10;
            var_130 = 0x0;
            var_138 = var_118;
            do {
                    do {
                            var_140 = var_138;
                            var_148 = var_130;
                            if (**var_128 != var_120) {
                                    objc_enumerationMutation(var_110);
                            }
                            var_B8 = *(var_F0 + var_148 * 0x8);
                            r0 = [var_B8 parameters];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    r0 = [var_B8 parameters];
                                    r0 = [r0 retain];
                                    var_160 = r0;
                                    var_168 = r0;
                                    r0 = [var_B8 vendorKey];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [var_B0 setObject:var_168 forKey:r0];
                                    [r0 release];
                                    [var_160 release];
                            }
                            var_138 = var_140;
                            var_130 = var_148 + 0x1;
                    } while (var_148 + 0x1 < var_140);
                    r0 = [var_110 countByEnumeratingWithState:&stack[-264] objects:r29 - 0x98 count:0x10];
                    var_138 = r0;
                    var_130 = 0x0;
            } while (r0 != 0x0);
    }
    var_18 = **___stack_chk_guard;
    [var_110 release];
    var_180 = [var_B0 retain];
    objc_storeStrong(r29 - 0xb0, 0x0);
    var_188 = [var_180 autorelease];
    if (**___stack_chk_guard == var_18) {
            r0 = var_188;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)initWithPartner:(void *)arg2 webView:(void *)arg3 customReferenceIdentifier:(void *)arg4 error:(void * *)arg5 {
    r31 = r31 - 0xf0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x20, arg2);
    objc_storeStrong(r29 - 0x28, arg3);
    objc_storeStrong(r29 - 0x30, arg4);
    var_38 = arg5;
    r0 = [[r29 - 0x48 super] init];
    var_10 = r0;
    objc_storeStrong(r29 - 0x10, r0);
    if (var_10 == 0x0) goto loc_1008ceaec;

loc_1008ce78c:
    r0 = [GADOMIDSDK sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    var_7C = [r0 isActive] ^ 0x1;
    [r0 release];
    if ((var_7C & 0x1) == 0x0) goto loc_1008ce838;

loc_1008ce7ec:
    [GADOMIDError setGADOMIDErrorFor:var_38 code:0x2 message:@"OM SDK has not been activated."];
    var_8 = 0x0;
    goto loc_1008ceb04;

loc_1008ceb04:
    objc_storeStrong(r29 - 0x30, 0x0);
    objc_storeStrong(r29 - 0x28, 0x0);
    objc_storeStrong(r29 - 0x20, 0x0);
    objc_storeStrong(r29 - 0x10, 0x0);
    r0 = var_8;
    return r0;

loc_1008ce838:
    if (([0x0 isKindOfClass:[UIWebView class]] & 0x1) != 0x0 || ([0x0 isKindOfClass:[WKWebView class]] & 0x1) != 0x0) goto loc_1008ce91c;

loc_1008ce8d0:
    [GADOMIDError setGADOMIDErrorFor:var_38 code:0x5e4 message:@"Web view should be UIWebView or WKWebView or not null."];
    var_8 = 0x0;
    goto loc_1008ceb04;

loc_1008ce91c:
    if (0x0 != 0x0) goto loc_1008ce970;

loc_1008ce924:
    [GADOMIDError setGADOMIDErrorFor:var_38 code:0x5e5 message:@"Partner can not be nil."];
    var_8 = 0x0;
    goto loc_1008ceb04;

loc_1008ce970:
    if ([0x0 length] < 0x100) goto loc_1008cea50;

loc_1008ce990:
    stack[-240] = [0x0 length];
    r0 = [NSString stringWithFormat:@"The supplied customReferenceIdentifier is %ld characters which exceeds the 256 limit.", r3];
    r29 = r29;
    var_C8 = [r0 retain];
    [GADOMIDError setGADOMIDErrorFor:var_38 code:0x5dc message:var_C8];
    [var_C8 release];
    var_8 = 0x0;
    goto loc_1008ceb04;

loc_1008cea50:
    objc_storeStrong((int64_t *)&var_10->_partner, 0x0);
    objc_storeStrong((int64_t *)&var_10->_webView, 0x0);
    var_10->_type = 0x0;
    r0 = [0x0 copy];
    r9 = var_10->_identifier;
    var_10->_identifier = r0;
    [r9 release];
    goto loc_1008ceaec;

loc_1008ceaec:
    var_8 = [var_10 retain];
    goto loc_1008ceb04;
}

-(void *)toJSON {
    r31 = r31 - 0xe0;
    saved_fp = r29;
    stack[-8] = r30;
    r10 = *___stack_chk_guard;
    var_20 = self;
    var_30 = [NSMutableDictionary new];
    [var_30 setObject:@"app" forKey:@"environment"];
    r0 = [var_20 typeString];
    r0 = [r0 retain];
    [var_30 setObject:r0 forKey:@"adSessionType"];
    [r0 release];
    r0 = [NSArray arrayWithObjects:&saved_fp - 0x18 count:0x2];
    r0 = [r0 retain];
    [var_30 setObject:r0 forKey:@"supports"];
    [r0 release];
    r0 = [var_20->_partner toJSON];
    r0 = [r0 retain];
    [var_30 setObject:r0 forKey:@"omidNativeInfo"];
    [r0 release];
    r0 = [GADOMIDContext sharedContext];
    r0 = [r0 retain];
    var_90 = r0;
    r0 = [r0 toJSON];
    r0 = [r0 retain];
    [var_30 setObject:r0 forKey:@"app"];
    [r0 release];
    [var_90 release];
    r0 = [GADOMIDDevice toJSON];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [var_30 setObject:r0 forKey:@"deviceInfo"];
    [r0 release];
    if (var_20->_identifier != 0x0) {
            [var_30 setObject:var_20->_identifier forKey:@"customReferenceData"];
    }
    var_8 = **___stack_chk_guard;
    var_C0 = [var_30 retain];
    objc_storeStrong(r29 - 0x30, 0x0);
    var_C8 = [var_C0 autorelease];
    if (**___stack_chk_guard == var_8) {
            r0 = var_C8;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)initWithPartner:(void *)arg2 script:(void *)arg3 resources:(void *)arg4 customReferenceIdentifier:(void *)arg5 error:(void * *)arg6 {
    r31 = r31 - 0xe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x20, arg2);
    objc_storeStrong(r29 - 0x28, arg3);
    objc_storeStrong(r29 - 0x30, arg4);
    objc_storeStrong(r29 - 0x38, arg5);
    var_40 = arg6;
    r0 = [[r29 - 0x50 super] init];
    var_10 = r0;
    objc_storeStrong(r29 - 0x10, r0);
    if (var_10 == 0x0) goto loc_1008cf000;

loc_1008cec54:
    r0 = [GADOMIDSDK sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    var_8C = [r0 isActive] ^ 0x1;
    [r0 release];
    if ((var_8C & 0x1) == 0x0) goto loc_1008ced00;

loc_1008cecb4:
    [GADOMIDError setGADOMIDErrorFor:var_40 code:0x2 message:@"OM SDK has not been activated."];
    var_8 = 0x0;
    goto loc_1008cf018;

loc_1008cf018:
    objc_storeStrong(r29 - 0x38, 0x0);
    objc_storeStrong(r29 - 0x30, 0x0);
    objc_storeStrong(r29 - 0x28, 0x0);
    objc_storeStrong(r29 - 0x20, 0x0);
    objc_storeStrong(r29 - 0x10, 0x0);
    r0 = var_8;
    return r0;

loc_1008ced00:
    if ([0x0 count] != 0x0) goto loc_1008ced68;

loc_1008ced1c:
    [GADOMIDError setGADOMIDErrorFor:var_40 code:0x5e6 message:@"Resources can not be empty."];
    var_8 = 0x0;
    goto loc_1008cf018;

loc_1008ced68:
    if (0x0 != 0x0) goto loc_1008cedbc;

loc_1008ced70:
    [GADOMIDError setGADOMIDErrorFor:var_40 code:0x5e5 message:@"Partner can not be nil."];
    var_8 = 0x0;
    goto loc_1008cf018;

loc_1008cedbc:
    if (([0x0 isEqual:@""] & 0x1) == 0x0) goto loc_1008cee2c;

loc_1008cede0:
    [GADOMIDError setGADOMIDErrorFor:var_40 code:0x5dd message:@"Script can not be empty."];
    var_8 = 0x0;
    goto loc_1008cf018;

loc_1008cee2c:
    if ([0x0 length] < 0x100) goto loc_1008cef0c;

loc_1008cee4c:
    stack[-224] = [0x0 length];
    r0 = [NSString stringWithFormat:@"The supplied customReferenceIdentifier is %ld characters which exceeds the 256 limit.", r3];
    r29 = r29;
    var_C0 = [r0 retain];
    [GADOMIDError setGADOMIDErrorFor:var_40 code:0x5dc message:var_C0];
    [var_C0 release];
    var_8 = 0x0;
    goto loc_1008cf018;

loc_1008cef0c:
    objc_storeStrong((int64_t *)&var_10->_partner, 0x0);
    r0 = [0x0 copy];
    r9 = var_10->_resources;
    var_10->_resources = r0;
    [r9 release];
    var_10->_type = 0x1;
    r0 = [0x0 copy];
    r9 = var_10->_script;
    var_10->_script = r0;
    [r9 release];
    r0 = [0x0 copy];
    r9 = var_10->_identifier;
    var_10->_identifier = r0;
    [r9 release];
    goto loc_1008cf000;

loc_1008cf000:
    var_8 = [var_10 retain];
    goto loc_1008cf018;
}

-(void *)typeString {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self type];
    var_20 = r0;
    if (r0 != 0x0) {
            if (r9 == 0x0) {
                    var_8 = [@"native" retain];
            }
    }
    else {
            var_8 = [@"html" retain];
    }
    r0 = [var_8 autorelease];
    return r0;
}

-(void *)webView {
    r0 = self->_webView;
    return r0;
}

-(unsigned long long)type {
    r0 = self->_type;
    return r0;
}

-(void *)script {
    r0 = self->_script;
    return r0;
}

-(void *)resources {
    r0 = self->_resources;
    return r0;
}

-(void *)partner {
    r0 = self->_partner;
    return r0;
}

-(void *)identifier {
    r0 = self->_identifier;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_identifier, 0x0);
    objc_storeStrong((int64_t *)&self->_partner, 0x0);
    objc_storeStrong((int64_t *)&self->_script, 0x0);
    objc_storeStrong((int64_t *)&self->_resources, 0x0);
    objc_storeStrong((int64_t *)&self->_webView, 0x0);
    return;
}

@end