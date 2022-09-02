@implementation GADSafeBrowsingReport

-(void *)initWithRootTransaction:(void *)arg2 configuration:(void *)arg3 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r22 = @selector(init);
            r0 = [r20 objectForKeyedSubscript:@"click_string"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_clickString));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r25 = [NSSet alloc];
            r24 = [[r20 objectForKeyedSubscript:@"header_to_scrub"] retain];
            r0 = [r25 initWithArray:r24];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_excludedHeaders));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r24 release];
            r0 = [NSMutableArray alloc];
            r0 = objc_msgSend(r0, r22);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_resources));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r22);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_resourceIndexForCanonicalURL));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r22);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_requestIndicesForRedirectToURL));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r22);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_parentTransactionForTransaction));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r22);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_childTransactionsForTransaction));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r22);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_requestIPAddresses));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [NSMutableSet alloc];
            r0 = objc_msgSend(r0, r22);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_autoClickResources));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = sub_100860a2c("com.google.admob.n.rind-report", 0x0, 0x15);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r21 addTransaction:r19];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)malicious {
    r19 = self->_lockQueue;
    var_40 = [self retain];
    dispatch_sync(r19, &var_60);
    [var_40 release];
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(void *)renderedAd {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setRenderedAd:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void *)mainDocumentURL {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setMainDocumentURL:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void)addTransaction:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void)addAutoClickAttempt:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void)addClickThrough:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void)addTransaction:(void *)arg2 parentIndex:(void *)arg3 {
    r31 = r31 - 0xa0;
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
    r23 = self;
    r19 = [arg2 retain];
    var_90 = [arg3 retain];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_resources));
    r21 = [[NSNumber numberWithUnsignedInteger:[*(r23 + r20) count]] retain];
    sub_100822370(*(r23 + r20), r19);
    r0 = [r19 request];
    r0 = [r0 retain];
    r27 = [[r0 URL] retain];
    r22 = [sub_10089a1e4() retain];
    [r27 release];
    [r0 release];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_resourceIndexForCanonicalURL));
    r0 = *(r23 + r20);
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            sub_100822058(*(r23 + r20), r22, r21);
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_childTransactionsForTransaction));
    sub_100822058(*(r23 + r20), r21, [[NSMutableArray alloc] init]);
    [r28 release];
    r27 = var_90;
    if (r27 != 0x0) {
            r0 = *(r23 + r20);
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            sub_100822370(r0, r21);
            [r26 release];
            sub_100822058(r23->_parentTransactionForTransaction, r21, r27);
    }
    objc_initWeak(&stack[-104], r23);
    r0 = [r19 request];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 URL];
    r0 = [r0 retain];
    r23 = [[r0 host] retain];
    [r0 release];
    [r25 release];
    if ([r23 length] != 0x0) {
            objc_copyWeak(&var_88 + 0x28, &stack[-104]);
            var_68 = [r21 retain];
            sub_1007ec3dc(r23, &var_88);
            [var_68 release];
            objc_destroyWeak(&var_88 + 0x28);
    }
    [r23 release];
    objc_destroyWeak(&stack[-104]);
    [r22 release];
    [r21 release];
    [r27 release];
    [r19 release];
    return;
}

-(void)addPlaceholderTransactionForRequest:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self parentIndexForRequest:r21];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [self->_resources objectAtIndexedSubscript:[r0 integerValue]];
    r0 = [r0 retain];
    r23 = [[r0 context] retain];
    [r0 release];
    r22 = [[GADURLSessionTransaction alloc] initWithURLRequest:r21 parentContext:r23 notificationPolicy:0x0 completionHandler:0x0];
    [r21 release];
    [self addTransaction:r22 parentIndex:r20];
    [r22 release];
    [r23 release];
    [r20 release];
    return;
}

-(void *)parentIndexForRequest:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 redirectSourceForRequest:r19];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 == 0x0) {
            r20 = [[r20 referringResourceForRequest:r19] retain];
            [r21 release];
            r21 = r20;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)redirectSourceForRequest:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r21 = [[arg2 URL] retain];
    r19 = [sub_10089a1e4() retain];
    [r21 release];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_requestIndicesForRedirectToURL));
    r0 = *(r20 + r24);
    r0 = [r0 objectForKeyedSubscript:r19];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 firstObject];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r23 release];
    if (r21 != 0x0) {
            r0 = *(r20 + r24);
            r0 = [r0 objectForKeyedSubscript:r19];
            r0 = [r0 retain];
            [r0 removeObjectAtIndex:0x0];
            [r0 release];
            r20 = [r21 retain];
    }
    else {
            r20 = 0x0;
    }
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)referringResourceForRequest:(void *)arg2 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 allHTTPHeaderFields];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:@"Referer"] retain];
    [r0 release];
    r22 = [[NSURL URLWithString:r2] retain];
    r0 = sub_10089a1e4();
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r22 release];
    r22 = r24;
    if (r24 != 0x0) goto loc_10087befc;

