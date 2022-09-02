// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADLOCATION_H
#define GADLOCATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSCopying;

@interface GADLocation : NSObject <NSCopying>

 {
    CGFloat _timestamp;
    NSDictionary *_dictionaryRepresentation;
    NSString *_locationDescription;
}


@property (readonly, nonatomic) BOOL precise;
@property (readonly, nonatomic) CGFloat latitude; // ivar: _latitude
@property (readonly, nonatomic) CGFloat longitude; // ivar: _longitude
@property (readonly, nonatomic) CGFloat accuracy; // ivar: _accuracy
@property (readonly, nonatomic) NSString *locationDescription;
@property (readonly, nonatomic) NSDictionary *dictionaryRepresentation;


-(id)initWithLatitude:(CGFloat)arg0 longitude:(CGFloat)arg1 accuracy:(CGFloat)arg2 ;
-(id)initWithLocationDescription:(id)arg0 ;
-(id)initWithDictionary:(id)arg0 ;
-(BOOL)isEqual:(id)arg0 ;
-(NSUInteger)hash;
-(id)copyWithZone:(struct _NSZone *)arg0 ;


@end


#endif