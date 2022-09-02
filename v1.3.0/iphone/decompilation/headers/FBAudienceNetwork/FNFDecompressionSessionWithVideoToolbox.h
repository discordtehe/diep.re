// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFDECOMPRESSIONSESSIONWITHVIDEOTOOLBOX_H
#define FNFDECOMPRESSIONSESSIONWITHVIDEOTOOLBOX_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol FNFDecompressionSession;
@protocol FNFDecompressionSessionDelegate;

@interface FNFDecompressionSessionWithVideoToolbox : NSObject <FNFDecompressionSession>

 {
    *OpaqueVTDecompressionSession _decompressionSession;
    NSObject<OS_dispatch_queue> *_decompressionSessionQueue;
    CGSize _inputSize;
    BOOL _firstFrameEnqueued;
    NSMutableDictionary *_destinationPixelBufferAttributes;
    *opaqueCMFormatDescription _format;
}


@property (weak, nonatomic) NSObject<FNFDecompressionSessionDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) *opaqueCMFormatDescription format;


-(id)initWithDelegate:(id)arg0 sampleBufferFormatDescription:(struct opaqueCMFormatDescription *)arg1 videoSize:(struct CGSize )arg2 async:(BOOL)arg3 timerManager:(id)arg4 ;
-(void)closeSession;
-(void)enqueueSampleBuffer:(struct opaqueCMSampleBuffer *)arg0 iFrame:(NSUInteger)arg1 ;
-(unsigned char)canAcceptFormatDescription:(struct opaqueCMFormatDescription *)arg0 ;
-(struct CGSize )inputSize;


@end


#endif