// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSETTINGS_H
#define GADSETTINGS_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADSettings : NSObject {
    *sqlite3 _database;
    NSMutableDictionary *_values;
    NSMutableDictionary *_temporaryValues;
    NSMutableDictionary *_valuesToWrite;
    NSObject<OS_dispatch_queue> *_lockQueue;
    NSObject<OS_dispatch_queue> *_writeQueue;
}




-(id)init;
-(void)dealloc;
-(void)loadDatabaseValues;
-(BOOL)openDatabase;
-(void)updateValuesWithString:(id)arg0 forKey:(id)arg1 ;
-(void)setString:(id)arg0 forKey:(id)arg1 ;
-(void)addEntriesFromDictionary:(id)arg0 ;
-(void)addTemporaryEntriesFromDictionary:(id)arg0 ;
-(void)setJSONObject:(id)arg0 forKey:(id)arg1 ;
-(void)setArray:(id)arg0 forKey:(id)arg1 ;
-(void)setDictionary:(id)arg0 forKey:(id)arg1 ;
-(id)internalObjectForKey:(id)arg0 ;
-(id)objectForKey:(id)arg0 ;
-(id)stringForKey:(id)arg0 ;
-(id)stringsForKeys:(id)arg0 ;
-(NSInteger)integerForKey:(id)arg0 ;
-(CGFloat)doubleForKey:(id)arg0 ;
-(BOOL)boolForKey:(id)arg0 ;
-(id)arrayForKey:(id)arg0 ;
-(id)dictionaryForKey:(id)arg0 ;
-(void)writeUpdates;
-(void)writeUpdatedValues:(id)arg0 ;
+(id)sharedInstance;


@end


#endif