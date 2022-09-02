// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVAPICACHE_H
#define USRVAPICACHE_H


#import <Foundation/Foundation.h>


@interface USRVApiCache : NSObject



+(void)WebViewExposed_download:(id)arg0 fileId:(id)arg1 headers:(id)arg2 append:(id)arg3 callback:(id)arg4 ;
+(void)WebViewExposed_stop:(id)arg0 ;
+(void)WebViewExposed_getFileContent:(id)arg0 encoding:(id)arg1 callback:(id)arg2 ;
+(void)WebViewExposed_setFileContent:(id)arg0 encoding:(id)arg1 content:(id)arg2 callback:(id)arg3 ;
+(void)WebViewExposed_isCaching:(id)arg0 ;
+(void)WebViewExposed_getFiles:(id)arg0 ;
+(void)WebViewExposed_getVideoInfo:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_getFileInfo:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_getFilePath:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_deleteFile:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_setTimeouts:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_getTimeouts:(id)arg0 ;
+(void)WebViewExposed_setProgressInterval:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_getProgressInterval:(id)arg0 ;
+(void)WebViewExposed_getFreeSpace:(id)arg0 ;
+(void)WebViewExposed_getTotalSpace:(id)arg0 ;
+(void)WebViewExposed_getHash:(id)arg0 callback:(id)arg1 ;
+(id)fileIdToFilename:(id)arg0 ;
+(id)getFileDictionary:(id)arg0 ;


@end


#endif