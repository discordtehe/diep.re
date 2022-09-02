// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPURLRESOLVER_H
#define MPURLRESOLVER_H

@class NSURLSessionTask;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MPURLResolver : NSObject

@property (retain, nonatomic) NSURL *originalURL; // ivar: _originalURL
@property (retain, nonatomic) NSURL *currentURL; // ivar: _currentURL
@property (retain, nonatomic) NSURLSessionTask *task; // ivar: _task
@property (copy, nonatomic) id *completion; // ivar: _completion


-(id)initWithURL:(id)arg0 completion:(id)arg1 ;
-(void)start;
-(id)httpTaskWithRequest:(id)arg0 ;
-(void)cancel;
-(void)safeInvokeAndNilCompletionBlock:(id)arg0 error:(id)arg1 ;
-(id)actionInfoFromURL:(id)arg0 error:(*id)arg1 ;
-(BOOL)URLShouldOpenInApplication:(id)arg0 ;
-(BOOL)URLIsHTTPOrHTTPS:(id)arg0 ;
-(BOOL)URLHasDeeplinkPlusScheme:(id)arg0 ;
-(BOOL)URLPointsToAMap:(id)arg0 ;
-(BOOL)URLIsAppleScheme:(id)arg0 ;
-(id)appStoreProductParametersForURL:(id)arg0 ;
-(id)safariURLForURL:(id)arg0 ;
-(NSUInteger)stringEncodingFromContentType:(id)arg0 ;
-(BOOL)shouldOpenWithInAppWebBrowser;
+(id)resolverWithURL:(id)arg0 completion:(id)arg1 ;


@end


#endif