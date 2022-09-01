// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADADPRESENTER_H
#define GADADPRESENTER_H


#import <Foundation/Foundation.h>

@class GADAd;
@protocol GADAdPresenting;
@protocol GADPresenting;

@interface GADAdPresenter : NSObject <GADAdPresenting>

 {
    GADAd *_ad;
    id<GADPresenting> *_presenter;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithPresenter:(id)arg0 ;
-(void)setAd:(id)arg0 ;
-(BOOL)canPresent;
-(void)presentFromViewController:(id)arg0 ;


@end


#endif