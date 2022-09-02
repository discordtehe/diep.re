// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLETHIRDPARTYMRAIDAD_H
#define VUNGLETHIRDPARTYMRAIDAD_H


#import <Foundation/Foundation.h>

@class VungleMRAIDAd;

@interface VungleThirdPartyMRAIDAd : VungleMRAIDAd

@property (copy, nonatomic) NSString *base64MRAIDContent; // ivar: _base64MRAIDContent


-(id)decodedMRAIDContent;
-(void)updateWithRequestAdBody:(id)arg0 ;
-(id)initWithDictionary:(id)arg0 ;
-(BOOL)isEqual:(id)arg0 ;
-(BOOL)isEqualToVungleThirdPartyMRAIDAd:(id)arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;
-(id)description;


@end


#endif