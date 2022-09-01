// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FNFDecompressionSessionDelegate


-(void)yieldDecompressedBuffer:(struct __CVBuffer *)arg0 presentationTimeStamp:(struct ? )arg1 presentationDuration:(struct ? )arg2 iFrame:(NSUInteger)arg3 ;
-(void)handleDecompressionSessionError:(id)arg0 ;
-(void)handleDecompressionSessionError:(id)arg0 ifIFrameStillValid:(NSUInteger)arg1 ;

@end

