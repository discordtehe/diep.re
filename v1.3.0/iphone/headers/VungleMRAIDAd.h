// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEMRAIDAD_H
#define VUNGLEMRAIDAD_H


#import <CoreFoundation/CoreFoundation.h>

@class VungleAd;
@protocol NSCoding;

@interface VungleMRAIDAd : VungleAd <NSCoding>



@property (copy, nonatomic) NSURL *expectedLocalTemplateURL; // ivar: _expectedLocalTemplateURL


-(id)initWithDictionary:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(BOOL)isEqual:(id)arg0 ;
-(BOOL)isEqualToVungleMRAIDAd:(id)arg0 ;


@end


#endif