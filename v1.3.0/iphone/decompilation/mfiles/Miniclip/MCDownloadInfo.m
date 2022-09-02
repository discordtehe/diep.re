@implementation MCDownloadInfo

-(void *)initWithURL:(void *)arg2 version:(void *)arg3 andPriorityDownloads:(void *)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r21 = arg3;
    r22 = arg2;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setUrl:r22];
            [r19 setVersion:r21];
            [r19 setPriorityDownloads:r20];
            [r19 setUpdateInterval:r20];
            [r19 setNumberOfDownloaders:0x4];
    }
    r0 = r19;
    return r0;
}

-(void *)url {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setUrl:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)version {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setVersion:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)priorityDownloads {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setPriorityDownloads:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(double)updateInterval {
    r0 = self;
    return r0;
}

-(void)setUpdateInterval:(double)arg2 {
    *(self + 0x20) = d0;
    return;
}

-(int)numberOfDownloaders {
    r0 = *(int32_t *)(self + 0x28);
    return r0;
}

-(void)setNumberOfDownloaders:(int)arg2 {
    *(int32_t *)(self + 0x28) = arg2;
    return;
}

@end