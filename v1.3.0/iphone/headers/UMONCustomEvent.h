// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UMONCUSTOMEVENT_H
#define UMONCUSTOMEVENT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface UMONCustomEvent : NSObject

@property (retain) NSString *category; // ivar: _category
@property (retain) NSString *type; // ivar: _type
@property (retain) NSDictionary *userInfo; // ivar: _userInfo


-(id)getJsonDictionary;
-(id)initWithBuilder:(id)arg0 ;
+(id)build:(id)arg0 ;


@end


#endif