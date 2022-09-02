// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADCHOOSEYOUROWNADDATAMODEL_H
#define FBADCHOOSEYOUROWNADDATAMODEL_H


#import <CoreFoundation/CoreFoundation.h>

@class FBAdDataModel;
@class FBAdChooseYourOwnAdConfig;

@interface FBAdChooseYourOwnAdDataModel : FBAdDataModel

@property (readonly, nonatomic) FBAdChooseYourOwnAdConfig *config; // ivar: _config
@property (copy, nonatomic) NSArray *choosableAds; // ivar: _choosableAds


-(id)initWithMetadata:(id)arg0 ;
-(BOOL)isValid;
-(id)cacheKeysForCreatives;


@end


#endif