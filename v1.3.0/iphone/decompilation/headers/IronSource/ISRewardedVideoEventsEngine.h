// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISREWARDEDVIDEOEVENTSENGINE_H
#define ISREWARDEDVIDEOEVENTSENGINE_H



@class ISEventsEngine;

@interface ISRewardedVideoEventsEngine : ISEventsEngine



-(void)setServerEventsURL:(id)arg0 ;
-(id)serverEventsURL;
-(void)setServerEventsType:(id)arg0 ;
-(id)serverEventsType;
-(void)initConnectivityEventsSet;
-(id)init;
-(BOOL)shouldSendEvents:(id)arg0 ;
-(BOOL)shouldBackupEvents:(id)arg0 ;
-(BOOL)increaseSessionDepthIfNeeded:(id)arg0 ;
-(NSUInteger)getSessionDepth:(id)arg0 ;
-(id)generateEventBatchData;
-(BOOL)isTopPriorty:(id)arg0 ;
+(id)sharedInstance;


@end


#endif