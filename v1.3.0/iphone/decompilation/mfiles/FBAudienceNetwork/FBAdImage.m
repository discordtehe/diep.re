@implementation FBAdImage

-(void *)init {
    r20 = [[NSURL URLWithString:@""] retain];
    r19 = [self initWithURL:r20 width:0x0 height:0x0];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)initWithURL:(void *)arg2 width:(long long)arg3 height:(long long)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r21 = arg3;
    r20 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            [r22 setUrl:r20];
            [r22 setWidth:r21];
            [r22 setHeight:r19];
    }
    [r20 release];
    r0 = r22;
    return r0;
}

-(void)preloadImageAsync {
    r20 = [[self url] retain];
    [FBAdUtility loadRemoteImageWithURL:r20 withBlock:0x0];
    [r20 release];
    return;
}

-(void)loadImageAsyncWithBlock:(void *)arg2 {
    r22 = [arg2 retain];
    r19 = [[self url] retain];
    [FBAdUtility loadRemoteImageWithURL:r19 withBlock:r22];
    [r22 release];
    [r19 release];
    return;
}

-(void)setUrl:(void *)arg2 {
    [arg2 retain];
    [*(self + sign_extend_64(*(int32_t *)ivar_offset(_url))) isEqual:r2];
    r0 = *(self + r21);
    *(self + r21) = r20;
    [r0 release];
    return;
}

-(long long)width {
    r0 = self->_width;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_url, 0x0);
    return;
}

-(void *)url {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_url)), 0x0);
    return r0;
}

-(void)setWidth:(long long)arg2 {
    self->_width = arg2;
    return;
}

-(long long)height {
    r0 = self->_height;
    return r0;
}

-(long long)type {
    r0 = self->_type;
    return r0;
}

-(void)setHeight:(long long)arg2 {
    self->_height = arg2;
    return;
}

-(void)setType:(long long)arg2 {
    self->_type = arg2;
    return;
}

+(void)loadImagesAsync:(void *)arg2 withBlock:(void *)arg3 {
    r21 = [arg2 retain];
    [self loadImagesAsyncWithBlurredImages:r21 withBlock:arg3];
    [r21 release];
    return;
}

+(void)loadImagesAsyncWithBlurredImages:(void *)arg2 withBlock:(void *)arg3 {
    r31 = r31 - 0x170;
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
    r21 = [arg2 retain];
    var_158 = [arg3 retain];
    r19 = [NSMutableArray new];
    var_110 = q0;
    r0 = [r21 retain];
    r21 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r27 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r21);
                            }
                            r25 = @selector(addObject:);
                            r0 = *(var_118 + r28 * 0x8);
                            r0 = [r0 url];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r19, r25);
                            [r26 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r21 release];
    var_130 = r21;
    r21 = [r21 retain];
    r20 = [var_158 retain];
    [FBAdUtility loadRemoteImagesWithURLs:r19 withBlock:&var_150 retry:0x1];
    [var_158 release];
    [var_130 release];
    [r20 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

@end