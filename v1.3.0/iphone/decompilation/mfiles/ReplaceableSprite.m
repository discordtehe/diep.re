@implementation ReplaceableSprite

-(void *)initWithTemporarySprite:(void *)arg2 andFinalTextureName:(void *)arg3 resetOpacity:(bool)arg4 {
    r0 = [self initWithTemporarySprite:arg2 andFinalSpriteDefinition:[NSDictionary dictionaryWithObjectsAndKeys:arg3] resetOpacity:arg4];
    return r0;
}

-(void *)initWithTemporarySprite:(void *)arg2 andFinalSpriteDefinition:(void *)arg3 {
    r0 = [self initWithTemporarySprite:arg2 andFinalSpriteDefinition:arg3 resetOpacity:0x0];
    return r0;
}

-(void *)initWithTemporarySprite:(void *)arg2 andFinalTextureName:(void *)arg3 {
    r0 = [self initWithTemporarySprite:arg2 andFinalTextureName:arg3 resetOpacity:0x0];
    return r0;
}

+(void *)spriteWithTemporarySprite:(void *)arg2 andFinalTextureName:(void *)arg3 {
    r0 = [ReplaceableSprite alloc];
    r0 = [r0 initWithTemporarySprite:arg2 andFinalTextureName:arg3];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)spriteWithTemporarySprite:(void *)arg2 andFinalSpriteDefinition:(void *)arg3 {
    r0 = [ReplaceableSprite alloc];
    r0 = [r0 initWithTemporarySprite:arg2 andFinalSpriteDefinition:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[NSNotificationCenter defaultCenter] removeObserver:r19];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mFinalSpriteDefinition));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithTemporarySprite:(void *)arg2 andFinalSpriteDefinition:(void *)arg3 resetOpacity:(bool)arg4 {
    r31 = r31 - 0x80;
    var_60 = d9;
    stack[-104] = d8;
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
    r22 = arg4;
    r21 = arg3;
    r20 = arg2;
    r0 = [[&var_70 super] init];
    r19 = r0;
    if (r0 == 0x0) goto loc_1005c065c;

loc_1005c0354:
    [r19 setColor:0xffffff];
    [r19 setOpacity:0xff];
    *(int8_t *)(int64_t *)&r19->mResetOpacity = r22;
    r19->mFinalSprite = 0x0;
    r27 = sign_extend_64(*(int32_t *)ivar_offset(mTemporarySprite));
    *(r19 + r27) = 0x0;
    r0 = [r21 retain];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mFinalSpriteDefinition));
    *(r19 + r24) = r0;
    r22 = @selector(objectForKey:);
    r21 = objc_msgSend(r0, r22);
    r0 = *(r19 + r24);
    r0 = objc_msgSend(r0, r22);
    if (r0 == 0x0) goto loc_1005c0410;

loc_1005c03f4:
    r22 = r0;
    if (([r0 isEqualToString:r2] & 0x1) == 0x0) goto loc_1005c05d8;

loc_1005c0410:
    if ([[ConfigurationDownloader sharedConfigurationDownloader] onDemandFileDownload:r21] >= 0x2) goto loc_1005c0538;

loc_1005c0440:
    if (r20 != 0x0) {
            [r19 setOpacity:[r20 opacity]];
            [r19 addChild:r20];
            [r20 contentSize];
            [r19 setContentSize:r20];
            [r19 contentSize];
            [r19 contentSize];
            v0 = v8;
            [r20 setPosition:r2];
            *(r19 + r27) = r20;
    }
    r20 = [NSNotificationCenter defaultCenter];
    [[ConfigurationDownloader sharedConfigurationDownloader] getOnDemandDownloadNotificationIdForFilename:r21];
    r0 = r20;
    goto loc_1005c052c;

loc_1005c052c:
    [r0 addObserver:r2 selector:r3 name:r4 object:r5];
    goto loc_1005c0644;

loc_1005c0644:
    [r19 setAnchorPoint:r2];
    goto loc_1005c065c;

loc_1005c065c:
    r0 = r19;
    return r0;

loc_1005c0538:
    if (!CPU_FLAGS & E) {
            if (r20 != 0x0) {
                    [r19 setOpacity:[r20 opacity]];
                    [r19 addChild:r20];
                    [r20 contentSize];
                    [r19 setContentSize:r20];
                    [r19 contentSize];
                    [r19 contentSize];
                    v0 = v8;
                    [r20 setPosition:r2];
                    *(r19 + r27) = r20;
            }
    }
    else {
            [r19 loadFinalSprite];
    }
    goto loc_1005c0644;

loc_1005c05d8:
    r26 = [[ConfigurationDownloader sharedConfigurationDownloader] onDemandFileDownload:r21];
    r25 = [[ConfigurationDownloader sharedConfigurationDownloader] onDemandFileDownload:r22];
    if (r26 != 0x2 || r25 != 0x2) goto loc_1005c0684;

loc_1005c0634:
    [r19 loadFinalSprite];
    goto loc_1005c0644;

