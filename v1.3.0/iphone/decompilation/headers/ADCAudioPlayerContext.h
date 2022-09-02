// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCAUDIOPLAYERCONTEXT_H
#define ADCAUDIOPLAYERCONTEXT_H


#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@class ADCFilepathContext;
@class ADCAdSession;

@interface ADCAudioPlayerContext : ADCFilepathContext

@property (readonly, nonatomic) ADCAdSession *session; // ivar: _session
@property (readonly, nonatomic) NSNumber *playerID; // ivar: _playerID
@property (readonly, nonatomic) AVAudioPlayer *player; // ivar: _player


-(id)initWithMessage:(id)arg0 ;
-(BOOL)isValid:(BOOL)arg0 ;


@end


#endif