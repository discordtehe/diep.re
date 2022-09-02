// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FNFPlayerDisplayLayer

@property (weak, nonatomic) NSObject<FNFPlayerDisplayLayerDelegate> *displayLayerDelegate;

-(void)setRenderer:(id)arg0 ;
-(void)setPreferredTransform:(struct CGAffineTransform )arg0 ;
-(void)initializeDisplayLayer;
-(void)displayPixelBuffer:(struct __CVBuffer *)arg0 preferredTransform:(struct CGAffineTransform )arg1 preventPlayback:(BOOL)arg2 ;
-(void)displayEmptyBuffer:(BOOL)arg0 preventPlayback:(BOOL)arg1 lastDisplayedSampleBuffer:(struct __CVBuffer *)arg2 ;
-(void)updateDisplayLayer;
-(void)flushDisplayLayer:(BOOL)arg0 ;
-(void)clearBuffers;
-(void)resetRendering;
-(id)displayLayerDelegate;
-(void)setDisplayLayerDelegate:(id)arg0 ;

@end

