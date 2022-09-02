@implementation FBAdDSLViewModel

-(bool)isModelReadyToPresent {
    r31 = r31 - 0x130;
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
    r19 = self;
    var_110 = q0;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_adModel));
    r0 = *(self + r24);
    r0 = [r0 endCardLocalAssets];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100b8c0ec;

loc_100b8c078:
    r22 = r0;
    r25 = *var_110;
    goto loc_100b8c088;

loc_100b8c088:
    r27 = 0x0;
    goto loc_100b8c090;

loc_100b8c090:
    if (*var_110 != r25) {
            objc_enumerationMutation(r20);
    }
    if ([*(var_118 + r27 * 0x8) checkResourceIsReachableAndReturnError:r2] == 0x0) goto loc_100b8c154;

loc_100b8c0c0:
    r27 = r27 + 0x1;
    if (r27 < r22) goto loc_100b8c090;

loc_100b8c0cc:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    if (r0 != 0x0) goto loc_100b8c088;

loc_100b8c0ec:
    [r20 release];
    r0 = *(r19 + r24);
    r0 = [r0 videoLocalAsset];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = *(r19 + r24);
            r0 = [r0 videoLocalAsset];
            r29 = r29;
            r0 = [r0 retain];
            r20 = [r0 checkResourceIsReachableAndReturnError:0x0];
            [r0 release];
    }
    else {
            r20 = 0x1;
    }
    r0 = *(r19 + r24);
    r0 = [r0 imageLocalAsset];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = *(r19 + r24);
            r0 = [r0 imageLocalAsset];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r20 & [r0 checkResourceIsReachableAndReturnError:0x0];
            [r0 release];
    }
    r0 = *(r19 + r24);
    r0 = [r0 iconLocalAsset];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = *(r19 + r24);
            r0 = [r0 iconLocalAsset];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r20 & [r0 checkResourceIsReachableAndReturnError:r2];
            [r0 release];
            if ((r20 & 0x1) != 0x0) {
                    r0 = *(r19 + r24);
                    r0 = [r0 mainHTMLAsset];
                    r0 = [r0 retain];
                    r19 = [r0 checkResourceIsReachableAndReturnError:r2];
                    [r0 release];
            }
            else {
                    r19 = 0x0;
            }
    }
    else {
            if (r20 != 0x0) {
                    r0 = *(r19 + r24);
                    r0 = [r0 mainHTMLAsset];
                    r0 = [r0 retain];
                    r19 = [r0 checkResourceIsReachableAndReturnError:r2];
                    [r0 release];
            }
            else {
                    r19 = 0x0;
            }
    }
    goto loc_100b8c160;

loc_100b8c160:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100b8c154:
    [r20 release];
    r19 = 0x0;
    goto loc_100b8c160;
}

-(bool)setLocalURLForAsset:(void *)arg2 withURL:(void *)arg3 {
    r31 = r31 - 0x70;
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
    r21 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    if (r0 == 0x0) goto loc_100b8c7e8;

loc_100b8c2f0:
    r0 = [r19 type];
    if (r0 <= 0x1) goto loc_100b8c384;

loc_100b8c30c:
    if (r0 == 0x2) goto loc_100b8c474;

loc_100b8c314:
    if (r0 == 0x4) goto loc_100b8c558;

loc_100b8c31c:
    r22 = 0x0;
    if (r0 != 0x3) goto loc_100b8c7ec;

loc_100b8c324:
    r22 = [[r20 absoluteString] retain];
    [r21->_adRawData setObject:r22 forKeyedSubscript:@"dynamic_sdk_layer_html_url"];
    [r22 release];
    r0 = r21->_adModel;
    r1 = @selector(setMainHTMLAsset:);
    goto loc_100b8c7d0;

loc_100b8c7d0:
    objc_msgSend(r0, r1);
    goto loc_100b8c7d8;

loc_100b8c7d8:
    r22 = 0x1;
    goto loc_100b8c7ec;

loc_100b8c7ec:
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;

loc_100b8c558:
    r23 = [[r19 metaData] retain];
    r0 = [r21 stringForKeyOrNil:@"index" inDictionary:r23];
    r29 = r29;
    r22 = [r0 retain];
    [r23 release];
    if (r22 == 0x0) goto loc_100b8c768;

loc_100b8c5a8:
    r23 = [r22 integerValue];
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_adModel));
    r0 = *(r21 + r28);
    r0 = [r0 endCardLocalAssets];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 count];
    [r0 release];
    if (r23 >= r26) goto loc_100b8c7e0;

