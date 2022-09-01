// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISNADVIEWLOGIC_H
#define ISNADVIEWLOGIC_H


#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ISNAdViewLogic : NSObject

@property (retain, nonatomic) WKWebView *webView; // ivar: _webView
@property (retain, nonatomic) NSString *urlForWebView; // ivar: _urlForWebView
@property (retain, nonatomic) NSDictionary *configs; // ivar: _configs


-(void)loadUrlIntoWebView:(id)arg0 withDelegate:(id)arg1 ;
-(void)checkStatusOfWebView:(id)arg0 ;
-(void)sendMessageToAdunit:(id)arg0 ;
-(void)messageHandlerFromController:(id)arg0 params:(id)arg1 withDelegate:(id)arg2 ;
-(void)messageHandlerFromAdContainer:(id)arg0 params:(id)arg1 withDelegate:(id)arg2 ;
-(id)extendConfigurationWithVisibilityParams:(id)arg0 ;
-(void)reportAdContainerIsVisible:(id)arg0 withDelegate:(id)arg1 ;
-(void)reportAdContainerWasRemoved:(id)arg0 withDelegate:(id)arg1 ;
-(BOOL)shouldHandeleMessageInContainer:(id)arg0 ;
-(void)perfromCleanup;


@end


#endif