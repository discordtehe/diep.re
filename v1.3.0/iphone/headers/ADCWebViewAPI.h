// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCWEBVIEWAPI_H
#define ADCWEBVIEWAPI_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol ADCWebViewModuleDelegate;

@interface ADCWebViewAPI : NSObject <ADCWebViewModuleDelegate>

 {
    NSMutableDictionary *_webViewConfigs;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)create:(struct ? )arg0 ;
-(void)setWebViewScrollable:(struct ? )arg0 ;
-(void)executeJS:(struct ? )arg0 ;
-(void)destroy:(struct ? )arg0 ;
-(void)setBounds:(struct ? )arg0 ;
-(void)setVisible:(struct ? )arg0 ;
-(void)resume:(struct ? )arg0 ;
-(void)prepare:(struct ? )arg0 ;
-(void)onWebViewLoad:(id)arg0 ;
-(void)onWebViewError:(id)arg0 ;
-(void)handleWebViewEvent:(id)arg0 event:(id)arg1 ;
+(void)registerHandlers;
+(void)load;


@end


#endif