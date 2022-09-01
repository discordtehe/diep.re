// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPENGINEINFO_H
#define MPENGINEINFO_H


#import <Foundation/Foundation.h>

@protocol NSCoding;

@interface MPEngineInfo : NSObject <NSCoding>



@property (readonly, copy, nonatomic) NSString *name; // ivar: _name
@property (readonly, copy, nonatomic) NSString *version; // ivar: _version


-(id)initWithName:(id)arg0 version:(id)arg1 ;
-(id)initWithCoder:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;
+(id)named:(id)arg0 version:(id)arg1 ;


@end


#endif