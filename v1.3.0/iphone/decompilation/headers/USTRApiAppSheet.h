// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USTRAPIAPPSHEET_H
#define USTRAPIAPPSHEET_H


#import <Foundation/Foundation.h>


@interface USTRApiAppSheet : NSObject



+(void)WebViewExposed_canOpen:(id)arg0 ;
+(void)WebViewExposed_prepare:(id)arg0 prepareTimeout:(id)arg1 callback:(id)arg2 ;
+(void)WebViewExposed_present:(id)arg0 animated:(id)arg1 callback:(id)arg2 ;
+(void)WebViewExposed_destroy:(id)arg0 ;
+(void)WebViewExposed_destroy:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_setPrepareTimeout:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_getPrepareTimeout:(id)arg0 ;


@end


#endif