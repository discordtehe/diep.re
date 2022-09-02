// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSCUSTOMEVENT_H
#define ANSCUSTOMEVENT_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class ANSEvent;

@interface ANSCustomEvent : ANSEvent

@property (retain, nonatomic) NSDictionary *customAttributes; // ivar: _customAttributes
@property (readonly, nonatomic) NSString *customEventName; // ivar: _customEventName


-(id)initWithCustomEventName:(id)arg0 customAttributes:(id)arg1 ;
-(id)name;
-(id)dictionaryRepresentation;
-(id)attributesDictionary;
-(id)description;


@end


#endif