// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADSCREEN_H
#define FBADSCREEN_H


#import <Foundation/Foundation.h>


@interface FBAdScreen : NSObject



+(void)initialize;
+(void)recomputeCachedState;
+(CGFloat)scale;
+(CGFloat)nativeScale;
+(struct CGSize )size;
+(struct CGSize )nativeSize;
+(BOOL)isPortrait;
+(BOOL)isLandscape;
+(struct CGRect )bounds;
+(NSInteger)orientation;
+(struct CGRect )boundsInOrientation;
+(struct CGSize )sizeInOrientation;


@end


#endif