// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADVIDEOOPTIONS_H
#define GADVIDEOOPTIONS_H



@class GADAdLoaderOptions;

@interface GADVideoOptions : GADAdLoaderOptions

@property (nonatomic) BOOL startMuted; // ivar: _startMuted
@property (nonatomic) BOOL customControlsRequested; // ivar: _customControlsRequested
@property (nonatomic) BOOL clickToExpandRequested; // ivar: _clickToExpandRequested


-(id)init;
-(id)initWithDictionary:(id)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(id)requestParameters;


@end


#endif