loc_100b8c604:
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_adRawData));
    r0 = *(r21 + r24);
    r0 = [r0 objectForKeyedSubscript:@"end_card_images"];
    r29 = r29;
    r26 = [r0 retain];
    [NSMutableArray class];
    r27 = [r26 isKindOfClass:r2];
    [r26 release];
    if ((r27 & 0x1) == 0x0) {
            r0 = *(r21 + r24);
            r0 = [r0 objectForKeyedSubscript:@"end_card_images"];
            r29 = r29;
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 mutableCopy];
            [*(r21 + r24) setObject:r0 forKeyedSubscript:@"end_card_images"];
            r28 = r28;
            [r0 release];
            [r27 release];
    }
    r26 = [[r20 absoluteString] retain];
    r0 = *(r21 + r24);
    r0 = [r0 objectForKeyedSubscript:@"end_card_images"];
    r0 = [r0 retain];
    [r0 setObject:r26 atIndexedSubscript:r23];
    [r0 release];
    [r26 release];
    r0 = *(r21 + r28);
    r0 = [r0 endCardLocalAssets];
    r0 = [r0 retain];
    [r0 setObject:r20 atIndexedSubscript:r23];
    [r0 release];
    goto loc_100b8c768;

loc_100b8c768:
    [r22 release];
    goto loc_100b8c7d8;

loc_100b8c7e0:
    [r22 release];
    goto loc_100b8c7e8;

loc_100b8c7e8:
    r22 = 0x0;
    goto loc_100b8c7ec;

loc_100b8c474:
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_adRawData));
    r0 = *(r21 + r27);
    r0 = [r0 objectForKeyedSubscript:@"icon"];
    r0 = [r0 retain];
    r25 = [r0 mutableCopy];
    [*(r21 + r27) setObject:r25 forKeyedSubscript:@"icon"];
    [r25 release];
    [r0 release];
    r24 = [[r20 absoluteString] retain];
    r0 = *(r21 + r27);
    r0 = [r0 objectForKeyedSubscript:@"icon"];
    r0 = [r0 retain];
    [r0 setObject:r24 forKeyedSubscript:@"url"];
    [r0 release];
    [r24 release];
    r0 = r21->_adModel;
    r1 = @selector(setIconLocalAsset:);
    goto loc_100b8c7d0;

loc_100b8c384:
    if (r0 == 0x0) goto loc_100b8c774;

loc_100b8c388:
    r22 = 0x0;
    if (r0 != 0x1) goto loc_100b8c7ec;

loc_100b8c390:
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_adRawData));
    r0 = *(r21 + r27);
    r0 = [r0 objectForKeyedSubscript:@"image"];
    r0 = [r0 retain];
    r25 = [r0 mutableCopy];
    [*(r21 + r27) setObject:r25 forKeyedSubscript:@"image"];
    [r25 release];
    [r0 release];
    r24 = [[r20 absoluteString] retain];
    r0 = *(r21 + r27);
    r0 = [r0 objectForKeyedSubscript:@"image"];
    r0 = [r0 retain];
    [r0 setObject:r24 forKeyedSubscript:@"url"];
    [r0 release];
    [r24 release];
    r0 = r21->_adModel;
    r1 = @selector(setImageLocalAsset:);
    goto loc_100b8c7d0;

loc_100b8c774:
    r22 = [[r20 absoluteString] retain];
    [r21->_adRawData setObject:r22 forKeyedSubscript:@"video_url"];
    [r22 release];
    r0 = r21->_adModel;
    r1 = @selector(setVideoLocalAsset:);
    goto loc_100b8c7d0;
}

-(void *)getAdJSONFieldForKey:(void *)arg2 {
    r0 = self->_adRawData;
    r0 = [r0 objectForKeyedSubscript:arg2];
    return r0;
}

-(void *)htmlFileURL {
    r0 = self->_adModel;
    r0 = [r0 mainHTMLAsset];
    return r0;
}

-(void *)stringForKeyOrNil:(void *)arg2 inDictionary:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[self objectForKeyOrNil:r21 ofClass:[NSString class] inDictionary:r19] retain];
    [r19 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)initWithMetadata:(void *)arg2 withSandboxAddress:(void *)arg3 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    r22 = [arg2 retain];
    r23 = [arg3 retain];
    r0 = [[&var_100 super] init];
    r24 = r0;
    if (r0 == 0x0) goto loc_100b8bf78;

