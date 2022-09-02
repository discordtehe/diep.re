// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FRUTILS_H
#define FRUTILS_H


#import <Foundation/Foundation.h>


@interface FRUtils : NSObject



+(id)urlEscape:(id)arg0 ;
+(id)postStringFromDictionary:(id)arg0 multiDepths:(id)arg1 last:(BOOL)arg2 ;
+(id)countrySim;
+(CGFloat)getCacheMaxAgeFromResponse:(id)arg0 defaultValue:(CGFloat)arg1 ;


@end


#endif