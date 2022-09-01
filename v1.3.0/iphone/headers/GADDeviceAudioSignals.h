// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADDEVICEAUDIOSIGNALS_H
#define GADDEVICEAUDIOSIGNALS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol GADSignal;

@interface GADDeviceAudioSignals : NSObject <GADSignal>



@property (readonly, nonatomic) BOOL isOtherAudioPlaying; // ivar: _isOtherAudioPlaying
@property (readonly, nonatomic) NSNumber *shouldSilenceAudioValue; // ivar: _shouldSilenceAudioValue
@property (readonly, nonatomic) float audioVolume; // ivar: _audioVolume
@property (readonly, copy, nonatomic) NSArray *audioRoutePortNames; // ivar: _audioRoutePortNames
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)addSignalEntriesToMutableDictionary:(id)arg0 ;
+(id)sharedVolumeView;
+(id)signalSource;


@end


#endif