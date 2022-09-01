// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UNITYANALYTICS_H
#define UNITYANALYTICS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface UnityAnalytics : NSObject

@property (retain, nonatomic) NSMutableArray *eventQueue; // ivar: _eventQueue


-(id)getCurrentApp;
-(void)postEvent:(id)arg0 ;
-(id)init;
+(id)sharedInstance;
+(void)onItemAcquired:(id)arg0 itemId:(id)arg1 transactionContext:(id)arg2 level:(id)arg3 itemType:(id)arg4 amount:(float)arg5 balance:(float)arg6 acquisitionType:(NSInteger)arg7 ;
+(void)onItemSpent:(id)arg0 itemId:(id)arg1 transactionContext:(id)arg2 level:(id)arg3 itemType:(id)arg4 amount:(float)arg5 balance:(float)arg6 acquisitionType:(NSInteger)arg7 ;
+(void)onLevelFail:(int)arg0 ;
+(void)onLevelUp:(int)arg0 ;
+(void)onAdComplete:(id)arg0 network:(id)arg1 rewarded:(BOOL)arg2 ;
+(void)onIapTransaction:(id)arg0 amount:(float)arg1 currency:(id)arg2 isPromo:(BOOL)arg3 receipt:(id)arg4 ;
+(void)onEvent:(id)arg0 ;


@end


#endif