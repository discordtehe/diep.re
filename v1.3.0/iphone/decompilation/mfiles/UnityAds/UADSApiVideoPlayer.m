@implementation UADSApiVideoPlayer

+(void)WebViewExposed_getProgressEventInterval:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [r20 retain];
    r0 = [UADSApiVideoPlayer getVideoPlayer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [UADSApiVideoPlayer getVideoPlayer];
            r0 = [r0 retain];
            r22 = [[NSNumber numberWithInt:[r0 progressInterval]] retain];
            [r20 invoke:r22];
            [r19 release];
            [r22 release];
            r0 = r0;
    }
    else {
            objc_retainAutorelease(@"VIDEOVIEW_NULL");
            [r20 error:@"VIDEOVIEW_NULL" arg1:0x0];
            r0 = r19;
    }
    [r0 release];
    return;
}

+(void)WebViewExposed_setProgressEventInterval:(void *)arg2 callback:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = [arg2 retain];
    r21 = [r20 retain];
    r0 = [UADSApiVideoPlayer getVideoPlayer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r22 = [[UADSApiVideoPlayer getVideoPlayer] retain];
            [r22 setProgressEventInterval:[r19 intValue]];
            [r22 release];
            [r20 invoke:0x0];
    }
    else {
            objc_retainAutorelease(@"VIDEOVIEW_NULL");
            [r20 error:@"VIDEOVIEW_NULL" arg1:0x0];
    }
    [r21 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_prepare:(void *)arg2 initialVolume:(void *)arg3 timeout:(void *)arg4 callback:(void *)arg5 {
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
    r22 = arg5;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r23 = [r22 retain];
    r0 = [UADSApiVideoPlayer getVideoPlayer];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            var_58 = [r19 retain];
            var_50 = [r20 retain];
            var_48 = [r21 retain];
            dispatch_async(*__dispatch_main_q, &var_78);
            [r22 invoke:0x0];
            [r23 release];
            [var_48 release];
            [var_50 release];
            r0 = var_58;
    }
    else {
            objc_retainAutorelease(@"VIDEOVIEW_NULL");
            [r22 error:@"VIDEOVIEW_NULL" arg1:0x0];
            r0 = r23;
    }
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_play:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [r20 retain];
    r0 = [UADSApiVideoPlayer getVideoPlayer];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            dispatch_async(*__dispatch_main_q, 0x100e69840);
            [r20 invoke:0x0];
    }
    else {
            objc_retainAutorelease(@"VIDEOVIEW_NULL");
            [r20 error:@"VIDEOVIEW_NULL" arg1:0x0];
    }
    [r19 release];
    return;
}

+(void)WebViewExposed_pause:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [r20 retain];
    r0 = [UADSApiVideoPlayer getVideoPlayer];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            dispatch_async(*__dispatch_main_q, 0x100e69880);
            [r20 invoke:0x0];
    }
    else {
            objc_retainAutorelease(@"VIDEOVIEW_NULL");
            [r20 error:@"VIDEOVIEW_NULL" arg1:0x0];
    }
    [r19 release];
    return;
}

+(void)WebViewExposed_stop:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [r20 retain];
    r0 = [UADSApiVideoPlayer getVideoPlayer];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            dispatch_async(*__dispatch_main_q, 0x100e698c0);
            [r20 invoke:0x0];
    }
    else {
            objc_retainAutorelease(@"VIDEOVIEW_NULL");
            [r20 error:@"VIDEOVIEW_NULL" arg1:0x0];
    }
    [r19 release];
    return;
}

