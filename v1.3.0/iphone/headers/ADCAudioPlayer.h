// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCAUDIOPLAYER_H
#define ADCAUDIOPLAYER_H


#import <AVFoundation/AVFoundation.h>

@class ADCAdSession;

@interface ADCAudioPlayer : AVAudioPlayer

@property (readonly, nonatomic) NSUInteger identifier; // ivar: _identifier
@property (readonly, nonatomic) ADCAdSession *session; // ivar: _session


-(id)initWithContentsOfURL:(id)arg0 error:(*id)arg1 identifier:(NSUInteger)arg2 adSession:(id)arg3 ;


@end


#endif