loc_1005c0684:
    if (r20 != 0x0) {
            [r19 setOpacity:[r20 opacity]];
            [r19 addChild:r20];
            [r20 contentSize];
            [r19 setContentSize:r20];
            [r19 contentSize];
            [r19 contentSize];
            v0 = v8;
            [r20 setPosition:r2];
            *(r19 + r27) = r20;
    }
    if (r26 == 0x3 || r25 == 0x3) goto loc_1005c0644;

loc_1005c072c:
    if (r26 != 0x2) {
            [[NSNotificationCenter defaultCenter] addObserver:r19 selector:@selector(onFileDownloaded:) name:[[ConfigurationDownloader sharedConfigurationDownloader] getOnDemandDownloadNotificationIdForFilename:r21] object:0x0];
    }
    if (r25 == 0x2) goto loc_1005c0644;

loc_1005c07a0:
    r20 = objc_msgSend(@class(NSNotificationCenter), *0x101137828);
    [[ConfigurationDownloader sharedConfigurationDownloader] getOnDemandDownloadNotificationIdForFilename:r22];
    r0 = r20;
    goto loc_1005c052c;
}

-(void *)createFinalSprite {
    r0 = self->mFinalSpriteDefinition;
    r0 = sub_1005d7358(r0, 0x0);
    return r0;
}

-(void)onFileDownloaded:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[NSNotificationCenter defaultCenter] removeObserver:r19 name:[arg2 name] object:0x0];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(mFinalSpriteDefinition));
    r0 = *(r19 + r22);
    r0 = [r0 objectForKey:r2];
    if (r0 != 0x0) {
            r20 = r0;
            if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
                    [*(r19 + r22) objectForKey:r2];
                    if ([[ConfigurationDownloader sharedConfigurationDownloader] onDemandFileDownload:r2] == 0x2 && [[ConfigurationDownloader sharedConfigurationDownloader] onDemandFileDownload:r2] == 0x2) {
                            [r19 loadFinalSprite];
                    }
            }
            else {
                    [r19 loadFinalSprite];
            }
    }
    else {
            [r19 loadFinalSprite];
    }
    return;
}

-(void)loadFinalSprite {
    r31 = r31 - 0x70;
    var_50 = d9;
    stack[-88] = d8;
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
    r0 = [self createFinalSprite];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(mFinalSprite));
    *(r19 + r23) = r0;
    [r0 contentSize];
    [r19 setContentSize:r2];
    r2 = *(r19 + r23);
    [r19 addChild:r2];
    [[*(r19 + r23) texture] setAntiAliasTexParameters];
    [r19 contentSize];
    [r19 contentSize];
    [*(r19 + r23) setPosition:r2];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(mTemporarySprite));
    r0 = *(r19 + r25);
    if (r0 != 0x0) {
            r20 = [r0 opacity];
            if (*(int8_t *)(r19 + sign_extend_64(*(int32_t *)ivar_offset(mResetOpacity))) != 0x0) {
                    [r19 setOpacity:r2];
            }
            [*(r19 + r23) setOpacity:r2];
            [*(r19 + r23) runAction:[CCFadeTo actionWithDuration:objc_msgSend(r19, r22) opacity:r3]];
            objc_msgSend(*(r19 + r25), r21);
            r20 = *(r19 + r25);
            [CCFadeTo actionWithDuration:0x0 opacity:r3];
            [CCCallFunc actionWithTarget:r19 selector:@selector(releaseTemporarySprite)];
            [r20 runAction:[CCSequence actions:r2]];
    }
    else {
            [r19 opacity];
            [r19 setOpacity:r2];
    }
    return;
}

-(void)releaseTemporarySprite {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mTemporarySprite));
    if (*(r0 + r20) != 0x0) {
            [r0 removeChild:r2 cleanup:0x1];
            *(r0 + r20) = 0x0;
    }
    return;
}

-(void)setColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    [[&var_20 super] setColor:r2 & 0xffffffff];
    [self updateColor];
    return;
}

-(void)setOpacity:(unsigned char)arg2 {
    [[&var_20 super] setOpacity:arg2];
    [self updateColor];
    return;
}

-(void)updateColor {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [self color];
    r20 = [r19 opacity];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mTemporarySprite));
    r0 = *(r19 + r24);
    if (r0 != 0x0) {
            [r0 setColor:r2];
            [*(r19 + r24) setOpacity:r2];
    }
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mFinalSprite));
    r0 = *(r19 + r24);
    if (r0 != 0x0) {
            [r0 setColor:r2];
            [*(r19 + r24) setOpacity:r2];
    }
    return;
}

-(void *)finalTextureName {
    r0 = self->mFinalSpriteDefinition;
    r0 = [r0 objectForKey:r2];
    return r0;
}

-(void *)texture {
    r8 = self;
    r0 = self->mFinalSprite;
    if (r0 == 0x0) {
            r0 = r8->mTemporarySprite;
            if (r0 != 0x0) {
                    r0 = [r0 texture];
            }
    }
    else {
            r0 = [r0 texture];
    }
    return r0;
}

-(void *)sprite {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mFinalSprite));
    r8 = *(r0 + r8);
    if (r8 == 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mTemporarySprite));
            r8 = *(r0 + r8);
    }
    r0 = r8;
    return r0;
}

@end