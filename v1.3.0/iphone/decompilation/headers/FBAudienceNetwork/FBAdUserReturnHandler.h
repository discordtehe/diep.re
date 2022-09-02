// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADUSERRETURNHANDLER_H
#define FBADUSERRETURNHANDLER_H


#import <Foundation/Foundation.h>


@interface FBAdUserReturnHandler : NSObject



-(id)init;
-(void)dealloc;
-(void)onDidBecomeActiveNotification:(id)arg0 ;
-(void)moveOutOfApp:(BOOL)arg0 withToken:(id)arg1 ;
-(void)logUserReturnEventIfNeeded;
-(void)logLocalUserReturnEventWithToken:(id)arg0 openInterval:(NSUInteger)arg1 closeInterval:(NSUInteger)arg2 ;
-(void)logEventWithToken:(id)arg0 isLocal:(BOOL)arg1 leaveTimestampString:(id)arg2 backTimestampString:(id)arg3 outcomeString:(id)arg4 ;
-(void)logEventWithToken:(id)arg0 extraData:(id)arg1 ;
-(id)timestampNowString;
-(id)eventDictionary;
-(void)storeEventDictionary:(id)arg0 ;
-(void)removeEventDictionary;
+(void)moveOutOfApp:(BOOL)arg0 withToken:(id)arg1 ;
+(void)logUserReturnEventIfNeeded;
+(void)logLocalUserReturnEventWithToken:(id)arg0 openInterval:(NSUInteger)arg1 closeInterval:(NSUInteger)arg2 ;
+(id)shared;


@end


#endif