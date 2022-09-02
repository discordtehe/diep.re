// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVWKWEBVIEWAPP_H
#define USRVWKWEBVIEWAPP_H



@class USRVWebViewApp;

@interface USRVWKWebViewApp : USRVWebViewApp

@property (nonatomic) SEL evaluateJavaScriptSelector; // ivar: _evaluateJavaScriptSelector
@property (nonatomic) *unk evaluateJavaScriptFunc; // ivar: _evaluateJavaScriptFunc


-(void)invokeJavascriptString:(id)arg0 ;
-(void)userContentController:(id)arg0 didReceiveScriptMessage:(id)arg1 ;
+(void)create:(id)arg0 ;


@end


#endif