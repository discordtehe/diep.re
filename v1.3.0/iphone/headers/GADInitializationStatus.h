// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADINITIALIZATIONSTATUS_H
#define GADINITIALIZATIONSTATUS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSCopying;

@interface GADInitializationStatus : NSObject <NSCopying>



@property (readonly, nonatomic) NSDictionary *adapterStatusesByClassName; // ivar: _adapterStatusesByClassName


-(id)initWithDictionary:(id)arg0 ;
-(id)initWithClassNames:(id)arg0 ;
-(id)statusWithEntry:(id)arg0 forKey:(id)arg1 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(BOOL)isEqual:(id)arg0 ;
-(NSUInteger)hash;


@end


#endif