loc_100b8b960:
    r0 = [r22 mutableCopy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adRawData));
    r8 = *(r24 + r9);
    *(r24 + r9) = r0;
    [r8 release];
    r0 = [r22 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    [r0 release];
    if (r19 != 0x0) {
            r0 = [r22 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            r19 = [r0 count];
            [r0 release];
    }
    r0 = [FBAdDSLModel alloc];
    r0 = [r0 initWithEndCardSize:r19];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adModel));
    r8 = *(r24 + r9);
    *(r24 + r9) = r0;
    [r8 release];
    r20 = [NSMutableArray new];
    r0 = [r24 stringForKeyOrNil:r2 inDictionary:r3];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100b8bf88;

loc_100b8ba74:
    var_188 = r20;
    var_1C0 = r23;
    r25 = r0;
    if (r23 != 0x0) {
            r20 = [[NSString stringWithFormat:r2] retain];
            r0 = [r25 stringByReplacingOccurrencesOfString:@"www." withString:r20];
            r29 = r29;
            r21 = [r0 retain];
            [r25 release];
            [r20 release];
            r25 = r21;
    }
    r21 = [[r24 stringForKeyOrNil:r2 inDictionary:r3] retain];
    r20 = [[r22 objectForKeyedSubscript:r2] retain];
    var_1B0 = [[r24 stringForKeyOrNil:r2 inDictionary:r3] retain];
    [r20 release];
    var_148 = @selector(objectForKeyedSubscript:);
    r20 = [[r22 objectForKeyedSubscript:r2] retain];
    r0 = [r24 stringForKeyOrNil:r2 inDictionary:r3];
    r29 = r29;
    var_1B8 = [r0 retain];
    [r20 release];
    r0 = @class(FBAdDSLAsset);
    r0 = [r0 alloc];
    var_1C8 = r25;
    r4 = r25;
    r25 = &@class(MoPubAdapterMediatedNativeAd);
    [r0 initWithAssetMetadata:0x0 fileName:@"index.html" withRemoteURLString:r4 withType:0x3];
    r20 = var_188;
    [r20 addObject:r2];
    [r19 release];
    if (r21 != 0x0) {
            r25 = &@class(MoPubAdapterMediatedNativeAd);
            r23 = @selector(addObject:);
            [[*(r25 + 0xa08) alloc] initWithAssetMetadata:0x0 fileName:@"video.mp4" withRemoteURLString:r21 withType:0x0];
            objc_msgSend(r20, r23);
            [r19 release];
    }
    var_198 = @selector(addObject:);
    r19 = var_1B0;
    if (r19 != 0x0) {
            r25 = &@class(MoPubAdapterMediatedNativeAd);
            [[*(r25 + 0xa08) alloc] initWithAssetMetadata:r2 fileName:r3 withRemoteURLString:r4 withType:r5];
            objc_msgSend(r20, var_198);
            [r19 release];
    }
    r23 = var_1C0;
    r19 = var_1B8;
    r27 = var_148;
    if (r19 != 0x0) {
            r25 = &@class(MoPubAdapterMediatedNativeAd);
            [[*(r25 + 0xa08) alloc] initWithAssetMetadata:r2 fileName:r3 withRemoteURLString:r4 withType:r5];
            objc_msgSend(r20, var_198);
            [r19 release];
    }
    r0 = objc_msgSend(r22, r27);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100b8bf44;

loc_100b8bd20:
    var_1D8 = r24;
    stack[-480] = r22;
    var_130 = q0;
    r0 = objc_msgSend(r22, r27);
    r29 = r29;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1A8 = r1;
    var_1A0 = r0;
    r0 = objc_msgSend(r0, r1);
    var_158 = r0;
    if (r0 == 0x0) goto loc_100b8bf30;

loc_100b8bd70:
    r28 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
    r26 = @selector(alloc);
    r20 = 0x0;
    var_160 = *var_130;
    goto loc_100b8bd80;

loc_100b8bd80:
    r23 = 0x0;
    goto loc_100b8bdb4;

loc_100b8bdb4:
    if (*var_130 != var_160) {
            objc_enumerationMutation(var_1A0);
    }
    r19 = *(var_138 + r23 * 0x8);
    if (r19 == 0x0) goto loc_100b8bf04;

