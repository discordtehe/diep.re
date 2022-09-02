// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_DDFILELOGGER_H
#define TR_DDFILELOGGER_H

@class DDAbstractLogger;
@protocol OS_dispatch_source, OS_dispatch_queue;

#import <Foundation/Foundation.h>

@class TR_DDLogFileInfo;
@protocol DDLogger;
@protocol DDLogFileManager;
@protocol DDLogFileManager;
@protocol DDLogFormatter;

@interface TR_DDFileLogger : DDAbstractLogger <DDLogger>

 {
    id<DDLogFileManager> *_logFileManager;
    TR_DDLogFileInfo *_currentLogFileInfo;
    NSFileHandle *_currentLogFileHandle;
    NSObject<OS_dispatch_source> *_currentLogFileVnode;
    NSObject<OS_dispatch_source> *_rollingTimer;
    NSUInteger _maximumFileSize;
    CGFloat _rollingFrequency;
}


@property NSUInteger maximumFileSize;
@property CGFloat rollingFrequency;
@property BOOL doNotReuseLogFiles; // ivar: _doNotReuseLogFiles
@property (readonly, nonatomic) NSObject<DDLogFileManager> *logFileManager; // ivar: logFileManager
@property (nonatomic) BOOL automaticallyAppendNewlineForCustomFormatters; // ivar: _automaticallyAppendNewlineForCustomFormatters
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (retain, nonatomic) NSObject<DDLogFormatter> *logFormatter;
@property (readonly, nonatomic) NSObject<OS_dispatch_queue> *loggerQueue;
@property (readonly, nonatomic) NSString *loggerName;


-(id)init;
-(id)initWithLogFileManager:(id)arg0 ;
-(void)dealloc;
-(void)scheduleTimerToRollLogFileDueToAge;
-(void)rollLogFile;
-(void)rollLogFileWithCompletionBlock:(id)arg0 ;
-(void)rollLogFileNow;
-(void)maybeRollLogFileDueToAge;
-(void)maybeRollLogFileDueToSize;
-(id)currentLogFileInfo;
-(id)currentLogFileHandle;
-(void)logMessage:(id)arg0 ;
-(void)willRemoveLogger;


@end


#endif