loc_10087bebc:
    r25 = [[r19 mainDocumentURL] retain];
    r0 = sub_10089a1e4();
    r29 = r29;
    r22 = [r0 retain];
    [r24 release];
    [r25 release];
    if (r22 == 0x0) goto loc_10087bfd8;

loc_10087befc:
    r0 = r21->_resourceIndexForCanonicalURL;
    r0 = [r0 objectForKeyedSubscript:r22];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_10087bf30;

loc_10087bf24:
    r0 = [r23 retain];
    goto loc_10087bf90;

loc_10087bf90:
    r21 = r0;
    goto loc_10087bf9c;

loc_10087bf9c:
    [r23 release];
    [r22 release];
    goto loc_10087bfac;

loc_10087bfac:
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_10087bf30:
    r0 = sub_10089a1e4();
    r29 = r29;
    r21 = [r0 retain];
    r24 = [r22 isEqual:r2];
    [r21 release];
    if (r24 == 0x0) goto loc_10087bf98;

loc_10087bf70:
    r0 = [NSNumber numberWithInt:r2];
    r0 = [r0 retain];
    goto loc_10087bf90;

loc_10087bf98:
    r21 = 0x0;
    goto loc_10087bf9c;

loc_10087bfd8:
    r21 = 0x0;
    goto loc_10087bfac;
}

-(void)createDictionaryWithCompletionHandler:(void *)arg2 {
    [arg2 retain];
    sub_100822058([[NSMutableDictionary alloc] init], @"type", [@(0xb) retain]);
    r0 = [GADApplication sharedInstance];
    r0 = [r0 retain];
    r23 = [[r0 mainBundleIdentifier] retain];
    [r0 release];
    sub_100822058(r22, @"page_url", [[@"mobileapp::" stringByAppendingString:r23] retain]);
    r25 = self->_lockQueue;
    var_58 = [self retain];
    [r22 retain];
    var_48 = r20;
    [r20 retain];
    dispatch_async(r25, &var_78);
    [var_48 release];
    [r22 release];
    [var_58 release];
    [r20 release];
    [r21 release];
    [r24 release];
    [r23 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_renderedAd, 0x0);
    objc_storeStrong((int64_t *)&self->_mainDocumentURL, 0x0);
    objc_storeStrong((int64_t *)&self->_landingPageURL, 0x0);
    objc_storeStrong((int64_t *)&self->_excludedHeaders, 0x0);
    objc_storeStrong((int64_t *)&self->_clickString, 0x0);
    objc_storeStrong((int64_t *)&self->_autoClickResources, 0x0);
    objc_storeStrong((int64_t *)&self->_requestIPAddresses, 0x0);
    objc_storeStrong((int64_t *)&self->_childTransactionsForTransaction, 0x0);
    objc_storeStrong((int64_t *)&self->_parentTransactionForTransaction, 0x0);
    objc_storeStrong((int64_t *)&self->_requestIndicesForRedirectToURL, 0x0);
    objc_storeStrong((int64_t *)&self->_resourceIndexForCanonicalURL, 0x0);
    objc_storeStrong((int64_t *)&self->_lastPreClickResourceIndex, 0x0);
    objc_storeStrong((int64_t *)&self->_resources, 0x0);
    return;
}

-(void *)dictionaryForResourceAtIndex:(unsigned long long)arg2 {
    r31 = r31 - 0xa0;
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
    r21 = [[NSMutableDictionary alloc] init];
    sub_100822058(r21, @"id", [[NSNumber numberWithUnsignedInteger:arg2] retain]);
    [r22 release];
    var_68 = self;
    r0 = self->_resources;
    var_80 = arg2;
    r0 = [r0 objectAtIndexedSubscript:arg2];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 request];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 URL];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 absoluteString];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    [r19 release];
    if (r0 != 0x0) {
            r0 = [r22 request];
            r0 = [r0 retain];
            r0 = [r0 URL];
            r0 = [r0 retain];
            r0 = [r0 absoluteString];
            r29 = r29;
            sub_100822058(r21, @"url", [r0 retain]);
            [r23 release];
            [r20 release];
            [r19 release];
    }
    r0 = [r22 request];
    r0 = [r0 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_excludedHeaders));
    r26 = var_68;
    r20 = [sub_1007fdc74(r0, *(r26 + r23)) retain];
    [r21 setObject:r20 forKeyedSubscript:@"request"];
    [r20 release];
    [r0 release];
    r28 = [[NSMutableDictionary alloc] init];
    r0 = [r22 response];
    r29 = r29;
    r19 = [r0 retain];
    [NSHTTPURLResponse class];
    r20 = [r19 isKindOfClass:r2];
    [r19 release];
    var_60 = r21;
    if (r20 != 0x0) {
            r0 = [r22 response];
            r0 = [r0 retain];
            r19 = r0;
            r0 = sub_1007fe0cc(r0, *(r26 + r23));
            r29 = r29;
            r20 = [r0 retain];
            [r28 addEntriesFromDictionary:r20];
            [r20 release];
            [r19 release];
    }
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r26 = [r0 integerForKey:*0x100e9b688];
    [r0 release];
    r0 = [r22 responseBody];
    r29 = r29;
    r27 = [r0 retain];
    r21 = var_80;
    var_78 = r22;
    if (r27 == 0x0 || [r22 notificationPolicy] != 0x3) goto loc_10087c434;

