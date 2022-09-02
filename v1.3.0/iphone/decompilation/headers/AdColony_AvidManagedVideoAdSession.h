// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONY_AVIDMANAGEDVIDEOADSESSION_H
#define ADCOLONY_AVIDMANAGEDVIDEOADSESSION_H

@class AbstractAvidManagedAdSession;


@protocol AdColony_AvidVideoPlaybackListener;

@interface AdColony_AvidManagedVideoAdSession : AbstractAvidManagedAdSession

@property (readonly, nonatomic) NSObject<AdColony_AvidVideoPlaybackListener> *avidVideoPlaybackListener;




@end


#endif