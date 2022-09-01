// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADAUDIOVIDEOMANAGER_H
#define GADAUDIOVIDEOMANAGER_H

@protocol GADAudioVideoManagerDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADAudioVideoManager : NSObject {
    NSMutableSet *_playerIDsPlayingVideo;
    NSMutableSet *_playerIDsPlayingSound;
    NSMutableSet *_playerIDsPlayingUserInitiatedSound;
    NSMapTable *_playerIDsToPlayer;
}


@property (weak, nonatomic) NSObject<GADAudioVideoManagerDelegate> *delegate; // ivar: _delegate
@property (nonatomic) BOOL audioSessionIsApplicationManaged; // ivar: _audioSessionIsApplicationManaged


-(id)init;
-(void)updateAudioSessionAfterAllVideoStopPlayingSound;
-(void)playerWithID:(id)arg0 willChangeStateToPlaying:(BOOL)arg1 muted:(BOOL)arg2 userInitiated:(BOOL)arg3 queue:(id)arg4 completionBlock:(id)arg5 ;
-(void)playerWithID:(id)arg0 didChangeStateToPlaying:(BOOL)arg1 muted:(BOOL)arg2 userInitiated:(BOOL)arg3 ;
-(void)player:(id)arg0 willChangeStateToPlaying:(BOOL)arg1 muted:(BOOL)arg2 userInitiated:(BOOL)arg3 queue:(id)arg4 completionBlock:(id)arg5 ;
-(void)player:(id)arg0 didChangeStateToPlaying:(BOOL)arg1 muted:(BOOL)arg2 userInitiated:(BOOL)arg3 ;
-(void)playerWillDealloc:(id)arg0 ;


@end


#endif