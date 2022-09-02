@implementation MPDiskLRUCacheFile

-(void *)filePath {
    r0 = objc_getProperty(self, _cmd, 0x8, 0x0);
    return r0;
}

-(void)setFilePath:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(double)lastModTimestamp {
    r0 = self;
    return r0;
}

-(void)setLastModTimestamp:(double)arg2 {
    *(self + 0x10) = d0;
    return;
}

-(unsigned long long)fileSize {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setFileSize:(unsigned long long)arg2 {
    *(self + 0x18) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end