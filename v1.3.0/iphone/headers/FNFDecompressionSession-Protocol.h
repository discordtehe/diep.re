// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FNFDecompressionSession

@property (readonly, nonatomic) *opaqueCMFormatDescription format;

-(id)initWithDelegate:(id)arg0 sampleBufferFormatDescription:(struct opaqueCMFormatDescription *)arg1 videoSize:(struct CGSize )arg2 async:(BOOL)arg3 timerManager:(id)arg4 ;
-(void)closeSession;
-(void)enqueueSampleBuffer:(struct opaqueCMSampleBuffer *)arg0 iFrame:(NSUInteger)arg1 ;
-(unsigned char)canAcceptFormatDescription:(struct opaqueCMFormatDescription *)arg0 ;
-(struct CGSize )inputSize;
-(struct opaqueCMFormatDescription *)format;

@end

