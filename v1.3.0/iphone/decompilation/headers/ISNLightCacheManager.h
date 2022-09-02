// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISNLIGHTCACHEMANAGER_H
#define ISNLIGHTCACHEMANAGER_H


#import <Foundation/Foundation.h>


@interface ISNLightCacheManager : NSObject

@property (retain, nonatomic) NSString *rootDirectoryPath; // ivar: _rootDirectoryPath


-(void)saveDataOnRootDirectory:(id)arg0 fileName:(id)arg1 error:(*id)arg2 ;
-(id)fileUrlForFileNameOnRootDirectory:(id)arg0 ;
-(void)assignErrorToErrorObject:(*id)arg0 withReason:(id)arg1 ;
-(BOOL)isRootDirectoryExists;
-(BOOL)isFileNameExistInRootDirectory:(id)arg0 ;
-(id)pathForFileNameInRootDirectory:(id)arg0 ;
+(id)sharedInstance;


@end


#endif