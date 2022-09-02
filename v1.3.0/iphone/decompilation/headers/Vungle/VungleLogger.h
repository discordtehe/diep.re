// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLELOGGER_H
#define VUNGLELOGGER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol VungleLoggerDelegate;

@interface VungleLogger : NSObject

@property (nonatomic) NSUInteger numberOfEntries; // ivar: _numberOfEntries
@property (copy, nonatomic) NSString *name; // ivar: _name
@property (retain, nonatomic) NSString *loggingUUID; // ivar: _loggingUUID
@property (retain, nonatomic) NSString *bundleID; // ivar: _bundleID
@property (retain, nonatomic) NSMutableArray *messageBuffer; // ivar: _messageBuffer
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *loggerQueue; // ivar: _loggerQueue
@property (nonatomic) NSUInteger messageBufferSize; // ivar: _messageBufferSize
@property (retain, nonatomic) NSUserDefaults *defaults; // ivar: _defaults
@property (nonatomic) NSInteger loggingLevel; // ivar: _loggingLevel
@property (readonly, nonatomic) NSUInteger entryCount;
@property (nonatomic) NSUInteger maximumEntries; // ivar: _maximumEntries
@property (retain, nonatomic) NSString *userAgent; // ivar: _userAgent
@property (weak, nonatomic) NSObject<VungleLoggerDelegate> *delegate; // ivar: _delegate
@property (readonly, copy, nonatomic) NSURL *localLogURL;
@property (readonly, copy, nonatomic) NSURL *localTempLogURL;
@property (getter=isPaused, setter=setIsPaused:) BOOL paused; // ivar: _paused
@property (retain, nonatomic) NSString *eventID; // ivar: _eventID


-(void)setupLoggerWithLoggingLevel:(NSInteger)arg0 maximumEntries:(NSUInteger)arg1 name:(id)arg2 bufferSize:(NSUInteger)arg3 defaults:(id)arg4 ;
-(BOOL)kickstartWithError:(*id)arg0 ;
-(void)logMessage:(id)arg0 level:(NSInteger)arg1 context:(id)arg2 ;
-(void)clearLogWithCompletionBlock:(id)arg0 ;
-(void)clearTempLog:(id)arg0 WithCompletionBlock:(id)arg1 ;
-(void)flush;
-(id)logFileURLWithLogName:(id)arg0 ;
-(id)tempLogFileURLWithLogName:(id)arg0 ;
-(BOOL)moveLogFileToTempAndGenerateNew;
-(void)setupSerialQueue;
-(BOOL)setupLogDirectoryStructure;
-(void)flushBuffer:(id)arg0 ;
+(id)sharedLogger;
+(id)eventIDFromAppID:(id)arg0 ;


@end


#endif