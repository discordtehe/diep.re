// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJATTRIBUTION_H
#define ADJATTRIBUTION_H


#import <Foundation/Foundation.h>

@protocol NSCoding;
@protocol NSCopying;

@interface ADJAttribution : NSObject <NSCoding, NSCopying>



@property (copy, nonatomic) NSString *trackerToken; // ivar: _trackerToken
@property (copy, nonatomic) NSString *trackerName; // ivar: _trackerName
@property (copy, nonatomic) NSString *network; // ivar: _network
@property (copy, nonatomic) NSString *campaign; // ivar: _campaign
@property (copy, nonatomic) NSString *adgroup; // ivar: _adgroup
@property (copy, nonatomic) NSString *creative; // ivar: _creative
@property (copy, nonatomic) NSString *clickLabel; // ivar: _clickLabel
@property (copy, nonatomic) NSString *adid; // ivar: _adid


-(id)initWithJsonDict:(id)arg0 adid:(id)arg1 ;
-(BOOL)isEqualToAttribution:(id)arg0 ;
-(id)dictionary;
-(id)description;
-(BOOL)isEqual:(id)arg0 ;
-(NSUInteger)hash;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;
+(id)dataWithJsonDict:(id)arg0 adid:(id)arg1 ;


@end


#endif