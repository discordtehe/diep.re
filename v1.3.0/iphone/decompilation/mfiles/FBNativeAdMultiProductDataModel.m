@implementation FBNativeAdMultiProductDataModel

-(void *)init {
    r0 = [self initWithMetadata:**___NSDictionary0__];
    return r0;
}

-(void *)cacheKeysForCreatives {
    r0 = sub_100a31910();
    return r0;
}

-(bool)isValid {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = self->_image;
    r0 = [r0 url];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 absoluteString];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 length] != 0x0) {
            if (CPU_FLAGS & NE) {
                    r21 = 0x1;
            }
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(long long)type {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self videoURL];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r19 = 0x2;
    }
    else {
            r0 = [r19 image];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 url];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 absoluteString];
            r0 = [r0 retain];
            r22 = r0;
            if ([r0 length] != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r19 = 0x1;
                    }
            }
            [r22 release];
            [r21 release];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithMetadata:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [[&var_60 super] initWithMetadata:r19];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_metadata));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 stringForKeyOrNil:@"title"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_title));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 stringForKeyOrNil:@"subtitle"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_subtitle));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 stringForKeyOrNil:@"headline"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_headline));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 stringForKeyOrNil:@"link_description"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_linkDescription));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 stringForKeyOrNil:@"call_to_action"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_callToAction));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 stringForKeyOrNil:@"body"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_body));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 numberForKeyOrNil:@"video_autoplay_enabled"];
            r29 = r29;
            r0 = [r0 retain];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_videoAutoplayEnabled));
            r8 = *(r20 + r22);
            *(r20 + r22) = r0;
            [r8 release];
            r0 = *(r20 + r22);
            if (r0 != 0x0) {
                    [r0 boolValue];
            }
            r23 = @selector(boolForKey:orDefault:);
            *(int8_t *)(int64_t *)&r20->_audioMuted = objc_msgSend(r19, r23);
            r0 = [r19 dictionaryForKeyOrNil:@"image"];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            if (r0 != 0x0) {
                    r23 = @selector(boolForKey:orDefault:);
                    r0 = [r22 stringForKeyOrNil:@"url"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = r0;
                    if (r0 != 0x0) {
                            r0 = [NSURL URLWithString:r25];
                            r0 = [r0 retain];
                            var_68 = @selector(boolForKey:orDefault:);
                            var_70 = [FBAdImage alloc];
                            r0 = [r22 numberForKeyOrNil:r2];
                            r0 = [r0 retain];
                            [r0 intValue];
                            asm { sxtw       x27, w0 };
                            r0 = objc_msgSend(r22, r24);
                            r29 = r29;
                            r0 = [r0 retain];
                            objc_msgSend(r0, r26);
                            asm { sxtw       x4, w0 };
                            r0 = [var_70 initWithURL:r23 width:r27 height:r4];
                            r26 = sign_extend_64(*(int32_t *)ivar_offset(_image));
                            r8 = *(r20 + r26);
                            *(r20 + r26) = r0;
                            [r8 release];
                            [r24 release];
                            [r28 release];
                            [*(r20 + r26) setType:0x1];
                            r0 = r23;
                            r23 = var_68;
                            [r0 release];
                    }
                    [r25 release];
            }
            r0 = [r19 stringForKeyOrNil:@"fbad_command"];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            if (r0 != 0x0) {
                    r0 = [NSURL URLWithString:r24];
                    r29 = r29;
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_commandURL));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
            }
            [r24 release];
            *(int8_t *)(int64_t *)&r20->_videoHasAudio = objc_msgSend(r19, r23);
            r0 = [r19 stringForKeyOrNil:@"video_url"];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (r0 != 0x0) {
                    r0 = [NSURL URLWithString:r21];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_videoURL));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
            }
            [r21 release];
            [r22 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_videoAutoplayEnabled, 0x0);
    objc_storeStrong((int64_t *)&self->_videoURL, 0x0);
    objc_storeStrong((int64_t *)&self->_commandURL, 0x0);
    objc_storeStrong((int64_t *)&self->_iconURL, 0x0);
    objc_storeStrong((int64_t *)&self->_image, 0x0);
    objc_storeStrong((int64_t *)&self->_callToAction, 0x0);
    objc_storeStrong((int64_t *)&self->_body, 0x0);
    objc_storeStrong((int64_t *)&self->_linkDescription, 0x0);
    objc_storeStrong((int64_t *)&self->_headline, 0x0);
    objc_storeStrong((int64_t *)&self->_subtitle, 0x0);
    objc_storeStrong((int64_t *)&self->_title, 0x0);
    objc_storeStrong((int64_t *)&self->_metadata, 0x0);
    return;
}

-(void *)metadata {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_metadata)), 0x0);
    return r0;
}

-(void *)title {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_title)), 0x0);
    return r0;
}

-(void *)subtitle {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_subtitle)), 0x0);
    return r0;
}

-(void *)headline {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_headline)), 0x0);
    return r0;
}

-(void *)linkDescription {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_linkDescription)), 0x0);
    return r0;
}

-(void *)body {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_body)), 0x0);
    return r0;
}

-(void *)callToAction {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_callToAction)), 0x0);
    return r0;
}

-(void *)image {
    r0 = self->_image;
    return r0;
}

-(void *)iconURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_iconURL)), 0x0);
    return r0;
}

-(void *)videoURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_videoURL)), 0x0);
    return r0;
}

-(void *)commandURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_commandURL)), 0x0);
    return r0;
}

-(bool)audioMuted {
    r0 = *(int8_t *)(int64_t *)&self->_audioMuted;
    return r0;
}

-(void *)videoAutoplayEnabled {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_videoAutoplayEnabled)), 0x0);
    return r0;
}

-(bool)videoHasAudio {
    r0 = *(int8_t *)(int64_t *)&self->_videoHasAudio;
    return r0;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBNativeAdMultiProductDataModel");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

@end