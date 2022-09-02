// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVAPIPREFERENCES_H
#define USRVAPIPREFERENCES_H


#import <Foundation/Foundation.h>


@interface USRVApiPreferences : NSObject



+(void)WebViewExposed_hasKey:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_getString:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_getInt:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_getLong:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_getBoolean:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_getFloat:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_setString:(id)arg0 forKey:(id)arg1 callback:(id)arg2 ;
+(void)WebViewExposed_setInt:(id)arg0 forKey:(id)arg1 callback:(id)arg2 ;
+(void)WebViewExposed_setLong:(id)arg0 forKey:(id)arg1 callback:(id)arg2 ;
+(void)WebViewExposed_setBoolean:(id)arg0 forKey:(id)arg1 callback:(id)arg2 ;
+(void)WebViewExposed_setFloat:(id)arg0 forKey:(id)arg1 callback:(id)arg2 ;
+(void)WebViewExposed_removeKey:(id)arg0 callback:(id)arg1 ;


@end


#endif