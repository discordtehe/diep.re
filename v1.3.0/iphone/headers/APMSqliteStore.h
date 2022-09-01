// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMSQLITESTORE_H
#define APMSQLITESTORE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface APMSqliteStore : NSObject {
    *sqlite3 _sqliteHandle;
    NSMutableDictionary *_statementCache;
    char * _queueLabel;
}


@property (readonly, nonatomic) *sqlite3 sqliteHandle;
@property (readonly, nonatomic) NSString *databasePath; // ivar: _databasePath


-(id)initWithDatabasePath:(id)arg0 ;
-(void)dealloc;
-(BOOL)closeAndDeleteDatabase;
-(BOOL)ensureTableWithName:(id)arg0 elementaryColumnInfo:(id)arg1 addOnColumnInfo:(id)arg2 error:(*id)arg3 ;
-(BOOL)ensureSchemaOfTableWithName:(id)arg0 elementaryColumnInfo:(id)arg1 addOnColumnInfo:(id)arg2 error:(*id)arg3 ;
-(BOOL)ensureTableWithName:(id)arg0 elementaryColumnInfo:(id)arg1 addOnColumnInfo:(id)arg2 modifyColumnInfo:(id)arg3 error:(*id)arg4 ;
-(BOOL)ensureTableWithName:(id)arg0 createSQL:(id)arg1 requiredColumnNames:(id)arg2 addOnColumns:(id)arg3 error:(*id)arg4 ;
-(BOOL)dropTableWithName:(id)arg0 error:(*id)arg1 ;
-(BOOL)renameTable:(id)arg0 toName:(id)arg1 error:(*id)arg2 ;
-(BOOL)copyContentsFromTable:(id)arg0 toTable:(id)arg1 error:(*id)arg2 ;
-(id)validateTableWithName:(id)arg0 requiredColumnNames:(id)arg1 addOnColumns:(id)arg2 error:(*id)arg3 ;
-(id)tableExists:(id)arg0 error:(*id)arg1 ;
-(id)rowCountForTableWithName:(id)arg0 error:(*id)arg1 ;
-(id)rowCountForTableWithName:(id)arg0 columnName:(id)arg1 columnValue:(id)arg2 error:(*id)arg3 ;
-(id)columnsForTableWithName:(id)arg0 error:(*id)arg1 ;
-(id)columnInfoForTableWithName:(id)arg0 error:(*id)arg1 ;
-(BOOL)upsertRecord:(id)arg0 inTableWithName:(id)arg1 error:(*id)arg2 ;
-(BOOL)updateRecord:(id)arg0 inTableWithName:(id)arg1 columnName:(id)arg2 columnValue:(id)arg3 error:(*id)arg4 ;
-(BOOL)increaseColumn:(id)arg0 byValue:(NSInteger)arg1 inTable:(id)arg2 condition:(id)arg3 parameterValues:(id)arg4 error:(*id)arg5 ;
-(BOOL)deleteRecordFromTableWithName:(id)arg0 columnName:(id)arg1 columnValue:(id)arg2 error:(*id)arg3 ;
-(id)deleteRecordsFromTableWithName:(id)arg0 condition:(id)arg1 parameterValues:(id)arg2 error:(*id)arg3 ;
-(BOOL)deleteAllRecordsFromTableWithName:(id)arg0 error:(*id)arg1 ;
-(id)recordsForQuery:(id)arg0 parameterValues:(id)arg1 error:(*id)arg2 ;
-(id)recordsForQuery:(id)arg0 parameterValues:(id)arg1 error:(*id)arg2 withFilter:(id)arg3 ;
-(id)numberForQuery:(id)arg0 parameterValues:(id)arg1 error:(*id)arg2 ;
-(BOOL)performTransaction:(id)arg0 ;
-(BOOL)beginTransaction;
-(BOOL)endTransaction;
-(BOOL)rollbackTransaction;
-(struct sqlite3_stmt *)statementForQuery:(id)arg0 error:(*id)arg1 ;
-(struct sqlite3_stmt *)statementForQuery:(id)arg0 parameterValues:(id)arg1 error:(*id)arg2 ;
-(void)cleanUpStatement:(struct sqlite3_stmt *)arg0 forQuery:(id)arg1 ;
-(struct sqlite3_stmt *)prepareSQL:(id)arg0 error:(*id)arg1 ;
-(BOOL)executeSQL:(id)arg0 error:(*id)arg1 ;
-(BOOL)executeSQLStatement:(struct sqlite3_stmt *)arg0 error:(*id)arg1 ;
-(BOOL)openAndValidateDatabase:(*id)arg0 ;
-(BOOL)validateDatabaseWithError:(*id)arg0 ;
-(void)closeDatabase;
-(void)finalizeAndClearStatements;
-(id)valueAtColumn:(int)arg0 forStatement:(struct sqlite3_stmt *)arg1 ;
-(struct sqlite3_stmt *)upsertStatementForRecord:(id)arg0 inTableWithName:(id)arg1 error:(*id)arg2 ;
-(struct sqlite3_stmt *)updateStatementForRecord:(id)arg0 inTableWithName:(id)arg1 columnName:(id)arg2 columnValue:(id)arg3 error:(*id)arg4 ;
-(BOOL)bindValues:(id)arg0 toStatement:(struct sqlite3_stmt *)arg1 error:(*id)arg2 ;
-(id)lastErrorMessage;
-(id)errorDescriptionForDatabaseOperation:(id)arg0 ;
-(id)monitorContextForDatabaseOperation:(id)arg0 ;
-(void)setDatabaseError:(*id)arg0 operation:(id)arg1 ;


@end


#endif