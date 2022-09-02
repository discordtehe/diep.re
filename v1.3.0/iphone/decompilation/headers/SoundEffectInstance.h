// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SOUNDEFFECTINSTANCE_H
#define SOUNDEFFECTINSTANCE_H


#import <Foundation/Foundation.h>


@interface SoundEffectInstance : NSObject

@property unsigned int soundId; // ivar: mSoundId
@property float timeRemaining; // ivar: mTimeRemaining
@property float pitch; // ivar: mPitch
@property float pan; // ivar: mPan
@property float gain; // ivar: mGain
@property BOOL loop; // ivar: mLoop


-(id)init;


@end


#endif