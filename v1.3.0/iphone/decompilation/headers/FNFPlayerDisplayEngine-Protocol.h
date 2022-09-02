// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FNFPlayerDisplayEngine

@property (retain) *OpaqueCMTimebase controlTimebase;
@property (readonly, nonatomic) NSInteger status;
@property (readonly, nonatomic) NSError *error;
@property (weak, nonatomic) NSObject<FNFPlayerDisplayEngineDelegate> *displayEngineDelegate;
@property (nonatomic) CGAffineTransform preferredTransform;

-(void)resume;
-(void)pause:(int)arg0 ;
-(void)pauseDisplayLink;
-(BOOL)allowRenderingWhileApplicationInactive;
-(void)setRenderer:(id)arg0 ;
-(void)requestMediaDataWhenReadyOnQueue:(id)arg0 usingBlock:(id)arg1 ;
-(void)stopRequestingMediaData;
-(BOOL)isReadyForMoreMediaData;
-(void)flush;
-(void)flushAndRemoveImage;
-(BOOL)flushDisplayReadySampleBuffers;
-(BOOL)seekFrameUpdatesFinished;
-(BOOL)flushIfError;
-(void)enqueueSampleBuffer:(struct opaqueCMSampleBuffer *)arg0 attributes:(unsigned int)arg1 ;
-(void)invalidate;
-(void)setNeedsDisplayFrame;
-(void)setRenderingThreadPriority:(CGFloat)arg0 ;
-(void)dispatchAsyncOnRenderingThread:(id)arg0 ;
-(void)yieldDecompressedBuffer:(struct __CVBuffer *)arg0 presentationTimeStamp:(struct ? )arg1 presentationDuration:(struct ? )arg2 ;
-(void)requestLastDisplayedSampleBuffer:(id)arg0 onQueue:(unk)arg1 ;
-(void)didBecomeActive;
-(void)willResignActive;
-(struct OpaqueCMTimebase *)controlTimebase;
-(void)setControlTimebase:(struct OpaqueCMTimebase *)arg0 ;
-(NSInteger)status;
-(id)error;
-(id)displayEngineDelegate;
-(void)setDisplayEngineDelegate:(id)arg0 ;
-(struct CGAffineTransform )preferredTransform;
-(void)setPreferredTransform:(struct CGAffineTransform )arg0 ;

@end

