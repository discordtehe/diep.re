// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVWEBVIEWAPP_H
#define USRVWEBVIEWAPP_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@class USRVWebViewBackgroundView;
@class USRVConfiguration;

@interface USRVWebViewApp : NSObject

@property (nonatomic) BOOL webAppLoaded; // ivar: _webAppLoaded
@property (nonatomic) BOOL webAppInitialized; // ivar: _webAppInitialized
@property (retain, nonatomic) UIView *webView; // ivar: _webView
@property (retain, nonatomic) USRVWebViewBackgroundView *backgroundView; // ivar: _backgroundView
@property (retain, nonatomic) USRVConfiguration *configuration; // ivar: _configuration
@property (retain, nonatomic) NSMutableDictionary *nativeCallbacks; // ivar: _nativeCallbacks


-(id)initWithConfiguration:(id)arg0 ;
-(void)invokeJavascriptMethod:(id)arg0 className:(id)arg1 params:(id)arg2 ;
-(void)invokeJavascriptString:(id)arg0 ;
-(BOOL)sendEvent:(id)arg0 category:(id)arg1 param1:(id)arg2 ;
-(BOOL)sendEvent:(id)arg0 category:(id)arg1 params:(id)arg2 ;
-(BOOL)invokeMethod:(id)arg0 className:(id)arg1 receiverClass:(id)arg2 callback:(id)arg3 params:(id)arg4 ;
-(BOOL)invokeCallback:(id)arg0 ;
-(void)addCallback:(id)arg0 ;
-(void)removeCallback:(id)arg0 ;
-(id)getCallbackWithId:(id)arg0 ;
-(void)placeWebViewToBackgroundView;
-(void)createBackgroundView;
+(id)getCurrentApp;
+(void)setCurrentApp:(id)arg0 ;
+(void)create:(id)arg0 ;
+(id)urlEncode:(id)arg0 ;


@end


#endif