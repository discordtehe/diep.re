// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFH264DECOMPRESSIONSESSIONFACTORY_H
#define FNFH264DECOMPRESSIONSESSIONFACTORY_H


#import <Foundation/Foundation.h>

@protocol FNFDecompressionSessionFactory;

@interface FNFH264DecompressionSessionFactory : NSObject <FNFDecompressionSessionFactory>





+(id)decompressionSessionWithDecoderType:(NSUInteger)arg0 delegate:(id)arg1 sampleBufferFormatDescription:(struct opaqueCMFormatDescription *)arg2 videoSize:(struct CGSize )arg3 numOfDecoderThreads:(unsigned int)arg4 framesBuffer:(id)arg5 sampleBufferRequestThreshold:(int)arg6 ;


@end


#endif