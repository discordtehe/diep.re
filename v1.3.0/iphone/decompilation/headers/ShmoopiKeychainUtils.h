// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SHMOOPIKEYCHAINUTILS_H
#define SHMOOPIKEYCHAINUTILS_H


#import <Foundation/Foundation.h>


@interface ShmoopiKeychainUtils : NSObject



+(id)getPasswordForUsername:(id)arg0 andServiceName:(id)arg1 error:(*id)arg2 ;
+(void)storeUsername:(id)arg0 andPassword:(id)arg1 forServiceName:(id)arg2 updateExisting:(BOOL)arg3 error:(*id)arg4 ;
+(void)deleteItemForUsername:(id)arg0 andServiceName:(id)arg1 error:(*id)arg2 ;


@end


#endif