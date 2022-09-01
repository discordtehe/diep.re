// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADADSOURCE_H
#define GADADSOURCE_H


#import <Foundation/Foundation.h>


@interface GADAdSource : NSObject {
    uint8_t _invalidated;
}




-(void)invalidateAndCancel;
-(BOOL)invalidated;
-(void)renderServerTransactions:(id)arg0 completionHandler:(id)arg1 ;
-(void)callCompletionHandlerWithInvalidatedError:(id)arg0 ;
-(void)loadAdsWithTargeting:(id)arg0 completionHandler:(id)arg1 ;
-(void)asyncLoadAdWithServerRequest:(id)arg0 completionHandler:(id)arg1 ;


@end


#endif