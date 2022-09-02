// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADAUDIOSESSION_H
#define GADAUDIOSESSION_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>


@interface GADAudioSession : NSObject {
    NSObject<OS_dispatch_queue> *_lockQueue;
    NSOperationQueue *_audioSessionQueue;
    BOOL _audioSessionStateSaved;
    NSString *_savedAudioSessionCategory;
    NSString *_savedAudioSessionMode;
    NSUInteger _savedAudioSessionCategoryOption;
    BOOL _enabled;
    BOOL _wasOtherAppAudioInterrupted;
}




-(id)init;
-(void)enable;
-(void)disable;
-(void)restoreState;
-(void)setMixable:(BOOL)arg0 userInitiated:(BOOL)arg1 queue:(id)arg2 completionBlock:(id)arg3 ;
-(void)resumeBackgroundAppAudioIfInterruptedWithQueue:(id)arg0 completionBlock:(id)arg1 ;
+(id)sharedInstance;


@end


#endif