loc_100b8bddc:
    r27 = r21;
    r22 = r25;
    r0 = *(r25 + 0xa08);
    r25 = r26;
    var_150 = objc_msgSend(r0, r26);
    r0 = [NSNumber numberWithInt:r20];
    r0 = [r0 retain];
    var_148 = r0;
    [[r0 stringValue] retain];
    [[NSDictionary dictionaryWithObjects:r29 - 0xe8 forKeys:r29 - 0xf0 count:0x1] retain];
    r24 = r28;
    r0 = *(r28 + 0xfa8);
    r0 = [r0 stringWithFormat:r2];
    r29 = r29;
    [r0 retain];
    [var_150 initWithAssetMetadata:r2 fileName:r3 withRemoteURLString:r4 withType:r5];
    r1 = var_198;
    objc_msgSend(var_188, r1);
    [r19 release];
    [r28 release];
    [r21 release];
    [r26 release];
    r0 = [var_148 release];
    r20 = r20 + 0x1;
    if (OVERFLOW(r20)) goto loc_100b8bff0;

loc_100b8bef4:
    r26 = r25;
    r28 = r24;
    r21 = r27;
    r25 = r22;
    goto loc_100b8bf04;

loc_100b8bf04:
    r23 = r23 + 0x1;
    if (r23 < var_158) goto loc_100b8bdb4;

loc_100b8bf14:
    r0 = objc_msgSend(var_1A0, var_1A8);
    var_158 = r0;
    if (r0 != 0x0) goto loc_100b8bd80;

loc_100b8bf30:
    [var_1A0 release];
    r24 = var_1D8;
    r22 = stack[-480];
    r23 = var_1C0;
    r20 = var_188;
    goto loc_100b8bf44;

loc_100b8bf44:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_assets));
    r0 = *(r24 + r8);
    *(r24 + r8) = r20;
    [r0 release];
    [var_1B8 release];
    [var_1B0 release];
    [r21 release];
    [var_1C8 release];
    goto loc_100b8bf78;

loc_100b8bf78:
    r19 = [r24 retain];
    goto loc_100b8bf98;

loc_100b8bf98:
    var_60 = **___stack_chk_guard;
    [r23 release];
    [r22 release];
    [r24 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100b8bff0:
    asm { brk        #0x1 };
    r0 = -[FBAdDSLViewModel isModelReadyToPresent](r0, r1);
    return r0;

loc_100b8bf88:
    [r0 release];
    [r20 release];
    r19 = 0x0;
    goto loc_100b8bf98;
}

-(void *)commonAssetsDirectoriesURL {
    r31 = r31 - 0xb0;
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
    r26 = self;
    r19 = [NSMutableArray new];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_adModel));
    r21 = [[*(r26 + r27) endCardLocalAssets] retain];
    r0 = [r19 retain];
    r25 = r0;
    var_58 = r0;
    r2 = &var_78;
    [r21 enumerateObjectsUsingBlock:r2];
    [r21 release];
    r0 = *(r26 + r27);
    r0 = [r0 iconLocalAsset];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = *(r26 + r27);
            r0 = [r0 iconLocalAsset];
            r0 = [r0 retain];
            r0 = [r0 pathComponents];
            r29 = r29;
            r2 = [r0 retain];
            [r25 addObject:r2];
            [r22 release];
            [r21 release];
    }
    r0 = *(r26 + r27);
    r0 = [r0 imageLocalAsset];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = *(r26 + r27);
            r0 = [r0 imageLocalAsset];
            r0 = [r0 retain];
            r0 = [r0 pathComponents];
            r29 = r29;
            r2 = [r0 retain];
            [r25 addObject:r2];
            [r22 release];
            [r21 release];
    }
    r0 = *(r26 + r27);
    r0 = [r0 videoLocalAsset];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = *(r26 + r27);
            r0 = [r0 videoLocalAsset];
            r0 = [r0 retain];
            r21 = @selector(pathComponents);
            r0 = objc_msgSend(r0, r21);
            r29 = r29;
            r2 = [r0 retain];
            [r25 addObject:r2];
            [r23 release];
            [r22 release];
    }
    else {
            r21 = @selector(pathComponents);
    }
    r0 = *(r26 + r27);
    r20 = @selector(mainHTMLAsset);
    r0 = objc_msgSend(r0, r20);
    r0 = [r0 retain];
    r22 = r0;
    r0 = objc_msgSend(r0, r21);
    r29 = r29;
    r21 = [r0 retain];
    [r22 release];
    r24 = @selector(count);
    r0 = objc_msgSend(r21, r24);
    var_80 = r25;
    if (r0 < 0x2) goto loc_100b8cbc0;

