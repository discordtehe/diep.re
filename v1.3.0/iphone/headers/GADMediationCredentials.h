// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMEDIATIONCREDENTIALS_H
#define GADMEDIATIONCREDENTIALS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADMediationCredentials : NSObject

@property (readonly, nonatomic) NSDictionary *settings; // ivar: _settings
@property (readonly, nonatomic) NSInteger format; // ivar: _format


-(id)initWithAdFormat:(NSInteger)arg0 credentials:(id)arg1 ;
-(id)initWithDictionary:(id)arg0 ;
-(BOOL)isEqual:(id)arg0 ;
-(NSUInteger)hash;


@end


#endif