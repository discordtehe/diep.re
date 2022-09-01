// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSUSERDEFAULTS_H
#define CLSUSERDEFAULTS_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface CLSUserDefaults : NSObject

@property (nonatomic) BOOL synchronizeWroteToDisk; // ivar: _synchronizeWroteToDisk
@property (readonly, copy, nonatomic) NSURL *directoryURL; // ivar: _directoryURL
@property (readonly, copy, nonatomic) NSURL *fileURL; // ivar: _fileURL
@property (readonly, copy, nonatomic) NSDictionary *persistedDataDictionary; // ivar: _persistedDataDictionary
@property (readonly, copy, nonatomic) NSMutableDictionary *dataDictionary; // ivar: _dataDictionary
@property (readonly, nonatomic) NSObject<OS_dispatch_queue> *serialDictionaryQueue; // ivar: _serialDictionaryQueue
@property (readonly, nonatomic) NSObject<OS_dispatch_queue> *synchronizationQueue; // ivar: _synchronizationQueue


-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(id)init;
-(id)generateDirectoryURL;
-(id)generateDirectoryURLForBaseURL:(id)arg0 hostAppBundleIdentifier:(id)arg1 ;
-(id)getEscapedAppBundleIdentifier;
-(id)objectForKey:(id)arg0 ;
-(id)stringForKey:(id)arg0 ;
-(BOOL)boolForKey:(id)arg0 ;
-(NSInteger)integerForKey:(id)arg0 ;
-(void)setObject:(id)arg0 forKey:(id)arg1 ;
-(void)setString:(id)arg0 forKey:(id)arg1 ;
-(void)setBool:(BOOL)arg0 forKey:(id)arg1 ;
-(void)setInteger:(NSInteger)arg0 forKey:(id)arg1 ;
-(void)removeObjectForKey:(id)arg0 ;
-(void)removeAllObjects;
-(id)dictionaryRepresentation;
-(void)synchronize;
-(id)loadDefaults;
-(void)migrateFromNSUserDefaults:(id)arg0 ;
-(id)objectForKeyByMigratingFromNSUserDefaults:(id)arg0 ;
+(id)standardUserDefaults;


@end


#endif