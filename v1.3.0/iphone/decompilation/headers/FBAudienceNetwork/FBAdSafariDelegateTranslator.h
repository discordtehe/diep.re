// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADSAFARIDELEGATETRANSLATOR_H
#define FBADSAFARIDELEGATETRANSLATOR_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol FBAdBrowserSessionDataGeneration;
@protocol FBAdSafariViewControllerDelegate;

@interface FBAdSafariDelegateTranslator : NSObject <FBAdBrowserSessionDataGeneration>



@property (retain, nonatomic) id *safariViewController; // ivar: _safariViewController
@property (weak, nonatomic) NSObject<FBAdSafariViewControllerDelegate> *delegate; // ivar: _delegate
@property (copy, nonatomic) NSString *inlineClientToken; // ivar: _inlineClientToken
@property (copy, nonatomic) NSURL *url; // ivar: _url
@property (nonatomic) NSUInteger handlerTimeMs; // ivar: _handlerTimeMs
@property (nonatomic) NSUInteger loadStartMs; // ivar: _loadStartMs
@property (nonatomic) NSUInteger responseEndMs; // ivar: _responseEndMs
@property (nonatomic) NSUInteger domContentLoadedMs; // ivar: _domContentLoadedMs
@property (nonatomic) NSUInteger scrollReadyMs; // ivar: _scrollReadyMs
@property (nonatomic) NSUInteger loadFinishMs; // ivar: _loadFinishMs
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)safariViewController:(id)arg0 didCompleteInitialLoad:(BOOL)arg1 ;
-(void)safariViewControllerDidFinish:(id)arg0 ;
+(void)initialize;
+(id)translatorForObject:(id)arg0 ;
+(id)translatorForObject:(id)arg0 update:(BOOL)arg1 ;
+(void)setNotificationCenter:(id)arg0 forObject:(id)arg1 ;


@end


#endif