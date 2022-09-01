// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSAFEBROWSINGREPORT_H
#define GADSAFEBROWSINGREPORT_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>


@interface GADSafeBrowsingReport : NSObject {
    NSMutableArray *_resources;
    NSNumber *_lastPreClickResourceIndex;
    NSMutableDictionary *_resourceIndexForCanonicalURL;
    NSMutableDictionary *_requestIndicesForRedirectToURL;
    NSMutableDictionary *_parentTransactionForTransaction;
    NSMutableDictionary *_childTransactionsForTransaction;
    NSMutableDictionary *_requestIPAddresses;
    NSMutableSet *_autoClickResources;
    NSString *_clickString;
    NSSet *_excludedHeaders;
    NSURL *_landingPageURL;
    NSURL *_mainDocumentURL;
    UIImage *_renderedAd;
    NSObject<OS_dispatch_queue> *_lockQueue;
}


@property (readonly) BOOL malicious;
@property (retain) UIImage *renderedAd;
@property (copy) NSURL *mainDocumentURL;


-(id)initWithRootTransaction:(id)arg0 configuration:(id)arg1 ;
-(void)addTransaction:(id)arg0 ;
-(void)addAutoClickAttempt:(id)arg0 ;
-(void)addClickThrough:(id)arg0 ;
-(void)addTransaction:(id)arg0 parentIndex:(id)arg1 ;
-(void)addPlaceholderTransactionForRequest:(id)arg0 ;
-(id)redirectSourceForRequest:(id)arg0 ;
-(id)referringResourceForRequest:(id)arg0 ;
-(id)parentIndexForRequest:(id)arg0 ;
-(id)dictionaryForResourceAtIndex:(NSUInteger)arg0 ;
-(void)createDictionaryWithCompletionHandler:(id)arg0 ;


@end


#endif