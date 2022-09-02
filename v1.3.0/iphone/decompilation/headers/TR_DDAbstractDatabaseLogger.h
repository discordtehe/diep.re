// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_DDABSTRACTDATABASELOGGER_H
#define TR_DDABSTRACTDATABASELOGGER_H

@class DDAbstractLogger;
@protocol OS_dispatch_source;



@interface TR_DDAbstractDatabaseLogger : DDAbstractLogger {
    NSUInteger _saveThreshold;
    CGFloat _saveInterval;
    CGFloat _maxAge;
    CGFloat _deleteInterval;
    BOOL _deleteOnEverySave;
    BOOL _saveTimerSuspended;
    NSUInteger _unsavedCount;
    NSUInteger _unsavedTime;
    NSObject<OS_dispatch_source> *_saveTimer;
    NSUInteger _lastDeleteTime;
    NSObject<OS_dispatch_source> *_deleteTimer;
}


@property NSUInteger saveThreshold;
@property CGFloat saveInterval;
@property CGFloat maxAge;
@property CGFloat deleteInterval;
@property BOOL deleteOnEverySave;


-(id)init;
-(void)dealloc;
-(BOOL)db_log:(id)arg0 ;
-(void)db_save;
-(void)db_delete;
-(void)db_saveAndDelete;
-(void)performSaveAndSuspendSaveTimer;
-(void)performDelete;
-(void)destroySaveTimer;
-(void)updateAndResumeSaveTimer;
-(void)createSuspendedSaveTimer;
-(void)destroyDeleteTimer;
-(void)updateDeleteTimer;
-(void)createAndStartDeleteTimer;
-(void)savePendingLogEntries;
-(void)deleteOldLogEntries;
-(void)didAddLogger;
-(void)willRemoveLogger;
-(void)logMessage:(id)arg0 ;
-(void)flush;


@end


#endif