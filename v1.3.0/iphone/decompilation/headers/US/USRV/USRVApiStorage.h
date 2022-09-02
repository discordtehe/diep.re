// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVAPISTORAGE_H
#define USRVAPISTORAGE_H


#import <Foundation/Foundation.h>


@interface USRVApiStorage : NSObject



+(void)WebViewExposed_set:(id)arg0 key:(id)arg1 value:(id)arg2 callback:(id)arg3 ;
+(void)WebViewExposed_get:(id)arg0 key:(id)arg1 callback:(id)arg2 ;
+(void)WebViewExposed_read:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_write:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_clear:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_delete:(id)arg0 key:(id)arg1 callback:(id)arg2 ;
+(void)WebViewExposed_getKeys:(id)arg0 key:(id)arg1 recursive:(id)arg2 callback:(id)arg3 ;
+(NSInteger)getStorageTypeFromString:(id)arg0 ;


@end


#endif