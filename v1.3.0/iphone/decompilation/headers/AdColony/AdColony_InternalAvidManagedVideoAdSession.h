// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONY_INTERNALAVIDMANAGEDVIDEOADSESSION_H
#define ADCOLONY_INTERNALAVIDMANAGEDVIDEOADSESSION_H

@class InternalAvidManagedAdSession;


@class AdColony_AvidVideoPlaybackListenerImpl;
@protocol AdColony_AvidVideoPlaybackListener;

@interface AdColony_InternalAvidManagedVideoAdSession : InternalAvidManagedAdSession

@property (retain, nonatomic) AdColony_AvidVideoPlaybackListenerImpl *avidVideoPlaybackListenerImpl; // ivar: _avidVideoPlaybackListenerImpl
@property (readonly, nonatomic) NSObject<AdColony_AvidVideoPlaybackListener> *avidVideoPlaybackListener;


-(id)initWithId:(id)arg0 context:(id)arg1 ;
-(void)eventDispatcher:(id)arg0 didPushEvent:(id)arg1 ;
+(id)sessionType;
+(id)mediaType;


@end


#endif