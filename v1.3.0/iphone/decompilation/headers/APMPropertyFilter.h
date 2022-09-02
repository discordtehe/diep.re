// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMPROPERTYFILTER_H
#define APMPROPERTYFILTER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface APMPropertyFilter : NSObject

@property (readonly, nonatomic) int audienceID; // ivar: _audienceID
@property (readonly, nonatomic) int filterID; // ivar: _filterID
@property (readonly, nonatomic) NSString *propertyName; // ivar: _propertyName
@property (readonly, nonatomic) NSData *data; // ivar: _data


-(id)initWithAudienceID:(int)arg0 filterID:(int)arg1 propertyName:(id)arg2 data:(id)arg3 ;


@end


#endif