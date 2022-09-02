// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFPLAYERFRAMESBUFFER_H
#define FNFPLAYERFRAMESBUFFER_H


#import <Foundation/Foundation.h>

@protocol FNFFrameSource;

@interface FNFPlayerFramesBuffer : NSObject <FNFFrameSource>

 {
    int _decompressedBufferSize;
    int _sampleBufferRequestThreshold;
    NSUInteger _framesLoop;
    NSUInteger _lastSuggestedFrame;
    NSUInteger _framesDecompressed;
    ? _buffers;
    *? _bufferTimes;
    *NSInteger _bufferIndexes;
    NSUInteger _decompressionSessionIndexStart;
    NSUInteger _framesEnqueued;
    NSUInteger _framesRead;
    NSUInteger _framesStale;
    NSUInteger _framesFlushed;
    NSUInteger _framesDisplayed;
    NSUInteger _frameToClose;
}


@property (readonly, nonatomic) BOOL shouldRequestData;
@property (readonly, nonatomic) BOOL isReadyForMoreMediaData; // ivar: _isReadyForMoreMediaData
@property (nonatomic) int sampleBufferRequestThreshold;


-(id)initWithBufferSize:(int)arg0 ;
-(void)dealloc;
-(BOOL)doesIFrameBelongsToDecompressionSession:(NSUInteger)arg0 ;
-(BOOL)isFull;
-(BOOL)seekFrameUpdatesFinished;
-(struct __CVBuffer *)findNextFrame:(struct ? )arg0 withDrawingOn:(BOOL)arg1 completion:(id)arg2 ;
-(struct __CVBuffer *)findNextFrame:(struct ? )arg0 withDrawingOn:(BOOL)arg1 isFirstFrame:(BOOL)arg2 completion:(id)arg3 ;
-(struct __CVBuffer *)_getNextFrame:(struct ? )arg0 withDrawingOn:(BOOL)arg1 bufferIndex:(NSUInteger)arg2 framesRead:(NSUInteger)arg3 completion:(id)arg4 ;
-(void)setLastFrameDisplayed;
-(void)setFrameOnClose;
-(BOOL)isFrameOnClose:(NSUInteger)arg0 ;
-(void)advanceFrame;
-(void)clear;
-(id)prepareFlush:(SEL)arg0 ;
-(id)addBuffer:(SEL)arg0 presentationTimeStamp:(struct __CVBuffer *)arg1 ;
-(id)addBuffer:(SEL)arg0 presentationTimeStamp:(struct __CVBuffer *)arg1 iFrameEnqueued:(struct ? )arg2 ;
-(void)resetDecompressionSessionIndex;
-(void)enqueueSampleBuffer:(struct opaqueCMSampleBuffer *)arg0 decompressionSession:(id)arg1 ;
-(id)description;
-(*NSInteger)bufferIndexes;
-(int)bufferSize;
-(struct ? *)bufferTimes;
-(NSUInteger)framesDecompressed;
-(NSUInteger)framesRead;


@end


#endif