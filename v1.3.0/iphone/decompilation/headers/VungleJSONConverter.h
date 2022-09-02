// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEJSONCONVERTER_H
#define VUNGLEJSONCONVERTER_H


#import <Foundation/Foundation.h>


@interface VungleJSONConverter : NSObject



-(id)JSONStringWithNSArray:(id)arg0 options:(NSInteger)arg1 error:(*id)arg2 ;
-(id)JSONStringWithNSDictionary:(id)arg0 options:(NSInteger)arg1 error:(*id)arg2 ;
-(id)minifyString:(id)arg0 ;


@end


#endif