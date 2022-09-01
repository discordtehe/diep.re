// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SSEAPPLICATIONCONTEXT_H
#define SSEAPPLICATIONCONTEXT_H


#import <Foundation/Foundation.h>


@interface SSEApplicationContext : NSObject

@property (retain) NSString *applicationBundleId; // ivar: _applicationBundleId
@property (retain) NSString *filePathCacheDirectory; // ivar: _filePathCacheDirectory


+(id)defaultApplicationContext;
+(id)getCachesDirectoryPath;
+(id)dictionaryForAppTransportSecurityFlag;
+(id)getAllowsArbitraryLoadsFlagInATS;
+(id)getAllowsArbitraryLoadsInWebContentFlagInATS;
+(id)getAppVersion;
+(BOOL)isUIViewControllerBasedStatusBarAppearanceFlagSetToNo;


@end


#endif