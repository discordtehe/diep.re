// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVSTORAGEMANAGER_H
#define USRVSTORAGEMANAGER_H


#import <Foundation/Foundation.h>


@interface USRVStorageManager : NSObject



+(BOOL)init;
+(void)initStorage:(NSInteger)arg0 ;
+(BOOL)setupStorage:(NSInteger)arg0 ;
+(void)addStorageLocation:(id)arg0 forStorageType:(NSInteger)arg1 ;
+(void)removeStorage:(NSInteger)arg0 ;
+(id)getStorage:(NSInteger)arg0 ;
+(BOOL)hasStorage:(NSInteger)arg0 ;


@end


#endif