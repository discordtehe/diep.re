// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCLOGMANAGER_H
#define ADCLOGMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ADCCrashManager;

@interface ADCLogManager : NSObject

@property (nonatomic) BOOL active; // ivar: _active
@property (retain, nonatomic) NSMutableDictionary *kibanaWaitingQueue; // ivar: _kibanaWaitingQueue
@property (retain, nonatomic) NSMutableDictionary *moduleConfigs; // ivar: _moduleConfigs
@property (retain, nonatomic) NSMutableArray *queuedLogs; // ivar: _queuedLogs
@property (retain, nonatomic) NSTimer *logIntervalTimer; // ivar: _logIntervalTimer
@property (retain, nonatomic) NSTimer *cacheInfoTimer; // ivar: _cacheInfoTimer
@property (nonatomic) CGFloat sendInterval; // ivar: _sendInterval
@property (retain, nonatomic) NSString *version; // ivar: _version
@property (retain, nonatomic) NSString *environment; // ivar: _environment
@property (retain, nonatomic) ADCCrashManager *crashManager; // ivar: _crashManager


-(id)init;
-(void)setLoggingConfigForModule:(NSUInteger)arg0 sendLevel:(NSInteger)arg1 printLevel:(NSInteger)arg2 privateLogging:(BOOL)arg3 ;
-(void)setLogsActive;
-(void)queueKibanaLog:(id)arg0 ;
-(void)propogateLogs;
+(char *)getTagForLevel:(NSInteger)arg0 ;
+(id)getFullMessageWithFormat:(id)arg0 withArgs:(char *)arg1 ;
+(void)briefLogWithModuleID:(NSInteger)arg0 isPublic:(BOOL)arg1 level:(NSInteger)arg2 withFormat:(id)arg3 ;
+(void)fullLogWithModuleID:(NSInteger)arg0 isPublic:(BOOL)arg1 level:(NSInteger)arg2 function:(char *)arg3 line:(int)arg4 withFormat:(id)arg5 ;
+(id)getFullMessage:(char *)arg0 level:(NSInteger)arg1 line:(int)arg2 message:(id)arg3 ;
+(void)processLogImplWithModuleID:(char *)arg0 isPublic:(BOOL)arg1 level:(NSInteger)arg2 line:(int)arg3 message:(id)arg4 moduleID:(NSInteger)arg5 ;
+(void)processLogWithModuleID:(NSInteger)arg0 isPublic:(BOOL)arg1 level:(NSInteger)arg2 function:(char *)arg3 line:(int)arg4 withMessage:(id)arg5 ;


@end


#endif