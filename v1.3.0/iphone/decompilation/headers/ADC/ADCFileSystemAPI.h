// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCFILESYSTEMAPI_H
#define ADCFILESYSTEMAPI_H


#import <Foundation/Foundation.h>


@interface ADCFileSystemAPI : NSObject



+(id)saveWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(id)createDirectoryWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(id)removeWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(id)listingWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(id)loadWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(id)renameWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(id)existsWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(id)crc32WithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(id)unpackBundleWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;


@end


#endif