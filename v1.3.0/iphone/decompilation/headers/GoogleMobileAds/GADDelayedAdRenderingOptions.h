// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADDELAYEDADRENDERINGOPTIONS_H
#define GADDELAYEDADRENDERINGOPTIONS_H

@protocol GADDelayedAdRenderingDelegate;


@class GADAdLoaderOptions;

@interface GADDelayedAdRenderingOptions : GADAdLoaderOptions

@property (weak, nonatomic) NSObject<GADDelayedAdRenderingDelegate> *delegate; // ivar: _delegate


-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(id)requestParameters;


@end


#endif