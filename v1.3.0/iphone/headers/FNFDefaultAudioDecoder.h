// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFDEFAULTAUDIODECODER_H
#define FNFDEFAULTAUDIODECODER_H


#import <Foundation/Foundation.h>

@protocol FNFPlayerAudioDecoder;

@interface FNFDefaultAudioDecoder : NSObject <FNFPlayerAudioDecoder>

 {
    AudioStreamBasicDescription _asbd;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)setAudioStreamBasicDescription:(struct AudioStreamBasicDescription )arg0 extraParameters:(id)arg1 errorCallback:(id)arg2 ;
-(BOOL)decodeToBuffer:(struct AudioQueueBuffer *)arg0 frame:(struct FNFFrameMetadata )arg1 frameData:(char *)arg2 ;
-(void)reset;


@end


#endif