loc_100b8caa4:
    var_A0 = @selector(mainHTMLAsset);
    stack[-168] = r27;
    r8 = @selector(count);
    var_90 = r26;
    var_88 = r8;
    goto loc_100b8cab4;

loc_100b8cab4:
    r20 = var_80;
    r1 = r24;
    r0 = objc_msgSend(r20, r1);
    if (r0 == 0x0) goto loc_100b8cb80;

loc_100b8cac8:
    r26 = 0x0;
    goto loc_100b8cadc;

loc_100b8cadc:
    r28 = @selector(isEqualToString:);
    r8 = 0x101137000;
    r23 = [[r21 objectAtIndexedSubscript:0x1] retain];
    r0 = [r20 objectAtIndexedSubscript:r26];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectAtIndexedSubscript:0x1];
    r29 = r29;
    r25 = [r0 retain];
    r1 = r28;
    r2 = r25;
    r19 = objc_msgSend(r23, r1);
    [r25 release];
    [r20 release];
    r0 = [r23 release];
    if (r19 == 0x0) goto loc_100b8cb84;

loc_100b8cb5c:
    r19 = r26 + 0x1;
    if (OVERFLOW(r19)) goto loc_100b8cc74;

loc_100b8cb64:
    r8 = 0x101137000;
    r20 = var_80;
    r1 = r24;
    r0 = objc_msgSend(r20, r1);
    r26 = r26 + 0x1;
    if (r0 > sign_extend_64(r19)) goto loc_100b8cadc;

loc_100b8cb80:
    r19 = 0x1;
    goto loc_100b8cb84;

loc_100b8cb84:
    if (OVERFLOW(r20)) goto loc_100b8cc74;

loc_100b8cb8c:
    r20 = 0x2;
    asm { sxtw       x22, w20 };
    r24 = var_88;
    if (objc_msgSend(r21, r24) > sign_extend_64(r20)) {
            if (CPU_FLAGS & A) {
                    r8 = 0x1;
            }
    }
    r8 = r19 & r8;
    if ((r8 & 0x1) != 0x0) goto loc_100b8cab4;

loc_100b8cbb0:
    r26 = var_90;
    r24 = var_88;
    r20 = var_A0;
    r27 = stack[-168];
    goto loc_100b8cbc0;

loc_100b8cbc0:
    r0 = *(r26 + r27);
    r0 = objc_msgSend(r0, r20);
    r29 = r29;
    r25 = [r0 retain];
    objc_msgSend(r21, r24);
    r19 = 0x0;
    goto loc_100b8cbf0;

loc_100b8cbf0:
    r1 = @selector(URLByDeletingLastPathComponent);
    r0 = objc_msgSend(r25, r1);
    r29 = r29;
    r23 = [r0 retain];
    r0 = [r25 release];
    r25 = r19 + 0x1;
    if (OVERFLOW(r25)) goto loc_100b8cc74;

loc_100b8cc18:
    r0 = objc_msgSend(r21, r24);
    r19 = r19 + 0x1;
    COND = r0 - 0x1 >= sign_extend_64(r25);
    r25 = r23;
    if (COND) goto loc_100b8cbf0;

loc_100b8cc38:
    [r21 release];
    [var_58 release];
    [var_80 release];
    r0 = [r23 autorelease];
    return r0;

loc_100b8cc74:
    asm { brk        #0x1 };
    r0 = -[FBAdDSLViewModel getAdJSONFieldForKey:](r0, r1, r2);
    return r0;
}

-(void *)objectForKeyOrNil:(void *)arg2 ofClass:(void *)arg3 inDictionary:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg4;
    r21 = arg3;
    r19 = [arg2 retain];
    if (r20 != 0x0) {
            r0 = [r20 objectForKey:r2];
            r0 = [r0 retain];
            r20 = r0;
            if (r0 != 0x0 && [r20 isKindOfClass:r2] != 0x0) {
                    r21 = [r20 retain];
            }
            else {
                    r21 = 0x0;
            }
            [r20 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adRawData, 0x0);
    objc_storeStrong((int64_t *)&self->_adModel, 0x0);
    objc_storeStrong((int64_t *)&self->_assets, 0x0);
    return;
}

-(void *)assets {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_assets)), 0x0);
    return r0;
}

-(void *)adModel {
    r0 = self->_adModel;
    return r0;
}

-(void)setAdModel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adModel, arg2);
    return;
}

-(void *)adRawData {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adRawData)), 0x0);
    return r0;
}

-(void)setAdRawData:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end