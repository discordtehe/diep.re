@implementation FNFH264DecompressionSessionFactory

+(void *)decompressionSessionWithDecoderType:(unsigned long long)arg2 delegate:(void *)arg3 sampleBufferFormatDescription:(struct opaqueCMFormatDescription *)arg4 videoSize:(struct CGSize)arg5 numOfDecoderThreads:(unsigned int)arg6 framesBuffer:(void *)arg7 sampleBufferRequestThreshold:(int)arg8 {
    r6 = arg6;
    memcpy(&r5, &arg5, 0x8);
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v1;
    v9 = v0;
    r20 = arg4;
    r19 = arg3;
    [arg3 retain];
    [r6 setSampleBufferRequestThreshold:r7];
    if (arg2 != 0x0) {
            r20 = 0x0;
    }
    else {
            r20 = [[FNFDecompressionSessionWithVideoToolbox alloc] initWithDelegate:r19 sampleBufferFormatDescription:r20 videoSize:0x1 async:0x0 timerManager:r6];
    }
    [r19 release];
    [r20 autorelease];
    r0 = r20;
    return r0;
}

@end