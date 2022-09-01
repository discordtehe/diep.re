// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADDATABASEMANAGER_H
#define FBADDATABASEMANAGER_H

@protocol OS_dispatch_queue, FBAdDatabaseManagerDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdDatabaseManager : NSObject

@property (retain, nonatomic) NSOperationQueue *operationQueue; // ivar: _operationQueue
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *databaseQueue; // ivar: _databaseQueue
@property (nonatomic) *sqlite3 database; // ivar: _database
@property (nonatomic, getter=isInitialized) BOOL initialized; // ivar: _initialized
@property (weak, nonatomic) NSObject<FBAdDatabaseManagerDelegate> *delegate; // ivar: _delegate
@property (copy, nonatomic) NSURL *storagePath; // ivar: _storagePath


-(id)init;
-(void)openDatabaseWithCallback:(id)arg0 ;
// -(void)openDatabaseWithCallback:(id)arg0 withRetry:(unk)arg1  ;
-(void)getDatabase:(id)arg0 ;
-(int)currentDatabaseVersion;
// -(void)initializeDatabaseWithCompletionCallback:(id)arg0 withDowngradeCallback:(unk)arg1 withUpgradeCallback:(id)arg2  ;
-(void)createTableSyncWithDatabase:(struct sqlite3 *)arg0 withStatement:(char *)arg1 withCallback:(id)arg2 ;
-(void)dropTableSyncWithDatabase:(struct sqlite3 *)arg0 withTableName:(id)arg1 withCallback:(id)arg2 ;
-(void)queryWithStatementSync:(char *)arg0 withDatabase:(struct sqlite3 *)arg1 withCallback:(id)arg2 ;
// -(void)deserializeWithStatementSync:(char *)arg0 withDatabase:(struct sqlite3 *)arg1 withDeserializeCallback:(id)arg2 withCallback:(unk)arg3  ;
// -(void)insertWithStatementSync:(char *)arg0 withDatabase:(struct sqlite3 *)arg1 withStatementCallback:(id)arg2 withCompletionCallback:(unk)arg3  ;
-(void)deleteWithStatementSync:(char *)arg0 withDatabase:(struct sqlite3 *)arg1 withCallback:(id)arg2 ;
-(void)setForeignKeyEnforcementSyncWithDatabase:(struct sqlite3 *)arg0 withCallback:(id)arg1 ;
-(void)queryUserVersionSyncWithDatabase:(struct sqlite3 *)arg0 withCallback:(id)arg1 ;
-(void)setUserVersionSync:(int)arg0 withDatabase:(struct sqlite3 *)arg1 withCallback:(id)arg2 ;
-(id)stringFromChars:(char *)arg0 ;
-(void)dealloc;
+(id)sharedManager;


@end


#endif