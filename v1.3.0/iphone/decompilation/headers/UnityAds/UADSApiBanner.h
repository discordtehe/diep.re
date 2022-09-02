// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UADSAPIBANNER_H
#define UADSAPIBANNER_H


#import <Foundation/Foundation.h>


@interface UADSApiBanner : NSObject



+(void)WebViewExposed_load:(id)arg0 bannerStyle:(id)arg1 width:(id)arg2 height:(id)arg3 callback:(id)arg4 ;
+(void)WebViewExposed_destroy:(id)arg0 ;
+(void)WebViewExposed_setViewFrame:(id)arg0 x:(id)arg1 y:(id)arg2 width:(id)arg3 height:(id)arg4 callback:(id)arg5 ;
+(void)WebViewExposed_setBannerFrame:(id)arg0 width:(id)arg1 height:(id)arg2 callback:(id)arg3 ;
+(void)WebViewExposed_setViews:(id)arg0 callback:(id)arg1 ;


@end


#endif