// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADNATIVEADCONTEXT_H
#define GADNATIVEADCONTEXT_H


#import <Foundation/Foundation.h>

@class GADJSContext;

@interface GADNativeAdContext : NSObject

@property (readonly, nonatomic) GADJSContext *context; // ivar: _context


-(void)setJSContext:(id)arg0 ;
-(void)preprocessNativeAdDictionary:(id)arg0 completionHandler:(id)arg1 ;
-(void)handleClick:(id)arg0 completionHandler:(id)arg1 ;
-(void)handleImpression:(id)arg0 completionHandler:(id)arg1 ;
-(void)handleOnePointFiveClick:(id)arg0 ;
+(void)loadWithAdConfiguration:(struct NSDictionary *)arg0 eventContext:(id)arg1 completionHandler:(id)arg2 ;
+(void)webViewNativeAdContextWithAdConfiguration:(struct NSDictionary *)arg0 eventContext:(id)arg1 completionHandler:(id)arg2 ;
+(void)JSCoreNativeAdContextWithEventContext:(id)arg0 completionHandler:(id)arg1 ;


@end


#endif