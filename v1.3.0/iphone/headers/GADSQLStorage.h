// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSQLSTORAGE_H
#define GADSQLSTORAGE_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADSQLStorage : NSObject {
    *sqlite3 _database;
    NSMutableDictionary *_values;
    NSObject<OS_dispatch_queue> *_lockQueue;
    NSObject<OS_dispatch_queue> *_writeQueue;
    NSMutableDictionary *_valuesToWrite;
}




-(id)init;
-(void)dealloc;
-(void)loadDatabaseValues;
-(BOOL)openDatabaseAtURL:(id)arg0 ;
-(void)setString:(id)arg0 forKey:(id)arg1 ;
-(void)setObject:(id)arg0 forKeyedSubscript:(id)arg1 ;
-(id)stringForKey:(id)arg0 ;
-(id)objectForKeyedSubscript:(id)arg0 ;
-(void)writeUpdatedValues;
+(id)sharedInstance;


@end


#endif