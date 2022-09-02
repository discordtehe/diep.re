@implementation VungleViewInfo

-(void *)initWithCompletedView:(void *)arg2 playTime:(void *)arg3 didDownload:(void *)arg4 {
    r31 = r31 - 0x50;
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
    r21 = [arg4 retain];
    r0 = [[&var_40 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            r0 = [r19 copy];
            r8 = *(r22 + 0x8);
            *(r22 + 0x8) = r0;
            [r8 release];
            r0 = [r20 copy];
            r8 = *(r22 + 0x10);
            *(r22 + 0x10) = r0;
            [r8 release];
            r0 = [r21 copy];
            r8 = *(r22 + 0x18);
            *(r22 + 0x18) = r0;
            [r8 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void *)description {
    r21 = [[self completedView] retain];
    r22 = [[self playTime] retain];
    r19 = [[self didDownload] retain];
    r20 = [[NSString stringWithFormat:r2] retain];
    [r19 release];
    [r22 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)completedView {
    r0 = objc_getProperty(self, _cmd, 0x8, 0x0);
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r21 = self;
    r0 = [VungleViewInfo class];
    r0 = [r0 allocWithZone:r20];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r21 completedView];
            r0 = [r0 retain];
            r24 = [r0 copyWithZone:r20];
            [r19 setCompletedView:r24];
            [r24 release];
            [r0 release];
            r0 = [r21 playTime];
            r0 = [r0 retain];
            r24 = [r0 copyWithZone:r20];
            [r19 setPlayTime:r24];
            [r24 release];
            [r0 release];
            r0 = [r21 didDownload];
            r0 = [r0 retain];
            r20 = [r0 copyWithZone:r20];
            [r19 setDidDownload:r20];
            [r20 release];
            [r0 release];
    }
    r0 = r19;
    return r0;
}

-(void)setCompletedView:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)playTime {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void)setPlayTime:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setDidDownload:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)didDownload {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end