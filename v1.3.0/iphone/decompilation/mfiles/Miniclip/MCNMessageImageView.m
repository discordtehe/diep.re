@implementation MCNMessageImageView

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(void *)initWithData:(struct Data *)arg2 andDelegate:(void *)arg3 andID:(int)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r24 = arg4;
    r21 = arg3;
    r20 = arg2;
    r19 = [arg3 retain];
    r0 = [[&var_40 super] init];
    r23 = r0;
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r23->messageID = r24;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(imageButton));
            r0 = *(r23 + r8);
            *(r23 + r8) = 0x0;
            [r0 release];
            objc_storeStrong((int64_t *)&r23->delegate, r21);
            [r23 setImage:r2];
    }
    [r19 release];
    r0 = r23;
    return r0;
}

-(int)messageID {
    r0 = *(int32_t *)(int64_t *)&self->messageID;
    return r0;
}

-(bool)hasloaded {
    r0 = self;
    if (r0->imageButton != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)imageWasPressed {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(delegate));
    if ([*(self + r21) respondsToSelector:@selector(newsfeedImageWasPressed:)] != 0x0) {
            [*(r19 + r21) newsfeedImageWasPressed:r19];
    }
    return;
}

-(void)setImage:(struct Data *)arg2 {
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
    r19 = [[NSData dataWithBytes:*(int128_t *)(arg2 + 0x8) length:*(int128_t *)(arg2 + 0x10)] retain];
    r0 = [UIImage imageWithData:r19];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r0 = objc_retainAutorelease(r21);
            r22 = r0;
            if ([r0 CGImage] == 0x0) {
                    r0 = [r22 CIImage];
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r0 = [UIButton alloc];
                            r0 = [r0 initWithFrame:r2];
                            r23 = sign_extend_64(*(int32_t *)ivar_offset(imageButton));
                            r8 = *(r20 + r23);
                            *(r20 + r23) = r0;
                            [r8 release];
                            [*(r20 + r23) setImage:r22 forState:0x0];
                            [*(r20 + r23) setAccessibilityIdentifier:@"NF_IMAGE_BUTTON"];
                            [*(r20 + r23) addTarget:r20 action:@selector(imageWasPressed) forControlEvents:0x40];
                            [r20 addSubview:r2];
                    }
                    else {
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(imageButton));
                            r0 = *(r20 + r8);
                            *(r20 + r8) = 0x0;
                            [r0 release];
                            loc_10098a5e8("-[MCNMessageImageView setImage:]");
                            [r20 handleFailedLoad];
                    }
            }
            else {
                    r0 = [UIButton alloc];
                    r0 = [r0 initWithFrame:r2];
                    r23 = sign_extend_64(*(int32_t *)ivar_offset(imageButton));
                    r8 = *(r20 + r23);
                    *(r20 + r23) = r0;
                    [r8 release];
                    [*(r20 + r23) setImage:r22 forState:0x0];
                    [*(r20 + r23) setAccessibilityIdentifier:@"NF_IMAGE_BUTTON"];
                    [*(r20 + r23) addTarget:r20 action:@selector(imageWasPressed) forControlEvents:0x40];
                    [r20 addSubview:r2];
            }
    }
    else {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(imageButton));
            r0 = *(r20 + r8);
            *(r20 + r8) = 0x0;
            [r0 release];
            loc_10098a5e8("-[MCNMessageImageView setImage:]");
            [r20 handleFailedLoad];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)setFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[&var_30 super] setFrame:r2];
    [self->imageButton setFrame:r2];
    return;
}

-(void)handleFailedLoad {
    loc_10098a5e8("-[MCNMessageImageView handleFailedLoad]");
    r8 = sign_extend_64(*(int32_t *)ivar_offset(imageButton));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->delegate, 0x0);
    objc_storeStrong((int64_t *)&self->imageButton, 0x0);
    return;
}

@end