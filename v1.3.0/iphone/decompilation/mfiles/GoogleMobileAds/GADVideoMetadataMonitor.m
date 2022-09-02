@implementation GADVideoMetadataMonitor

-(void *)initWithMessageSource:(void *)arg2 adVideoController:(void *)arg3 {
    r31 = r31 - 0x90;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeWeak((int64_t *)&r21->_videoController, r20);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r22);
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r22);
            *(r21 + r22) = r0;
            [r8 release];
            objc_initWeak(&stack[-104], r21);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_80 + 0x20, &stack[-104]);
            [r22 addObserverForName:*0x100e9c4e0 object:r19 queue:r24 usingBlock:&var_80];
            [r24 release];
            objc_destroyWeak(&var_80 + 0x20);
            objc_destroyWeak(&stack[-104]);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_videoController);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

-(void)handleVideoMetadataAction:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_videoController);
    r20 = r0;
    [r0 setHasVideoContent:0x1];
    r0 = [r19 objectForKeyedSubscript:@"duration"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            r2 = @selector(floatValue);
            [r23 floatValue];
            asm { fcvt       d0, s0 };
            [r20 setVideoDuration:r2];
    }
    else {
            if (r23 != 0x0) {
                    r0 = [r23 class];
                    r0 = NSStringFromClass(r0);
                    r29 = r29;
                    r0 = [r0 retain];
                    sub_1007ce06c(0x0, @"Invalid duration parameter type %@");
                    r0 = r23;
                    r23 = r25;
                    [r0 release];
            }
    }
    r24 = @selector(respondsToSelector:);
    r0 = [r19 objectForKeyedSubscript:@"currentTime"];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if (objc_msgSend(r0, r24) != 0x0) {
            r2 = @selector(floatValue);
            [r25 floatValue];
            asm { fcvt       d0, s0 };
            [r20 setCurrentPlaybackTime:r2];
    }
    else {
            if (r25 != 0x0) {
                    r0 = [r25 class];
                    r0 = NSStringFromClass(r0);
                    r29 = r29;
                    [r0 retain];
                    sub_1007ce06c(0x0, @"Invalid currentTime parameter type %@");
                    [r21 release];
            }
    }
    r24 = @selector(respondsToSelector:);
    r0 = [r19 objectForKeyedSubscript:@"playbackState"];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if (objc_msgSend(r0, r24) != 0x0) {
            [r20 setVideoPlaybackState:[r26 integerValue]];
    }
    else {
            if (r26 != 0x0) {
                    r0 = [r26 class];
                    r0 = NSStringFromClass(r0);
                    r29 = r29;
                    [r0 retain];
                    sub_1007ce06c(0x0, @"Invalid playbackState parameter type %@");
                    [r21 release];
            }
    }
    r24 = @selector(respondsToSelector:);
    r0 = [r19 objectForKeyedSubscript:@"muted"];
    r29 = r29;
    r0 = [r0 retain];
    r28 = r0;
    if (objc_msgSend(r0, r24) != 0x0) {
            [r20 setVideoMuted:[r28 boolValue]];
    }
    else {
            if (r28 != 0x0) {
                    r0 = [r28 class];
                    r0 = NSStringFromClass(r0);
                    r29 = r29;
                    [r0 retain];
                    sub_1007ce06c(0x0, @"Invalid muted parameter type %@");
                    [r21 release];
            }
    }
    r24 = @selector(respondsToSelector:);
    var_58 = r28;
    r0 = [r19 objectForKeyedSubscript:@"aspectRatio"];
    r29 = r29;
    r0 = [r0 retain];
    r28 = r0;
    r2 = @selector(doubleValue);
    if (objc_msgSend(r0, r24) != 0x0) {
            [r28 doubleValue];
            [r20 setAspectRatio:r2];
    }
    else {
            if (r28 != 0x0) {
                    r0 = [r28 class];
                    r0 = NSStringFromClass(r0);
                    r29 = r29;
                    [r0 retain];
                    sub_1007ce06c(0x0, @"Invalid aspect ratio parameter type %@");
                    [r21 release];
            }
    }
    r24 = @selector(respondsToSelector:);
    r0 = [r19 objectForKeyedSubscript:@"customControlsAllowed"];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (objc_msgSend(r0, r24) != 0x0) {
            [r20 setCustomControlsEnabled:[r21 boolValue]];
    }
    else {
            if (r21 != 0x0) {
                    r0 = [r21 class];
                    r0 = NSStringFromClass(r0);
                    r29 = r29;
                    r0 = [r0 retain];
                    sub_1007ce06c(0x0, @"Invalid custom control enabled parameter type %@");
                    r0 = r23;
                    r23 = r25;
                    r25 = r20;
                    r20 = r26;
                    r26 = r19;
                    r19 = r22;
                    r24 = r24;
                    [r0 release];
            }
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (objc_msgSend(r0, r24) != 0x0) {
            [r20 setClickToExpandEnabled:[r22 boolValue]];
    }
    else {
            if (r22 != 0x0) {
                    r0 = [r22 class];
                    r0 = NSStringFromClass(r0);
                    r0 = [r0 retain];
                    sub_1007ce06c(0x0, @"Invalid click to expand enabled parameter type %@");
                    r0 = r23;
                    r23 = r24;
                    [r0 release];
            }
    }
    [r22 release];
    [r21 release];
    [r28 release];
    [var_58 release];
    [r26 release];
    [r25 release];
    [r23 release];
    [r20 release];
    [r19 release];
    return;
}

@end