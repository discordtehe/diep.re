// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFAUDIOFORMATHELPER_H
#define FNFAUDIOFORMATHELPER_H


#import <Foundation/Foundation.h>


@interface FNFAudioFormatHelper : NSObject



+(struct AudioStreamBasicDescription )audioStreamBasicDescriptionWithFormatId:(unsigned int)arg0 channelCount:(unsigned int)arg1 sampleRateIndex:(unsigned int)arg2 framesPerPacket:(unsigned int)arg3 objectType:(unsigned int)arg4 ;


@end


#endif