+(void)WebViewExposed_seekTo:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = [arg2 retain];
    r21 = [r20 retain];
    r0 = [UADSApiVideoPlayer getVideoPlayer];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            var_38 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_58);
            [r20 invoke:0x0];
            [r21 release];
            r0 = var_38;
    }
    else {
            objc_retainAutorelease(@"VIDEOVIEW_NULL");
            [r20 error:@"VIDEOVIEW_NULL" arg1:0x0];
            r0 = r21;
    }
    [r0 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_setVolume:(void *)arg2 callback:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = [arg2 retain];
    r21 = [r20 retain];
    r0 = [UADSApiVideoPlayer getVideoPlayer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r22 = [[UADSApiVideoPlayer getVideoPlayer] retain];
            [r19 floatValue];
            [r22 setVolume:r2];
            [r22 release];
            [r20 invoke:0x0];
    }
    else {
            objc_retainAutorelease(@"VIDEOVIEW_NULL");
            [r20 error:@"VIDEOVIEW_NULL" arg1:0x0];
    }
    [r21 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_getVolume:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [r20 retain];
    r0 = [UADSApiVideoPlayer getVideoPlayer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [UADSApiVideoPlayer getVideoPlayer];
            r0 = [r0 retain];
            [r0 volume];
            r22 = [[NSNumber numberWithFloat:r2] retain];
            [r20 invoke:r22];
            [r19 release];
            [r22 release];
            r0 = r0;
    }
    else {
            objc_retainAutorelease(@"VIDEOVIEW_NULL");
            [r20 error:@"VIDEOVIEW_NULL" arg1:0x0];
            r0 = r19;
    }
    [r0 release];
    return;
}

+(void)WebViewExposed_getCurrentPosition:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [r20 retain];
    r0 = [UADSApiVideoPlayer getVideoPlayer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [UADSApiVideoPlayer getVideoPlayer];
            r0 = [r0 retain];
            r22 = [[NSNumber numberWithLong:[r0 getCurrentPosition]] retain];
            [r20 invoke:r22];
            [r19 release];
            [r22 release];
            r0 = r0;
    }
    else {
            objc_retainAutorelease(@"VIDEOVIEW_NULL");
            [r20 error:@"VIDEOVIEW_NULL" arg1:0x0];
            r0 = r19;
    }
    [r0 release];
    return;
}

+(void)WebViewExposed_setAutomaticallyWaitsToMinimizeStalling:(void *)arg2 callback:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [UADSApiVideoPlayer getVideoPlayer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1000c242c;

loc_1000c2348:
    r22 = NSSelectorFromString(@"setAutomaticallyWaitsToMinimizeStalling:");
    r0 = @class(UADSApiVideoPlayer);
    r0 = [r0 getVideoPlayer];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r24 == 0x0) goto loc_1000c2420;

loc_1000c2390:
    r0 = [UADSApiVideoPlayer getVideoPlayer];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 methodForSelector:r22];
    [r0 release];
    if (r23 == 0x0) goto loc_1000c2420;

loc_1000c23c8:
    (r23)([[UADSApiVideoPlayer getVideoPlayer] retain], r22, [r19 boolValue]);
    [r21 release];
    [r20 invoke:0x0];
    goto loc_1000c2454;

loc_1000c2454:
    [r20 release];
    [r19 release];
    return;

loc_1000c2420:
    r21 = @"REFLECTION_ERROR";
    goto loc_1000c2434;

loc_1000c2434:
    objc_retainAutorelease(r21);
    [r20 error:r21 arg1:0x0];
    goto loc_1000c2454;

loc_1000c242c:
    r21 = @"VIDEOVIEW_NULL";
    goto loc_1000c2434;
}

+(void *)getVideoPlayer {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UADSApiAdUnit getAdUnit];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [UADSApiAdUnit getAdUnit];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 getViewHandler:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r22 release];
            [r20 release];
            if (r0 != 0x0) {
                    r0 = [UADSApiAdUnit getAdUnit];
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = [r0 getViewHandler:r2];
                    r0 = [r0 retain];
                    r19 = [[r0 videoPlayer] retain];
                    [r0 release];
                    [r20 release];
            }
            else {
                    r19 = 0x0;
            }
    }
    else {
            [r20 release];
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

@end