loc_10087c3c0:
    r19 = [r22 responseLength];
    [r27 release];
    if (r19 > r26) goto loc_10087c440;

loc_10087c3e8:
    r0 = [r22 responseBody];
    r0 = [r0 retain];
    r19 = r0;
    r0 = sub_1007fe26c(r0);
    r29 = r29;
    r20 = [r0 retain];
    [r28 addEntriesFromDictionary:r20];
    [r20 release];
    r0 = r19;
    goto loc_10087c4f8;

loc_10087c4f8:
    [r0 release];
    r22 = @selector(numberWithUnsignedInteger:);
    r24 = var_68;
    goto loc_10087c500;

loc_10087c500:
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_requestIPAddresses));
    r19 = *(r24 + r23);
    r20 = [objc_msgSend(@class(NSNumber), r22) retain];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r20 release];
    if (r0 != 0x0) {
            r19 = *(r24 + r23);
            [objc_msgSend(@class(NSNumber), r22) retain];
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            sub_100822058(r28, @"remote_ip", [r0 retain]);
            [r19 release];
            [r20 release];
    }
    if ([r28 count] != 0x0) {
            sub_100822058(var_60, @"response", r28);
    }
    var_88 = r28;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_parentTransactionForTransaction));
    r22 = @selector(numberWithUnsignedInteger:);
    r28 = var_68;
    r19 = *(r28 + r23);
    r20 = [objc_msgSend(@class(NSNumber), r22) retain];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r20 release];
    if (r0 != 0x0) {
            r19 = *(r28 + r23);
            [objc_msgSend(@class(NSNumber), r22) retain];
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            sub_100822058(var_60, @"parent_id", [r0 retain]);
            [r19 release];
            [r20 release];
    }
    r26 = @selector(count);
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_childTransactionsForTransaction));
    r19 = *(r28 + r27);
    r20 = [objc_msgSend(*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0), r22) retain];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r23 = objc_msgSend(r0, r26);
    [r0 release];
    [r20 release];
    if (r23 != 0x0) {
            r19 = *(r28 + r27);
            [objc_msgSend(*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0), r22) retain];
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            sub_100822058(var_60, @"child_ids", [r0 copy]);
            [r23 release];
            [r19 release];
            r0 = r20;
    }
    else {
            r0 = [NSArray arrayWithObjects:&stack[-104] count:0x0];
            r29 = r29;
            sub_100822058(var_60, @"child_ids", [r0 retain]);
            r0 = r19;
    }
    [r0 release];
    r1 = r22;
    r22 = var_78;
    r19 = r28->_autoClickResources;
    r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
    r0 = objc_msgSend(r0, r1);
    r29 = r29;
    r20 = [r0 retain];
    r2 = r20;
    r19 = [r19 containsObject:r2];
    [r20 release];
    if ((r19 & 0x1) != 0x0) {
            r2 = 0x3;
    }
    else {
            r0 = r28->_lastPreClickResourceIndex;
            if (r0 != 0x0) {
                    if ([r0 unsignedIntegerValue] < r21) {
                            asm { cinc       x2, x8, lo };
                    }
            }
            else {
                    r2 = 0x1;
            }
    }
    sub_100822058(var_60, @"ad_resource_type", [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithInteger:r2] retain]);
    [r19 release];
    [var_88 release];
    [r22 release];
    r0 = [var_60 autorelease];
    return r0;

loc_10087c440:
    r0 = [r22 responseDigest];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 == 0x0) goto loc_10087c4f4;

loc_10087c464:
    r19 = [r22 notificationPolicy];
    [r26 release];
    r22 = @selector(numberWithUnsignedInteger:);
    r24 = var_68;
    if (r19 != 0x0) {
            r19 = [[var_78 responseDigest] retain];
            r0 = [var_78 responseLength];
            r0 = sub_1007fe3cc(r19, r0);
            r29 = r29;
            r20 = [r0 retain];
            [r28 addEntriesFromDictionary:r20];
            [r20 release];
            [r19 release];
    }
    goto loc_10087c500;

loc_10087c4f4:
    r0 = r26;
    goto loc_10087c4f8;

loc_10087c434:
    [r27 release];
    goto loc_10087c440;
}

@end